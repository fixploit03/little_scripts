# TP-LINK TL-WN722N V2

## Cara Instal

#### 1. Update Repositori Kali Linux
   
```
sudo apt-get update
```

#### 2. Instal Dependensi yang Dibutuhkan

```
sudo apt install linux-headers-$(uname -r)
sudo apt-get install realtek-rtl8188eus-dkms
```

#### 3. Blacklist Driver Bawaan Kernel

```
echo 'blacklist r8188eu' | sudo tee -a '/etc/modprobe.d/realtek.conf'
echo 'blacklist rtl8xxxu' | sudo tee -a '/etc/modprobe.d/realtek.conf'
```

#### 4. Unload Driver Lama dari Kernel

```
sudo rmmod r8188eu rtl8xxxu 8188eu
```

#### 5. Load Driver 8188eu ke Kernel

```
sudo modprobe 8188eu
```

#### 6. Verifikasi Driver

```
lsmod | grep 8188
```
