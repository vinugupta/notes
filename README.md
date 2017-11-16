# notes

### HTTP response
   1     HTTP/1.1 200 OK
   2    Content-length: 350
   3     Content-Type: text/html
 - 1xx = informational message to be skipped (eg: 100, 101)
 - 2xx = OK, content is following   (eg: 200, 206)
 - 3xx = OK, no content following   (eg: 302, 304)
 - 4xx = error caused by the client (eg: 401, 403, 404)
 - 5xx = error caused by the server (eg: 500, 502, 503)
 -  200  access to stats page, and when replying to monitoring requests
 -  301  when performing a redirection, depending on the configured code
 -  302  when performing a redirection, depending on the configured code
 -  303  when performing a redirection, depending on the configured code
 -  307  when performing a redirection, depending on the configured code
 -  308  when performing a redirection, depending on the configured code
 -  400  for an invalid or too large request
 -  401  when an authentication is required to perform the action (when
        accessing the stats page)
 -  403  when a request is forbidden by a "block" ACL or "reqdeny" filter
 -  408  when the request timeout strikes before the request is complete
 -  500  when haproxy encounters an unrecoverable internal error, such as a
        memory allocation failure, which should never happen
 -  502  when the server returns an empty, invalid or incomplete response, or
        when an "rspdeny" filter blocks the response.
 -  503  when no server was available to handle the request, or in response to
        monitoring requests which match the "monitor fail" condition
 -  504  when the response timeout strikes before the server responds
