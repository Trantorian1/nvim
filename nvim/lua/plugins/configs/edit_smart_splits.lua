-- dependencies
local plugins = require "core.plugins"

if not plugins.edit.smart_splits.loaded then
	return
end

plugins.edit.smart_splits.setup {
	-- Ignored filetypes (only while resizing)
	ignored_filetypes = {
		'nofile',
		'quickfix',
		'prompt',
	},
	-- Ignored buffer types (only while resizing)
	ignored_buftypes = { 'NvimTree' },
	-- the default number of lines/columns to resize by at a time
	default_amount = 3,
	-- when moving cursor between splits left or right,
	-- place the cursor on the same row of the *screen*
	-- regardless of line numbers. False by default.
	-- Can be overridden via function parameter, see Usage.
	move_cursor_same_row = false,
	-- resize mode options
	resize_mode = {
		-- key to exit persistent resize mode
		quit_key = '<ESC>',
		-- keys to use for moving in resize mode
		-- in order of left, down, up' right
		resize_keys = { '<Left>', '<Down>', '<Up>', '<Right>' },
		-- set to true to silence the notifications
		-- when entering/exiting persistent resize mode
		silent = false,
		-- must be functions, they will be executed when
		-- entering or exiting the resize mode
		hooks = {
			on_enter = nil,
			on_leave = nil
		}
	},
	-- ignore these autocmd events (via :h eventignore) while processing
	-- smart-splits.nvim computations, which involve visiting different
	-- buffers and windows. These events will be ignored during processing,
	-- and un-ignored on completed. This only applies to resize events,
	-- not cursor movement events.
	ignored_events = {
		'BufEnter',
		'WinEnter',
	}
}
