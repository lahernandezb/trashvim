import("notify", function(notify)
	notify.setup({
		timeout = 2000,
    background_colour = "#111111"
	})
	vim.notify = notify
end)
