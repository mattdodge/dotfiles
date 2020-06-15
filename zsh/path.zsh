# MySQL installed from brew
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# OpenSSL 1.1 stuff
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib $LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include $CPPFLAGS"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig:$PKG_CONFIG_PATH"
