# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Merge this to setup the Unity desktop build environment package.{keywords,mask,use} files"
HOMEPAGE="http://unity.ubuntu.com/"

URELEASE="wily"
UVER=

LICENSE="GPL-2"
SLOT="0/${URELEASE}"
#KEYWORDS="amd64 x86"
IUSE=""

pkg_setup() {
	mkdir -p "${S}"
}

src_install() {
	local REPO_ROOT="$(/usr/bin/portageq get_repo_path / unity-gentoo)"
	local PROFILE_RELEASE=$(eselect --brief profile show | sed -n 's/.*:\(.*\)\/.*/\1/p')

	if [ -z "${REPO_ROOT}" ] || [ -z "${PROFILE_RELEASE}" ]; then
		die "Failed to detect unity-gentoo overlay and/or profile"
	fi
	for pfile in {keywords,mask,unmask,use}; do
		dodir "/etc/portage/package.${pfile}"
		dosym "${REPO_ROOT}/profiles/${PROFILE_RELEASE}/unity-portage.p${pfile}" \
			"/etc/portage/package.${pfile}/unity-portage.p${pfile}" || die
	done
}

pkg_postinst() {
	echo
	elog "If you have recently changed profile then you should re-run 'emerge -uDNavt @world' to catch any upgrades"
	echo
}
