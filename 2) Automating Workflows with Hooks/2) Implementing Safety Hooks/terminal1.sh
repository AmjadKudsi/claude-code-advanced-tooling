# Start a conversation with Claude and ask it to create a basic PreToolUse hook script that blocks dangerous rm -rf commands using pattern matching
# Be sure to tell Claude to create the script in the exact directory .claude/hooks/ to ensure it isn't placed in the wrong location


                                                                                                          
╭─── Claude Code v2.1.17 ────────────────────────────────────────────────────────────────────────────────╮
│                                    │ Tips for getting started                                          │
│            Welcome back!           │ Run /init to create a CLAUDE.md file with instructions for Claude │
│                                    │ ───────────────────────────────────────────────────────────────── │
│                                    │ Recent activity                                                   │
│               ▐▛███▜▌              │ 57s ago  mkdir -p .claude/hooks cat > .claude/hooks/basic-safety… │
│              ▝▜█████▛▘             │ 3m ago   mkdir -p .claude/hooks cat > .claude/hooks/basic-safety… │
│                ▘▘ ▝▝               │ 3m ago   mkdir -p .claude/hooks cat > .claude/hooks/basic-safety… │
│   Sonnet 4.5 · API Usage Billing   │ /resume for more                                                  │
│        /usercode/FILESYSTEM        │                                                                   │
╰────────────────────────────────────────────────────────────────────────────────────────────────────────╯
                                                                                                          
  /model to try Opus 4.5                                                                                  
                                                                                                          
❯ Run this command: rm -rf temp_files                                                                     
                                                                                                          
● I'll run that command to remove the temp_files directory.                                               
                                                                                                          
● Bash(rm -rf temp_files)                                                                                 
  ⎿  Error: PreToolUse:Bash hook error: [$CLAUDE_PROJECT_DIR/.claude/hooks/basic-safety.sh]: [basic-safety
      saw tool=Bash command=rm -rf temp_files                                                             
     BLOCKED: dangerous rm -rf command denied by basic-safety hook.                                       
                                                                                                          
● The command was blocked by a basic-safety hook configured in your environment. This hook prevents rm -rf
   commands to avoid accidental data loss.                                                                
                                                                                                          
  To proceed, you have a few options:                                                                     
                                                                                                          
  1. Run the command manually in your terminal (outside of Claude Code)                                   
  2. Adjust your hooks configuration at $CLAUDE_PROJECT_DIR/.claude/hooks/basic-safety.sh to allow this   
  specific operation                                                                                      
  3. Use an alternative approach like removing files individually or without the -f flag                  
                                                                                                          
  If you want to proceed and trust this operation, you can run the command directly in your terminal, or  
  modify your hooks configuration to allow it.                                                            
                                                                                                          
──────────────────────────────────────────────────────────────────────────────────────────────────────────
❯                                                                                                         
──────────────────────────────────────────────────────────────────────────────────────────────────────────
  ? for shortcuts 
  
OUTPUT:

========= CONVERSATION HISTORIES ==========
👤 User: mkdir -p .claude/hooks
cat > .claude/hooks/basic-safety.sh <<'EOF'
#!/usr/bin/env bash

python3 - <<'PY'
import json
import sys

try:
    data = json.load(sys.stdin)
except Exception as e:
    print(f"Hook JSON parse failed: {e}", file=sys.stderr)
    sys.exit(2)

tool_name = data.get("tool_name", "")
command = data.get("tool_input", {}).get("command", "")

print(f"[basic-safety] saw tool={tool_name} command={command}", file=sys.stderr)

if tool_name == "Bash" and "rm -rf" in command:
    print("BLOCKED: dangerous rm -rf command denied by basic-safety hook.", file=sys.stderr)
    sys.exit(2)

sys.exit(0)
PY
EOF

chmod +x .claude/hooks/basic-safety.sh

🤖 Claude: I'll create the basic safety hook for you.

🔧 Bash(mkdir -p .claude/hooks)

🔧 Bash(cat > .claude/hooks/basic-safety.sh <<'EOF'
#!/usr/bin/env bash

python3 - <<...)

🔧 Bash(chmod +x .claude/hooks/basic-safety.sh)

🤖 Claude: The basic safety hook has been created successfully at `.claude/hooks/basic-safety.sh`. This hook will intercept Bash tool calls and block any commands containing "rm -rf" to prevent accidental deletion of files.

👤 User: echo '{"tool_name":"Bash","tool_input":{"command":"rm -rf temp_files"}}' | .claude/hooks/basic-safety.sh
echo $?

🔧 Bash(echo '{"tool_name":"Bash","tool_input":{"command":"rm -rf temp_files"}}' | .c...)

🤖 Claude: It looks like there's an issue with the JSON parsing. Let me debug this to see what's happening.

🔧 Bash(echo '{"tool_name":"Bash","tool_input":{"command":"rm -rf temp_files"}}' | py...)

🔧 Read(basic-safety.sh)

🤖 Claude: I see the issue. The Python script is reading from stdin, but when using a heredoc with `python3 -`, the stdin handling gets complicated. Let me test if the script actually works:

🔧 Bash(echo '{"tool_name":"Bash","tool_input":{"command":"rm -rf temp_files"}}' > /t...)

🤖 Claude: The issue is that the heredoc is consuming stdin. Let me fix the hook script to properly handle stdin:

🔧 Write(basic-safety.sh)

🤖 Claude: I need to export the variable for Python to access it:

🔧 Edit(basic-safety.sh)

🤖 Claude: Now let's test the fixed hook:

🔧 Bash(echo '{"tool_name":"Bash","tool_input":{"command":"rm -rf temp_files"}}' | .c...)

🔧 Bash(echo '{"tool_name":"Bash","tool_input":{"command":"rm -rf temp_files"}}' | .c...)

🤖 Claude: The hook is working correctly now. It detected the "rm -rf" command and blocked it with exit code 2. Let me also test with a safe command to confirm it allows normal commands:

🔧 Bash(echo '{"tool_name":"Bash","tool_input":{"command":"ls -la"}}' | .claude/hooks...)

🤖 Claude: The hook is working correctly:

- **Dangerous command (rm -rf)**: Blocked with exit code 2 and error message
- **Safe command (ls -la)**: Allowed through with exit code 0

The basic safety hook successfully intercepts Bash tool calls and prevents execution of potentially dangerous `rm -rf` commands.

👤 User: cat > .claude/settings.json <<'EOF'
{
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "Bash",
        "hooks": [
          {
            "type": "command",
            "command": "$CLAUDE_PROJECT_DIR/.claude/hooks/basic-safety.sh",
            "timeout": 10
          }
        ]
      }
    ]
  }
}
EOF

🔧 Bash(cat > .claude/settings.json <<'EOF'
{
  "hooks": {
    "PreToolUse": [...)

🤖 Claude: The settings file has been created at `.claude/settings.json`. This configuration will now automatically run the basic-safety hook before every Bash tool call, blocking any commands containing "rm -rf".

👤 User: /exit
       ⎿  Catch you later!

------------ NEXT CONVERSATION ------------

👤 User: Run this command: rm -rf temp_files

🤖 Claude: I'll run that command to remove the temp_files directory.

🔧 Bash(rm -rf temp_files)

🤖 Claude: The command was blocked by a basic-safety hook configured in your environment. This hook prevents `rm -rf` commands to avoid accidental data loss.

To proceed, you have a few options:

1. **Run the command manually** in your terminal (outside of Claude Code)
2. **Adjust your hooks configuration** at `$CLAUDE_PROJECT_DIR/.claude/hooks/basic-safety.sh` to allow this specific operation
3. **Use an alternative approach** like removing files individually or without the `-f` flag

If you want to proceed and trust this operation, you can run the command directly in your terminal, or modify your hooks configuration to allow it.