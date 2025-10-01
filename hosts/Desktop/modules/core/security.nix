{ pkgs, config, lib, userSettings, ... }:

{
  


  security = {
    rtkit.enable = true;
    polkit = {
      enable = true;
      extraConfig = ''
        polkit.addRule(function(action, subject) {
          if ( subject.isInGroup("users") && (
           action.id == "org.freedesktop.login1.reboot" ||
           action.id == "org.freedesktop.login1.reboot-multiple-sessions" ||
           action.id == "org.freedesktop.login1.power-off" ||
           action.id == "org.freedesktop.login1.power-off-multiple-sessions"
          ))
          { return polkit.Result.YES; }
        })
      '';
    };
    pam.services.swaylock = {
      text = ''auth include login '';
    };
  };


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };



security.pam.services.gtklock = {
  text = ''
    auth include login
  '';
};



# Polkit-Auth

  #security.polkit.enable = true;

  systemd = {
    user.services.polkit-gnome-authentication-agent-1 = {
      description = "polkit-gnome-authentication-agent-1";
      wantedBy = ["graphical-session.target"];
      wants = ["graphical-session.target"];
      after = ["graphical-session.target"];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
        Restart = "on-failure";
        RestartSec = 1;
        TimeoutStopSec = 10;
      };
    };
  };
  environment.systemPackages = with pkgs; [
    
  ];


  #security = {
  #  pam.services.swaylock = {
  #    text = ''
  #      auth include login
  #    '';
  #  };
#    pam.services.gtklock = {};
   # pam.services.login.enableGnomeKeyring = true;
  #};

  services.gnome.gnome-keyring.enable = true;




# Clam AV

 #services.clamav.daemon.enable = true;
 #services.clamav.updater.enable = true;

# OpenSnitch services

#services.opensnitch.enable = true;

 # Security Sudo-Rust & Doas

#security.sudo-rs.enable=true;
security.doas.enable = true;
security.sudo.enable = false;
security.doas.extraRules = [{
  users = ["infexius"];
  # Optional, retains environment variables while running commands 
  # e.g. retains your NIX_PATH when applying your config
  keepEnv = true; 
  persist = true;  # Optional, don't ask for the password for some time, after a successfully authentication
}];




}
