# cXSS
*curl xss -> cXSS*
### simple bash xss checker script

You need to **install** first
https://github.com/tomnomnom/qsreplace

#### the script expects a file to read from. Add the links you want to test on the file, each link in seperated line.
##### for example

https://example.com/file?description=helloworld

https://google.com/xss?vulnerableparameter=hmmm


#### the script is going to replace each parameter with XSS payload like this 

https://example.com/file?description=<script>alert('xss')</script>

https://google.com/xss?vulnerableparameter=<script>alert('xss')</script>

#### if It is reflected on the response, it will print vulnerable.

*disclaimer: part of the script was inspired and taken from one-liners bug bounty, and I added my little spicy on it ❤*

