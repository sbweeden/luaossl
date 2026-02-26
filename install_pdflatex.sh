#!/bin/bash

centos_gpg_key="/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-Official"

cat <<EOT >> $centos_gpg_key
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v2.0.22 (GNU/Linux)

mQINBFzMWxkBEADHrskpBgN9OphmhRkc7P/YrsAGSvvl7kfu+e9KAaU6f5MeAVyn
rIoM43syyGkgFyWgjZM8/rur7EMPY2yt+2q/1ZfLVCRn9856JqTIq0XRpDUe4nKQ
8BlA7wDVZoSDxUZkSuTIyExbDf0cpw89Tcf62Mxmi8jh74vRlPy1PgjWL5494b3X
5fxDidH4bqPZyxTBqPrUFuo+EfUVEqiGF94Ppq6ZUvrBGOVo1V1+Ifm9CGEK597c
aevcGc1RFlgxIgN84UpuDjPR9/zSndwJ7XsXYvZ6HXcKGagRKsfYDWGPkA5cOL/e
f+yObOnC43yPUvpggQ4KaNJ6+SMTZOKikM8yciyBwLqwrjo8FlJgkv8Vfag/2UR7
JINbyqHHoLUhQ2m6HXSwK4YjtwidF9EUkaBZWrrskYR3IRZLXlWqeOi/+ezYOW0m
vufrkcvsh+TKlVVnuwmEPjJ8mwUSpsLdfPJo1DHsd8FS03SCKPaXFdD7ePfEjiYk
nHpQaKE01aWVSLUiygn7F7rYemGqV9Vt7tBw5pz0vqSC72a5E3zFzIIuHx6aANry
Gat3aqU3qtBXOrA/dPkX9cWE+UR5wo/A2UdKJZLlGhM2WRJ3ltmGT48V9CeS6N9Y
m4CKdzvg7EWjlTlFrd/8WJ2KoqOE9leDPeXRPncubJfJ6LLIHyG09h9kKQARAQAB
tDpDZW50T1MgKENlbnRPUyBPZmZpY2lhbCBTaWduaW5nIEtleSkgPHNlY3VyaXR5
QGNlbnRvcy5vcmc+iQI3BBMBAgAhBQJczFsZAhsDBgsJCAcDAgYVCAIJCgsDFgIB
Ah4BAheAAAoJEAW1VbOEg8ZdjOsP/2ygSxH9jqffOU9SKyJDlraL2gIutqZ3B8pl
Gy/Qnb9QD1EJVb4ZxOEhcY2W9VJfIpnf3yBuAto7zvKe/G1nxH4Bt6WTJQCkUjcs
N3qPWsx1VslsAEz7bXGiHym6Ay4xF28bQ9XYIokIQXd0T2rD3/lNGxNtORZ2bKjD
vOzYzvh2idUIY1DgGWJ11gtHFIA9CvHcW+SMPEhkcKZJAO51ayFBqTSSpiorVwTq
a0cB+cgmCQOI4/MY+kIvzoexfG7xhkUqe0wxmph9RQQxlTbNQDCdaxSgwbF2T+gw
byaDvkS4xtR6Soj7BKjKAmcnf5fn4C5Or0KLUqMzBtDMbfQQihn62iZJN6ZZ/4dg
q4HTqyVpyuzMXsFpJ9L/FqH2DJ4exGGpBv00ba/Zauy7GsqOc5PnNBsYaHCply0X
407DRx51t9YwYI/ttValuehq9+gRJpOTTKp6AjZn/a5Yt3h6jDgpNfM/EyLFIY9z
V6CXqQQ/8JRvaik/JsGCf+eeLZOw4koIjZGEAg04iuyNTjhx0e/QHEVcYAqNLhXG
rCTTbCn3NSUO9qxEXC+K/1m1kaXoCGA0UWlVGZ1JSifbbMx0yxq/brpEZPUYm+32
o8XfbocBWljFUJ+6aljTvZ3LQLKTSPW7TFO+GXycAOmCGhlXh2tlc6iTc41PACqy
yy+mHmSv
=kkH7
-----END PGP PUBLIC KEY BLOCK-----
EOT

epel_gpg_key="/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-SIG-Extras"

cat <<EOT >> $epel_gpg_key
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v2.0.22 (GNU/Linux)

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
=jx2B
-----END PGP PUBLIC KEY BLOCK-----
EOT

rpm --import $epel_gpg_key

centos_repo_file="/etc/yum.repos.d/centos.repo"

cat <<EOT >> $centos_repo_file
[CentOS-9_base]
name = CentOS-9 - Base
baseurl = http://mirror.stream.centos.org/9-stream/BaseOS/x86_64/os
gpgcheck = 1
enabled = 1
gpgkey=file://$centos_gpg_key

[CentOS-9_appstream]
name = CentOS-9 - AppStream
baseurl = http://mirror.stream.centos.org/9-stream/AppStream/x86_64/os
gpgcheck = 1
enabled = 1
gpgkey=file://$centos_gpg_key

[CentOS-9_extras]
name = CentOS-9 - Extras
baseurl = http://mirror.stream.centos.org/SIGs/9-stream/extras/x86_64/extras-common
gpgcheck = 1
enabled = 1
gpgkey=file://$epel_gpg_key
EOT

# Install texlive with all required packages to build the luaossl doc
#dnf install -y texlive texlive-*
dnf install -y texlive-latex texlive-l3kernel texlive-textcase texlive-preprint texlive-epstopdf* texlive-collection-fontsrecommended
