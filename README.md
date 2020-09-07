
# Build binary for Linux
~ GOOS=linux go build -o sleep main.go

~ GOOS=linux go build -o print main.go

# Build the container
~ docker build -t sleep .

# Run container
~ docker run --rm --name sleep sleep

Ref : https://www.mgasch.com/post/scratch/