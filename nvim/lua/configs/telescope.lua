
local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
            prompt_title = "< VimRC >",
            cwd = "~/.config/nvim"
        })
end


local function link_zettel(prompt_bufnr, map)
    local entry = require("telescope.actions.state").get_selected_entry(prompt_bufnr)
    print(entry.filename)
    require("telescope.actions").close(prompt_bufnr)
    -- ensure that the buffer can be written to
    if vim.api.nvim_buf_get_option(vim.api.nvim_get_current_buf(), "modifiable") then
        print("Paste!")
        -- substitute "^V" for "b"
        local reg_type = vim.fn.getregtype(entry.value)
        if reg_type:byte(1, 1) == 0x16 then
            reg_type = "b" .. reg_type:sub(2, -1)
        end
        local file_name = entry.filename:gsub(".md","")
        vim.api.nvim_put({"[[" .. file_name .. "]]"}, reg_type, true, true)
    end
end

M.search_zettelkasten = function()
    require("telescope.builtin").find_files({
            prompt_title = "< Zettels: files >",
            cwd = "/Users/danielmathiot/Documents/000 Meta/00.01 NewBrain",
            attach_mappings = function(prompt_bufnr, map)
                map('i','<C-p>', link_zettel)
                map('n', 'dd', remove_file)
                return true
            end
        })
end

M.open_starting_files = function()
    require("telescope.builtin").live_grep({
            prompt_title = "< Zettels: §§ >",
            cwd = "/Users/danielmathiot/Documents/000 Meta/00.01 NewBrain",
            default_text = "§§",
            attach_mappings = function(prompt_bufnr, map)
                map('i','<C-p>', link_zettel)
                return true
            end
        })
end

M.search_zettelkasten_in_files = function()
    require("telescope.builtin").live_grep({
            prompt_title = "< Zettels: in files >",
            cwd = "/Users/danielmathiot/Documents/000 Meta/00.01 NewBrain",
            attach_mappings = function(prompt_bufnr, map)
                map('i','<C-p>', link_zettel)
                return true
            end
        })
end

M.find_link = function()
    require("telescope.builtin").grep_string({
            prompt_title = "< Zettels: links >",
            cwd = "/Users/danielmathiot/Documents/000 Meta/00.01 NewBrain"
        })
end


return M


