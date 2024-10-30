#!/bin/bash

# Path to the text file with the list of words
WORD_FILE="words.txt"

# Infinite loop to send a notification every 10 minutes
while true; do
    # Choose a random word from the file
    WORD=$(shuf -n 1 "$WORD_FILE")

    # Send the notification with the word
    notify-send "Vocabulary Builder" "$WORD"

    # Wait for 10 minutes (600 seconds) before the next notification
    sleep 600
done
