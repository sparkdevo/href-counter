# href-counter

> A Golang example application which counts internal vs. external hrefs within a page to rate SEO.

The `golang.org/x/net/html` package is used to iterate through all the HTML tokens in the web-page. It provides a working example of parsing HTML piece-by-piece. 

This can be built with the Dockerfile in the repository or through `go get`.

### References

Used in these two blog posts:

* [Dockerfile 中的 multi-stage](http://www.cnblogs.com/sparkdev/p/8508435.html/)

Example:

```
$ url=https://www.cnblogs.com/ go run app.go
{"internal":144,"external":41}

$ url=http://www.cnblogs.com/sparkdev/ go run app.go
{"internal":36,"external":13}
