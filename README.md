## 12 factor sample app

For docker/k8s training purposes I need a simple sample app, where I can demonstrate different containerization features.

So this is a [12factor](https://12factor.net/)-ized "webapp". I mean its a webserver with some very minimal dynamic webpage(s).

## Usage

```
docker run -d \
  -p 80 \
  -e TITLE=CoffeBreak \
  -e COLOR=lightgreen \
  lalyos/12factor
```

## Configuration

As its a 12factor app it can be configure with environment variables:

- TITLE: the main header message of the webpage
- COLOR: background color of the page
- BODY: optional text/html displayed as the content

