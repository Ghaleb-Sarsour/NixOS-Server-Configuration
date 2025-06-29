{pkgs, ...}:

{
  project.name = "minecraft-java";
  services.mc = {
     service = {
      image = "itzg/minecraft-server";
      tty = true;
      stdin_open = true;
      ports = [
        "25565:25565"
      ];
      enviornment.EULA = "TRUE";
      volumes = [
          "./data:/data"
      ];
    };
  };
}
