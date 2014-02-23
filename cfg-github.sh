#!/usr/bin/env bash

LoadScript() {
    return `curl -s $0 | bash`;
}


TOKEN_URI="https://github.com/settings/applications";
OPEN="open -a Google\ Chrome";

$('$OPEN "${TOKEN_URI}"');

exit 0;

# USER="git config --global github.user %s;";
# PASS="git config --global github.token %s;";
# 
# HELP=


tpl='git config --global github.';

#"${_ba}user  %s;\n$($b)token %s;";

GetUser() {
    read -p 'User name: ';
    echo $OUT
}

echo "${tpl}user $(GetUser); ${tpl}token $(GetToken)";

