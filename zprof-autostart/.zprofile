export PATH=$PATH:/home/bsahin/.emacs.d/bin:/home/bsahin/.local/bin:/home/bsahin/.local/bin/statusbar
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

