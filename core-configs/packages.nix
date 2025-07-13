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

    # Docker
    arion
    docker-client
  ];
}
