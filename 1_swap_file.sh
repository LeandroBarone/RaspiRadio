echo 'Creando partición swap de 1.5GB...'
sudo dd if=/dev/zero of=/var/swap2 bs=1024 count=1535MB
sudo chmod 600 /var/swap2
sudo mkswap /var/swap2
sudo swapon /var/swap2
sudo swapon