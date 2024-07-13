#!/bin/bash

# Inicia una sesión de tmux llamada 'dos-consolas'
tmux new-session -d -s dos-consolas

# Crear la primera ventana y ejecutar comandos
tmux send-keys -t dos-consolas:0 'echo "Directorio actual en la primera ventana:"' C-m
tmux send-keys -t dos-consolas:0 'pwd' C-m

# Crear una segunda ventana en la sesión 'dos-consolas'
tmux new-window -t dos-consolas:1

# Ejecutar comandos en la segunda ventana
tmux send-keys -t dos-consolas:1 'echo "Directorio actual en la segunda ventana:"' C-m
tmux send-keys -t dos-consolas:1 'pwd' C-m

# Seleccionar la primera ventana al iniciar (opcional)
tmux select-window -t dos-consolas:0

# Adjunta y muestra la sesión de tmux
tmux attach -t dos-consolas
