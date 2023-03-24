BEGIN {
	i=0
}

/^$/ {
	if (i > 0) {
		print "</p>\n"
	}
	print "<p>"
	i = i + 1
}

!/^$/ {
	print $0
}

END {
	if (i > 0) {
		print "</p>"
	}
}
