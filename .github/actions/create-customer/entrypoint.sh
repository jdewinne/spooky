#!/bin/sh -l

/replicated $@ > $CUSTOMER_OUTPUT
echo "customer=$tiCUSTOMER_OUTPUT" >> $GITHUB_OUTPUT