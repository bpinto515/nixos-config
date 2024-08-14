{ lib, pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    # autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      update = "sudo nixos-rebuild switch";
    };
  };

  programs.starship.enable = true;
   
  programs.bash = {
            enable = true;
	    bashrcExtra = ''
	        zsh
		exit
	    '';
        };

  programs.kitty = {
	    enable = true;
	    font = {
	        name = "Fira Code";
		package = pkgs.fira-code;
		size = 12;
	    };
	    settings = {
		enable_audio_bell = false;
	    };
	    theme = "Blazer";
   };

}
