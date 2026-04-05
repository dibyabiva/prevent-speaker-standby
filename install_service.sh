cd "$(dirname "$0")"

SCRIPT_DIR=`pwd`
USERNAME=`whoami`

cp prevent-speaker-standby.service temp.service
sed -i "s|___dir___|$SCRIPT_DIR|g" prevent-speaker-standby.service
sed -i "s|___username___|$USERNAME|g" prevent-speaker-standby.service
sudo cp prevent-speaker-standby.service /etc/systemd/system/
sudo systemctl enable prevent-speaker-standby.service
sudo systemctl daemon-reload
sudo systemctl restart prevent-speaker-standby.service
mv temp.service prevent-speaker-standby.service