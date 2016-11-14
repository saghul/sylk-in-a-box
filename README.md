
# Sylk in a box

*sylk-in-a-box* is an **experimental** way to easily test the [SylkServer](http://sylkserver.com) WebRTC
conference server.

This experiment uses a *fat* Docker container to run all required services: SylkServer and the Sylk WebRTC client.
SylkServer will be listening on port **10888** for WebSocket traffic and port **3000** for the main interface.

## Running the image

TODO

## Building the image yourself

To build the image:

```
    make
```

Run it in an interactive shell:

```
    make run
```

## TLS certificate warnings

Web browsers will refuse to work with a WebRTC website unless it's visited using a "secure origin".  For
this example we are using a self-signed certificate, so you'll need to accept it in / add an exception
in order for the demo to work.

First get the container IP:

```
    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' sylk-in-a-box
```

Then visit these 2 URLS:

```
    https://THE_IP:10888
    https://THE_IP:3000
```

## References

* [SylkServer](https://github.com/AGProjects/sylkserver)
* [Sylk WebRTC client](https://github.com/AGProjects/sylk-webrtc)

