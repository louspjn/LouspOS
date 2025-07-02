#!/bin/bash

set -ouex pipefail

cp /ctx/usr/libexec/flpkinstall /usr/libexec/
chmod +x /usr/libexec/flpkinstall

cp /ctx/usr/lib/systemd/system/flpkinstall.service /usr/lib/systemd/system/

systemctl enable podman.socket
systemctl enable flpkinstall.service
