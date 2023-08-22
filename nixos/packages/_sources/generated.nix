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
    version = "902c4070f204b226a6e0c6681302244c8d27b7c3";
    src = fetchFromGitHub {
      owner = "alker0";
      repo = "chezmoi.vim";
      rev = "902c4070f204b226a6e0c6681302244c8d27b7c3";
      fetchSubmodules = false;
      sha256 = "sha256-ugh127bF4krJHu3GcjvKkGmwMN8qKfDbvVwk1FRw2I8=";
    };
    date = "2023-07-07";
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
    version = "47456c4869a3bbc9d43653b17581511ef2e5fabb";
    src = fetchFromGitHub {
      owner = "budimanjojo";
      repo = "k8s-snippets";
      rev = "47456c4869a3bbc9d43653b17581511ef2e5fabb";
      fetchSubmodules = false;
      sha256 = "sha256-kumdrVRIEe7Bmx7ZUx3PFL4obz8G9PKuuCqK6Omo4Uc=";
    };
    date = "2023-05-02";
  };
  krr = {
    pname = "krr";
    version = "v1.5.3";
    src = fetchFromGitHub {
      owner = "robusta-dev";
      repo = "krr";
      rev = "v1.5.3";
      fetchSubmodules = false;
      sha256 = "sha256-kW3APvsJ1VTxKML+BWM8pdNfHI9bCZssounDPhQyPe4=";
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
    version = "2997f467881ac4faa6f8c5e7065e3a672297c8ad";
    src = fetchFromGitHub {
      owner = "williamboman";
      repo = "mason-lspconfig.nvim";
      rev = "2997f467881ac4faa6f8c5e7065e3a672297c8ad";
      fetchSubmodules = false;
      sha256 = "sha256-NE0SeGHCjJoW5JTDqPI+bwIrZVfCOYlEmUTD2MPMIT4=";
    };
    date = "2023-08-20";
  };
  mason-tool-installer-nvim = {
    pname = "mason-tool-installer-nvim";
    version = "031903fefbf59371502092ef9e22cab9161d90ba";
    src = fetchFromGitHub {
      owner = "WhoIsSethDaniel";
      repo = "mason-tool-installer.nvim";
      rev = "031903fefbf59371502092ef9e22cab9161d90ba";
      fetchSubmodules = false;
      sha256 = "sha256-lCEYt3lqlVrzazg1TdEtYnY32VjhJLdj2m36AjXURv0=";
    };
    date = "2023-07-13";
  };
  oil-nvim = {
    pname = "oil-nvim";
    version = "bfa0e8705eb83a0724aed6d5dc9d21aa62a8986b";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "oil.nvim";
      rev = "bfa0e8705eb83a0724aed6d5dc9d21aa62a8986b";
      fetchSubmodules = false;
      sha256 = "sha256-kGvrcaOil495GpuDgWKdb9zaSTcnQT3yu5nt7Af4UB0=";
    };
    date = "2023-08-22";
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
