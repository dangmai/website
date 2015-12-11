My Personal Website
===================

This is the source code for my [personal website](http://dangmai.net).
It's built on [HTML5 Boilerplate](http://html5boilerplate.com/),
but with no cache-bursting (the website itself is just a static page,
so cache-bursting would be overkill).

The website uses NPM for dependency management,
and has a few scripts ready to help the build process.
Before deploying, run:

```
npm install && npm run build && npm run clean
```

A much easier way to test/deploy/run the website is to use [Docker](https://www.docker.com/):

```
docker run -d -p 80:80 dangmai/website
```