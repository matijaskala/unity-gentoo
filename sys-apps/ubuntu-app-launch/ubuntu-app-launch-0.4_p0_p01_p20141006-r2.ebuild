# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

URELEASE="vivid"
inherit cmake-utils ubuntu-versionator

UURL="mirror://ubuntu/pool/main/u/${MY_PN}"
UVER_PREFIX="+14.10.${PVR_MICRO}"

DESCRIPTION="Session init system job for launching applications"
HOMEPAGE="https://launchpad.net/ubuntu-app-launch"
SRC_URI="${UURL}/${MY_P}${UVER_PREFIX}.orig.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+threads"
RESTRICT="mirror"

DEPEND="app-admin/cgmanager
	dev-libs/glib:2
	dev-libs/json-glib
	dev-libs/libzeitgeist
	>=dev-util/lttng-tools-2.5.0
	dev-util/dbus-test-runner
	sys-apps/click
	sys-apps/upstart
	sys-libs/libnih[dbus]"

S="${WORKDIR}/${PN}-${PV}${UVER_PREFIX}"