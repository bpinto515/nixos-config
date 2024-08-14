{ pkgs, ... }: {
  home.packages = [pkgs.gh];

  programs.git = {
    enable = true;

    userName = "Bruno Pinto";
    userEmail = "brunopinto5151@gmail.com";
  };
}
