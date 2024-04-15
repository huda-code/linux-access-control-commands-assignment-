#!/bin/bash

# create users
sudo useradd -M bard
sudo useradd -M karen
sudo useradd -M sam
sudo useradd -M kevin
sudo useradd -M mary
sudo useradd -M tom
sudo useradd -M bob
sudo useradd -M becky

# change ownership of files to users

# -- client files
# assign Jones to Bard
sudo chown bard:bard Jones-Pleading1.txt
sudo chown bard:bard Jones-Pleading2.txt
# assign Johnson to Karen
sudo chown karen:karen Johnson-Contract1.txt
sudo chown karen:karen Johnson-Contract2.txt
# assign Santana to Bard
sudo chown bard:bard Santana-Pleading1.txt
sudo chown bard:bard Santana-Pleading2.txt

# -- billings
# assign Jones to Sam
sudo chown sam:sam Jones-Bill1.txt
sudo chown sam:sam Jones-Bill2.txt
# assign Johnson to Kevin
sudo chown kevin:kevin Johnson-Bill1.txt
sudo chown kevin:kevin Johnson-Bill2.txt
# assign Santana to Sam
sudo chown sam:sam Santana-Bill1.txt
sudo chown sam:sam Santana-Bill2.txt

# -- calendar entries
sudo chown bard:bard Jones-Court1.txt
sudo chown mary:mary Jones-Court2.txt
sudo chown karen:karen Johnson-Meeting1.txt
sudo chown kevin:kevin Johnson-Meeting2.txt
sudo chown bob:bob Santana-Court1.txt
sudo chown bob:bob Santana-Court2.txt
