#!/bin/bash

# Masukkan nama aplikasi yang ingin Anda periksa ke dalam array
aplikasi=("mpd" "ncmpcpp")

# Loop melalui array aplikasi
for app in "${aplikasi[@]}"; do
    # Periksa apakah aplikasi ada dalam PATH menggunakan which
    if which "$app" &> /dev/null; then
        echo "$app sudah terinstal."
    else
        echo "$app belum terinstal. Menginstal..."
        # Instal aplikasi menggunakan apt-get
        sudo apt-get install "$app" -y
        if [ $? -eq 0 ]; then
            echo "$app berhasil diinstal."
        else
            echo "Gagal menginstal $app. Pastikan Anda memiliki izin yang cukup atau cek koneksi internet Anda."
        fi
    fi
done

#!/bin/bash

# Daftar path dari folder yang ingin Anda periksa
folder_paths=("$HOME/.config/mpd/playlists" "$HOME/.config/ncmpcpp")

# Loop melalui array path folder
for path in "${folder_paths[@]}"; do
    # Periksa apakah folder sudah ada
    if [[ -d "$path" ]]; then
        echo "Folder di path $path sudah ada."
    else
        echo "Folder di path $path belum ada. Membuat folder..."
        # Buat folder jika belum ada
        mkdir -p "$path"
        if [ $? -eq 0 ]; then
            echo "Folder di path $path berhasil dibuat."
        else
            echo "Gagal membuat folder di path $path."
        fi
    fi
done

#mpd
#touch -p $HOME/.config/mpd/ mpd.db mpd.log mpd.pid mpdstate
touch ~/.config/mpd/mpd.db
touch ~/.config/mpd/mpd.log
touch ~/.config/mpd/mpd.pid
touch ~/.config/mpd/mpdstate
cp mpd.conf ~/.config/mpd

#ncmpcpp
cp config ~/.config/ncmpcpp
