# Documentation: https://hub.docker.com/r/archef2000/pivpn 

{ pkgs, ...}:

{
  project.name = "pivpn-wireguard";
  services.pivpn-wireguard = {
    service = {
      image = "archef2000/pivpn:latest";
      hostname = "pivpn-wireguard";
      ports = [ "51820:51820/udp" ];
      volumes = [ "./wireguard/wireguard:/etc/wireguard" ];
      enviornment = {
        # HOST = ""; #Ex. Example.com
        VPN = "wireguard";
        PORT = 51820;
      };
      restart = "unless-stopped";
    };
  };

}
