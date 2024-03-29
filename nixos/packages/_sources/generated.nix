# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  abbreviation-tips = {
    pname = "abbreviation-tips";
    version = "v0.7.0";
    src = fetchFromGitHub {
      owner = "gazorby";
      repo = "fish-abbreviation-tips";
      rev = "v0.7.0";
      fetchSubmodules = false;
      sha256 = "sha256-F1t81VliD+v6WEWqj1c1ehFBXzqLyumx5vV46s/FZRU=";
    };
  };
  about-time = {
    pname = "about-time";
    version = "4.2.1";
    src = fetchurl {
      url = "https://pypi.org/packages/source/a/about-time/about-time-4.2.1.tar.gz";
      sha256 = "sha256-alOIYtM85n2ZdCnRSZgxDh2/2my32bv795nEcJhH/s4=";
    };
  };
  alive-progress = {
    pname = "alive-progress";
    version = "3.1.5";
    src = fetchurl {
      url = "https://pypi.org/packages/source/a/alive-progress/alive-progress-3.1.5.tar.gz";
      sha256 = "sha256-QuOZpmyBUNxQdgLf97eVPxBe8R+vl92qbSexy/RcTJg=";
    };
  };
  autopair-fish = {
    pname = "autopair-fish";
    version = "4d1752ff5b39819ab58d7337c69220342e9de0e2";
    src = fetchFromGitHub {
      owner = "jorgebucaran";
      repo = "autopair.fish";
      rev = "4d1752ff5b39819ab58d7337c69220342e9de0e2";
      fetchSubmodules = false;
      sha256 = "sha256-qt3t1iKRRNuiLWiVoiAYOu+9E7jsyECyIqZJ/oRIT1A=";
    };
    date = "2022-07-04";
  };
  chezmoi-vim = {
    pname = "chezmoi-vim";
    version = "a35b426db9d83f8fcf43981f299ad3145d001af2";
    src = fetchFromGitHub {
      owner = "alker0";
      repo = "chezmoi.vim";
      rev = "a35b426db9d83f8fcf43981f299ad3145d001af2";
      fetchSubmodules = false;
      sha256 = "sha256-RrPnm31ru7fVyZYfD3YgUtH+NWoQHzzzBiqf44D5jo0=";
    };
    date = "2024-01-06";
  };
  fzf-fish = {
    pname = "fzf-fish";
    version = "v10.2";
    src = fetchFromGitHub {
      owner = "patrickF1";
      repo = "fzf.fish";
      rev = "v10.2";
      fetchSubmodules = false;
      sha256 = "sha256-1/MLKkUHe4c9YLDrH+cnL+pLiSOSERbIZSM4FTG3wF0=";
    };
  };
  guihua-lua = {
    pname = "guihua-lua";
    version = "f8ef84df19369bd1fcb8c3210a3b9db13026b7bc";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "guihua.lua";
      rev = "f8ef84df19369bd1fcb8c3210a3b9db13026b7bc";
      fetchSubmodules = false;
      sha256 = "sha256-fKljvoExSf1Y+3yOfYoS1+4nyDTmGRKIs+vwkK69VZM=";
    };
    date = "2024-03-24";
  };
  k8s-snippets = {
    pname = "k8s-snippets";
    version = "ba5ca9b1b12a3b1c3fb0237494380f4feff668c8";
    src = fetchFromGitHub {
      owner = "budimanjojo";
      repo = "k8s-snippets";
      rev = "ba5ca9b1b12a3b1c3fb0237494380f4feff668c8";
      fetchSubmodules = false;
      sha256 = "sha256-vVDKI9HR1QqJDHh10oZQ9Zr01gvJhj1iIEgwP+gssx8=";
    };
    date = "2023-12-13";
  };
  krr = {
    pname = "krr";
    version = "v1.60-alpha";
    src = fetchFromGitHub {
      owner = "robusta-dev";
      repo = "krr";
      rev = "v1.60-alpha";
      fetchSubmodules = false;
      sha256 = "sha256-rIKL1SHVO3kA8xMgKwkYsnRkYepEGmGXAPUkilYboHc=";
    };
  };
  luasnip = {
    pname = "luasnip";
    version = "v2.2.0";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "v2.2.0";
      fetchSubmodules = false;
      sha256 = "sha256-qxDKlbKK5IL4/FJctpkiDI5uITAVXVXXoC0p84aepRU=";
    };
  };
  mason-lspconfig-nvim = {
    pname = "mason-lspconfig-nvim";
    version = "9dfcf2036c223920826140f0151d929a43f9eceb";
    src = fetchFromGitHub {
      owner = "williamboman";
      repo = "mason-lspconfig.nvim";
      rev = "9dfcf2036c223920826140f0151d929a43f9eceb";
      fetchSubmodules = false;
      sha256 = "sha256-MlBdOcx7V7x9aMcz2gQYi/k+g6kh0XA1Q7A39XC60KE=";
    };
    date = "2024-03-22";
  };
  mason-tool-installer-nvim = {
    pname = "mason-tool-installer-nvim";
    version = "1212fb6082b7177dde17ea65e429e027835aeb40";
    src = fetchFromGitHub {
      owner = "WhoIsSethDaniel";
      repo = "mason-tool-installer.nvim";
      rev = "1212fb6082b7177dde17ea65e429e027835aeb40";
      fetchSubmodules = false;
      sha256 = "sha256-bKahGL+fElajwLxKCoPTEROIRE9A1KhfcmFWOnG7LX8=";
    };
    date = "2024-02-13";
  };
  oil-nvim = {
    pname = "oil-nvim";
    version = "e462a3446505185adf063566f5007771b69027a1";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "oil.nvim";
      rev = "e462a3446505185adf063566f5007771b69027a1";
      fetchSubmodules = false;
      sha256 = "sha256-OEb/iRUXLd69huvWvDRL7JEHHYbEt2WTFGrSwKbS4d0=";
    };
    date = "2024-03-17";
  };
  prometheus-api-client = {
    pname = "prometheus-api-client";
    version = "0.5.5";
    src = fetchurl {
      url = "https://pypi.org/packages/source/p/prometheus-api-client/prometheus-api-client-0.5.5.tar.gz";
      sha256 = "sha256-WUScS+BIXqWi37vtJILrCj7qyMExs+/IZt9MmgxAO7c=";
    };
  };
  puffer-fish = {
    pname = "puffer-fish";
    version = "12d062eae0ad24f4ec20593be845ac30cd4b5923";
    src = fetchFromGitHub {
      owner = "nickeb96";
      repo = "puffer-fish";
      rev = "12d062eae0ad24f4ec20593be845ac30cd4b5923";
      fetchSubmodules = false;
      sha256 = "sha256-2niYj0NLfmVIQguuGTA7RrPIcorJEPkxhH6Dhcy+6Bk=";
    };
    date = "2024-03-03";
  };
  sad-nvim = {
    pname = "sad-nvim";
    version = "869c7f3ca3dcd28fd78023db6a7e1bf8af0f4714";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "sad.nvim";
      rev = "869c7f3ca3dcd28fd78023db6a7e1bf8af0f4714";
      fetchSubmodules = false;
      sha256 = "sha256-uwXldYA7JdZHqoB4qfCnZcQW9YBjlRWmiz8mKb9jHuI=";
    };
    date = "2023-03-13";
  };
  tmux-fish = {
    pname = "tmux-fish";
    version = "f36b077b2d5ebd577240679cd0adf5cff11380b4";
    src = fetchFromGitHub {
      owner = "budimanjojo";
      repo = "tmux.fish";
      rev = "f36b077b2d5ebd577240679cd0adf5cff11380b4";
      fetchSubmodules = false;
      sha256 = "sha256-rS8YPem8tGEeKF1HfHt0eFASx1ihNUD7Z7goLfSzN0Q=";
    };
    date = "2023-12-29";
  };
  tokyonight-gtk-theme = {
    pname = "tokyonight-gtk-theme";
    version = "58a04f1d4be7ee498ddaa31aa8bc5716f554aa0c";
    src = fetchFromGitHub {
      owner = "Fausto-Korpsvart";
      repo = "Tokyo-Night-GTK-Theme";
      rev = "58a04f1d4be7ee498ddaa31aa8bc5716f554aa0c";
      fetchSubmodules = false;
      sha256 = "sha256-bk86p3W+SWuW01FycLA8bL0DII7xvXNZoeRrvIoqaFg=";
    };
    date = "2024-03-18";
  };
  tokyonight-icon-theme = {
    pname = "tokyonight-icon-theme";
    version = "58a04f1d4be7ee498ddaa31aa8bc5716f554aa0c";
    src = fetchFromGitHub {
      owner = "Fausto-Korpsvart";
      repo = "Tokyo-Night-GTK-Theme";
      rev = "58a04f1d4be7ee498ddaa31aa8bc5716f554aa0c";
      fetchSubmodules = false;
      sha256 = "sha256-bk86p3W+SWuW01FycLA8bL0DII7xvXNZoeRrvIoqaFg=";
    };
    date = "2024-03-18";
  };
}
