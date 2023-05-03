#!/bin/sh -l


./replicated $@ > customer.json
CUSTOMER_OUTPUT=$(cat customer.json)

echo "customer=$CUSTOMER_OUTPUT" >> $GITHUB_OUTPUT