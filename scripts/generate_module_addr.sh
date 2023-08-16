#! /bin/bash


export $(cat .env | xargs) && echo "export const MODULE_ADDR = '0x$(npx aptos config show-profiles --profile=$REACT_APP_NETWORK | grep 'account' | sed -n 's/.*"account": \"\(.*\)\".*/\1/p')'" > frontend/src/constants.ts