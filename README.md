
# Build binary for Linux
~ GOOS=linux go build -o sleep main.go

~ GOOS=linux go build -o print main.go

# Build the container
~ docker build -t sleep .

# Run container
~ docker run --rm --name sleep sleep

# Health Check on Docker 
Form docker file uncommnet 
  `HEALTHCHECK CMD ["./print"] || exit 1`

# Health Check on ECS 

We need in this format
```json
...
"healthCheck": {
          "command": [
            "CMD",
            "./print",
            "|| exit 1"
          ],
          "interval": 30,
          "timeout": 5,
          "retries": 3
        }
      }
 ...
```

From Console :
```
CMD,./print,|| exit 1
```

Ref : https://www.mgasch.com/post/scratch/
