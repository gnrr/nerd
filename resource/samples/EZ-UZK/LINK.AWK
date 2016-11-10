# $Header$
#
# link.awk: make link.cmd from PROJ/OBJS*/LIBS* in makefile
#   by uratan! 2004.5.10
#
	#
	# リンカ LB51.exe でリンクする .obj ファイルを makefile だけで
	# 管理したいので、この awk スクリプトで makefile より .obj を
	# 抜き出します。
	# ついでに、リンカに渡すオプションもここに記述して、リンカを管理します。
	#
BEGIN {
	print "; THIS IS AUTO GENERATED FILE from LINK.AWK";
	print "; SEE link.awk, makefile IN DETAIL";
	print ";";
	print "";

	print ";";
	print "; load modules are converted from makefile";
	print ";";

	proj = "";
	n_objs = 0;
}

/^PROJ/ {
	proj = $3;
}

/^OBJS/ {
	for(i=3; i<=NF; i++) {
		n_objs++;
		objs[n_objs] = $i;
	}
}

/^LIBS/ {
	for(i=3; i<=NF; i++) {
		n_objs++;
		objs[n_objs] = $i;
	}
}

END {
	for(i=1; i<=n_objs; i++) {
		if(i != n_objs)
			print objs[i] ",";
		else
			print objs[i];
	}
		#
		# このリンクする .obj を ,(カンマ)で並べる、ってところが
		# unix 系の make とそぐわないんです。なので awk で加工します。
		#
	print "TO " proj;
	print "RAMSIZE (256) CODE (0x0) XDATA (0x1000)";
	print "DW (15,16)";
	print "";
	print ";";
	print "; end of auto generated link command file";
	print ";";
	print "";
}
