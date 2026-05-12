# Ask Claude to create a skill that explains code using visual diagrams and analogies. Be specific about what you need.
# Once Claude creates the skill, start a new chat session. Find some code and ask Claude to explain it. Don't use /explain-code

/usercode/FILESYSTEM$ bash /usercode/FILESYSTEM/.codesignal/setup.sh -a
Setting up environment…
Setting up environment…
Installing Claude Code 2.1.17…
✔ Claude Code 2.1.17 (Claude Code) installed successfully!
Installing Python packages…
✔ Python packages installed successfully!
Running extra setup steps…
✔ Setup steps executed successfully!
Setup complete.
Launching Claude Code...
^[[O                                                                                                            
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
                                                                                                            
❯ Create only this file: .claude/skills/explain-code/SKILL.md                                               
                                                                                                            
  Content must be:                                                                                          
                                                                                                            
  ---                                                                                                       
  name: explain-code                                                                                        
  description: Explains code using visual diagrams and analogies. Use this when the user asks "explain      
  this code", "how does this work", "walk me through this code", or asks how a function, script, class,     
  or code block works.                                                                                      
  ---                                                                                                       
                                                                                                            
  When explaining code:                                                                                     
  - Use a clear analogy.                                                                                    
  - Include an ASCII diagram when helpful.                                                                  
  - Walk through the code step by step.                                                                     
  - Explain inputs, outputs, and control flow.                                                              
  - Keep the explanation beginner-friendly.                                                                 
                                                                                                            
● I'll create the skill file for you.                                                                       
                                                                                                            
● Write(.claude/skills/explain-code/SKILL.md)                                                               
  ⎿  Wrote 12 lines to .claude/skills/explain-code/SKILL.md                                                 
     ---                                                                                                    
     name: explain-code                                                                                     
     description: Explains code using visual diagrams and analogies. Use this when the user asks            
     "explain this code", "how does this work", "walk me through this code", or asks how a function,        
     script, class, or code block works.                                                                    
     ---                                                                                                    
     When explaining code:                                                                                  
     - Use a clear analogy.                                                                                 
     - Include an ASCII diagram when helpful.                                                               
     - Walk through the code step by step.                                                                  
     - Explain inputs, outputs, and control flow.                                                           
     … +2 lines (ctrl+o to expand)                                                                          
                                                                                                            
● Done! I've created the skill file at .claude/skills/explain-code/SKILL.md with the content you specified. 
                                                                                                            
❯ Check that .claude/skills/explain-code/SKILL.md exists, the filename is exactly SKILL.md, and the         
  frontmatter has name and description. Do not change anything unless required to fix those checks.         
                                                                                                            
● I'll check the file to verify it meets all the requirements.                                              
                                                                                                            
● Read(.claude/skills/explain-code/SKILL.md)                                                                
  ⎿  Read 12 lines                                                                                          
                                                                                                            
● All checks passed:                                                                                        
                                                                                                            
  ✓ File exists at .claude/skills/explain-code/SKILL.md                                                     
  ✓ Filename is exactly SKILL.md                                                                            
  ✓ Frontmatter contains both name (line 2) and description (line 3) fields                                 
                                                                                                            
  No changes needed.                                                                                        
                                                                                                            
❯ /exit                                                                                                     
  ⎿  Catch you later!                                                                                       
                                                                                                            
────────────────────────────────────────────────────────────────────────────────────────────────────────────
❯                                                                                                           
────────────────────────────────────────────────────────────────────────────────────────────────────────────
  ? for shortcuts 
  
  
New Terminal:
bash /usercode/FILESYSTEM/.codesignal/setup.sh -a

/usercode/FILESYSTEM$ bash /usercode/FILESYSTEM/.codesignal/setup.sh -a                                     
Setting up environment…                                                                                     
Setting up environment…
Installing Claude Code 2.1.17…
✔ Claude Code 2.1.17 (Claude Code) installed successfully!
Installing Python packages…
✔ Python packages installed successfully!
Running extra setup steps…
✔ Setup steps executed successfully!
Setup complete.
Launching Claude Code...
                                                                                                            
╭─── Claude Code v2.1.17 ──────────────────────────────────────────────────────────────────────────────────╮
│                                    │ Tips for getting started                                            │
│            Welcome back!           │ Run /init to create a CLAUDE.md file with instructions for Claude   │
│                                    │ ─────────────────────────────────────────────────────────────────── │
│                                    │ Recent activity                                                     │
│               ▐▛███▜▌              │ 1m ago  Create only this file: .claude/skills/explain-code/SKILL.m… │
│              ▝▜█████▛▘             │ /resume for more                                                    │
│                ▘▘ ▝▝               │                                                                     │
│   Sonnet 4.5 · API Usage Billing   │                                                                     │
│        /usercode/FILESYSTEM        │                                                                     │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────╯
                                                                                                            
  /model to try Opus 4.5                                                                                    
                                                                                                            
❯ How does this code work?                                                                                  
                                                                                                            
  function sumEven(numbers) {                                                                               
  let total = 0;                                                                                            
  for (const n of numbers) {                                                                                
  if (n % 2 === 0) {                                                                                        
  total += n;                                                                                               
  }                                                                                                         
  }                                                                                                         
  return total;                                                                                             
  }                                                                                                         
                                                                                                            
● I'll explain this code for you using the explain-code skill.                                              
                                                                                                            
● Skill(explain-code)                                                                                       
  ⎿  Successfully loaded skill                                                                              
                                                                                                            
● How sumEven Works                                                                                         
                                                                                                            
  Analogy: A Cashier Counting Bills                                                                         
                                                                                                            
  Imagine you're a cashier with a pile of bills, and your boss asks you to count only the $2, $4, $6, $8    
  bills (even denominations) and ignore all the $1, $3, $5 bills (odd denominations). You'd go through each 
  bill one by one, check if it's even, and if so, add it to your running total.                             
                                                                                                            
  Visual Flow                                                                                               
                                                                                                            
  Input: [1, 2, 3, 4, 5, 6]                                                                                 
           ↓                                                                                                
      ┌─────────┐                                                                                           
      │ total=0 │  ← Start with empty piggy bank                                                            
      └─────────┘                                                                                           
           ↓                                                                                                
      Loop through each number:                                                                             
                                                                                                            
      n=1 → 1%2=1 ✗ odd     → skip → total=0                                                                
      n=2 → 2%2=0 ✓ even    → add  → total=2                                                                
      n=3 → 3%2=1 ✗ odd     → skip → total=2                                                                
      n=4 → 4%2=0 ✓ even    → add  → total=6                                                                
      n=5 → 5%2=1 ✗ odd     → skip → total=6                                                                
      n=6 → 6%2=0 ✓ even    → add  → total=12                                                               
           ↓                                                                                                
      Return: 12                                                                                            
                                                                                                            
  Step-by-Step Walkthrough                                                                                  
                                                                                                            
  Input: An array of numbers (e.g., [1, 2, 3, 4, 5, 6])                                                     
                                                                                                            
  Output: A single number representing the sum of all even numbers                                          
                                                                                                            
  Process:                                                                                                  
                                                                                                            
  1. Initialize accumulator (let total = 0)                                                                 
    - Start with a sum of zero                                                                              
  2. Loop through each number (for (const n of numbers))                                                    
    - Visit each element in the array one at a time                                                         
  3. Check if even (if (n % 2 === 0))                                                                       
    - The % operator gives the remainder when dividing by 2                                                 
    - If remainder is 0, the number is even                                                                 
    - Example: 4 % 2 = 0 ✓ even, 5 % 2 = 1 ✗ odd                                                            
  4. Add to total (total += n)                                                                              
    - Only executes if the number is even                                                                   
    - Adds the current number to the running sum                                                            
  5. Return result (return total)                                                                           
    - After checking all numbers, return the final sum                                                      
                                                                                                            
  Example Execution                                                                                         
                                                                                                            
  sumEven([1, 2, 3, 4, 5, 6])                                                                               
  // Step 1: total = 0                                                                                      
  // Step 2: 1 is odd, skip                                                                                 
  // Step 3: 2 is even, total = 0 + 2 = 2                                                                   
  // Step 4: 3 is odd, skip                                                                                 
  // Step 5: 4 is even, total = 2 + 4 = 6                                                                   
  // Step 6: 5 is odd, skip                                                                                 
  // Step 7: 6 is even, total = 6 + 6 = 12                                                                  
  // Returns: 12                                                                                            
                                                                                                            
────────────────────────────────────────────────────────────────────────────────────────────────────────────
❯ try it with a different array                                                                      ↵ send 
────────────────────────────────────────────────────────────────────────────────────────────────────────────
  ? for shortcuts

Output:
========= CONVERSATION HISTORIES ==========
👤 User: Create only this file: .claude/skills/explain-code/SKILL.md

Content must be:

---
name: explain-code
description: Explains code using visual diagrams and analogies. Use this when the user asks "explain this code", "how does this work", "walk me through this code", or asks how a function, script, class, or code block works.
---

When explaining code:
- Use a clear analogy.
- Include an ASCII diagram when helpful.
- Walk through the code step by step.
- Explain inputs, outputs, and control flow.
- Keep the explanation beginner-friendly.

🤖 Claude: I'll create the skill file for you.

🔧 Write(SKILL.md)

🤖 Claude: Done! I've created the skill file at `.claude/skills/explain-code/SKILL.md` with the content you specified.

👤 User: Check that .claude/skills/explain-code/SKILL.md exists, the filename is exactly SKILL.md, and the frontmatter has name and description. Do not change anything unless required to fix those checks.

🤖 Claude: I'll check the file to verify it meets all the requirements.

🔧 Read(SKILL.md)

🤖 Claude: All checks passed:

✓ File exists at `.claude/skills/explain-code/SKILL.md`
✓ Filename is exactly `SKILL.md`
✓ Frontmatter contains both `name` (line 2) and `description` (line 3) fields

No changes needed.

👤 User: /exit
       ⎿  Catch you later!

------------ NEXT CONVERSATION ------------

👤 User: How does this code work?

function sumEven(numbers) {
  let total = 0;
  for (const n of numbers) {
    if (n % 2 === 0) {
      total += n;
    }
  }
  return total;
}

🤖 Claude: I'll explain this code for you using the explain-code skill.

🔧 Skill

🤖 Claude: # How `sumEven` Works

## Analogy: A Cashier Counting Bills

Imagine you're a cashier with a pile of bills, and your boss asks you to count only the $2, $4, $6, $8 bills (even denominations) and ignore all the $1, $3, $5 bills (odd denominations). You'd go through each bill one by one, check if it's even, and if so, add it to your running total.

## Visual Flow

```
Input: [1, 2, 3, 4, 5, 6]
         ↓
    ┌─────────┐
    │ total=0 │  ← Start with empty piggy bank
    └─────────┘
         ↓
    Loop through each number:
    
    n=1 → 1%2=1 ✗ odd     → skip → total=0
    n=2 → 2%2=0 ✓ even    → add  → total=2
    n=3 → 3%2=1 ✗ odd     → skip → total=2
    n=4 → 4%2=0 ✓ even    → add  → total=6
    n=5 → 5%2=1 ✗ odd     → skip → total=6
    n=6 → 6%2=0 ✓ even    → add  → total=12
         ↓
    Return: 12
```

## Step-by-Step Walkthrough

**Input:** An array of numbers (e.g., `[1, 2, 3, 4, 5, 6]`)

**Output:** A single number representing the sum of all even numbers

**Process:**

1. **Initialize accumulator** (`let total = 0`)
   - Start with a sum of zero

2. **Loop through each number** (`for (const n of numbers)`)
   - Visit each element in the array one at a time

3. **Check if even** (`if (n % 2 === 0)`)
   - The `%` operator gives the remainder when dividing by 2
   - If remainder is 0, the number is even
   - Example: `4 % 2 = 0` ✓ even, `5 % 2 = 1` ✗ odd

4. **Add to total** (`total += n`)
   - Only executes if the number is even
   - Adds the current number to the running sum

5. **Return result** (`return total`)
   - After checking all numbers, return the final sum

## Example Execution

```javascript
sumEven([1, 2, 3, 4, 5, 6])
// Step 1: total = 0
// Step 2: 1 is odd, skip
// Step 3: 2 is even, total = 0 + 2 = 2
// Step 4: 3 is odd, skip
// Step 5: 4 is even, total = 2 + 4 = 6
// Step 6: 5 is odd, skip
// Step 7: 6 is even, total = 6 + 6 = 12
// Returns: 12
```
