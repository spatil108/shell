#!/bin/bash
{
    if ! [[ -n $(which jq) ]]; then
        echo "jq not installed";
        return 1;
    fi;
    if ! [[ -n $(which sponge) ]]; then
        echo "sponge not installed";
        return 2;
    fi;
    if [[ -n $(jq . $1) ]]; then
        jq . $1 | sponge $1;
    fi
}