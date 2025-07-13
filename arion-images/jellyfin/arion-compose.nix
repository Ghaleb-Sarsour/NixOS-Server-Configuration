# Documentation: https://hub.docker.com/r/linuxserver/jellyfin 

{ pkgs, ...}:

{
  project.name = "jellyfin";
  services.jellyfin = {
    service = {
      image = "lscr.io/linuxserver/jellyfin:latest";
      environment = {
        PUID = 1000;
        PGID = 1000;
        TZ = "Etc/UTC";
      };
      volumes = [
        "./library:/config"
        "./tvshows:/data/tvshows"
        "./movies:/data/movies"
      ];
      ports = ["8096:8096"];
      restart = "unless-stopped";
    }; 
  };
}
