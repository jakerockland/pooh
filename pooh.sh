#!/usr/local/bin/bash

# Outputs to stdout each Gitignore file in main gitignore directory
# as a hash key-value pair, as used by `pooh.rb`
for filename in ./gitignore/*.gitignore; do
	# Remove path prefix
	gitignore=${filename##*/}

	# Remove file extension
	template=${gitignore%.gitignore}

	# Make lowercase, note that this requires Bash 4.0
	template=${template,,}

	# Echo to stdout
	echo "\"$template\" => \"$gitignore\","
done
