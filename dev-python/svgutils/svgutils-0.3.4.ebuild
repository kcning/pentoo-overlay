# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1 pypi

DESCRIPTION="utility package that helps to edit and concatenate SVG files"
HOMEPAGE="https://svgutils.readthedocs.io/en/latest/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~arm64 ~x86"
IUSE=""

RDEPEND="dev-python/lxml[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"
