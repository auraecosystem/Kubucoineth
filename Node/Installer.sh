#!/usr/bin/env bash

if [ "`whoami`" != "root" ]; then
   echo "You must execute this script as root" >&2
   exit 1
fi

echo ".----------------------."
echo "| node.js installation |"
echo "'----------------------'"

VERSION=v0.10.32

cd \
&& (which aptitude > /dev/null 2>&1 && aptitude install curl python g++ make || exit 0) \
&& (which yum > /dev/null 2>&1 && yum install curl python g++ make || exit 0) \
&& curl -# http://nodejs.org/dist/$VERSION/node-$VERSION.tar.gz -o node-$VERSION.tar.gz \
&& tar xzvf node-$VERSION.tar.gz \
&& cd node-v* \
&& ./configure \
&& make install \
&& cd \
&& rm -Rf node-latest.tar.gz node-v* \
&& echo '#!/usr/bin/env bash 
export PATH=$PATH:/usr/local/lib/node_modules' > /etc/profile.d/node.sh \
&& . /etc/profile.d/node.sh \
&& echo ".--------------------------------." \
&& echo "| node.js installed successfully |" \
&& echo "'--------------------------------'" \
&& echo node $(node --version) \
&& echo npm $(npm --version)
