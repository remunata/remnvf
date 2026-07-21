{
  config.vim = {
    utility = {
      diffview-nvim.enable = true;
      sleuth.enable = true;
      ccc.enable = true;
    };

    git = {
      enable = true;
      gitsigns.enable = true;
      gitsigns.codeActions.enable = false;
      neogit.enable = true;
    };

    comments.comment-nvim.enable = true;

    terminal.toggleterm = {
      enable = true;
      mappings.open = "<C-\\>";
      lazygit = {
        enable = true;
        mappings.open = "<leader>_";
      };
    };
  };
}
