# wpa_supplicant

wpa_supplicant adalah perangkat lunak sumber terbuka (open-source) yang berfungsi sebagai agen autentikasi untuk mengelola koneksi jaringan nirkabel (Wi-Fi) pada sistem operasi berbasis Linux, Android, dan BSD. Perangkat ini bertindak sebagai jembatan antara perangkat keras kartu jaringan dan titik akses (access point) dengan menangani proses negosiasi keamanan, seperti enkripsi WPA, WPA2, hingga WPA3, serta pengelolaan kunci (key management) agar pertukaran data tetap terlindungi. Secara teknis, ia berjalan di latar belakang sebagai daemon yang secara otomatis mencari, memilih, dan memverifikasi kredensial jaringan sehingga perangkat dapat terhubung ke internet dengan aman dan stabil.

## Cara Instal

```
sudo apt-get update
sudo apt-get install wpasupplicant isc-dhcp-client
```

## Cara Menggunakan

#### 1. Matikan NetworkManager

```
sudo systemctl stop NetworkManager
```

#### 2. Jalankan wpa_supplicant

```
sudo wpa_supplicant -i [interface] -c [file_config] -D nl80211
```

![](https://github.com/fixploit03/lab-sederhana/blob/main/catatan/wpa_supplicant/img/konek%20wpa_supplicant.png)

#### 3. Minta IP

```
sudo dhclient [interface]
```

#### 4. Tes Ping

```
ping google.com
```

![](https://github.com/fixploit03/lab-sederhana/blob/main/catatan/wpa_supplicant/img/tes%20ping.png)
