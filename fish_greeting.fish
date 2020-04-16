function fish_greeting -d "What's up, fish?"
    set_color $fish_color_comment
    uname -nmsr

    # TODO: `command -q -s` only works on fish 2.5+, so hold off on that for now
    command -s uptime >/dev/null
    and command uptime

    switch (uname)
    case Linux
        uname -a
        lsb_release -a
    case Darwin
        ~/scripts/netstats.sh
    case '*'
        echo Hi, stranger!
    end

    set_color normal
end
