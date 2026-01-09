#!/bin/bash
#-----------------------------------------------------------
#
#.......: chop.sh
#.......: Script Bash sederhana untuk channel hopping
#.......: Rofi (Fixploit03)
#
#-----------------------------------------------------------

# Interface ambil dari argumen ke 2
interface=$2

# Fungsi untuk menangani error keyboard interrupt (CTRL+C)
function keyboardinterrupt(){
    echo -e "\n[-] Menghentikan channel hopping pada interface '${interface}'."
    exit 1
}

trap keyboardinterrupt SIGINT

# Fungsi usage
function usage(){
    echo "Cara menggunakan: sudo bash $0 -i [interface]"
    exit 1
}

# Cek root
if [[ $EUID -ne 0 ]]; then
    echo "[-] Script ini harus dijalankan sebagai root!"
    exit 1
fi

# Jika panjang argumen tidak sama dengan 2, manggil fungsi usage
if [[ $# -ne 2  ]]; then
    usage
else
    # Jika panjang argumen 2, tapi argumen 1 bukan -i, manggil fungsi usage
    if [[ $1 != "-i" ]]; then
        usage
    fi
fi

# Cek interface
if ! iw dev | grep -wq "${interface}"; then
    echo "[-] Interface '${interface}' tidak ditemukan."
    exit 1
fi

# Pesan
echo "[*] Memulai channel hopping pada interface '${interface}'..."

# Pindah channel dari channel 1-11 menggunakan iw via for loop secara terus menerus
while true; do
    for channel in {1..11}; do
        echo "[*] Pindah ke channel: ${channel}"
        if iw dev "${interface}" set channel "${channel}"; then
            echo "[+] Berhasil pindah ke channel: ${channel}"
        else
            echo "[-] Gagal pindah ke channel: ${channel}"
            exit 1
        fi
        sleep 1
    done
done

# Semoga bermanfaat ^_^
