# Documentation: https://hub.docker.com/r/archef2000/pivpn 

{ pkgs, ...}:

{
  project.name = "pivpn-openvpn";
  services.pivpn-openvpn = {
    service = {
      image = "archef2000/pivpn:latest";
      hostname = "pivpn-openvpn";
      ports = [ "443:443/tcp" ];
      volumes = [ "./openvpn/openvpn:/etc/openvpn" ];
      environment = {
        # HOST = ""; #Ex. Example.com
        VPN = "openvpn";
        PROTO = "tcp";
        PORT = 443;
      };
      privileged = true;
      restart = "unless-stopped";
    };
  };

}
