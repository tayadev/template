#!/usr/bin/env use
use '@gh/tayadev/expect'
. ./template

preset=$(cat <<EOF
Name: {{firstname}} {{lastname}} 
Bio: {{bio}}
Thats it!
EOF
)

firstname="Yehuda"
lastname="Katz"
bio=$(cat <<'EOF'
This is a description
that spans over
multiple lines
EOF
)

goal=$(cat <<EOF
Name: Yehuda Katz
Bio: This is a description
that spans over
multiple lines
Thats it!
EOF
)

expect "template "$preset"" toBe "$goal"
