#!/bin/bash

# Output color codes
# https://en.wikipedia.org/wiki/ANSI_escape_code

# Restart apache & mysql server
service apache2 restart && service mysql restart;
# removed junk code

# Step down from sudo to uvdesk
 /usr/local/bin/gosu uvdesk "$@"

 exec "$@"
