# Gem in a Box

Simple way to deploy Gem in a Box server.

Build

```bash
docker build -t geminabox:tag .
```

Run

```bash
docker run -it -v $(pwd)/gems/:/app/uploaded-gems/ -e ADMIN_PASSWORD=test -e ADMIN_USERNAME=test -p 3000:3000 gems
```

This runs Gem In a Box server with docker volume mounted to `/app/uploaded-gems/` and stored at `$(pwd)/gems/` directory in host machine.

The image required `ADMIN_PASSWORD` and `ADMIN_USERNAME` environment variables.

If successfully started Gem In a Box will be available at <http://localhost:3000>


To pull and use this docker directly 

```bash
docker run -it -v $(pwd)/gems/:/app/uploaded-gems/ -e ADMIN_PASSWORD=test -e ADMIN_USERNAME=test -p 3000:3000 selisebt/geminabox:latest
```
