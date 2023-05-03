#!/bin/sh -l

/replicated $@ > customer.json

echo "customer=$CUSTOMER_OUTPUT" >> $GITHUB_OUTPUT