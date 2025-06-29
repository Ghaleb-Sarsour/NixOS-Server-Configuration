# Documentation: https://hub.docker.com/r/itzg/minecraft-bedrock-server 

{ pkgs, ...}:

{
  project.name = "mc-bedrock";
  services.mc-bedrock = {
    service = {
      image = "itzg/minecraft-bedrock-server";
      tty = true;
      ports = [ "19132:19132" ];
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
