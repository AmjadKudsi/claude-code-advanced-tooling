# Ask Claude to create a code-formatter Skill in .claude/skills/code-formatter/SKILL.md that defines clear rules for consistent spacing, indentation, meaningful variable naming, and helpful inline comments
# To test your work, exit Claude and start a new session (Claude discovers Skills at session start)
# Then create a source file with intentionally poor formatting and unclear names and ask Claude to clean it using your new Skill and verify that the output follows your guidelines


                                                                                                          
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
                                                                                                          
❯ Create .claude/skills/code-formatter/SKILL.md and do not modify any other files. Use exactly this       
  content:                                                                                                
                                                                                                          
  ---                                                                                                     
  name: code-formatter                                                                                    
  description: Cleans messy source code by diagnosing style issues, applying formatting rules, and        
  reporting the changes made.                                                                             
  ---                                                                                                     
                                                                                                          
  # Code Formatter                                                                                        
                                                                                                          
  When this skill is used, polish the provided code using these rules:                                    
                                                                                                          
  1. Analyze & Diagnose                                                                                   
  - Read the code first.                                                                                  
  - Identify specific style issues before rewriting.                                                      
  - Look for inconsistent spacing, indentation, unclear names, and missing helpful comments.              
                                                                                                          
  2. Format                                                                                               
  - Use consistent indentation: 4 spaces for Python, 2 spaces for JavaScript.                             
  - Add spaces around operators and after commas.                                                         
  - Remove extra blank lines and trailing spaces.                                                         
  - Use meaningful variable and function names.                                                           
  - Keep comments short and useful.                                                                       
  - Add inline comments only where they clarify non-obvious logic.                                        
                                                                                                          
  3. Report                                                                                               
  - Present the cleaned code.                                                                             
  - Explain the changes made in a short summary.                                                          
                                                                                                          
  After creating it, read the file back and confirm the path, YAML frontmatter, and all three             
  sections are present.                                                                                   
                                                                                                          
● I'll create the skill file with the exact content you provided.                                         
                                                                                                          
● Write(.claude/skills/code-formatter/SKILL.md)                                                           
  ⎿  Wrote 26 lines to .claude/skills/code-formatter/SKILL.md                                             
     ---                                                                                                  
     name: code-formatter                                                                                 
     description: Cleans messy source code by diagnosing style issues, applying formatting rules, and     
     reporting the changes made.                                                                          
     ---                                                                                                  
     # Code Formatter                                                                                     
     When this skill is used, polish the provided code using these rules:                                 
     1. Analyze & Diagnose                                                                                
                                                                                                          
     … +16 lines (ctrl+o to expand)                                                                       
                                                                                                          
● Read(.claude/skills/code-formatter/SKILL.md)                                                            
  ⎿  Read 26 lines                                                                                        
                                                                                                          
● Perfect! The file has been created successfully at .claude/skills/code-formatter/SKILL.md.              
                                                                                                          
  Confirmation:                                                                                           
  - Path: .claude/skills/code-formatter/SKILL.md                                                          
  - YAML frontmatter (lines 1-4): Present with name: code-formatter and the full description              
  - All three sections present:                                                                           
    - "1. Analyze & Diagnose" (line 10)                                                                   
    - "2. Format" (line 15)                                                                               
    - "3. Report" (line 23)                                                                               
                                                                                                          
  The skill file is ready and contains all the required content exactly as specified.                     
                                                                                                          
❯ /exit                                                                                                   
  ⎿  Catch you later!                                                                                     
                                                                                                          
──────────────────────────────────────────────────────────────────────────────────────────────────────────
❯                                                                                                         
──────────────────────────────────────────────────────────────────────────────────────────────────────────
  ? for shortcuts  
  
New Terminal:
bash /usercode/FILESYSTEM/.codesignal/setup.sh -a

                                                                                                          
╭─── Claude Code v2.1.17 ────────────────────────────────────────────────────────────────────────────────╮
│                                    │ Tips for getting started                                          │
│            Welcome back!           │ Run /init to create a CLAUDE.md file with instructions for Claude │
│                                    │ ───────────────────────────────────────────────────────────────── │
│                                    │ Recent activity                                                   │
│               ▐▛███▜▌              │ 2m ago  Create .claude/skills/code-formatter/SKILL.md and do not… │
│              ▝▜█████▛▘             │ /resume for more                                                  │
│                ▘▘ ▝▝               │                                                                   │
│   Sonnet 4.5 · API Usage Billing   │                                                                   │
│        /usercode/FILESYSTEM        │                                                                   │
╰────────────────────────────────────────────────────────────────────────────────────────────────────────╯
                                                                                                          
  /model to try Opus 4.5                                                                                  
                                                                                                          
❯ Create messy_example.py and do not modify any other files. Use exactly this content:                    
                                                                                                          
  def f(x,y):                                                                                             
  z=x+y                                                                                                   
  for i in range(0, len(z)):                                                                              
  if z[i]%2==0:                                                                                           
  print("even",z[i])                                                                                      
  else:                                                                                                   
  print("odd",z[i])                                                                                       
  return z                                                                                                
                                                                                                          
● I'll create the messy_example.py file with the exact content you provided.                              
                                                                                                          
● Write(messy_example.py)                                                                                 
  ⎿  Wrote 9 lines to messy_example.py                                                                    
     def f(x,y):                                                                                          
      z=x+y                                                                                               
      for i in range(0, len(z)):                                                                          
       if z[i]%2==0:                                                                                      
        print("even",z[i])                                                                                
       else:                                                                                              
        print("odd",z[i])                                                                                 
      return z                                                                                            
                                                                                                          
● Done! I've created messy_example.py with the exact content you specified.                               
                                                                                                          
❯ /code-formatter Clean messy_example.py using the code-formatter Skill. First diagnose the style issues, 
then show the cleaned code, then summarize the changes. Do not modify any files.                          
                                                                                                          
● I'll analyze messy_example.py, diagnose the style issues, show the cleaned code, and summarize the      
  changes.                                                                                                
                                                                                                          
● Read(messy_example.py)                                                                                  
  ⎿  Read 9 lines                                                                                         
                                                                                                          
● Diagnosis                                                                                               
                                                                                                          
  The code has several style issues:                                                                      
                                                                                                          
  1. Inconsistent indentation: Uses 1 space instead of the standard 4 spaces                              
  2. Missing spaces: No spaces after commas in function parameters (x,y)                                  
  3. Missing spaces around operators: z=x+y and z[i]%2==0 lack spaces around =, %, and ==                 
  4. Non-descriptive function name: f doesn't convey what the function does                               
  5. Non-descriptive variable names: z could be more meaningful                                           
  6. Inefficient iteration: Using range(0, len(z)) instead of direct iteration or enumeration             
                                                                                                          
  Cleaned Code                                                                                            
                                                                                                          
  def check_parity(x, y):                                                                                 
      result = x + y                                                                                      
      for i in range(len(result)):                                                                        
          if result[i] % 2 == 0:                                                                          
              print("even", result[i])                                                                    
          else:                                                                                           
              print("odd", result[i])                                                                     
      return result                                                                                       
                                                                                                          
  Summary of Changes                                                                                      
                                                                                                          
  - Indentation: Changed from 1 space to 4 spaces (Python standard)                                       
  - Spacing: Added spaces after commas in parameters (x, y)                                               
  - Operator spacing: Added spaces around =, %, and == operators                                          
  - Function name: Renamed f to check_parity to better describe its purpose                               
  - Variable name: Renamed z to result for clarity                                                        
  - Range optimization: Simplified range(0, len(result)) to range(len(result))                            
                                                                                                          
❯ Check that your cleaned output follows the code-formatter Skill rules: 4-space Python indentation,      
  spaces around operators and after commas, meaningful names, and only helpful comments.                  
                                                                                                          
● Let me verify my cleaned code against the code-formatter Skill rules:                                   
                                                                                                          
  Verification Checklist                                                                                  
                                                                                                          
  ✓ 4-space Python indentation:                                                                           
  - Function body: 4 spaces                                                                               
  - Loop body: 8 spaces                                                                                   
  - If/else blocks: 12 spaces                                                                             
                                                                                                          
  ✓ Spaces around operators:                                                                              
  - result = x + y (spaces around = and +)                                                                
  - result[i] % 2 == 0 (spaces around % and ==)                                                           
                                                                                                          
  ✓ Spaces after commas:                                                                                  
  - Function parameters: (x, y)                                                                           
  - Print statements: print("even", result[i]) and print("odd", result[i])                                
                                                                                                          
  ✓ Meaningful names:                                                                                     
  - check_parity instead of f - describes what the function does                                          
  - result instead of z - clearer variable purpose                                                        
                                                                                                          
  ✓ Only helpful comments:                                                                                
  - No comments added - the code is self-explanatory and doesn't require inline comments                  
                                                                                                          
  All code-formatter Skill rules are correctly applied. The cleaned code follows Python PEP 8 style       
  guidelines with consistent formatting, proper spacing, and readable naming conventions.                 
                                                                                                          
──────────────────────────────────────────────────────────────────────────────────────────────────────────
❯                                                                                                         
──────────────────────────────────────────────────────────────────────────────────────────────────────────
  ⏵⏵ accept edits on (shift+tab to cycle)
  
Output:

========= CONVERSATION HISTORIES ==========
👤 User: Create .claude/skills/code-formatter/SKILL.md and do not modify any other files. Use exactly this content:

---
name: code-formatter
description: Cleans messy source code by diagnosing style issues, applying formatting rules, and reporting the changes made.
---

# Code Formatter

When this skill is used, polish the provided code using these rules:

1. Analyze & Diagnose
- Read the code first.
- Identify specific style issues before rewriting.
- Look for inconsistent spacing, indentation, unclear names, and missing helpful comments.

2. Format
- Use consistent indentation: 4 spaces for Python, 2 spaces for JavaScript.
- Add spaces around operators and after commas.
- Remove extra blank lines and trailing spaces.
- Use meaningful variable and function names.
- Keep comments short and useful.
- Add inline comments only where they clarify non-obvious logic.

3. Report
- Present the cleaned code.
- Explain the changes made in a short summary.

After creating it, read the file back and confirm the path, YAML frontmatter, and all three sections are present.

🤖 Claude: I'll create the skill file with the exact content you provided.

🔧 Write(SKILL.md)

🔧 Read(SKILL.md)

🤖 Claude: Perfect! The file has been created successfully at `.claude/skills/code-formatter/SKILL.md`.

**Confirmation:**
- **Path**: `.claude/skills/code-formatter/SKILL.md`
- **YAML frontmatter** (lines 1-4): Present with `name: code-formatter` and the full description
- **All three sections present**:
  - "1. Analyze & Diagnose" (line 10)
  - "2. Format" (line 15)
  - "3. Report" (line 23)

The skill file is ready and contains all the required content exactly as specified.

👤 User: /exit
       ⎿  Catch you later!

------------ NEXT CONVERSATION ------------

👤 User: Create messy_example.py and do not modify any other files. Use exactly this content:

def f(x,y):
 z=x+y
 for i in range(0, len(z)):
  if z[i]%2==0:
   print("even",z[i])
  else:
   print("odd",z[i])
 return z

🤖 Claude: I'll create the messy_example.py file with the exact content you provided.

🔧 Write(messy_example.py)

🤖 Claude: Done! I've created messy_example.py with the exact content you specified.

👤 User: <command-message>code-formatter</command-message>
<command-name>/code-formatter</command-name>
<command-args>Clean messy_example.py using the code-formatter Skill. First diagnose the style issues, then show the cleaned code, then summarize the changes. Do not modify any files.</command-args>

🤖 Claude: I'll analyze messy_example.py, diagnose the style issues, show the cleaned code, and summarize the changes.

🔧 Read(messy_example.py)

🤖 Claude: ## Diagnosis

The code has several style issues:

1. **Inconsistent indentation**: Uses 1 space instead of the standard 4 spaces
2. **Missing spaces**: No spaces after commas in function parameters `(x,y)`
3. **Missing spaces around operators**: `z=x+y` and `z[i]%2==0` lack spaces around `=`, `%`, and `==`
4. **Non-descriptive function name**: `f` doesn't convey what the function does
5. **Non-descriptive variable names**: `z` could be more meaningful
6. **Inefficient iteration**: Using `range(0, len(z))` instead of direct iteration or enumeration

## Cleaned Code

```python
def check_parity(x, y):
    result = x + y
    for i in range(len(result)):
        if result[i] % 2 == 0:
            print("even", result[i])
        else:
            print("odd", result[i])
    return result
```

## Summary of Changes

- **Indentation**: Changed from 1 space to 4 spaces (Python standard)
- **Spacing**: Added spaces after commas in parameters `(x, y)`
- **Operator spacing**: Added spaces around `=`, `%`, and `==` operators
- **Function name**: Renamed `f` to `check_parity` to better describe its purpose
- **Variable name**: Renamed `z` to `result` for clarity
- **Range optimization**: Simplified `range(0, len(result))` to `range(len(result))`

👤 User: Check that your cleaned output follows the code-formatter Skill rules: 4-space Python indentation, spaces around operators and after commas, meaningful names, and only helpful comments.

🤖 Claude: Let me verify my cleaned code against the code-formatter Skill rules:

## Verification Checklist

✓ **4-space Python indentation**: 
- Function body: 4 spaces
- Loop body: 8 spaces  
- If/else blocks: 12 spaces

✓ **Spaces around operators**:
- `result = x + y` (spaces around `=` and `+`)
- `result[i] % 2 == 0` (spaces around `%` and `==`)

✓ **Spaces after commas**:
- Function parameters: `(x, y)`
- Print statements: `print("even", result[i])` and `print("odd", result[i])`

✓ **Meaningful names**:
- `check_parity` instead of `f` - describes what the function does
- `result` instead of `z` - clearer variable purpose

✓ **Only helpful comments**:
- No comments added - the code is self-explanatory and doesn't require inline comments

**All code-formatter Skill rules are correctly applied.** The cleaned code follows Python PEP 8 style guidelines with consistent formatting, proper spacing, and readable naming conventions.

