#!/bin/sh -l

/replicated $@ > customer.json

cat customer.json

echo "customer=$CUSTOMER_OUTPUT" >> $GITHUB_OUTPUT

echo $GITHUB_OUTPUT
