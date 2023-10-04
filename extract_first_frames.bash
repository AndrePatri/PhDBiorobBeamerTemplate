#!/bin/bash

# Ensure the script stops on the first error
set -e

# Navigate to the videos directory (optional, adjust as per your folder structure)
cd videos

# Create extracted_frames directory if it doesn't exist
mkdir -p extracted_frames

# Loop through all .mp4 files in the videos directory
for video in *.mp4; do
    # Extract the video filename without the extension
    video_name="${video%.*}"

    # Extract the first frame and save it to extracted_frames/{video_name}_first_frame.jpg
    ffmpeg -i "$video" -ss 00:00:00 -vframes 1 "extracted_frames/${video_name}_first_frame.jpg"
done

