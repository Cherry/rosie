assert_exit_code 0 "$(cat exit_code)"
assert_contains stdout "symlink -> 1 agent(s)"
assert_contains stderr "agent name 'amplify' is deprecated"
assert_contains stderr "use 'augment'"
assert_symlink_target ".augment/skills/my-skill" "../../.agents/skills/my-skill"

# The old name's path must NOT be created.
if [ -e ".amplify/skills/my-skill" ]; then
    _fail ".amplify/skills/my-skill should not be created when alias is used"
fi
