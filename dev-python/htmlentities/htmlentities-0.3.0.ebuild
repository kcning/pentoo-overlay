# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )
inherit distutils-r1

DESCRIPTION="Easy-to-use data handling for SQL data stores"
HOMEPAGE="https://github.com/pudo/dataset"
#SRC_URI="mirror://pypi/${PN::1}/${PN}/${P}.tar.gz"
SRC_URI="https://github.com/cobrateam/python-htmlentities/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/python-${P}"

src_prepare(){
	rm -r tests
	eapply_user
}
