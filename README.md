
# Sylk in a box

*sylk-in-a-box* is an **experimental** way to easily test the [SylkServer](http://sylkserver.com) WebRTC
conference server.

This experiment uses a *fat* Docker container to run all required services: SylkServer and the Sylk WebRTC client.

**NOTE**: It does not work on Docker for macOS due to its [networking limitations](https://docs.docker.com/docker-for-mac/networking/).

## Running the image

```
    docker run -p 3000:443 --rm --name sylk-in-a-box -t -i saghul/sylk-in-a-box
```

Then visit the following URL:

```
    https://localhost:3000
```

## Building the image yourself

To build the image:

```
    make
```

Run it in an interactive shell:

```
    make run
```

## Note on TLS certificate warnings

Web browsers will refuse to work with a WebRTC website unless it's visited using a "secure origin".  For
this example we are using a self-signed certificate, so you'll need to accept it in / add an exception
in order for the demo to work.

## References

* [SylkServer](https://github.com/AGProjects/sylkserver)
* [Sylk WebRTC client](https://github.com/AGProjects/sylk-webrtc)

