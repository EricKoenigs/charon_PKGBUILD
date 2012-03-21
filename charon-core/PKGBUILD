# Maintainer: Eric Koenigs <e.koenigs@stud.uni-heidelberg.de>

pkgname=charon-core
pkgver=0.1.6
pkgrel=2
pkgdesc="Part of the Charon-Suite. Basic framework for module management."
arch=('any')
url="https://sourceforge.net/apps/trac/charon-suite"
license=('LGPL3')
groups=("charon-suite")
makedepends=('bzr' 'cmake')
optdepends=('doxygen: documentation generation'
'texlive-latexextra: pdf-documentation and formulas'
)

build() {
  msg "Fetching bzr sources from Launchpad..."

  bzr branch lp:charon-core 

  msg "Configuring build..."

  mkdir -p $startdir/build
  cd $startdir/build

  cmake $startdir/src/charon-core \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -Dcharon-core_INSTALL_DOC=/usr/share/doc/$pkgname

  make

  if [ "$(pacman -Qq | grep '^doxygen$' )" ]
  then
    msg "Doxygen installed, creating documentation..."
    make doc

    # Fix references to $srcdir
    sed -i "s#${srcdir}/${pkgname}#/usr#" doc/*.tag
  fi
}

package() {
  cd $startdir/build
  make DESTDIR="$pkgdir/" install
}

# vim:set ts=2 sw=2 et:
