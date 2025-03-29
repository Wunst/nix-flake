{ ... }: {
  imports = [
    ./neovim.nix
  ];

  # Fallback vim.
  # Because fck GNU nano.
  programs.vim = {
    enable = true;
    extraConfig = ''
      set nu
      set rnu
      set sw=2
      set et
      set si
      set undofile
      set nowrap
      filetype plugin indent on
      syntax on
    '';
  };
}

