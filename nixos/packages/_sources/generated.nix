# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  chezmoi-vim = {
    pname = "chezmoi-vim";
    version = "062717b6d67331856ecf75fd36eb0a7db4fbea0b";
    src = fetchFromGitHub ({
      owner = "alker0";
      repo = "chezmoi.vim";
      rev = "062717b6d67331856ecf75fd36eb0a7db4fbea0b";
      fetchSubmodules = false;
      sha256 = "sha256-tFoqnwPzwsIgun/fQHPGLQ7hdd2t8p68GcMpLwsBamc=";
    });
    date = "2023-03-01";
  };
  guihua-lua = {
    pname = "guihua-lua";
    version = "d331b1526a87edbe13679298c3547d49f8a14ffc";
    src = fetchFromGitHub ({
      owner = "ray-x";
      repo = "guihua.lua";
      rev = "d331b1526a87edbe13679298c3547d49f8a14ffc";
      fetchSubmodules = false;
      sha256 = "sha256-8VbynF1b9HXyJFAoW1/ReNX57tzUSiqqtktwqFjavp8=";
    });
    date = "2023-04-05";
  };
  k8s-snippets = {
    pname = "k8s-snippets";
    version = "e973cdcb746c1542c3b60f2b1a792f6053652def";
    src = fetchFromGitHub ({
      owner = "budimanjojo";
      repo = "k8s-snippets";
      rev = "e973cdcb746c1542c3b60f2b1a792f6053652def";
      fetchSubmodules = false;
      sha256 = "sha256-hsZKDEsc93+/Ne7I8j2QC5KcQjr2s1+sv88vyD1IHIg=";
    });
    date = "2023-04-09";
  };
  luasnip = {
    pname = "luasnip";
    version = "v1.2.1";
    src = fetchFromGitHub ({
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "v1.2.1";
      fetchSubmodules = false;
      sha256 = "sha256-6NJPOu5f5ycu9l53CZB7prVNj61UaVz706tOrk5c860=";
    });
  };
  mason-lspconfig-nvim = {
    pname = "mason-lspconfig-nvim";
    version = "84d9c35cda573210f237e6e30c5b9036baf85483";
    src = fetchFromGitHub ({
      owner = "williamboman";
      repo = "mason-lspconfig.nvim";
      rev = "84d9c35cda573210f237e6e30c5b9036baf85483";
      fetchSubmodules = false;
      sha256 = "sha256-xgBvb4co0RVhvK8x52UiYDiG0LTY075lsLUXmUVtlk0=";
    });
    date = "2023-04-12";
  };
  mason-tool-installer-nvim = {
    pname = "mason-tool-installer-nvim";
    version = "a6c4d7df448a78b0a05fd2065bef11ed52bee51c";
    src = fetchFromGitHub ({
      owner = "WhoIsSethDaniel";
      repo = "mason-tool-installer.nvim";
      rev = "a6c4d7df448a78b0a05fd2065bef11ed52bee51c";
      fetchSubmodules = false;
      sha256 = "sha256-bedQamYO2m0MXJYfMyCq5WcZZLGE7kPK8wpLo5qH/aA=";
    });
    date = "2023-03-23";
  };
  oil-nvim = {
    pname = "oil-nvim";
    version = "fb8b101d7cb4727d8719ab6ed141330eca997d3f";
    src = fetchFromGitHub ({
      owner = "stevearc";
      repo = "oil.nvim";
      rev = "fb8b101d7cb4727d8719ab6ed141330eca997d3f";
      fetchSubmodules = false;
      sha256 = "sha256-wWzjay8SCboAibwK5Vwo9yaXvQ0rHcQjrLA7AelWvk0=";
    });
    date = "2023-04-11";
  };
  sad-nvim = {
    pname = "sad-nvim";
    version = "869c7f3ca3dcd28fd78023db6a7e1bf8af0f4714";
    src = fetchFromGitHub ({
      owner = "ray-x";
      repo = "sad.nvim";
      rev = "869c7f3ca3dcd28fd78023db6a7e1bf8af0f4714";
      fetchSubmodules = false;
      sha256 = "sha256-uwXldYA7JdZHqoB4qfCnZcQW9YBjlRWmiz8mKb9jHuI=";
    });
    date = "2023-03-13";
  };
  tokyonight-gtk-theme = {
    pname = "tokyonight-gtk-theme";
    version = "6e4ee110d8cbcd88b28b451595bf3a5a0ee194e1";
    src = fetchFromGitHub ({
      owner = "Fausto-Korpsvart";
      repo = "Tokyo-Night-GTK-Theme";
      rev = "6e4ee110d8cbcd88b28b451595bf3a5a0ee194e1";
      fetchSubmodules = false;
      sha256 = "sha256-DjDrcirM7ksb3Yu07wwUZInUr87mGI6nN420kgR+AOE=";
    });
    date = "2023-02-20";
  };
  tokyonight-icon-theme = {
    pname = "tokyonight-icon-theme";
    version = "6e4ee110d8cbcd88b28b451595bf3a5a0ee194e1";
    src = fetchFromGitHub ({
      owner = "Fausto-Korpsvart";
      repo = "Tokyo-Night-GTK-Theme";
      rev = "6e4ee110d8cbcd88b28b451595bf3a5a0ee194e1";
      fetchSubmodules = false;
      sha256 = "sha256-DjDrcirM7ksb3Yu07wwUZInUr87mGI6nN420kgR+AOE=";
    });
    date = "2023-02-20";
  };
}
