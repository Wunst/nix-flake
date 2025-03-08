{ pkgs, ... }: {
  programs.thunderbird = {
    enable = true;

    profiles.default = {
      isDefault = true;

      settings = {
        "extensions.autoDisableScopes" = 0;
      };

      extensions = with pkgs.nur.repos.rycee.firefox-addons; [
        dictionary-german
        deutsch-de-language-pack
      ];
    };
  };
}

