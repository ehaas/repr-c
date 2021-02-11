#!/bin/bash

INPUT=$(cat <<EOF
const C = sizeof(char) + sizeof(long long)
A = @pragma_pack(2) struct {
    c char,
    @align(4) i int:3,
    j int:5,
    k [C]short,
}
EOF
)
echo "$INPUT" | ./target/debug/cly
