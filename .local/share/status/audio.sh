#!/bin/bash
#
#This is  a status script to print out master volume level
#
speakerVolume=$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master))
speakerMuted=$(awk -F"[][] " '/Left:/ { print $2 }' <(amixer sget Master))
micVolume=$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Capture))
micMuted=$(awk -F"[][] " '/Left:/ { print $2 }' <(amixer sget Capture))

#Resolve the speaker string
if [ ${speakerMuted} == "[off]" ]; then
    speaker=" x"
else
    speaker=" ${speakerVolume}"
fi

#Resolve the mic string
if [ ${micMuted} == "[off]" ]; then
    mic=" ${micVolume}"
else
    mic=" ${micVolume}"
fi

echo ${speaker} ${mic}
