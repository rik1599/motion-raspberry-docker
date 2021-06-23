# $1: path alla webcam
# $2: porta TCP
# $3: path alla directory con il file di configurazione motion.conf
# $4: tag dell'immagine docker

docker run -itd --name=motion --device $1 -p $2:$2 -v $3:/etc/motion rik1599/motion-raspberry-container:$4