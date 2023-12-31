FROM mcr.microsoft.com/devcontainers/go:1.21-bullseye

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

CMD ["go", "run", "main.go"]