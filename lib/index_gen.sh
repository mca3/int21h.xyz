#!/bin/sh

cat <<'EOF'
_PRELUDE(`Blog')
_H1(`Blog index')

This is a list of all blog entries I've ever written ordered newest to oldest.

_LLIST(
EOF

_=""
while IFS="	" read -r date title file; do
	# Remove src/ prefix and .m4 suffix
	file="${file#*/}"
	file="${file%.*}"

	printf "%s\`_LLI(\`[%s] %s', \`_PAGE(\`%s')')'" "$_" "$date" "$title" "$file"
	_=",
"
done

printf ")\n"
