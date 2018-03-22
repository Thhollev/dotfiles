#!/bin/bash

i3-msg 'workspace 9'

if [ -z $(pgrep keepassx2) ]; then
	keepassx2 --keyfile /run/media/thomas/*/passwords.kdbx &
fi
