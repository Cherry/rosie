# agent-many-supported: `rosie agents` lists the expanded supported set.
# Spot-checks a handful of Tier 1 names so the test stays robust if more
# agents are added later without becoming a brittle full-list snapshot.

"$ROSIE" agents > stdout 2> stderr
echo $? > exit_code
