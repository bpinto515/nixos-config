{ hyprland, pkgs, ... }: {

  imports = [
    hyprland.homeManagerModules.default
    ./programs
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home = {
    username = "bp515";
    homeDirectory = "/home/bp515";
  };
  
  home.packages = (with pkgs; [
    
    #User Apps
    celluloid
    discord
    librewolf
    cool-retro-term
    bibata-cursors
    lollypop
    lutris
    openrgb
    betterdiscord-installer
    

    #utils
    ranger
    wlr-randr
    git
    rustup
    gnumake
    catimg
    curl
    appimage-run
    xflux
    dunst
    pavucontrol

    #misc 
    librewolf
    cava
    neovim
    rofi
    nitch
    wget
    grim
    slurp
    wl-clipboard
    pamixer
    mpc-cli
    tty-clock
    eza
    btop
    tokyo-night-gtk
  ]);
    
    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
  
  home.stateVersion = "23.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
