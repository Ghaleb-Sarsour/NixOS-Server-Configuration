# Documentation: https://nginxproxymanager.com/setup/   

{ pkgs, ...}:

{
  project.name = "nginx-proxy";
  services.nginx-proxy = {
    service = {
      image = "jc21/nginx-proxy-manager:latest";
      ports = [
        "80:80" # http
        "443:443" # https
        "81:81" # admin 
      ];
      restart = "unless-stopped";
      environment.DISABLE_IPV6 = "true";
      volumes = [
        "./data:/data"
        "./letsencrypt:/etc/letsencrypt"
      ];
    };
  };
}

