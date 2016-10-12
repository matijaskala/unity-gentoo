# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

URELEASE="xenial"
inherit ubuntu-versionator

DESCRIPTION="Language translations pack for Unity desktop"
HOMEPAGE="https://translations.launchpad.net/ubuntu"

UURL="mirror://unity/pool/main/l"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="mirror"

DEPEND="sys-devel/gettext
	!!<app-accessibility/onboard-1.2.0_p0_p05-r1
	!!<app-backup/deja-dup-34.2_p0_p01-r2
	!!<gnome-base/nautilus-3.18.4_p0_p05-r1
	!!<gnome-extra/nm-applet-1.2.0_p0_p00160404-r1
	!!<gnome-extra/polkit-gnome-0.105_p2_p02-r1
	!!<media-gfx/shotwell-0.22.0_p0_p01_p20160108-r1
	!!<media-sound/pulseaudio-8.0_p0_p3-r1
	!!<net-libs/gnome-online-accounts-3.18.3_p1_p02-r1
	!!<www-client/webbrowser-app-0.23_p0_p01_p20160413-r1
	!!<x11-libs/gtk+-2.24.30_p1_p01-r1:2
	!!<x11-libs/gtk+-3.18.9_p1_p0301-r1:3
	!!<x11-misc/lightdm-1.18.2_p0_p02-r1"

setvar() {
	eval "${1//-/_}=(${2} ${3} ${4})"
}

#[fnc] [L10N]		[pack]         [pack-gnome]   [ubuntu tag]
setvar af		16.04+20160415 16.04+20160415
setvar am		16.04+20160415 16.04+20160415
setvar an		16.04+20160415 16.04+20160415
setvar ar		16.04+20160415 16.04+20160415
setvar as		16.04+20160415 16.04+20160415
setvar ast		16.04+20160415 16.04+20160415
setvar az		16.04+20160415 16.04+20160415
setvar be		16.04+20160415 16.04+20160415
setvar bg		16.04+20160415 16.04+20160415
setvar bn		16.04+20160415 16.04+20160415
setvar bo		14.10+20140909 14.10+20140909
setvar br		16.04+20160415 16.04+20160415
setvar bs		16.04+20160322 16.04+20160415
setvar ca		16.04+20160415 16.04+20160415
setvar ca-valencia	16.04+20160415 16.04+20160415 ca
setvar cs		16.04+20160415 16.04+20160415
setvar csb		14.04+20150804 14.04+20150804
setvar cy		16.04+20160415 16.04+20160415
setvar da		16.04+20160415 16.04+20160415
setvar de		16.04+20160415 16.04+20160415
setvar dz		16.04+20160415 16.04+20160415
setvar el		16.04+20160415 16.04+20160415
setvar en		16.04+20160415 16.04+20160415
setvar en-GB		16.04+20160415 16.04+20160415 en
setvar eo		16.04+20160415 16.04+20160415
setvar es		16.04+20160415 16.04+20160415
setvar et		16.04+20160415 16.04+20160415
setvar eu		16.04+20160415 16.04+20160415
setvar fa		16.04+20160415 16.04+20160415
setvar fi		16.04+20160415 16.04+20160415
setvar fil		14.04+20150804 14.04+20150804
setvar fo		14.04+20150804 14.04+20150804
setvar fr		16.04+20160415 16.04+20160415
setvar fy		14.04+20150804 14.04+20150804
setvar ga		16.04+20160415 16.04+20160415
setvar gd		16.04+20160415 16.04+20160415
setvar gl		16.04+20160415 16.04+20160415
setvar gu		16.04+20160415 16.04+20160415
setvar he		16.04+20160415 16.04+20160415
setvar hi		16.04+20160415 16.04+20160415
setvar hr		16.04+20160415 16.04+20160415
setvar hu		16.04+20160415 16.04+20160415
setvar hy		14.04+20150804 14.04+20150804
setvar ia		16.04+20160415 16.04+20160415
setvar id		16.04+20160415 16.04+20160415
setvar is		16.04+20160415 16.04+20160415
setvar it		16.04+20160415 16.04+20160415
setvar ja		16.04+20160415 16.04+20160415
setvar ka		16.04+20160415 16.04+20160415
setvar kk		16.04+20160415 16.04+20160415
setvar km		16.04+20160415 16.04+20160415
setvar kn		16.04+20160415 16.04+20160415
setvar ko		16.04+20160415 16.04+20160415
setvar ks		14.04+20150804 14.04+20150804
setvar ku		16.04+20160415 16.04+20160415
setvar ky		14.04+20150804 14.04+20150804
setvar la		12.04+20130128 12.04+20130128
setvar lb		14.04+20150804 14.04+20150804
setvar lo		14.04+20150804 14.04+20150804
setvar lt		16.04+20160415 16.04+20160415
setvar lv		16.04+20160415 16.04+20160415
setvar mai		16.04+20160415 16.04+20160415
setvar mi		14.04+20150804 14.04+20150804
setvar mk		16.04+20160415 16.04+20160415
setvar ml		16.04+20160415 16.04+20160415
setvar mn		16.04+20160214 16.04+20160214
setvar mr		16.04+20160415 16.04+20160415
setvar ms		16.04+20160415 16.04+20160415
setvar my		16.04+20160415 16.04+20160415
setvar nb		16.04+20160415 16.04+20160415
setvar nds		16.04+20160214 16.04+20160214
setvar ne		16.04+20160415 16.04+20160415
setvar nl		16.04+20160415 16.04+20160415
setvar nn		16.04+20160415 16.04+20160415
setvar nso		14.04+20150804 14.04+20150804
setvar oc		16.04+20160415 16.04+20160415
setvar om		14.04+20150804 14.04+20150804
setvar or		16.04+20160415 16.04+20160415
setvar pa		16.04+20160415 16.04+20160415
setvar pl		16.04+20160415 16.04+20160415
setvar pt		16.04+20160415 16.04+20160415
setvar pt-BR		16.04+20160415 16.04+20160415 pt
setvar ro		16.04+20160415 16.04+20160415
setvar ru		16.04+20160415 16.04+20160415
setvar rw		14.04+20150804 14.04+20150804
setvar sa		14.04+20150804 14.04+20150804
setvar sd		14.04+20150804 14.04+20150804
setvar se		14.04+20150804 14.04+20150804
setvar si		16.04+20160415 16.04+20160415
setvar sk		16.04+20160415 16.04+20160415
setvar sl		16.04+20160415 16.04+20160415
setvar sq		16.04+20160415 16.04+20160415
setvar sr		16.04+20160322 16.04+20160415
setvar sr-Latn		16.04+20160322 16.04+20160415 sr
setvar st		14.04+20150804 14.04+20150804
setvar sv		16.04+20160415 16.04+20160415
setvar sw		14.04+20150804 14.04+20150804
setvar ta		16.04+20160415 16.04+20160415
setvar te		16.04+20160415 16.04+20160415
setvar tg		16.04+20160415 16.04+20160415
setvar th		16.04+20160415 16.04+20160415
setvar tk		14.04+20150804 14.04+20150804
setvar tl		14.04+20150804 14.04+20150804
setvar tr		16.04+20160415 16.04+20160415
setvar ts		14.04+20150804 14.04+20150804
setvar tt		14.04+20150804 14.04+20150804
setvar ug		16.04+20160415 16.04+20160415
setvar uk		16.04+20160415 16.04+20160415
setvar ur-PK		14.04+20150804 14.04+20150804 ur
setvar uz		16.04+20160214 16.04+20160214
setvar uz-Cyrl		16.04+20160214 16.04+20160214 uz
setvar ve		14.04+20150804 14.04+20150804
setvar vi		16.04+20160415 16.04+20160415
setvar wa		14.04+20150804 14.04+20150804
setvar xh		16.04+20160214 16.04+20160214
setvar zh-CN		16.04+20160415 16.04+20160415 zh-hans
setvar zh-HK		16.04+20160415 16.04+20160415 zh-hant
setvar zh-TW		16.04+20160415 16.04+20160415 zh-hant
setvar zu		14.04+20150804 14.04+20150804

# Only valid IETF language tags that are listed in
#  /usr/portage/profiles/desc/l10n.desc are supported:
IUSE_L10N="af am an ar as ast az be bg bn bo br bs ca ca-valencia cs csb
cy da de dz el en en-GB eo es et eu fa fi fil fo fr fy ga gd gl gu he hi
hr hu hy ia id is it ja ka kk km kn ko ks ku ky la lb lo lt lv mai mi mk
ml mn mr ms my nb nds ne nl nn nso oc om or pa pl pt pt-BR ro ru rw sa
sd se si sk sl sq sr sr-Latn st sv sw ta te tg th tk tl tr ts tt ug uk
ur-PK uz uz-Cyrl ve vi wa xh zh-CN zh-HK zh-TW zu"

# IUSE and SRC_URI generator:
for use_flag in ${IUSE_L10N}; do
	IUSE+=" l10n_${use_flag}"
	use_flag=${use_flag//-/_}
	eval "tag=\${$use_flag[2]}"
	if [ -z ${tag} ]; then
		tag=${use_flag}
	fi
	eval "ver=\${$use_flag[0]}"
	eval "ver_gnome=\${$use_flag[1]}"
	SRC_URI_array+=( "l10n_${use_flag//_/-}?" \(
		${UURL}/language-pack-${tag}-base/language-pack-${tag}-base_${ver}.tar.gz
		${UURL}/language-pack-gnome-${tag}-base/language-pack-gnome-${tag}-base_${ver_gnome}.tar.gz \) )
done
SRC_URI="${SRC_URI_array[@]}"

S="${WORKDIR}"

src_unpack() {
	if [ "${A}" != "" ]; then
		unpack ${A}
	else
		die "At least one L10N USE_EXPAND flag must be set!"
	fi
}

src_install() {
	# Remove all translations except those we need
	find "${S}" \
		-type f \! -name 'activity-log-manager.po' \
		-type f \! -name 'account-plugins.po' \
		-type f \! -name 'compiz.po' \
		-type f \! -name 'ccsm.po' \
		-type f \! -name 'credentials-control-center.po' \
		-type f \! -name 'deja-dup.po' \
		-type f \! -name 'gnome-online-accounts.po' \
		-type f \! -name 'gtk20.po' \
		-type f \! -name 'gtk20-properties.po' \
		-type f \! -name 'gtk30.po' \
		-type f \! -name 'gtk30-properties.po' \
		-type f \! -name 'hud.po' \
		-type f \! -name 'indicator-*' \
		-type f \! -name 'language-selector.po' \
		-type f \! -name 'libdbusmenu.po' \
		-type f \! -name 'lightdm.po' \
		-type f \! -name 'nautilus.po' \
		-type f \! -name 'nm-applet.po' \
		-type f \! -name 'onboard.po' \
		-type f \! -name 'polkit-gnome-1.po' \
		-type f \! -name 'pulseaudio.po' \
		-type f \! -name 'rhythmbox.po' \
		-type f \! -name 'shotwell.po' \
		-type f \! -name 'signon-ui.po' \
		-type f \! -name 'ubuntu-help.po' \
		-type f \! -name 'unity*' \
		-type f \! -name 'ureadahead.po' \
		-type f \! -name 'webbrowser-app.po' \
			-delete || die
	find "${S}" -mindepth 1 -type d -empty -delete || die
	for pofile in `find "${S}" -type f -name "*.po"`; do
		msgfmt -o ${pofile%%.po}.mo ${pofile}
		rm ${pofile}
	done
	insinto /usr/share/locale
	doins -r "${S}"/language-pack-*-base/data/*
}