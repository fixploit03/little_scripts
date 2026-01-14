# FreeRADIUS

FreeRADIUS adalah server RADIUS open-source yang berfungsi sebagai pusat Authentication, Authorization, dan Accounting (AAA) pada jaringan, khususnya untuk skema keamanan berbasis 802.1X seperti WPA2-Enterprise dan WPA3-Enterprise, di mana perangkat jaringan seperti access point atau switch akan memverifikasi identitas pengguna ke FreeRADIUS sebelum memberikan akses, dengan dukungan berbagai metode autentikasi seperti EAP-PEAP, EAP-TLS, dan EAP-PWD, serta kemampuan integrasi ke backend autentikasi seperti file lokal, database MySQL, LDAP, maupun Active Directory sehingga cocok digunakan dari skala kecil hingga lingkungan enterprise.

## Cara Instal

```
sudo apt-get update
sudo apt-get install freeradius freeradius-utils
```

## Cara Menggunakan

#### 1. Tambahkan Client

```
sudo nano /etc/freeradius/3.0/clients.conf
```

Tambahkan:

```
client client1 {
    ipaddr = [ip_address]
    secret = [secret]
    nas_type = other
}
```

#### 2. Tambahkan User

```
sudo nano /etc/freeradius/3.0/users
```

Tambahkan:

```
[user] Cleartext-Password := "[password]"
```

#### 3. Ubah Metode EAP

```
sudo nano /etc/freeradius/3.0/mods-available/eap
```

Ubah dari ini:

```
eap → default_eap_type = md5
```

Menjadi:

```
eap → default_eap_type = peap
tls-config tls-common (aktif)
peap → default_eap_type = mschapv2

mschapv2 {
}
```

#### 4. Restart FreeRadius

```
sudo systemctl restart freeradius
sudo systemctl enable freeradius
```

#### 5. Testing User

```
radtest [user] [password] localhost 0 [secret]
```

Kalau berhasil, outputnya:

```
Received Access-Accept
```
