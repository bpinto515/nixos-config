{ pkgs, config, ... }:
# media - control and enjoy audio/video
{
  # imports = [
  # ];

  home.packages = with pkgs; [
    # Audio control
    pavucontrol
    playerctl
    pulsemixer
    
    # Images
    imv
    
    # Talking
    discord

    # Music
    spotify 
  ];

  programs = {
    mpv = {
      enable = true;
      defaultProfiles = ["gpu-hq"];
      scripts = [pkgs.mpvScripts.mpris];
    };
  };

  services = {
    playerctld.enable = true;
  };
}
