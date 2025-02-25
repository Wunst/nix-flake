{ pkgs, ... }: {
  programs.firefox = {
    enable = true;

    policies = {
      SanitizeOnShutdown = {
        # Clear cookies after each session.
        Cookies = true;
        Sessions = true;
        SiteSettings = true;
      };

      OverrideFirstRunPage = ""; # Disable first run experience.

      PromptForDownloadLocation = true;
      OfferToSaveLogins = false;
    };

    profiles.default = {
      settings = {
        "browser.open_pdf_attachments_inline" = true;
        "extensions.autoDisableScopes" = 0; # Enable extensions by default.
      };

      search = {
        default = "DuckDuckGo";
        force = true;
      };

      extensions.packages = with pkgs.nur.repos.rycee.firefox-addons; [
        keepassxc-browser
        ublock-origin
        privacy-badger
      ];

    };

  };
}

