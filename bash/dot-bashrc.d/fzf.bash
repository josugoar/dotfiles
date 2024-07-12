if [[ ${BLE_VERSION-} ]]; then
    ble-import -d integration/fzf-completion
    ble-import -d integration/fzf-key-bindings
else
    eval "$(fzf --bash)"
fi
