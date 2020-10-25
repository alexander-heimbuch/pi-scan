# Pi Scan

> Instructions and Scripts for a headless Document Scanner

## Raspbian Dependencies

1. Update dependencies

```
sudo apt-get update
sudo apt-get upgrade
```

2. Install new dependencies

```
sudo apt install sane sane-utils scanbd git imagemagick tesseract-ocr tesseract-ocr-[deu] -y
```

## Configure Scanbd

1. Clone this repo
2. Copy `scripts` and `scanner.sh` to `/home/pi`
3. Clone `https://github.com/rocketraman/sane-scan-pdf` to `/home/pi/scans`
4. Copy `scanbd.conf` to `/etc/scanbd/scanbd.conf`
5. Run `sudo ln -s /home/pi/scripts/ /etc/scanbd/scripts`

## Enable OCR

1. Run `crontab -e`
2. Add `@reboot /home/pi/scanner.sh`

## Sources

[Network Scanner with Fujitsu ScanSnap and a Raspberry Pi](https://chrisschuld.com/2020/01/network-scanner-with-scansnap-and-raspberry-pi/)

