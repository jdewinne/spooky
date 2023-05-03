#!/bin/sh -l

$CUSTOMER_OUTPUT=$(replicated $@)
echo "customer=$CUSTOMER_OUTPUT" >> $GITHUB_OUTPUT