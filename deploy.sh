#!/bin/bash

echo "Deploying..."

lftp -e """
	set ssl:verify-certificate no
	open $FTP_URL
	user $FTP_USER $FTP_PASSWORD
	mirror --reverse --delete --verbose --exclude usage --exclude logs 'jekyll/_site' '.'
	bye
"""
