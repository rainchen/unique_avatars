#!/bin/sh

# ./unique_avatars.sh "hi@example.com"
# input: hi@example.com
# hash: 67952af63df3c011ffcf017a817c7bb767a734248b08760d1c11b03a37b56a60
# avatars:
# baccanoio_avatar: https://avatar.baccano.io/67952af63df3c011ffcf017a817c7bb767a734248b08760d1c11b03a37b56a60
# adorable_avatar: https://api.adorable.io/avatars/256/67952af63df3c011ffcf017a817c7bb767a734248b08760d1c11b03a37b56a60.png
# robohash_avatar: https://robohash.org/67952af63df3c011ffcf017a817c7bb767a734248b08760d1c11b03a37b56a60

input=$1
hash=$(echo $input | sha256sum - | cut -d ' ' -f 1)

# avatars
baccanoio_avatar="https://avatar.baccano.io/$hash"
adorable_avatar="https://api.adorable.io/avatars/256/$hash.png"
robohash_avatar="https://robohash.org/$hash"

echo "input: $input"
echo "hash: $hash"
echo "avatars:"
echo "baccanoio_avatar: $baccanoio_avatar"
echo "adorable_avatar: $adorable_avatar"
echo "robohash_avatar: $robohash_avatar"
