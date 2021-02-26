#! /bin/sh
do_symlink=
if ln -s xxx xxx-link > /dev/null 2>&1; then
    do_symlink=--symlink
    rm xxx-link
fi
# clean up
if autoreconf --install $do_symlink --force; then
	echo
	echo "------------------------------------------------------"
	echo "Initialized build system. You can now run ./configure "
	echo "------------------------------------------------------"
	echo
else
	echo
	echo "--------------------------"
	echo "Running autoreconf failed."
	echo "--------------------------"
	echo
fi
