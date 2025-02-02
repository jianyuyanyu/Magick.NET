@echo off

set /p GITHUB_TOKEN=<../../keys/github.txt
docker build -f Dockerfile --build-arg GITHUB_TOKEN=%GITHUB_TOKEN% --build-arg OpenMP=OpenMP -t magick-net-linux-musl-openmp ../..
