# Documentation: https://hub.docker.com/r/linuxserver/nextcloud 

{ pkgs, ...}:

{
  project.name = "nextcloud";
  services.nextcloud = {
    service = {
      image = "lscr.io/linuxserver/nextcloud:latest";
      container_name = "nextcloud";
      environment = {
        PUID="1000";
        PGID="1000";
        TZ="Etc/UTC";
      };
      volumes = [
        "/media/drive/nextcloud/config:/config"
        "/media/drive/nextcloud/data:/data"
      ];
      ports = [ "8080:80" ];
      restart = "unless-stopped";
    };
  };
}

