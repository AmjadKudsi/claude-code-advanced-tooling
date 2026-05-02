# create an auto-formatting hook that runs Prettier on TypeScript files immediately after Claude writes them

                                                                                                          
╭─── Claude Code v2.1.17 ────────────────────────────────────────────────────────────────────────────────╮
│                                    │ Tips for getting started                                          │
│            Welcome back!           │ Run /init to create a CLAUDE.md file with instructions for Claude │
│                                    │ ───────────────────────────────────────────────────────────────── │
│                                    │ Recent activity                                                   │
│               ▐▛███▜▌              │ No recent activity                                                │
│              ▝▜█████▛▘             │                                                                   │
│                ▘▘ ▝▝               │                                                                   │
│   Sonnet 4.5 · API Usage Billing   │                                                                   │
│        /usercode/FILESYSTEM        │                                                                   │
╰────────────────────────────────────────────────────────────────────────────────────────────────────────╯
                                                                                                          
  /model to try Opus 4.5                                                                                  
                                                                                                          
❯ Create and test a Claude Code PostToolUse hook that auto-formats TypeScript files after Write           
  operations.                                                                                             
                                                                                                          
  Use the current project directory. Do all file creation, configuration, testing, and verification       
  yourself.                                                                                               
                                                                                                          
  Requirements:                                                                                           
                                                                                                          
  1. Create .claude/hooks/auto-format.sh.                                                                 
                                                                                                          
  The script must:                                                                                        
  - Be a bash script.                                                                                     
  - Read the hook JSON input from stdin.                                                                  
  - Use Python inside the bash script to parse the JSON.                                                  
  - Extract the written file path from tool_input.file_path, falling back to tool_response.filePath.      
  - Only run for files ending in .ts or .tsx.                                                             
  - Print a friendly "✨ Formatting..." message to stderr when it runs on a TypeScript file.              
  - Run npx prettier --write on that file.                                                                
  - Exit successfully for non-TypeScript files.                                                           
  - Be executable.                                                                                        
                                                                                                          
  Use this exact implementation unless you see a clear reason to improve it:                              
                                                                                                          
  #!/usr/bin/env bash                                                                                     
  set -euo pipefail                                                                                       
                                                                                                          
  INPUT="$(cat)"                                                                                          
                                                                                                          
  HOOK_INPUT="$INPUT" python3 - <<'PY'                                                                    
  import json                                                                                             
  import os                                                                                               
  import subprocess                                                                                       
  import sys                                                                                              
                                                                                                          
  raw = os.environ.get("HOOK_INPUT", "{}")                                                                
                                                                                                          
  try:                                                                                                    
  data = json.loads(raw)                                                                                  
  except json.JSONDecodeError as exc:                                                                     
  print(f"auto-format hook: could not parse JSON: {exc}", file=sys.stderr)                                
  sys.exit(0)                                                                                             
                                                                                                          
  tool_input = data.get("tool_input", {}) or {}                                                           
  tool_response = data.get("tool_response", {}) or {}                                                     
                                                                                                          
  file_path = tool_input.get("file_path") or tool_response.get("filePath")                                
                                                                                                          
  if not file_path or not file_path.endswith((".ts", ".tsx")):                                            
  sys.exit(0)                                                                                             
                                                                                                          
  print(f"✨ Formatting {file_path}...", file=sys.stderr)                                                 
                                                                                                          
  try:                                                                                                    
  result = subprocess.run(                                                                                
  ["npx", "prettier", "--write", file_path],                                                              
  stdout=sys.stderr,                                                                                      
  stderr=sys.stderr,                                                                                      
  check=False,                                                                                            
  )                                                                                                       
  sys.exit(0 if result.returncode == 0 else 0)                                                            
  except FileNotFoundError:                                                                               
  print("auto-format hook: npx not found. Install Node.js/npm to use Prettier.", file=sys.stderr)         
  sys.exit(0)                                                                                             
  PY                                                                                                      
                                                                                                          
  2. Configure .claude/settings.json.                                                                     
                                                                                                          
  Merge with any existing settings rather than overwriting unrelated settings. Add this hook under        
  hooks.PostToolUse so it triggers specifically on Write operations:                                      
                                                                                                          
  {                                                                                                       
  "hooks": {                                                                                              
  "PostToolUse": [                                                                                        
  {                                                                                                       
  "matcher": "Write",                                                                                     
  "hooks": [                                                                                              
  {                                                                                                       
  "type": "command",                                                                                      
  "command": "\"$CLAUDE_PROJECT_DIR\"/.claude/hooks/auto-format.sh"                                       
  }                                                                                                       
  ]                                                                                                       
  }                                                                                                       
  ]                                                                                                       
  }                                                                                                       
  }                                                                                                       
                                                                                                          
  3. Create a messy TypeScript file for testing.                                                          
                                                                                                          
  Create src/messy-hook-test.ts with intentionally bad formatting, including inconsistent spacing,        
  missing semicolons, random indentation, and chaotic line breaks.                                        
                                                                                                          
  4. Manually simulate the PostToolUse hook.                                                              
                                                                                                          
  Run the hook by piping JSON into it, using the path to src/messy-hook-test.ts. The JSON should          
  include:                                                                                                
  - hook_event_name: "PostToolUse"                                                                        
  - tool_name: "Write"                                                                                    
  - tool_input.file_path: "src/messy-hook-test.ts"                                                        
  - tool_response.filePath: "src/messy-hook-test.ts"                                                      
  - tool_response.success: true                                                                           
                                                                                                          
  I want to see the "✨ Formatting..." message in stderr.                                                 
                                                                                                          
  5. Display the final contents of src/messy-hook-test.ts.                                                
                                                                                                          
  Also display:                                                                                           
  - .claude/hooks/auto-format.sh                                                                          
  - .claude/settings.json                                                                                 
                                                                                                          
  6. Briefly confirm whether the test passed. If it failed because Prettier is unavailable, explain       
  the exact command or package setup needed, then retry if possible.                                      
                                                                                                          
● I'll create and test the auto-formatting hook for you. Let me start by setting up the directory         
  structure and files.                                                                                    
                                                                                                          
● Bash(mkdir -p /usercode/FILESYSTEM/.claude/hooks)                                                       
  ⎿  (No content)                                                                                         
                                                                                                          
● Bash(mkdir -p /usercode/FILESYSTEM/src)                                                                 
  ⎿  (No content)                                                                                         
                                                                                                          
● Read(.claude/settings.json)                                                                             
  ⎿  Read 16 lines                                                                                        
                                                                                                          
● Now I'll create the hook script with the exact implementation you provided:                             
                                                                                                          
● Write(.claude/hooks/auto-format.sh)                                                                     
  ⎿  Wrote 42 lines to .claude/hooks/auto-format.sh                                                       
     #!/usr/bin/env bash                                                                                  
     set -euo pipefail                                                                                    
     INPUT="$(cat)"                                                                                       
     HOOK_INPUT="$INPUT" python3 - <<'PY'                                                                 
     import json                                                                                          
     import os                                                                                            
     import subprocess                                                                                    
     import sys                                                                                           
     … +32 lines (ctrl+o to expand)                                                                       
                                                                                                          
● Bash(chmod +x /usercode/FILESYSTEM/.claude/hooks/auto-format.sh)                                        
  ⎿  (No content)                                                                                         
                                                                                                          
● Update(.claude/settings.json)                                                                           
  ⎿  Added 11 lines                                                                                       
      11            }                                                                                     
      12          ]                                                                                       
      13        }                                                                                         
      14 +    ],                                                                                          
      15 +    "PostToolUse": [                                                                            
      16 +      {                                                                                         
      17 +        "matcher": "Write",                                                                     
      18 +        "hooks": [                                                                              
      19 +          {                                                                                     
      20 +            "type": "command",                                                                  
      21 +            "command": "\"$CLAUDE_PROJECT_DIR\"/.claude/hooks/auto-format.sh"                   
      22 +          }                                                                                     
      23 +        ]                                                                                       
      24 +      }                                                                                         
      25      ]                                                                                           
      26    }                                                                                             
      27  }                                                                                               
      28   No newline at end of file                                                                      
                                                                                                          
● Now I'll create a messy TypeScript file for testing:                                                    
                                                                                                          
● Write(src/messy-hook-test.ts)                                                                           
  ⎿  Wrote 17 lines to src/messy-hook-test.ts                                                             
     interface User{name:string;age:number;email?:string}                                                 
     const   greet=(user:User)=>                                                                          
     {                                                                                                    
     console.log(`Hello, ${user.name}!`)                                                                  
         return    user.name                                                                              
             }                                                                                            
     function    processUser(  user :  User  )  {                                                         
     if(user.age>18){                                                                                     
     … +7 lines (ctrl+o to expand)                                                                        
                                                                                                          
● Now I'll manually test the hook by simulating a PostToolUse event:                                      
                                                                                                          
● Bash(echo '{                                                                                            
        "hook_event_name": "PostToolUse",…)                                                               
  ⎿  ✨ Formatting src/messy-hook-test.ts...                                                               
     npm warn exec The following package was not found and will be installed: prettier@3.8.3              
     src/messy-hook-test.ts 67ms                                                                          
                                                                                                          
● Perfect! The hook executed successfully. Now let me display the final contents of all the files:        
                                                                                                          
● Read(src/messy-hook-test.ts)                                                                            
  ⎿  Read 23 lines                                                                                        
                                                                                                          
● Read(.claude/hooks/auto-format.sh)                                                                      
  ⎿  Read 42 lines                                                                                        
                                                                                                          
● Read(.claude/settings.json)                                                                             
  ⎿  Read 27 lines                                                                                        
                                                                                                          
● Test Results: PASSED ✓                                                                                  
                                                                                                          
  The auto-formatting hook is working perfectly. Here's what happened:                                    
                                                                                                          
  Test Execution                                                                                          
                                                                                                          
  When I manually simulated the PostToolUse event, the hook:                                              
  1. Successfully parsed the JSON input                                                                   
  2. Detected the TypeScript file (.ts extension)                                                         
  3. Printed the friendly message: ✨ Formatting src/messy-hook-test.ts...                                 
  4. Automatically installed and ran Prettier via npx                                                     
  5. Formatted the file successfully in 67ms                                                              
                                                                                                          
  Before and After                                                                                        
                                                                                                          
  Before (messy formatting):                                                                              
  interface User{name:string;age:number;email?:string}                                                    
                                                                                                          
  const   greet=(user:User)=>                                                                             
  {                                                                                                       
  console.log(`Hello, ${user.name}!`)                                                                     
      return    user.name                                                                                 
          }                                                                                               
                                                                                                          
  After (beautifully formatted):                                                                          
  interface User {                                                                                        
    name: string;                                                                                         
    age: number;                                                                                          
    email?: string;                                                                                       
  }                                                                                                       
                                                                                                          
  const greet = (user: User) => {                                                                         
    console.log(`Hello, ${user.name}!`);                                                                  
    return user.name;                                                                                     
  };                                                                                                      
                                                                                                          
  Setup Summary                                                                                           
                                                                                                          
  - Hook script: .claude/hooks/auto-format.sh (executable)                                                
  - Configuration: .claude/settings.json (merged with existing PreToolUse hook)                           
  - Test file: src/messy-hook-test.ts (now properly formatted)                                            
                                                                                                          
  The hook will now automatically format any .ts or .tsx file whenever you use the Write tool in Claude   
  Code. Prettier was installed on-demand via npx, so no additional setup is required.                     
                                                                                                          
✻ Churned for 52s                                                                                         
                                                                                                          
──────────────────────────────────────────────────────────────────────────────────────────────────────────
❯                                                                                                         
──────────────────────────────────────────────────────────────────────────────────────────────────────────
  ⏵⏵ accept edits on (shift+tab to cycle)   
  
Output:
========= CONVERSATION HISTORIES ==========
👤 User: Create and test a Claude Code PostToolUse hook that auto-formats TypeScript files after Write operations.

Use the current project directory. Do all file creation, configuration, testing, and verification yourself.

Requirements:

1. Create .claude/hooks/auto-format.sh.

The script must:
- Be a bash script.
- Read the hook JSON input from stdin.
- Use Python inside the bash script to parse the JSON.
- Extract the written file path from tool_input.file_path, falling back to tool_response.filePath.
- Only run for files ending in .ts or .tsx.
- Print a friendly "✨ Formatting..." message to stderr when it runs on a TypeScript file.
- Run npx prettier --write on that file.
- Exit successfully for non-TypeScript files.
- Be executable.

Use this exact implementation unless you see a clear reason to improve it:

#!/usr/bin/env bash
set -euo pipefail

INPUT="$(cat)"

HOOK_INPUT="$INPUT" python3 - <<'PY'
import json
import os
import subprocess
import sys

raw = os.environ.get("HOOK_INPUT", "{}")

try:
    data = json.loads(raw)
except json.JSONDecodeError as exc:
    print(f"auto-format hook: could not parse JSON: {exc}", file=sys.stderr)
    sys.exit(0)

tool_input = data.get("tool_input", {}) or {}
tool_response = data.get("tool_response", {}) or {}

file_path = tool_input.get("file_path") or tool_response.get("filePath")

if not file_path or not file_path.endswith((".ts", ".tsx")):
    sys.exit(0)

print(f"✨ Formatting {file_path}...", file=sys.stderr)

try:
    result = subprocess.run(
        ["npx", "prettier", "--write", file_path],
        stdout=sys.stderr,
        stderr=sys.stderr,
        check=False,
    )
    sys.exit(0 if result.returncode == 0 else 0)
except FileNotFoundError:
    print("auto-format hook: npx not found. Install Node.js/npm to use Prettier.", file=sys.stderr)
    sys.exit(0)
PY

2. Configure .claude/settings.json.

Merge with any existing settings rather than overwriting unrelated settings. Add this hook under hooks.PostToolUse so it triggers specifically on Write operations:

{
  "hooks": {
    "PostToolUse": [
      {
        "matcher": "Write",
        "hooks": [
          {
            "type": "command",
            "command": "\"$CLAUDE_PROJECT_DIR\"/.claude/hooks/auto-format.sh"
          }
        ]
      }
    ]
  }
}

3. Create a messy TypeScript file for testing.

Create src/messy-hook-test.ts with intentionally bad formatting, including inconsistent spacing, missing semicolons, random indentation, and chaotic line breaks.

4. Manually simulate the PostToolUse hook.

Run the hook by piping JSON into it, using the path to src/messy-hook-test.ts. The JSON should include:
- hook_event_name: "PostToolUse"
- tool_name: "Write"
- tool_input.file_path: "src/messy-hook-test.ts"
- tool_response.filePath: "src/messy-hook-test.ts"
- tool_response.success: true

I want to see the "✨ Formatting..." message in stderr.

5. Display the final contents of src/messy-hook-test.ts.

Also display:
- .claude/hooks/auto-format.sh
- .claude/settings.json

6. Briefly confirm whether the test passed. If it failed because Prettier is unavailable, explain the exact command or package setup needed, then retry if possible.

🤖 Claude: I'll create and test the auto-formatting hook for you. Let me start by setting up the directory structure and files.

🔧 Bash(mkdir -p /usercode/FILESYSTEM/.claude/hooks)

🔧 Bash(mkdir -p /usercode/FILESYSTEM/src)

🔧 Read(settings.json)

🤖 Claude: Now I'll create the hook script with the exact implementation you provided:

🔧 Write(auto-format.sh)

🔧 Bash(chmod +x /usercode/FILESYSTEM/.claude/hooks/auto-format.sh)

🔧 Edit(settings.json)

🤖 Claude: Now I'll create a messy TypeScript file for testing:

🔧 Write(messy-hook-test.ts)

🤖 Claude: Now I'll manually test the hook by simulating a PostToolUse event:

🔧 Bash(echo '{
  "hook_event_name": "PostToolUse",
  "tool_name": "Write",
  "tool_i...)

🤖 Claude: Perfect! The hook executed successfully. Now let me display the final contents of all the files:

🔧 Read(messy-hook-test.ts)

🔧 Read(auto-format.sh)

🔧 Read(settings.json)

🤖 Claude: ## Test Results: PASSED ✓

The auto-formatting hook is working perfectly. Here's what happened:

### Test Execution
When I manually simulated the PostToolUse event, the hook:
1. Successfully parsed the JSON input
2. Detected the TypeScript file (.ts extension)
3. Printed the friendly message: `✨ Formatting src/messy-hook-test.ts...`
4. Automatically installed and ran Prettier via npx
5. Formatted the file successfully in 67ms

### Before and After

**Before** (messy formatting):
```typescript
interface User{name:string;age:number;email?:string}

const   greet=(user:User)=>
{
console.log(`Hello, ${user.name}!`)
    return    user.name
        }
```

**After** (beautifully formatted):
```typescript
interface User {
  name: string;
  age: number;
  email?: string;
}

const greet = (user: User) => {
  console.log(`Hello, ${user.name}!`);
  return user.name;
};
```

### Setup Summary
- Hook script: `.claude/hooks/auto-format.sh` (executable)
- Configuration: `.claude/settings.json` (merged with existing PreToolUse hook)
- Test file: `src/messy-hook-test.ts` (now properly formatted)

The hook will now automatically format any `.ts` or `.tsx` file whenever you use the Write tool in Claude Code. Prettier was installed on-demand via npx, so no additional setup is required.