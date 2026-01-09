# Filter Wireshark Management Frame

#### 1. Association Request

```
wlan.fc.type_subtype == 0x00
```

#### 2. Association Response

```
wlan.fc.type_subtype == 0x01
```

#### 3. Reassociation Request

```
wlan.fc.type_subtype == 0x02
```

#### 4. Reassociation Response

```
wlan.fc.type_subtype == 0x03
```

#### 5. Probe Request

```
wlan.fc.type_subtype == 0x04
```

#### 6. Probe Response

```
wlan.fc.type_subtype == 0x05
```

#### 7. Beacon

```
wlan.fc.type_subtype == 0x08
```

#### 8. ATIM

```
wlan.fc.type_subtype == 0x09
```

#### 9. Disasociation

```
wlan.fc.type_subtype == 0x0a
```

#### 10. Authentication

```
wlan.fc.type_subtype == 0x0b
```

#### 11. Deauthentication

```
wlan.fc.type_subtype == 0x0c
```

#### 12. Action

```
wlan.fc.type_subtype == 0x0d
```

#### 13. Action No ACK

```
wlan.fc.type_subtype == 0x0e
```
