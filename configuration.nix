# Core configuration file

{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      # import core-configs below.
      ./core-configs/firewall.nix # Firewall Settings.
      ./core-configs/packages.nix # System Packages.
      ./core-configs/ssh.nix # SSH Settings.
      ./core-configs/arion.nix # Arion Settings (Used to setup docker images).
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  # Replace extserver with your own username if desired.
 # WARNING: If you change the default username, make sure to change:
 # 1. enable user login in ssh.nix
 # 2. user settings in arion-docker.nix
  users.users.extserver = {
    isNormalUser = true;
    description = "Main server user";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  # Enable flakes.
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Allow unfree packages.
  nixpkgs.config.allowUnfree = true;


  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

}
