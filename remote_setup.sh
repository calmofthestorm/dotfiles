#!/bin/sh

scp setup.sh $1:
ssh $1 "./setup.sh && rm setup.sh"
