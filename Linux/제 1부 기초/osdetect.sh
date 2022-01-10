#!/bin/bash -
#
# Cybersecurity Ops with bash
# osdetct.sh
#
# 설명:
# MS-Windows/리눅스/macOS를 구분한다.
#
# 사용법: bash osdetect.sh
#	출력은 Linux, MSWin, macOS 중 하나.
#

function DetectOS()
{
	if type -t wevtutil &> /dev/null
	then
		OS=MSWin
	elif type -t scutil &> /dev/null
	then	
		OS=macOS
	else 
		OS=Linux
	fi
}

DetectOS
echo $OS
