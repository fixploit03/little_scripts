# hostapd

`hostapd` adalah sebuah utilitas perangkat lunak yang mengubah kartu antarmuka jaringan nirkabel (NIC) pada komputer menjadi access point (AP) Wi-Fi sekaligus server autentikasi, sehingga dapat memancarkan jaringan Wi-Fi dan mengelola koneksi klien. Hostapd mendukung berbagai protokol keamanan seperti WPA/WPA2/WPA3, EAP, dan RADIUS.

Hostapd merupakan daemon user-space, artinya berjalan di latar belakang pada sistem operasi seperti Linux dan FreeBSD, dan memungkinkan perangkat lain terhubung seolah-olah komputer tersebut adalah router atau hotspot Wi-Fi standar.

## Cara Instal

```
sudo apt-get update
sudo apt-get install hostapd
```

## Cara Menggunakan

```
sudo hostapd [file_config]
```
