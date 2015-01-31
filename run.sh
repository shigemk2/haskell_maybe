#!/bin/sh

HS="`ls -1t *.hs | head -1`"
runhaskell $HS
