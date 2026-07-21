{...}: {
  config.vim = {
    keymaps = [
      {
        key = "<Esc>";
        mode = "n";
        silent = true;
        action = ":nohlsearch<CR>";
      }
      {
        key = "<C-d>";
        mode = "n";
        silent = true;
        action = "<C-d>zz";
      }
      {
        key = "<C-u>";
        mode = "n";
        silent = true;
        action = "<C-u>zz";
      }
      {
        key = "K";
        mode = "v";
        silent = true;
        action = ":m '>+1<CR>gv=gv";
      }
      {
        key = "J";
        mode = "v";
        silent = true;
        action = ":m '<-2<CR>gv=gv";
      }
      {
        key = "H";
        mode = "n";
        silent = true;
        action = ":bprev<CR>";
      }
      {
        key = "L";
        mode = "n";
        silent = true;
        action = ":bnext<CR>";
      }
      {
        key = "<leader><leader>d";
        mode = "n";
        lua = true;
        action = "function() Snacks.bufdelete() end";
      }
      {
        key = "<leader><leader>o";
        mode = "n";
        lua = true;
        action = "function() Snacks.bufdelete.other() end";
      }

      # Window navigation
      {
        key = "<C-h>";
        mode = "n";
        silent = true;
        action = "<C-w>h";
      }
      {
        key = "<C-l>";
        mode = "n";
        silent = true;
        action = "<C-w>l";
      }
      {
        key = "<C-j>";
        mode = "n";
        silent = true;
        action = "<C-w>j";
      }
      {
        key = "<C-k>";
        mode = "n";
        silent = true;
        action = "<C-w>k";
      }

      # Snacks keymaps
      {
        key = "\\";
        mode = "n";
        lua = true;
        action = "function() Snacks.explorer.open() end";
      }
      {
        key = "<leader>sf";
        mode = "n";
        lua = true;
        action = "function() Snacks.picker.smart() end";
        desc = "Smart find files";
      }
      {
        key = "<leader>sg";
        mode = "n";
        lua = true;
        action = "function() Snacks.picker.grep() end";
        desc = "Grep the whole project";
      }
      {
        key = "<leader>sd";
        mode = "n";
        lua = true;
        action = "function() Snacks.picker.diagnostics() end";
        desc = "Search diagnostics";
      }
      {
        key = "<leader>sk";
        mode = "n";
        lua = true;
        action = "function() Snacks.picker.keymaps() end";
        desc = "Search keymaps";
      }
      {
        key = "<leader>su";
        mode = "n";
        lua = true;
        action = "function() Snacks.picker.undo() end";
        desc = "Search undo history";
      }
      {
        key = "<leader>sn";
        mode = "n";
        lua = true;
        action = "function() Snacks.picker.notifications() end";
        desc = "Search notification history";
      }
    ];
  };
}
