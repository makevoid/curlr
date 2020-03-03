# Curlr

Simple CLI tool to query endpoints like you would do via wget or curl, except this has a sane api and it's 50 LoC :D - coded in year 2014

### Sample usage:

    curlr http://emberjs.com

alias for:

    curlr get http://emberjs.com

then you can pass parameters with get:

    curlr get http://jquery.com/?whatever=tue


and of course, make a post request

    curlr post http://jquery.com/?param1=123&param2=abc


### improvements:

- implement put / delete / patch
- follow redirects
- request caching
- make it a gem
- automagically install the binary


---

I coded this long time ago (sheesh, 2014!), I used to call it via this alias:

```
alias curlr="ruby ./path/to/curlr.rb"
```

