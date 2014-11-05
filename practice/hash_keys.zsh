#!/usr/bin/env zsh

typeset -A hash

hash[robin]=smith
hash[alma]=lorenzo

echo "keys: ${(k)hash}"
echo "values: ${(v)hash}"
echo "keys and values: ${(kv)hash}"
