{ config, pkgs, ...}:

{
  # Add any packages here
  environment.systemPackages = with pkgs; [

    # Core Packages
    coreutils
    curl
    wget
    git
    vim
    certbot


    # Docker
    arion
    docker-client
  ];
}
