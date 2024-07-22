function fish_vercmp --description "Compare versions"
    if not set -q argv[2]
        echo "Expected two arguments" >&2
        return 2
    end

    set -l first (string split "." -- $argv[1] | string split "-" | string split "")
    set -l second (string split "." -- $argv[2] | string split "-" | string split "")
    while test (count $first) -lt (count $second)
        set first $first 0
    end
    while test (count $second) -lt (count $first)
        set second $second 0
    end
    while set -q first[1]
        if test $first[1] = $second[1]
            set -e first[1]
            set -e second[1]
            continue
        else if string match -qr '[0-9]' -- $first[1]; and not string match -qr '[0-9]' -- $second[1]
            echo 1
            return 2
        else if not string match -qr '[0-9]' -- $first[1]; and string match -qr '[0-9]' -- $second[1]
            echo -1
            return 1
        else if test (printf '%d' "'$first[1]" | string join "") -lt (printf '%d' "'$second[1]" | string join "")
            echo -1
            return 1
        else
            echo 1
            return 2
        end
    end
    echo 0
    return 0
end
