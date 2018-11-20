# NRFSIM

Simple simulator of the AMF discover service.

It publishes a HTTP2 REST API in port 9094 to simulate the post method of the AMF discover service.

## Dependencies

* nghttp2 - HTTP/2 C Library - <https://nghttp2.org/>

## Configuration

The AMFSIM reads these environment variables

            * AMFSIMPORT Port number to listen

## API

* ANY
```

## JSON format output expected

```text

{
"supportVoPS": false,
"lastActTime": "2000-01-01 12:00:00",
"ratType": [ "NR" ]
}

```

## Manual Test

To test the server it is recommended to use the nghttp client installed with the nghttp2 - HTTP/2 C Library

* nghttp  -H':method: GET' <https://localhost:9094/> --verbose
```

## Compile

To compile use the usual mason WoW defined by TAS team.
Also it is provided in compose folder a yaml file to start the docker component.

## Certificate

In order to open a secure connection it is required to generate a certificate.
The certificate is in the folder cert and has been generated in this way

```bash

openssl req -newkey rsa:2048 -nodes -keyout domain.key -x509 -days 365 -out domain.crt

```

To check if the certificate is installed correctly:

```bash

openssl s_client -showcerts -connect localhost:8443

```
