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

    notify.nvim-notify.enable = true;

    utility.snacks-nvim = {
      enable = true;
      setupOpts = {
        bigfile.enabled = true;
        scope.enabled = true;
        indent.enabled = true;
        explorer.replace_netrw = true;
      };
    };
  };
}
