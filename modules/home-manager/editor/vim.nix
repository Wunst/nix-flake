{ ... }: {
  programs.vim = {
    enable = true;
    extraConfig = ''
      set nu
      set rnu
      set sw=2
      set et
      set si
      filetype plugin indent on
      syntax on
    '';
  };
}

