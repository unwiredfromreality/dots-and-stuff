if status is-interactive
    # Commands to run in interactive sessions can go here
end
function fish_greeting
fastfetch
end

fish_add_path /home/riley/.spicetify

starship init fish | source
