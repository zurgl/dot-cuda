-- Update this path
-- local extension_path = vim.env.HOME .. "/.vscode-oss/extensions/vadimcn.vscode-lldb-1.6.7/"
-- local codelldb_path = extension_path .. "adapter/codelldb"
-- local liblldb_path = extension_path .. "lldb/lib/liblldb.so"

return {
	standalone = true,
	tools = {
		runnables = {
			use_telescope = true,
		},
		inlay_hints = {
			auto = true,
			show_parameter_hints = true,
			parameter_hints_prefix = " <- ",
			other_hints_prefix = " => ",
			highlight = "@constructor",
		},
	},
	server = {
		settings = {
			["rust-analyzer"] = {
				checkOnSave = {
					command = "clippy",
				},
			},
		},
	},
	-- debugging stuff
--	dap = {
--		adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
--	},
}
