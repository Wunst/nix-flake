{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    extraPackages = with pkgs; [
      gcc # Compiler for treesitter grammars. 
      xsel
      git
      ripgrep
      fd
    ];
    defaultEditor = true;
  };

  # Install config.
  home.file.".config/nvim" = {
    source = ./config;
    recursive = true;
  };

  home.shellAliases.v = "nvim";
}

