#!/bin/bash
# Clone the repository
git clone https://github.com/MonashProteomics/FragPipe-Analyst.git

# Move to the folder
cd FragPipe-Analyst

# Build FragPipe-Analyst (Any name after -t)
docker buildx build -f Dockerfile.local -t fragpipe-analyst  --output=type=docker --platform=linux/amd64 .

# Run FragPipe-Analyst
docker run -it --platform=linux/amd64 -d -p 3838:3838 fragpipe-analyst

# Open local interface
http://localhost:3838/fragpipe-analyst/
