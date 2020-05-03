version: '3.2'
services:
  web:
    command: bundle exec rails s -p 3000 -b '0.0.0.0'
    build: .
    ports:
      - "3000:3000"
    volumes:
      - .:/app
    depends_on:
      - db
  db:
    image: postgres:9.4
    environment:
      - POSTGRES_HOST_AUTH_METHOD=trust
    ports: 
      - "5432:5432"

