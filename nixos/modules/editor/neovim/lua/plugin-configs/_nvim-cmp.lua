local cmp = require('cmp')
local luasnip = require('luasnip')
local lspkind = require('lspkind')
local vssnip = require('luasnip.loaders.from_vscode')

vim.o.completeopt = 'menu,menuone,noselect'
vssnip.lazy_load()

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-j>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.choice_active() then
        luasnip.change_choice(1)
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),
    ['<C-k>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.choice_active() then
        luasnip.change_choice(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
    ['<C-l>'] = cmp.mapping(function(fallback)
      if luasnip.expand_or_locally_jumpable() then
        luasnip.jump(1)
      else
        fallback()
      end
    end, { "i", "s" }),
    ['<C-h>'] = cmp.mapping(function(fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
    ['<C-Space>'] = cmp.mapping(function()
      if luasnip.choice_active() then
        luasnip.jump(1)
      else
        cmp.confirm {
          behavior = cmp.ConfirmBehavior.Replace
        }
      end
    end),
    ['<CR>'] = cmp.mapping(function()
      if luasnip.choice_active() then
        luasnip.jump(1)
      else
        cmp.confirm {
          behavior = cmp.ConfirmBehavior.Replace
        }
      end
    end),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'buffer' },
    { name = 'spell' },
  },
  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = ({
        nvim_lsp = '[LSP]',
        luasnip = '[LuaSnip]',
        nvim_lua = '[Lua]',
        buffer = '[Buffer]',
        path = '[Path]',
        spell = '[Spell]'
      })
    },
  },
}

-- Hint snippet node-type with virtual text
-- https://github.com/L3MON4D3/LuaSnip/wiki/Nice-Configs#hint-node-type-with-virtual-text
local types = require('luasnip.util.types')

luasnip.config.setup {
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = {{ "●", "DiagnosticVirtualTextWarn" }}
      }
    },
    [types.insertNode] = {
      active = {
        virt_text = {{ "●", "DiagnosticVirtualTextInfo" }}
      }
    }
  }
}
