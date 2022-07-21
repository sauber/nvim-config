local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    if server.name == "tsserver" then
        local nvim_lsp = require("lspconfig")
        opts.root_dir = nvim_lsp.util.root_pattern("package.json")
    end

    --  have an empty deno.json file to indicate deno language server
    if server.name == "denols" then
        local nvim_lsp = require("lspconfig")
        opts.root_dir = nvim_lsp.util.root_pattern("deno.json")
    end

    -- This setup() function will take the provided server configuration and decorate it with the necessary properties
    -- before passing it onwards to lspconfig.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)

