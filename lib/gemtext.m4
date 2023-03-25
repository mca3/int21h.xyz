m4_define(`_B', `**$1**')m4_dnl
m4_define(`_I', `*$1*')m4_dnl
m4_define(`_H1', `# $1')m4_dnl
m4_define(`_H2', `## $1')m4_dnl
m4_define(`_H3', `### $1')m4_dnl
m4_define(`_CODE', ``$1'')m4_dnl
m4_define(`_PRELUDE', `m4_dnl')m4_dnl
m4_define(`_LINKNO', `1')m4_dnl
m4_define(`_LINK', `$1[_LINKNO()]m4_divert(9)m4_ifelse(m4_eval(_LINKNO == 1),1,`
# Links

')m4_dnl
=> $2	[_LINKNO()] $1
m4_divert(-1)m4_define(`_LINKNO', m4_eval(1+_LINKNO))m4_divert(0)')m4_dnl
m4_define(`_PAGE', `/$1.gmi')m4_dnl
m4_define(`_LIST', `_FOREACH(`DATA', `* DATA
', $@)m4_dnl')m4_dnl
m4_define(`_LLI', `$2	$1')m4_dnl
m4_define(`_LLIST', `_FOREACH(`DATA', `=> DATA
', $@)m4_dnl')m4_dnl
