# navigate panes using vim directions
bind-key -n C-h select-pane -L
bind-key -n C-l select-pane -R
bind-key -n C-j select-pane -D
bind-key -n C-k select-pane -U

# set status bar colors to muted gray
set -g status-bg '#666666'
set -g status-fg '#aaaaaa'

# display full session name
set -g status-left-length 50
