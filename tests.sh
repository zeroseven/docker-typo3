#!/bin/bash

# some commands must be executable
composer --version || exit 1
bash || exit 1

# some PHP extensions must be loaded
echo 'search mysqli' && php -i | grep '^mysqli$' || exit 1
echo 'search xdebug' && php -i | grep '^xdebug$' || exit 1
