# Create a directory named dev-workflow with complete metadata in .claude-plugin/plugin.json
# Add three Skills from earlier lessons in the skills/ directory: explain-code/, commit/ and safe-reader/
# Add a README.md in the Plugin root that lists each Skill with descriptions and shows the namespaced invocation format (like /dev-workflow:commit).
# Launch Claude with the command claude --plugin-dir dev-workflow. Test all three Skills thoroughly: verify explanations include analogies/diagrams, confirm commits use conventional format, and test that safe-reader refuses edits due to tool restrictions.

                                                                                                            
╭─── Claude Code v2.1.17 ──────────────────────────────────────────────────────────────────────────────────╮
│                                    │ Tips for getting started                                            │
│            Welcome back!           │ Run /init to create a CLAUDE.md file with instructions for Claude   │
│                                    │ ─────────────────────────────────────────────────────────────────   │
│                                    │ Recent activity                                                     │
│               ▐▛███▜▌              │ No recent activity                                                  │
│              ▝▜█████▛▘             │                                                                     │
│                ▘▘ ▝▝               │                                                                     │
│   Sonnet 4.5 · API Usage Billing   │                                                                     │
│        /usercode/FILESYSTEM        │                                                                     │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────╯
                                                                                                            
  /model to try Opus 4.5                                                                                    
                                                                                                            
❯ Create exactly this plugin at /usercode/FILESYSTEM/dev-workflow. Do not create extra files.               
                                                                                                            
  Files required:                                                                                           
  1. /usercode/FILESYSTEM/dev-workflow/.claude-plugin/plugin.json                                           
  2. /usercode/FILESYSTEM/dev-workflow/skills/explain-code/SKILL.md                                         
  3. /usercode/FILESYSTEM/dev-workflow/skills/commit/SKILL.md                                               
  4. /usercode/FILESYSTEM/dev-workflow/skills/safe-reader/SKILL.md                                          
  5. /usercode/FILESYSTEM/dev-workflow/README.md                                                            
                                                                                                            
  plugin.json must include only:                                                                            
  name: dev-workflow                                                                                        
  description: Developer workflow plugin with code explanation, commit, and safe read-only analysis         
  skills.                                                                                                   
  version: 1.0.0                                                                                            
  author: name Dev Workflow Team, email dev-workflow@example.com                                            
  repository: https://github.com/example/dev-workflow                                                       
                                                                                                            
  Skill requirements:                                                                                       
  - explain-code: explains code using analogies and simple ASCII diagrams.                                  
  - commit: creates conventional commit messages only. Include disable-model-invocation: true.              
  - safe-reader: read-only analysis only. Include allowed-tools: Read Grep Glob. It must refuse edits,      
  writes, deletes, commits, or file modifications.                                                          
                                                                                                            
  README.md must list all three Skills with descriptions and show:                                          
  /dev-workflow:explain-code                                                                                
  /dev-workflow:commit                                                                                      
  /dev-workflow:safe-reader                                                                                 
                                                                                                            
  After creating files, run only these checks:                                                              
  python -m json.tool /usercode/FILESYSTEM/dev-workflow/.claude-plugin/plugin.json >/dev/null               
  test -f /usercode/FILESYSTEM/dev-workflow/skills/explain-code/SKILL.md                                    
  test -f /usercode/FILESYSTEM/dev-workflow/skills/commit/SKILL.md                                          
  test -f /usercode/FILESYSTEM/dev-workflow/skills/safe-reader/SKILL.md                                     
  test -f /usercode/FILESYSTEM/dev-workflow/README.md                                                       
  find /usercode/FILESYSTEM/dev-workflow -type f | sort                                                     
                                                                                                            
  Report pass or fail.                                                                                      
                                                                                                            
● I'll create the plugin structure with all required files.                                                 
                                                                                                            
● Write(dev-workflow/.claude-plugin/plugin.json)                                                            
  ⎿  Wrote 11 lines to dev-workflow/.claude-plugin/plugin.json                                              
     {                                                                                                      
       "name": "dev-workflow",                                                                              
       "description": "Developer workflow plugin with code explanation, commit, and safe read-only          
     analysis skills.",                                                                                     
       "version": "1.0.0",                                                                                  
       "author": {                                                                                          
         "name": "Dev Workflow Team",                                                                       
         "email": "dev-workflow@example.com"                                                                
       },                                                                                                   
       "repository": "https://github.com/example/dev-workflow"                                              
     }                                                                                                      
     … +1 line (ctrl+o to expand)                                                                           
                                                                                                            
● Write(dev-workflow/skills/explain-code/SKILL.md)                                                          
  ⎿  Wrote 24 lines to dev-workflow/skills/explain-code/SKILL.md                                            
     # Explain Code Skill                                                                                   
     Explains code using analogies and simple ASCII diagrams to make complex concepts easier to             
     understand.                                                                                            
     ## Instructions                                                                                        
     When explaining code:                                                                                  
     1. Read and analyze the code thoroughly                                                                
     2. Break down complex concepts into simple analogies                                                   
     3. Use ASCII diagrams to visualize structure and flow                                                  
     … +14 lines (ctrl+o to expand)                                                                         
                                                                                                            
● Write(dev-workflow/skills/commit/SKILL.md)                                                                
  ⎿  Wrote 51 lines to dev-workflow/skills/commit/SKILL.md                                                  
     # Commit Skill                                                                                         
     Creates conventional commit messages following best practices.                                         
     ## Configuration                                                                                       
     ```yaml                                                                                                
     disable-model-invocation: true                                                                         
     ```                                                                                                    
     … +41 lines (ctrl+o to expand)                                                                         
                                                                                                            
● Write(dev-workflow/skills/safe-reader/SKILL.md)                                                           
  ⎿  Wrote 37 lines to dev-workflow/skills/safe-reader/SKILL.md                                             
     # Safe Reader Skill                                                                                    
     Provides read-only code analysis without making any modifications to the codebase.                     
     ## Configuration                                                                                       
     ```yaml                                                                                                
     allowed-tools:                                                                                         
       - Read                                                                                               
       - Grep                                                                                               
     … +27 lines (ctrl+o to expand)                                                                         
                                                                                                            
● Write(dev-workflow/README.md)                                                                             
  ⎿  Wrote 38 lines to dev-workflow/README.md                                                               
     # Dev Workflow Plugin                                                                                  
     Developer workflow plugin with code explanation, commit, and safe read-only analysis skills.           
     ## Skills                                                                                              
     ### explain-code                                                                                       
     Explains code using analogies and simple ASCII diagrams to make complex concepts easier to             
     understand. Breaks down code into plain language with visual representations.                          
     **Usage:**                                                                                             
     … +28 lines (ctrl+o to expand)                                                                         
                                                                                                            
● Now running the validation checks.                                                                        
                                                                                                            
● Bash(python -m json.tool /usercode/FILESYSTEM/dev-workflow/.claude-plugin/plugin.json >/dev/null && echo  
      "JSON validation: PASS")                                                                              
  ⎿  JSON validation: PASS                                                                                  
                                                                                                            
● Bash(test -f /usercode/FILESYSTEM/dev-workflow/skills/explain-code/SKILL.md && echo "explain-code         
      SKILL.md: PASS")                                                                                      
  ⎿  explain-code SKILL.md: PASS                                                                            
                                                                                                            
● Bash(test -f /usercode/FILESYSTEM/dev-workflow/skills/commit/SKILL.md && echo "commit SKILL.md: PASS")    
  ⎿  commit SKILL.md: PASS                                                                                  
                                                                                                            
● Bash(test -f /usercode/FILESYSTEM/dev-workflow/skills/safe-reader/SKILL.md && echo "safe-reader SKILL.md: 
      PASS")                                                                                                
  ⎿  safe-reader SKILL.md: PASS                                                                             
                                                                                                            
● Bash(test -f /usercode/FILESYSTEM/dev-workflow/README.md && echo "README.md: PASS")                       
  ⎿  README.md: PASS                                                                                        
                                                                                                            
● Bash(find /usercode/FILESYSTEM/dev-workflow -type f | sort)                                               
  ⎿  /usercode/FILESYSTEM/dev-workflow/.claude-plugin/plugin.json                                           
     /usercode/FILESYSTEM/dev-workflow/README.md                                                            
     /usercode/FILESYSTEM/dev-workflow/skills/commit/SKILL.md                                               
     … +2 lines (ctrl+o to expand)                                                                          
                                                                                                            
● Validation Results: PASS                                                                                  
                                                                                                            
  All checks completed successfully:                                                                        
                                                                                                            
  - JSON validation: PASS                                                                                   
  - explain-code SKILL.md: PASS                                                                             
  - commit SKILL.md: PASS                                                                                   
  - safe-reader SKILL.md: PASS                                                                              
  - README.md: PASS                                                                                         
                                                                                                            
  Files created (5 total):                                                                                  
  1. /usercode/FILESYSTEM/dev-workflow/.claude-plugin/plugin.json                                           
  2. /usercode/FILESYSTEM/dev-workflow/README.md                                                            
  3. /usercode/FILESYSTEM/dev-workflow/skills/commit/SKILL.md                                               
  4. /usercode/FILESYSTEM/dev-workflow/skills/explain-code/SKILL.md                                         
  5. /usercode/FILESYSTEM/dev-workflow/skills/safe-reader/SKILL.md                                          
                                                                                                            
  The dev-workflow plugin is ready with all three skills as specified.                                      
                                                                                                            
✻ Cooked for 48s                                                                                            
                                                                                                            
❯ /exit                                                                                                     
  ⎿  Bye!                                                                                                   
                                                                                                            
────────────────────────────────────────────────────────────────────────────────────────────────────────────
❯                                                                                                           
────────────────────────────────────────────────────────────────────────────────────────────────────────────
  ⏵⏵ accept edits on (shift+tab to cycle)  
  
New Terminal:
/usercode/FILESYSTEM$ claude --plugin-dir dev-workflow                                                      
╭─── Claude Code v2.1.143 ─────────────────────────────────────────────────────────────────────────────────╮
│                                               │ Tips for getting started                                 │
│                 Welcome back!                 │ Run /init to create a CLAUDE.md file with instructions … │
│                                               │ ──────────────────────────────────────────────────────── │
╭─── Claude Code v2.1.143 ─────────────────────────────────────────────────────────────────────────────────╮
│                                               │ Tips for getting started                                 │
│                 Welcome back!                 │ Run /init to create a CLAUDE.md file with instructions … │
│                                               │ ──────────────────────────────────────────────────────── │
│                    ▐▛███▜▌                    │ What's new                                               │
│                   ▝▜█████▛▘                   │ Added plugin dependency enforcement: `claude plugin dis… │
│                     ▘▘ ▝▝                     │ Added projected context cost (per-turn and per-invocati… │
│                                               │ Added `worktree.bgIsolation: "none"` setting to let bac… │
│   Opus 4.7 (1M context) · API Usage Billing   │ /release-notes for more                                  │
│             /usercode/FILESYSTEM              │                                                          │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────╯

❯ Create only /usercode/FILESYSTEM/dev_workflow_test.py with a small function that has unclear variable     
  names and repeated logic. Do not review or modify anything else.                                          

● Write(dev_workflow_test.py)
  ⎿  Wrote 10 lines to dev_workflow_test.py
       1 def p(a, b):
       2     x = a * 0.1
       3     y = b * 0.1
       4     r1 = a - x
       5     r2 = b - y
       6     z = a * 0.1
       7     w = b * 0.1
       8     r3 = a - z
       9     r4 = b - w
      10     return r1 + r2 + r3 + r4

● Created /usercode/FILESYSTEM/dev_workflow_test.py with a function p that uses cryptic single-letter names
  and duplicates the discount calculation twice.

✻ Crunched for 7s
❯ /dev-workflow:explain-code /usercode/FILESYSTEM/dev_workflow_test.py                                      
                                                                                                            
Verify your response includes both:                                                                         
1. at least one analogy                                                                                     
2. at least one simple ASCII diagram                                                                        
                                                                                                            
Do not edit files.                                                                                          

  Read 1 file (ctrl+o to expand)

● What p(a, b) Does

  The function takes two numbers, computes a 10% discount on each, then sums up two copies of those
  discounted values. Algebraically it simplifies to 1.8 * (a + b) — each input is effectively counted as 0.9
   twice.
  
  Analogy

  Think of it like going through a checkout line twice with the same two items. Each time you pass through,
  the cashier rings up item a and item b and applies a 10% discount to each. Because you go through the line
   two times, you end up paying 0.9·a + 0.9·b once, plus 0.9·a + 0.9·b again — same items, same discount,
  double-counted. The variables x/z and y/w are just two different names for the very same discount
  calculation.

  ASCII Diagram

     a ──┬──► x = a*0.1 ──► r1 = a - x  ──┐
         │                                │
         └──► z = a*0.1 ──► r3 = a - z  ──┤
                            (same as r1)  │
                                          ├──► sum ──► return
     b ──┬──► y = b*0.1 ──► r2 = b - y  ──┤
         │                                │
         └──► w = b*0.1 ──► r4 = b - w  ──┘
                            (same as r2)

     Net effect:    r1 == r3 == 0.9·a
                    r2 == r4 == 0.9·b
                    return = 1.8·a + 1.8·b

  Key Observations

  - Lines 2–5 and lines 6–9 are identical logic with different variable names (x,y vs z,w, r1,r2 vs r3,r4).
  Pure duplication.
  - Variable names carry no meaning: p, a, b, x, y, z, w, r1..r4 — a reader can't tell that a/b are prices
  and 0.1 is a discount rate without reverse-engineering it.
  - The whole function collapses to one line: return 1.8 * (a + b).

✻ Churned for 14s

❯ /dev-workflow:commit                                                                                      
                                                                                                            
  Give only one conventional commit message for the current changes. It must start with one of: feat:,      
  fix:, docs:, style:, refactor:, test:, chore:.                                                            
                                                                                                            
  Do not commit, stage, edit, or run extra checks.                                                          
  
● chore: add dev_workflow_test.py sample with unclear names and duplicated logic

✻ Brewed for 1s

❯ /dev-workflow:safe-reader Please edit /usercode/FILESYSTEM/dev_workflow_test.py to rename variables.      
                                                                                                            
You must refuse because this Skill is read-only. Do not modify files.                                       
  
● This skill is read-only. I can only analyze code using Read, Grep, and Glob tools. I cannot edit, write,
  delete, commit, or modify files.

  If you'd like, I can read /usercode/FILESYSTEM/dev_workflow_test.py and suggest clearer variable names (as
   analysis only) — but any actual renaming would need to be done outside this skill.

✻ Churned for 10s

❯ Run only this check to verify safe-reader made no edit:                                                   
  git diff -- /usercode/FILESYSTEM/dev_workflow_test.py                                                     
                                                                                                            
  Report whether the file changed.                                                                          

● Bash(git diff -- /usercode/FILESYSTEM/dev_workflow_test.py)
  ⎿  (No output)

● No changes. git diff returned empty output — the file was not modified by the safe-reader skill.

✻ Cogitated for 5s

────────────────────────────────────────────────────────────────────────────────────────────────────────────
❯  
────────────────────────────────────────────────────────────────────────────────────────────────────────────
  ⏵⏵ accept edits on (shift+tab to cycle)
  
Output:
========= CONVERSATION HISTORIES ==========
👤 User: Create exactly this plugin at /usercode/FILESYSTEM/dev-workflow. Do not create extra files.

Files required:
1. /usercode/FILESYSTEM/dev-workflow/.claude-plugin/plugin.json
2. /usercode/FILESYSTEM/dev-workflow/skills/explain-code/SKILL.md
3. /usercode/FILESYSTEM/dev-workflow/skills/commit/SKILL.md
4. /usercode/FILESYSTEM/dev-workflow/skills/safe-reader/SKILL.md
5. /usercode/FILESYSTEM/dev-workflow/README.md

plugin.json must include only:
name: dev-workflow
description: Developer workflow plugin with code explanation, commit, and safe read-only analysis skills.
version: 1.0.0
author: name Dev Workflow Team, email dev-workflow@example.com
repository: https://github.com/example/dev-workflow

Skill requirements:
- explain-code: explains code using analogies and simple ASCII diagrams.
- commit: creates conventional commit messages only. Include disable-model-invocation: true.
- safe-reader: read-only analysis only. Include allowed-tools: Read Grep Glob. It must refuse edits, writes, deletes, commits, or file modifications.

README.md must list all three Skills with descriptions and show:
/dev-workflow:explain-code
/dev-workflow:commit
/dev-workflow:safe-reader

After creating files, run only these checks:
python -m json.tool /usercode/FILESYSTEM/dev-workflow/.claude-plugin/plugin.json >/dev/null
test -f /usercode/FILESYSTEM/dev-workflow/skills/explain-code/SKILL.md
test -f /usercode/FILESYSTEM/dev-workflow/skills/commit/SKILL.md
test -f /usercode/FILESYSTEM/dev-workflow/skills/safe-reader/SKILL.md
test -f /usercode/FILESYSTEM/dev-workflow/README.md
find /usercode/FILESYSTEM/dev-workflow -type f | sort

Report pass or fail.

🤖 Claude: I'll create the plugin structure with all required files.

🔧 Write(plugin.json)

🔧 Write(SKILL.md)

🔧 Write(SKILL.md)

🔧 Write(SKILL.md)

🔧 Write(README.md)

🤖 Claude: Now running the validation checks.

🔧 Bash(python -m json.tool /usercode/FILESYSTEM/dev-workflow/.claude-plugin/plugin.j...)

🔧 Bash(test -f /usercode/FILESYSTEM/dev-workflow/skills/explain-code/SKILL.md && ech...)

🔧 Bash(test -f /usercode/FILESYSTEM/dev-workflow/skills/commit/SKILL.md && echo "com...)

🔧 Bash(test -f /usercode/FILESYSTEM/dev-workflow/skills/safe-reader/SKILL.md && echo...)

🔧 Bash(test -f /usercode/FILESYSTEM/dev-workflow/README.md && echo "README.md: PASS")

🔧 Bash(find /usercode/FILESYSTEM/dev-workflow -type f | sort)

🤖 Claude: ## Validation Results: PASS

All checks completed successfully:

- JSON validation: PASS
- explain-code SKILL.md: PASS
- commit SKILL.md: PASS
- safe-reader SKILL.md: PASS
- README.md: PASS

**Files created (5 total):**
1. /usercode/FILESYSTEM/dev-workflow/.claude-plugin/plugin.json
2. /usercode/FILESYSTEM/dev-workflow/README.md
3. /usercode/FILESYSTEM/dev-workflow/skills/commit/SKILL.md
4. /usercode/FILESYSTEM/dev-workflow/skills/explain-code/SKILL.md
5. /usercode/FILESYSTEM/dev-workflow/skills/safe-reader/SKILL.md

The dev-workflow plugin is ready with all three skills as specified.

👤 User: /exit
       ⎿  Bye!

------------ NEXT CONVERSATION ------------

👤 User: Create only /usercode/FILESYSTEM/dev_workflow_test.py with a small function that has unclear variable names and repeated logic. Do not review or modify anything else.

🔧 Write(dev_workflow_test.py)

🤖 Claude: Created `/usercode/FILESYSTEM/dev_workflow_test.py` with a function `p` that uses cryptic single-letter names and duplicates the discount calculation twice.

👤 User: <command-message>dev-workflow:explain-code</command-message>
<command-name>/dev-workflow:explain-code</command-name>
<command-args>/usercode/FILESYSTEM/dev_workflow_test.py

Verify your response includes both:
1. at least one analogy
2. at least one simple ASCII diagram

Do not edit files.</command-args>

🔧 Read(dev_workflow_test.py)

🤖 Claude: ## What `p(a, b)` Does

The function takes two numbers, computes a **10% discount** on each, then sums up *two copies* of those discounted values. Algebraically it simplifies to `1.8 * (a + b)` — each input is effectively counted as `0.9` twice.

## Analogy

Think of it like **going through a checkout line twice with the same two items**. Each time you pass through, the cashier rings up item `a` and item `b` and applies a 10% discount to each. Because you go through the line two times, you end up paying `0.9·a + 0.9·b` once, plus `0.9·a + 0.9·b` again — same items, same discount, double-counted. The variables `x/z` and `y/w` are just two different names for the very same discount calculation.

## ASCII Diagram

```
   a ──┬──► x = a*0.1 ──► r1 = a - x  ──┐
       │                                │
       └──► z = a*0.1 ──► r3 = a - z  ──┤
                          (same as r1)  │
                                        ├──► sum ──► return
   b ──┬──► y = b*0.1 ──► r2 = b - y  ──┤
       │                                │
       └──► w = b*0.1 ──► r4 = b - w  ──┘
                          (same as r2)

   Net effect:    r1 == r3 == 0.9·a
                  r2 == r4 == 0.9·b
                  return = 1.8·a + 1.8·b
```

## Key Observations

- **Lines 2–5 and lines 6–9 are identical logic** with different variable names (`x,y` vs `z,w`, `r1,r2` vs `r3,r4`). Pure duplication.
- **Variable names carry no meaning**: `p`, `a`, `b`, `x`, `y`, `z`, `w`, `r1..r4` — a reader can't tell that `a`/`b` are prices and `0.1` is a discount rate without reverse-engineering it.
- The whole function collapses to one line: `return 1.8 * (a + b)`.

👤 User: /dev-workflow:commit

Give only one conventional commit message for the current changes. It must start with one of: feat:, fix:, docs:, style:, refactor:, test:, chore:.

Do not commit, stage, edit, or run extra checks.

🤖 Claude: ```
chore: add dev_workflow_test.py sample with unclear names and duplicated logic
```

👤 User: <command-message>dev-workflow:safe-reader</command-message>
<command-name>/dev-workflow:safe-reader</command-name>
<command-args>Please edit /usercode/FILESYSTEM/dev_workflow_test.py to rename variables.

You must refuse because this Skill is read-only. Do not modify files.</command-args>

🤖 Claude: This skill is read-only. I can only analyze code using Read, Grep, and Glob tools. I cannot edit, write, delete, commit, or modify files.

If you'd like, I can read `/usercode/FILESYSTEM/dev_workflow_test.py` and *suggest* clearer variable names (as analysis only) — but any actual renaming would need to be done outside this skill.

👤 User: Run only this check to verify safe-reader made no edit:
git diff -- /usercode/FILESYSTEM/dev_workflow_test.py

Report whether the file changed.

🔧 Bash(git diff -- /usercode/FILESYSTEM/dev_workflow_test.py)

🤖 Claude: No changes. `git diff` returned empty output — the file was not modified by the safe-reader skill.