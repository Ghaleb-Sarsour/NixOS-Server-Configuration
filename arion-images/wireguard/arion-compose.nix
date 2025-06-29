# Documentation: https://github.com/linuxserver/docker-wireguard 
# https://hub.docker.com/r/linuxserver/wireguard 

{ pkgs, ...}:

{
  project.name = "wireguard";
  services.wireguard = {
    service = {
      image = "lscr.io/linuxserver/wireguard:latest";
      cap_add = [
        "NET_ADMIN"
        "SYS_MODULE" #optional
      ];
    };
  };
}
