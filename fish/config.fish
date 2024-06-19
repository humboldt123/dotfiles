if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vi nvim
alias cat bat
alias python python3

function nano
    if read -P "Did you mean vi, are you sure you want to open NANO? (y/n): " confirm
        if test "$confirm" = y
            command nano $argv
        end
    end
end


starship init fish | source
