# http://wiki.gentoo.org/wiki/Distcc/Cross-Compiling/fr
case ${CATEGORY}/${PN} in
	sys-devel/distcc)
		# Hey man, how come that CONFIG PROTECT don't work?
		if [ "${EBUILD_PHASE}" == "postinst" ] || [ "${EBUILD_PHASE}" == "postrm" ];
		then
			cd /usr/lib/distcc/bin
			rm cc c++ gcc g++
			ln -s armv7a-hardfloat-linux-gnueabi-wrapper cc
			ln -s armv7a-hardfloat-linux-gnueabi-wrapper c++
			ln -s armv7a-hardfloat-linux-gnueabi-wrapper gcc
			ln -s armv7a-hardfloat-linux-gnueabi-wrapper g++
		fi
	;;
esac
