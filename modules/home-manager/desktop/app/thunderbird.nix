{ ... }: {
  programs.thunderbird = {
    enable = true;
    profiles.default = {
      isDefault = true;
      # TODO: Include language packs.
    };
  };
}

