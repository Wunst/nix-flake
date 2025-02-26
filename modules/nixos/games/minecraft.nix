{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    prismlauncher
    # Automatically installs various JREs for different versions. 
  ];
}

