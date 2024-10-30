#!/bin/bash

# Path to the text file with the list of words
WORD_FILE="words.txt"

# Read words into an array
mapfile -t WORDS <"$WORD_FILE"

# Infinite loop to send notifications
while true; do
    for WORD in "${WORDS[@]}"; do
        # Send the notification with the word
        notify-send -u critical -t 5000 -i dialog-warning "Vocabulary Builder" "$WORD"

        # Wait for 5 minutes (300 seconds) before the next notification
        sleep 300

        # Repeat the word notification
        notify-send -u critical -t 5000 -i dialog-warning "Vocabulary Builder" "$WORD"

        # Wait for another 5 minutes before moving to the next word
        sleep 300
    done
done
