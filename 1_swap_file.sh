echo 'Creando partición swap de 1Gb...'
sudo dd if=/dev/zero of=/var/swap2 bs=1024 count=1000000
sudo chmod 600 /var/swap2
sudo mkswap /var/swap2
sudo swapon /var/swap2
sudo swapon