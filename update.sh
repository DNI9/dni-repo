#!/usr/bin/env bash

set -euo pipefail

# remove old packages
rm -f ./x86_64/*.pkg.tar.zst*

## Getting packages from package dirs
pkgs=$(find ../pkgs -type f -name "*.pkg.tar.zst*")
for x in ${pkgs}; do
  echo "Copying ${x}"
	cp "${x}" x86_64/
done

cd x86_64
rm -f dni9-repo*

repo-add -s -n -R dni9-repo.db.tar.gz *.pkg.tar.zst

rm dni9-repo.db
rm dni9-repo.db.sig
rm dni9-repo.files
rm dni9-repo.files.sig

mv dni9-repo.db.tar.gz dni9-repo.db
mv dni9-repo.db.tar.gz.sig dni9-repo-db.sig
mv dni9-repo.files.tar.gz dni9-repo.files
mv dni9-repo.files.tar.gz.sig dni9-repo.files.sig
