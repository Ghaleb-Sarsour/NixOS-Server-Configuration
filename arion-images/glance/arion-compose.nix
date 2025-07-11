# Documentation: https://github.com/glanceapp/glance?tab=readme-ov-file 

{ pkgs, ...}:

{
  project.name = "glance";
  services.glance = {
    service = {
      image = "glanceapp/glance";
      volumes = [ "./config:/app/config" ];
      ports = ["8080:8080"];
      restart = "unless-stopped";
    }; 
  };
}
