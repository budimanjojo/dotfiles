# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
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
    version = "3.1.4";
    src = fetchurl {
      url = "https://pypi.org/packages/source/a/alive-progress/alive-progress-3.1.4.tar.gz";
      sha256 = "sha256-dKldjQ1CvJnTo3JdvQbruFIkXxtk4wGnw3W5KyJmP3s=";
    };
  };
  chezmoi-vim = {
    pname = "chezmoi-vim";
    version = "29b79d59725b6be3852c837ce9683b5cdf963c12";
    src = fetchFromGitHub {
      owner = "alker0";
      repo = "chezmoi.vim";
      rev = "29b79d59725b6be3852c837ce9683b5cdf963c12";
      fetchSubmodules = false;
      sha256 = "sha256-wEUsQDDbYc9AiU3P3ndyNTgoTGVtOtExWFRKqzJZ7ZY=";
    };
    date = "2023-09-24";
  };
  guihua-lua = {
    pname = "guihua-lua";
    version = "5ad8dba19ce9b9fd8965598984dfdc9c119f97e4";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "guihua.lua";
      rev = "5ad8dba19ce9b9fd8965598984dfdc9c119f97e4";
      fetchSubmodules = false;
      sha256 = "sha256-MF30YevxZUreW88RX/Tn9i/5GpqXqKcmH1tbDmsnoZY=";
    };
    date = "2023-08-15";
  };
  k8s-snippets = {
    pname = "k8s-snippets";
    version = "fc461b4f6a8d10af103299a4e175e7c5527e3e27";
    src = fetchFromGitHub {
      owner = "budimanjojo";
      repo = "k8s-snippets";
      rev = "fc461b4f6a8d10af103299a4e175e7c5527e3e27";
      fetchSubmodules = false;
      sha256 = "sha256-zUknVsKSUekDKzHWMLUn2PnBvazUbcOaojD2O5/3F9U=";
    };
    date = "2023-08-23";
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
    version = "v2.0.0";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "v2.0.0";
      fetchSubmodules = false;
      sha256 = "sha256-bgQMU9hjqymzoIg+Ov+Ks18WrJPhwMIVCL3nDQkIdkM=";
    };
  };
  mason-lspconfig-nvim = {
    pname = "mason-lspconfig-nvim";
    version = "81e30dd629de24cbb26d08073ee938ab40006695";
    src = fetchFromGitHub {
      owner = "williamboman";
      repo = "mason-lspconfig.nvim";
      rev = "81e30dd629de24cbb26d08073ee938ab40006695";
      fetchSubmodules = false;
      sha256 = "sha256-ZdR4JWMQUWbFN+f3a0zWyfWh4IT8tkjbKwIiEaL3tpA=";
    };
    date = "2023-09-29";
  };
  mason-tool-installer-nvim = {
    pname = "mason-tool-installer-nvim";
    version = "83dcddb6477f9ba5db98971ef27bd18bdca921b4";
    src = fetchFromGitHub {
      owner = "WhoIsSethDaniel";
      repo = "mason-tool-installer.nvim";
      rev = "83dcddb6477f9ba5db98971ef27bd18bdca921b4";
      fetchSubmodules = false;
      sha256 = "sha256-t2kqF/Edkb/6x5quOiyE3VHsw6uQM5bRImeq84OUBLw=";
    };
    date = "2023-09-23";
  };
  oil-nvim = {
    pname = "oil-nvim";
    version = "956d7fc89b0bd1f9ea6515ca10c1e2a293e4d8fd";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "oil.nvim";
      rev = "956d7fc89b0bd1f9ea6515ca10c1e2a293e4d8fd";
      fetchSubmodules = false;
      sha256 = "sha256-VPtSWNsp10BWiWkIh5JY9xFv9LZtMXT6+e0GEKW1eT0=";
    };
    date = "2023-09-30";
  };
  prometheus-api-client = {
    pname = "prometheus-api-client";
    version = "0.5.4";
    src = fetchurl {
      url = "https://pypi.org/packages/source/p/prometheus-api-client/prometheus-api-client-0.5.4.tar.gz";
      sha256 = "sha256-OFaBB+GCqibyJZn3lCFeo93l7NPvFJRO72FO6qRsm2o=";
    };
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
  tokyonight-gtk-theme = {
    pname = "tokyonight-gtk-theme";
    version = "e9790345a6231cd6001f1356d578883fac52233a";
    src = fetchFromGitHub {
      owner = "Fausto-Korpsvart";
      repo = "Tokyo-Night-GTK-Theme";
      rev = "e9790345a6231cd6001f1356d578883fac52233a";
      fetchSubmodules = false;
      sha256 = "sha256-Q9UnvmX+GpvqSmTwdjU4hsEsYhA887wPqs5pyqbIhmc=";
    };
    date = "2023-05-30";
  };
  tokyonight-icon-theme = {
    pname = "tokyonight-icon-theme";
    version = "e9790345a6231cd6001f1356d578883fac52233a";
    src = fetchFromGitHub {
      owner = "Fausto-Korpsvart";
      repo = "Tokyo-Night-GTK-Theme";
      rev = "e9790345a6231cd6001f1356d578883fac52233a";
      fetchSubmodules = false;
      sha256 = "sha256-Q9UnvmX+GpvqSmTwdjU4hsEsYhA887wPqs5pyqbIhmc=";
    };
    date = "2023-05-30";
  };
}
