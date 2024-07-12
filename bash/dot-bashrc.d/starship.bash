eval "$(starship init bash)"

if [[ ${BLE_VERSION-} ]]; then
    bleopt prompt_ruler=empty-line
fi
