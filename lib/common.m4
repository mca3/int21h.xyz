m4_define(`_FOREACH',`m4_ifelse(m4_eval($#>2),1,
`m4_pushdef(`$1',`$3')$2`'m4_popdef(`$1')m4_dnl
`'m4_ifelse(m4_eval($#>3),1,`$0(`$1',`$2',m4_shift(m4_shift(m4_shift($@))))')')')m4_dnl
