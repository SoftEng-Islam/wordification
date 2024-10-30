#!/bin/bash

# Path to the text file with the list of words
WORD_FILE="words.txt"

# Infinite loop to send a notification every 2.5 minutes
while true; do
    # Choose a random word from the file
    WORD=$(shuf -n 1 "$WORD_FILE")

    # Use HTML styling for larger, bold red text
    FORMATTED_WORD="<span font='18' color='red'><b>$WORD</b></span>"

    # Send the notification with the formatted word
    notify-send -u critical -t 10000 -i dialog-warning "Vocabulary Builder" "$FORMATTED_WORD"

    # Wait for 5 minutes (300 seconds) before the next notification
    sleep 300
done