m4_define(`_B', `<b>$1</b>')m4_dnl
m4_define(`_I', `<i>$1</i>')m4_dnl
m4_define(`_H1', `<h1>$1</h1>')m4_dnl
m4_define(`_H2', `<h2>$1</h2>')m4_dnl
m4_define(`_H3', `<h3>$1</h3>')m4_dnl
m4_define(`_CODE', `<code>$1</code>')m4_dnl
m4_define(`_PRELUDE', `<!DOCTYPE html>
<html lang="en">
<head>
	<title>m4_ifelse($1,,,`$1 | ')int21h.xyz</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="/style.css">
</head>
<body>
m4_divert(9)m4_dnl
</body>
</html>
m4_divert(0)m4_dnl')m4_dnl
m4_define(`_LINK', `<a href="$2">$1</a>')m4_dnl
m4_define(`_PAGE', `/$1.html')m4_dnl
m4_define(`_LIST', `<ul>m4_dnl
_FOREACH(`DATA', `
	<li>DATA</li>', $@)
</ul>')m4_dnl
m4_define(`_LLI', `_LINK($@)')m4_dnl
m4_define(`_LLIST', `_LIST($@)')m4_dnl
