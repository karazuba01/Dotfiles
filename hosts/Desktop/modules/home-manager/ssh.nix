

{ userSettings , authorizedKeys ? [], ... }:
{
  services.openssh = {
  enable = true;
  ports = [ 22 443 2222 7422];
  settings = {
    PasswordAuthentication = true;
    AllowUsers = null; # Allows all users by default. Can be [ "user1" "user2" ]
    UseDns = true;
    X11Forwarding = false;
    PermitRootLogin = "no"; # "yes", "without-password", "prohibit-password", "forced-commands-only", "no"
  };
};
}
