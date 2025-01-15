if status is-interactive
    # Commands to run in interactive sessions can go here

    # Menambahkan direktori header untuk C
    set -x C_INCLUDE_PATH /usr/include/gtk-3.0 /usr/include/glib-2.0 /usr/lib/x86_64-linux-gnu/glib-2.0/include /usr/lib/glib-2.0/include /usr/include/pango-1.0 /usr/include/harfbuzz /usr/include/cairo /usr/include/gtk-4.0/gdk /usr/include/gdk-pixbuf-2.0 /usr/include/atk-1.0 $C_INCLUDE_PATH

# Menambahkan direktori header untuk C++
    set -x CPLUS_INCLUDE_PATH /usr/include/gtk-3.0 /usr/include/glib-2.0 /usr/lib/x86_64-linux-gnu/glib-2.0/include /usr/lib/glib-2.0/include /usr/include/pango-1.0 /usr/include/harfbuzz /usr/include/cairo /usr/include/gtk-4.0/gdk /usr/include/gdk-pixbuf-2.0 /usr/include/atk-1.0 $CPLUS_INCLUDE_PATH

end
