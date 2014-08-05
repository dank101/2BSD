Upload of 2BSD to github before BSD was a full blown OS, at this point BSD was just a appack 
Original readme:

Sun Apr  8 21:32:43 PST 1979

These programs are all off our vax version 7 UNIX system.
To run under version 6 many will need to be compiled
	cc -I/usr/include/retrofit ... -lretro -lS

Mkstr and xstr are essential to bringing up ex, Mail and csh.

All of the programs here except "ex" will run on 11/34's and 11/40's.
Use
	pi0 and pi1
for 11/34's and 11/40s and all machines w/o floating point hardware;
	pi
for 11/45's and 11/70s with floating point.
Some of the pascal system components make both a.out and a.outNOID.
In this case use the a.outNOID whenever you would use pi0 and pi1.

Here are the subdirectory names and what is in them:

Mail		a good program for receiving mail; supplements
		the standard mailer (rather than replacing it)

csh		a new shell which offers a history mechanism to provide
		more flexibility and power for working quickly than any
		other version 6 or 7 shell.

ex		a new version of the editor with a powerful screen editor
		combined with a command mode similar to ed

eyacc		a modified yacc used by the pascal interpreter

libNS		a modified standard i/o library which allows simultaneous
		reading and writing

me		a new, flexible macro package for troff; some of the
		documents here use -me

net		a networking system using daemons which provides command
		batching and file copy between many machines; it connects
		7 unix systems on the Berkeley campus, including 11/70's
		and vax'es and both version 7 and varying modified version
		6 systems

pascal		the common parts of the pascal system unrelated to any
		single program

pi		the pascal translator for 11/45's and 11/70's with floating
		point hardware

pi0 pi1		a version of pi for non separate i/d, or non-floating point
		machines
px		the pascal interpreter

pxp		pascal execution profiler

pxref		pascal cross reference program

termlib		library of terminal driving routines used by ex
