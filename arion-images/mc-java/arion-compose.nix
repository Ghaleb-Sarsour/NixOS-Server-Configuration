# Documentation: https://docker-minecraft-server.readthedocs.io/en/latest/ 
# https://hub.docker.com/r/itzg/minecraft-server 

{pkgs, ...}:

{
  project.name = "mc-java";
  services.mc-java = {
     service = {
      image = "itzg/minecraft-server";
      tty = true;
      ports = [ "25565:25565" ];
      environment = {
        EULA = "TRUE";
        GAMEMODE = "survival";
        DIFFICULTY = "hard";
      };
      volumes = [ "./data:/data" ];
      restart = "unless-stopped";
    };
  };
}
