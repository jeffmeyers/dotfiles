# navigate panes using vim directions
bind-key -n C-h select-pane -L
bind-key -n C-l select-pane -R
bind-key -n C-j select-pane -D
bind-key -n C-k select-pane -U

bind-key r source-file ~/.tmux.conf

# set status bar colors to muted gray
set -g status-bg '#666666'
set -g status-fg '#aaaaaa'

# display full session name
set -g status-left-length 50

# show date/time in right status bar
set -g status-right "#(date '+%a, %b %d - %I:%M')"
