assert_exit_code 0 "$(cat exit_code)"

assert_contains stdout "Supported agents:"
assert_contains stdout "Claude Code"
assert_contains stdout "Gemini CLI"
assert_contains stdout "Goose"
assert_contains stdout "Warp"
assert_contains stdout "Augment Code"
assert_contains stdout "Qwen Code"
assert_contains stdout "Crush"

# The old amplify display name should no longer appear; the canonical
# display is "Augment Code".
if grep -qE '^  amplify ' stdout; then
    _fail "stdout still lists 'amplify' as a top-level agent (should be aliased to augment)"
fi
