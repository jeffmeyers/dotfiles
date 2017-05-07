# start window numbering at 1
set -g base-index 1

# tmuxinator requires pane-base-index be set too
set-window-option -g pane-base-index 1

set -g default-terminal "screen-256color"

# prefix key
set -g prefix C-b

# vim mode
setw -g mode-keys vi

# Setup 'v' to begin selection as in Vim
bind-key -t vi-copy v begin-selection
bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy"

# Update default binding of `Enter` to also use copy-pipe
unbind -t vi-copy Enter
bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"

# open new windows in same directory
bind '"' split-window -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"
bind c new-window -c "#{pane_current_path}"

# status bar config
set -g status-position top
set -g automatic-rename off
set -g status-left ''
set -g status-right ''
set -g renumber-windows on
set -g window-status-format '  #I #W  '
set -g window-status-current-format '  #W  '
set -g status-bg colour240
set -g status-fg colour249
set -g window-status-current-bg white
set -g window-status-current-fg black

set -s escape-time 0