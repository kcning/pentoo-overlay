# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1 pypi

DESCRIPTION="Handy decorators for converting parameters"
HOMEPAGE="https://pypi.org/project/parameter-decorators/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

src_prepare(){
	rm -r tests
	eapply_user
}
