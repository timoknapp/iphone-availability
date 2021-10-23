# iPhone Availability Scraper

Simple script to fetch the current delivery dates for a defined set of iPhone models in Germany. The script can be adapted for other countrys though.

## How to:

```
chmod +x iPhoneAvailabilityScraper.sh
./iPhoneAvailabilityScraper.sh

 MODEL NAME                               DELIVERY DATE
============================================================
  iPhone 13 Pro 128 GB Graphit         25 Nov - 2 Dez
  iPhone 13 Pro 256 GB Graphit         25 Nov - 2 Dez
  iPhone 13 Pro 128 GB Sierrablau      25 Nov - 2 Dez
  iPhone 13 Pro 256 GB Sierrablau      25 Nov - 2 Dez
  iPhone 13 Pro Max 256 GB Graphit     25 Nov - 2 Dez
  iPhone 13 Pro Max 128 GB Graphit     25 Nov - 2 Dez
  iPhone 13 Pro Max 128 GB Sierrablau  25 Nov - 2 Dez
  iPhone 13 Pro Max 256 GB Sierrablau  25 Nov - 2 Dez
```

In order to adapt the list of iPhone models you need to modify the variable `"IPHONE_MODELS"` within the bash script. This variable consists of the iPhone model numbers, which can be retrieved from the dev tools in your browser while browsing through your product of choice in the Apple Store.