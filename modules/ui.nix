{
  config.vim = {
    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
      transparent = true;
    };

    visuals = {
      nvim-scrollbar.enable = true;
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true;
      fidget-nvim.enable = true;
    };

    ui = {
      noice.enable = true;
      breadcrumbs = {
        enable = true;
        navbuddy.enable = true;
      };
    };

    statusline.lualine = {
      enable = true;
      setupOpts = {
        tabline = {
          lualine_a = ["buffers"];
          lualine_z = ["tabs"];
        };
      };
    };

    dashboard.dashboard-nvim = {
      enable = true;
      setupOpts = {
        theme = "doom";
        config = {
          header = [
            ""
            "⠄⢿⣇⠄⠄⠘⣆⢀⣼⣿⣿⣿⣿⢿⡿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣟⢧⡲⣿⢷⢦                    "
            "⠄⠈⣿⠄⠄⠄⢙⢞⢿⣿⢹⢿⣦⢏⣱⢿⠘⣿⣝⠹⢿⣿⡽⣿⣿⣏⣆⢿⣿⡞                    "
            "⠄⠄⢻⡀⠄⠄⠈⣾⡸⡏⢸⡾⣴⣿⣿⣶⣼⣎⢵⢀⡛⣿⣷⡙⡻⢻⡴⠨⠨⠖                    "
            "⠄⠄⠈⣧⢀⡴⠊⢹⠁⡇⠈⢣⣿⣿⣿⣿⣦⣿⣷⣜⡳⣝⢧⢃⢣⣼⢁⠘⠆                     "
            "⠄⠄⠄⢹⡇⠄⣠⠔⠚⣅⠄⢰⣶⣦⣭⣿⣿⣿⡿⠟⠿⣷⡧⠄⣘⣟⣸                       "
            "⠄⠄⠄⠄⢷⠎⠄⠄⠄⣼⣦⠻⣿⣿⡟⠛⠻⢿⣿⣿⣿⡾⢱⣿⡏⠸⡏ ~ Have a wonderful day"
            "⠄⠄⠄⠄⠸⡄⠄⡄⠄⣿⢧⢗⠌⠻⣇⠿⠿⣸⣿⣿⡟⡐⣿⠟⢰⣇⠇                       "
            "⠄⠄⠄⠄⣠⡆⠄⠃⢠⠏⣤⢀⢢⡰⣭⣛⡉⠩⠭⡅⣾⢳⡴⡀⢸⣿⡆                       "
            "⠄⠄⢀⣶⡟⣽⠼⢀⡕⢀⠘⠸⢮⡳⡻⡍⡷⡆⠤⠤⠭⢸⢳⣷⢸⡟⣷                       "
            "⠄⣴⣿⢫⢞⣵⢏⡞⠄⢸⠄⣛⣗⠩⠄⣰⣚⠒⠂⣀⡀⢸⢸⣿⣧⠇⡼⣧                      "
            ""
            ""
          ];
          disable_move = true;
          center = [
            {
              icon = "  ";
              desc = "Find File";
              action = "lua Snacks.picker.smart()";
              key = "s";
            }
            {
              icon = "  ";
              desc = "Recent Files";
              action = "lua Snacks.picker.recent()";
              key = "o";
            }
            {
              icon = "󱄽  ";
              desc = "Find Text";
              action = "lua Snacks.picker.grep()";
              key = "g";
            }
            {
              icon = "  ";
              desc = "Find Keymaps";
              action = "lua Snacks.picker.keymaps()";
              key = "k";
            }
            {
              icon = "  ";
              desc = "Quit NVIM";
              action = "qa";
              key = "q";
            }
          ];
          vertical_center = true;
          packages.enable = false;
          footer = [];
        };
      };
    };

    highlight.CustomIndentHg.fg = "#32A88F";

    utility.snacks-nvim = {
      enable = true;
      setupOpts = {
        bigfile.enabled = true;
        scope.enabled = true;
        notifier.enabled = true;
        explorer.replace_netrw = true;
        indent = {
          enabled = true;
          scope.hl = "CustomIndentHg";
          chunk.hl = "CustomIndentHg";
        };
      };
    };
  };
}
