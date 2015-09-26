#!/bin/bash

cp ./onecragent.service /etc/systemd/system/onecragent.service
cp ./onecras.service /etc/systemd/system/onecras.service

systemctl daemon-reload

systemctl disable srv1cv83
systemctl stop srv1cv83

sudo systemctl enable onecragent
sudo systemctl enable onecras

sudo systemctl start onecragent
sudo systemctl start onecras

sudo systemctl status onecras
