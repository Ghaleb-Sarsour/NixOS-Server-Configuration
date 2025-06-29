{ config, pkgs, ...}:

{
  # Add any packages here
  enviornment.systemPackages = with pkgs; [

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
