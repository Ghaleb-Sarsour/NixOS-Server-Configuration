{ config, pkgs, ...}:

{

  # Arion requirements (Uses podman for NixOS-based containers) 
  virtualisation.docker.enable = false;
  virtualisation.podman.enable = true;
  virtualisation.podman.dockerSocket.enable = true;
  virtualisation.podman.defaultNetwork.dnsname.enable = true; 

  # Add user to podman group (Change this if you change username)
  users.extraUsers.extServer.extraGroups = ["podman"];
}
