#!/bin/bash

unread=$(find ${MAILDIR} -type d -name new -not -empty -exec ls {} \;| wc -l)
echo " [${unread}]"
