{ pkgs-unstable, ... }:

{
  programs.zed-editor = {
    enable = true;
    package = pkgs-unstable.zed-editor;

    extensions = [
      "git-firefly"
      "toml"
      "material-icon-theme"
      "make"
      "nix"
      "bash"
      "dockerfile"
    ];

    userSettings = {
      hard_tabs = false;

      indent_guides = {
        coloring = "fixed";
        background_coloring = "disabled";
        active_line_width = 1;
        enabled = true;
        line_width = 2;
      };

      tab_size = 4;
      cli_default_open_behavior = "existing_window";

      edit_predictions = {
        mode = "subtle";
      };

      diagnostics = {
        button = false;
      };

      restore_on_startup = "launchpad";

      ui_font_family = "JetBrainsMono Nerd Font";
      buffer_font_weight = 550.0;
      buffer_font_family = "JetBrainsMono Nerd Font";

      outline_panel = {
        button = false;
      };

      collaboration_panel = {
        button = false;
      };

      git_panel = {
        dock = "left";
      };

      agent = {
        sidebar_side = "right";
        dock = "right";
        favorite_models = [ ];
        model_parameters = [ ];
      };

      project_panel = {
        dock = "left";
      };

      icon_theme = "Material Icon Theme";

      session = {
        trust_all_worktrees = true;
      };

      ui_font_size = 16;
      buffer_font_size = 16.0;
      theme = "Catppuccin Espresso (Blur)";
    };
  };
}
