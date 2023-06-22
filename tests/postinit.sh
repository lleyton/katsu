echo postinit moment

cat<<EOF > /etc/yum.repos.d/terra.repo
[terra]
name=Terra \$releasever
baseurl=https://repos.fyralabs.com/terra\$releasever
type=rpm
skip_if_unavailable=True
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://repos.fyralabs.com/terra\$releasever/key.asc
enabled=1
enabled_metadata=1
metadata_expire=4h
EOF
