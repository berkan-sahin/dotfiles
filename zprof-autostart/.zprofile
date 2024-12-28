export PATH=$PATH:/home/bsahin/.emacs.d/bin:/home/bsahin/.local/bin:/home/bsahin/.local/bin/statusbar
export _JAVA_AWT_WM_NONREPARENTING=1
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

