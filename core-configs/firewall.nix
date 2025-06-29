{ config, pkgs, ...}:

{
  # Firewall Settings.
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [22];
    allowedUDPPorts = [ ];


    # uncomment to open port ranges. 

    # allowedTCPPortRanges = [
    #   { from = 1714; to = 1764;}
    # ];
    # allowedUDPPortRanges = [
    #   { from = 1714; to = 1764;}
    # ];
  };
}
