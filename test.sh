#!/bin/sh

echo hello world

case $1 in
	ahmad*) test=1;;
	mamad*) test=2;;
	sara*)  test=3;;
	sara)   test=4;;
esac

echo the result is &test
