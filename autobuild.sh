#!/bin/bash

# Copyright (C) 2012 Eric Koenigs
# This file is licensed under the WTFPL v2.
# See wtfpl.txt or head to http://sam.zoy.org/wtfpl/COPYING


wdir=$(pwd)

case $1 in
	all )
		echo "Building everything..."
		./autobuild.sh core
		./autobuild.sh utils
		./autobuild.sh tuchulcha
		./autobuild.sh template
		;;
	core )
		echo "Building charon-core..."
		#cd charon-core
		#makepkg -si --noconfirm $2
		#cd $wdir
		;;
	utils )
		echo "Building charon-utils..."
		#cd charon-utils
		#makepkg -si --noconfirm $2
		#cd $wdir
		;;
	flow )
		echo "Building charon-flow..."
		#cd charon
		#makepkg -si --noconfirm $2
		#cd $wdir
		;;
	tuchulcha )
		echo "Building Tuchulcha..."
		#cd tuchulcha
		#makepkg -si --noconfirm $2
		#cd $wdir
		;;
	template )
		echo "Building templategenerator..."
		#cd templategenerator
		#makepkg -si --noconfirm $2
		#cd $wdir
		;;
	help|* )
		echo "Possible options are:"
		echo ""
		echo "all : build everything."
		echo "core : build charon-core."
		echo "utils : build charon-utils."
		echo "flow : build charon-flow."
		echo "tuchulcha : build tuchulcha."
		echo "template : build template-generator."
		echo "help : you're viewing this right now."
		echo ""
		echo "You can pass additional flags to makepkg as a second argument to this script."
		echo "Standard flags are '-si --noconfirm'"
		;;
esac
