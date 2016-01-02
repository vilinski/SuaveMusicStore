FROM fsharp/fsharp
COPY . .
RUN mono ./.paket/paket.bootstrapper.exe
RUN mono ./.paket/paket.exe restore
CMD ["xbuild"]
RUN mono ./bin/Debug/SuaveMusicStore.exe