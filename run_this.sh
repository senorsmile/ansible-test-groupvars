#!/usr/bin/env bash
export ANSIBLE_FORCE_COLOR=true
export VAGRANT_MODE=0 #1=enabled, always disabled from this script

INOPTS="$@"

playbook="site.yml"

run_playbook() {
  ansible-playbook -i ./hosts --diff "${playbook}" $INOPTS #$VAULTOPTS
}

run_playbook
retcode=$?

exit $retcode
