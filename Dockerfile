FROM fsharp/fsharp

COPY . /app

RUN cd ./app && \
    mono ./.paket/paket.bootstrapper.exe && \
    mono ./.paket/paket.exe restore && \
    xbuild && \
    cd ..

EXPOSE 8083

CMD ["mono", "./app/bin/Debug/SuaveMusicStore.exe"]
