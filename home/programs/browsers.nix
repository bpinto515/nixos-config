{ pkgs, config, ...}: {
  programs = {
    chromium = {
      enable = true;
      extensions = [
        # {id = "";}  // extension id, query from chrome web store
      ];
    };

  };
}
