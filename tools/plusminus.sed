#!/usr/bin/sed -Ef
s/[=[:space:]]+//g; /^$/d
# s:^(\<\S*)-([^-+]*)$:\1-\2%\1\l\2: # NEITHER "+" NOR "-" AMONG THE FLAGS, common flags only;
s:^(\w+)-(\S+/)([^-+]*)-$:\1-\2\3%\1\l\2\3: # PORDISAJ FLAGOJ POST "-";
s:^(\w+)-([^/]+)/([^-+]*)-(.+)$:\1-\2/\3%\l\1\l\2/\3\4: # PORKUNAJ FLAGOJ POST "-" (tutminuskle!!);
# s:^(\w+)-([^/]+)/([^-+]*)\+([^-+]*)$:\1-\2/\3%\l\1\l\2/\3\4: # PORKUNAJ FLAGOJ POST "+" (tutminuskle!!);
# s:^(\w+)-([^/]+)/([^-+]*)-([^+-]*)\+(.*)$:\1-\2/\3\4%\l\1\l\2/\3\5: # IS THIS NEEDED AT ALL?
# TEKSTOPREZENT(AD)O:
s:([^(]*)\(([^)]*)\)(.*)$:\1\2\3%\1\3:

