require("mason").setup()
require('mason-lspconfig').setup({
    ensure_installed = {'lua_ls', 'tsserver', 'clangd', 'csharp_ls'},
    handlers = {
        ["lua_ls"] = function ()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" }
                        }
                    }
                }
            }
        end,
        ["csharp_ls"] = function ()
            local lspconfig = require("lspconfig")
            lspconfig.csharp_ls.setup {
                handlers = {
                    ["textDocument/definition"] = require('csharpls_extended').handler,
                    ["textDocument/typeDefinition"] = require('csharpls_extended').handler,
                },
                cmd = { 'csharp-ls.exe' },
            }
        end,
        ["clangd"] = function ( )
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup({
                cmd = {"clangd"}
            })
        end,
        ["powershell_es"] = function ()
            local lspconfig = require("lspconfig")
            lspconfig.powershell_es.setup({
                settings = { powershell = { codeFormatting = { Preset = 'OTBS' } } }
            })
        end,
        function (server_name) -- default handler
            require("lspconfig")[server_name].setup({})
        end,
    }
})
