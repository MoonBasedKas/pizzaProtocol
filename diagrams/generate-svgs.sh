#!/bin/bash

# Script to convert all .mermaid files in the current directory to SVGs using Docker

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Error: Docker is not installed. Please install Docker first."
    echo "Visit https://docs.docker.com/get-docker/ for installation instructions."
    exit 1
fi

# Check if Docker daemon is running (more robust check)
echo "Checking Docker daemon status..."
if ! sudo docker ps &> /dev/null; then
    echo "Error: Docker daemon is not running or you don't have permission to access it."
    echo "Please start the Docker service with: sudo systemctl start docker"
    echo "Or follow your system's method to start Docker."
    echo "If Docker is already running, make sure your user has permission to use Docker."
    exit 1
else
    echo "Docker daemon is running."
fi

# Check if there are any .mermaid files
echo "Looking for .mermaid files..."
if ! ls *.mermaid &> /dev/null; then
    echo "No .mermaid files found in the current directory."
    exit 1
fi

echo "Found .mermaid files. Beginning conversion..."

# Process each .mermaid file
for mermaid_file in *.mermaid; do
    # Extract the filename without extension
    filename="${mermaid_file%.mermaid}"
    svg_file="${filename}.svg"
    
    echo "Converting $mermaid_file to $svg_file..."
    
    # Create an empty SVG file with appropriate permissions
    touch "$svg_file"
    chmod 666 "$svg_file"
    
    # Run Docker to convert the file
    sudo docker run --rm -v "$(pwd)":/data minlag/mermaid-cli:latest -i "/data/$mermaid_file" -o "/data/$svg_file"
    
    # Check if conversion was successful
    if [ $? -eq 0 ]; then
        echo "✓ Successfully converted $mermaid_file to $svg_file"
    else
        echo "✗ Failed to convert $mermaid_file"
    fi
done

echo "Conversion complete!"