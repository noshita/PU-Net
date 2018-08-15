#/bin/bash

H5DATA_ID=1te8d1y2BTFBL_3CB1jpqbOFzkkjvtKsE
H5DATA_NAME=h5_data/Patches_noHole_and_collected.h5
MODEL_ID=1c1oYNwIzKxCOF_6bqm3HmwYcCZv1230Z
MODEL_NAME=model/generator2_new6.zip

bash ./download_from_googledrive.sh $H5DATA_ID $H5DATA_NAME
bash ./download_from_googledrive.sh $MODEL_ID $MODEL_NAME
# unzip model/generator2_new6.zip