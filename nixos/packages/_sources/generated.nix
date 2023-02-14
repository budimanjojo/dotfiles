# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  chezmoi-vim = {
    pname = "chezmoi-vim";
    version = "9b9f0479856f5ce61daa1d5889ff379b18a109a5";
    src = fetchFromGitHub ({
      owner = "alker0";
      repo = "chezmoi.vim";
      rev = "9b9f0479856f5ce61daa1d5889ff379b18a109a5";
      fetchSubmodules = false;
      sha256 = "sha256-Cti0Clg/rPbO+tEWfdY+q3cCAwnB3l7MFRteSmrfigQ=";
    });
    date = "2023-02-10";
  };
  k8s-snippets = {
    pname = "k8s-snippets";
    version = "f897b0a15c8f59e743d333dc45b1c12f55696a24";
    src = fetchFromGitHub ({
      owner = "budimanjojo";
      repo = "k8s-snippets";
      rev = "f897b0a15c8f59e743d333dc45b1c12f55696a24";
      fetchSubmodules = false;
      sha256 = "sha256-GvglaOP9apxMUJRcsD8qg+HxlQaPngY47A/vG+kCMu0=";
    });
    date = "2023-02-14";
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
    version = "e2b82cf4c68b453eeab5833d90c042ed4b49d0e1";
    src = fetchFromGitHub ({
      owner = "williamboman";
      repo = "mason-lspconfig.nvim";
      rev = "e2b82cf4c68b453eeab5833d90c042ed4b49d0e1";
      fetchSubmodules = false;
      sha256 = "sha256-u+rpsMPvAw7juGD/p03wJBuF2nwxZ0MvZKUNfhzEzlM=";
    });
    date = "2023-02-12";
  };
  mason-tool-installer-nvim = {
    pname = "mason-tool-installer-nvim";
    version = "6ca38efeb0406dea8da6c97f61d6f6ef30ab0576";
    src = fetchFromGitHub ({
      owner = "WhoIsSethDaniel";
      repo = "mason-tool-installer.nvim";
      rev = "6ca38efeb0406dea8da6c97f61d6f6ef30ab0576";
      fetchSubmodules = false;
      sha256 = "sha256-4PErcgZHuHPq3BHkXYFqpwRJlj/XZYdt8wqPUis8kCg=";
    });
    date = "2023-01-26";
  };
  oil-nvim = {
    pname = "oil-nvim";
    version = "f1ea6e0ad03e1d7b1acad4d0796d39c4a82b3463";
    src = fetchFromGitHub ({
      owner = "stevearc";
      repo = "oil.nvim";
      rev = "f1ea6e0ad03e1d7b1acad4d0796d39c4a82b3463";
      fetchSubmodules = false;
      sha256 = "sha256-h2FWdP6ZHiSirzFXNH8vdwBfpqfbBUPcleX7PUT1WmI=";
    });
    date = "2023-02-11";
  };
  sad-nvim = {
    pname = "sad-nvim";
    version = "1cdf3f25589dc92854913004443ba0e53bd103ad";
    src = fetchFromGitHub ({
      owner = "ray-x";
      repo = "sad.nvim";
      rev = "1cdf3f25589dc92854913004443ba0e53bd103ad";
      fetchSubmodules = false;
      sha256 = "sha256-6neCIpCEfxUwYdKZMsR3arILeuVMy6bfk/a5rSH1Wzo=";
    });
    date = "2023-01-30";
  };
  tokyonight-gtk-theme = {
    pname = "tokyonight-gtk-theme";
    version = "f7ae3421ac0d415ca57fb6224e093e12b8a980bb";
    src = fetchFromGitHub ({
      owner = "Fausto-Korpsvart";
      repo = "Tokyo-Night-GTK-Theme";
      rev = "f7ae3421ac0d415ca57fb6224e093e12b8a980bb";
      fetchSubmodules = false;
      sha256 = "sha256-90V55pRfgiaP1huhD+3456ziJ2EU24iNQHt5Ro+g+M0=";
    });
    date = "2023-01-17";
  };
  tokyonight-icon-theme = {
    pname = "tokyonight-icon-theme";
    version = "f7ae3421ac0d415ca57fb6224e093e12b8a980bb";
    src = fetchFromGitHub ({
      owner = "Fausto-Korpsvart";
      repo = "Tokyo-Night-GTK-Theme";
      rev = "f7ae3421ac0d415ca57fb6224e093e12b8a980bb";
      fetchSubmodules = false;
      sha256 = "sha256-90V55pRfgiaP1huhD+3456ziJ2EU24iNQHt5Ro+g+M0=";
    });
    date = "2023-01-17";
  };
}
