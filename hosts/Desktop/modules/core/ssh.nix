

{ userSettings , authorizedKeys ? [], ... }:
{
  services.openssh = {
  enable = true;
  ports = [ 22 443 2222 7422];
  settings = {
    PasswordAuthentication = false;
    AllowUsers = "infexius"; # Allows all users by default. Can be [ "user1" "user2" ]
    UseDns = true;
    KbdInteractiveAuthentication = false;
    X11Forwarding = false;
    PermitRootLogin = "no"; # "yes", "without-password", "prohibit-password", "forced-commands-only", "no"
  };
};

# Fail2Ban SSH Block

services.fail2ban.enable = true;


#services.endlessh = {
#    enable = true;
#    port = 22;
#    openFirewall = true;
#  };



}
