#!/bin/bash

# Inicia una sesión de tmux llamada 'dos-consolas'
tmux new-session -d -s dos-consolas

# Divide la ventana en dos paneles verticales
tmux split-window -v -t dos-consolas:0.0

# Configura el primer panel para que imprima el pwd
tmux send-keys -t dos-consolas:0.0 'echo "Directorio actual:"' C-m
tmux send-keys -t dos-consolas:0.0 'pwd' C-m

# Configura el segundo panel para que también imprima el pwd
tmux send-keys -t dos-consolas:0.1 'echo "Directorio actual:"' C-m
tmux send-keys -t dos-consolas:0.1 'pwd' C-m

# Selecciona la primera ventana activa (opcional)
tmux select-pane -t dos-consolas:0.0

# Adjunta y muestra la sesión de tmux
tmux attach -t dos-consolas
