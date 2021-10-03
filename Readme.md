# Curlr

Simple CLI tool to query endpoints like you would do via wget or curl, except this has a sane api and it's 50 LoC :D - coded in year 2014

### Sample usage:

    ruby .../path_to/curlr.rb http://makevoid.com

### Sample usage:

(Note: you need to alias the command as there is no curlr gem)

    curlr http://makevoid.com

shorthand for:

    curlr get http://emberjs.com

then you can pass parameters with get:

    curlr get http://jquery.com/?whatever=tue


and of course, make a post request

    curlr post http://jquery.com/?param1=123&param2=abc

### Alias set up

edit your bashrc / zshrc and add

```
alias curlr="ruby ./path/to/curlr.rb"
```


### improvements:

- implement put / delete / patch
- follow redirects
- request caching
- make it a gem, automagically install the binary

(:D)


---

I coded this long time ago (omg 2014!), as there are a tons of libs I don't think I need to work on this anymore :D. I recommend using Excon and net/http (stdlib).


@makevoid
