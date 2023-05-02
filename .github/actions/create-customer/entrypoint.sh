#!/bin/sh -l

/replicated $@ > $CUSTOMER_OUTPUT
echo "customer=$tiCUSTOMER_OUTPUTme" >> $GITHUB_OUTPUT