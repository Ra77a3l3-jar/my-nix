{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
    
    interactiveShellInit = ''
      set -g fish_greeting ""
      
      fish_add_path $HOME/.local/bin
      fish_add_path $HOME/.nix-profile/bin
      
      if type -q zoxide
        zoxide init fish | source
      end
      
      if type -q zellij
        if not set -q ZELLIJ
          exec zellij
        end
      end
    '';
    
    functions = {
      fish_prompt = ''
        set_color E36464
        echo -n '@'(whoami)' '
        
        set_color 62ED8B
        echo -n '➜ '
        
        set_color 56B6C2
        echo -n (basename (prompt_pwd))
        
        if type -q git
          set -l branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)
          if test -n "$branch"
            set_color DDB15F
            echo -n ' git('
            set_color D4AAFC
            echo -n "$branch"
            set_color DDB15F
            echo -n ')'
          end
        end
        
        if test $status -ne 0
          set_color DCB977
          echo -n ' ✗'
        end
        
        set_color normal
        echo -n ' '
      '';
    };
  };
}
