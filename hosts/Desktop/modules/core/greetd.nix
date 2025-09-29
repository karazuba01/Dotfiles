{ pkgs
, username
, ...
}: 



{
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        user = "infexius";
        command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd Hyprland"; 
      };
    };
  };
}
