# makewhatis
# (c) 1979 Regents of the University of California
rm -f /tmp/whatis
cd /usr/man
foreach i ( man1 man2 man3 man4 man5 man6 man7 man8 manu manp )
	cd $i
	/usr/ucb/getNAME *.* >> /tmp/whatis
	cd ..
end
ed - /tmp/whatis <<'EOF'
g/\\-/s//-/
g/\\\*-/s//-/
g/ VAX-11/s///
1,$s/...[^	]* \([^ 	][^ 	]*\) *	\([^-]*\)/\2(\1)	/
g/	 /s//	/g
w /tmp/whatis2
'EOF'
/usr/ucb/expand -24,28,32,36,40,44,48,52,56,60,64,68,72,76,80,84,88,92,96,100 /tmp/whatis2 | sort >/usr/lib/whatis
rm /tmp/whatis
