#!/bin/bash
# Script to reassemble the split zip file

# Check if the output file already exists
if [ -f "portal_hist_complete.zip" ]; then
    echo "Warning: portal_hist_complete.zip already exists. Overwrite? (y/n)"
    read answer
    if [ "$answer" != "y" ]; then
        echo "Aborted."
        exit 1
    fi
fi

# Reassemble the file
cat portal_hist_complete.zip.part-* > portal_hist_complete.zip

# Verify the file was reassembled correctly
echo "File reassembled as portal_hist_complete.zip"
echo "Size: $(du -h portal_hist_complete.zip | cut -f1)"

echo "Reassembly complete!"
