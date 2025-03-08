{ pkgs, ... }: {
  programs.firefox = {
    enable = true;

    policies = {
      SanitizeOnShutdown = {
        Cookies = true;
        Sessions = true;
        SiteSettings = true;
      };

      # Disable first run experience.
      OverrideFirstRunPage = ""; 

      PromptForDownloadLocation = true;
      OfferToSaveLogins = false;
    };

    profiles.default = {
      search = {
        default = "DuckDuckGo";
        force = true;
      };

      settings = {
        "browser.open_pdf_attachments_inline" = true;

        # Enable extensions by default.
        "extensions.autoDisableScopes" = 0;
      };

      extensions.packages = with pkgs.nur.repos.rycee.firefox-addons; [
        ublock-origin
        privacy-badger
        keepassxc-browser
      ];
    };
  };
}

