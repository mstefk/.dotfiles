dwm_keyboard () {
if [ $(xkb-switch) = "rs(latin)" ];then
    printf "⌨ %s""rs"
elif [ $(xkb-switch) = "rs" ];then
    printf "⌨ %s""рс"
else
    printf "⌨ %s""$(xkb-switch)"
fi
}
dwm_keyboard
