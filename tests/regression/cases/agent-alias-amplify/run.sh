# agent-alias-amplify: `-a amplify` resolves to `augment` and emits a
# deprecation warning on stderr. Skills land under .augment/skills/, not
# .amplify/skills/.

"$ROSIE" install -y fake-org/skills -a amplify > stdout 2> stderr
echo $? > exit_code
