# Ask Claude to create a deployment best practices knowledge Skill documenting your team's deployment guidelines, common pitfalls, and safety checklists
# Configure it with user-invocable: false in the frontmatter, which hides it from your Skill menu but allows Claude to reference it automatically
# Restart your session after creating it.
# Test it in two ways: Try to invoke manually and Ask a deployment question

                                                                                                            
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
                                                                                                            
❯ Create only this file: .claude/skills/deployment-best-practices/SKILL.md                                  
                                                                                                            
  Content must be:                                                                                          
                                                                                                            
  ---                                                                                                       
  name: deployment-best-practices                                                                           
  description: Reference knowledge for deployment safety. Use when the user asks about deployment           
  readiness, deployment safety, release pitfalls, staging verification, or rollback procedures.             
  user-invocable: false                                                                                     
  ---                                                                                                       
                                                                                                            
  Use this as background deployment knowledge, not as a manual command.                                     
                                                                                                            
  Deployment guidelines:                                                                                    
  - Deploy only after tests pass.                                                                           
  - Deploy only after code review is approved.                                                              
  - Verify changes in staging before production.                                                            
                                                                                                            
  Common deployment mistakes:                                                                               
  - Skipping tests before deployment.                                                                       
  - Deploying without approved review.                                                                      
  - Assuming staging works without verifying the specific change.                                           
  - Starting a deployment without knowing the rollback path.                                                
                                                                                                            
  Safety checklist:                                                                                         
  - Tests passing.                                                                                          
  - Code review approved.                                                                                   
  - Staging verification completed.                                                                         
  - Rollback procedure known before deployment.                                                             
                                                                                                            
  Emergency rollback procedure:                                                                             
  - Stop further deployment changes.                                                                        
  - Identify the last known good version.                                                                   
  - Roll back to that version.                                                                              
  - Verify production health after rollback.                                                                
  - Communicate the rollback status to the team.                                                            
                                                                                                            
● I'll create the deployment-best-practices skill file for you.                                             
                                                                                                            
● Write(.claude/skills/deployment-best-practices/SKILL.md)                                                  
  ⎿  Wrote 32 lines to .claude/skills/deployment-best-practices/SKILL.md                                    
     ---                                                                                                    
     name: deployment-best-practices                                                                        
     description: Reference knowledge for deployment safety. Use when the user asks about deployment        
     readiness, deployment safety, release pitfalls, staging verification, or rollback procedures.          
     user-invocable: false                                                                                  
     ---                                                                                                    
     Use this as background deployment knowledge, not as a manual command.                                  
     Deployment guidelines:                                                                                 
     - Deploy only after tests pass.                                                                        
     … +22 lines (ctrl+o to expand)                                                                         
                                                                                                            
● Done. Created .claude/skills/deployment-best-practices/SKILL.md with the deployment safety reference      
  content.                                                                                                  
                                                                                                            
❯ Check that .claude/skills/deployment-best-practices/SKILL.md exists, the filename is exactly              
  SKILL.md, and the frontmatter contains:                                                                   
                                                                                                            
  - name                                                                                                    
  - description                                                                                             
  - user-invocable: false                                                                                   
                                                                                                            
  Do not change anything unless required to fix those checks.                                               
                                                                                                            
● I'll check the file to verify it meets all requirements.                                                  
                                                                                                            
● Read(.claude/skills/deployment-best-practices/SKILL.md)                                                   
  ⎿  Read 32 lines                                                                                          
                                                                                                            
● All checks passed:                                                                                        
                                                                                                            
  ✓ File exists at .claude/skills/deployment-best-practices/SKILL.md                                        
  ✓ Filename is exactly SKILL.md                                                                            
  ✓ Frontmatter contains all required fields:                                                               
  - name: deployment-best-practices (line 2)                                                                
  - description: Reference knowledge for deployment safety... (line 3)                                      
  - user-invocable: false (line 4)                                                                          
                                                                                                            
  No changes needed.                                                                                        
                                                                                                            
❯ /exit                                                                                                     
  ⎿  See ya!                                                                                                
                                                                                                            
────────────────────────────────────────────────────────────────────────────────────────────────────────────
❯                                                                                                           
────────────────────────────────────────────────────────────────────────────────────────────────────────────
  ? for shortcuts  
  
New Terminal:
bash /usercode/FILESYSTEM/.codesignal/setup.sh -a   

                                                                                                            
╭─── Claude Code v2.1.17 ──────────────────────────────────────────────────────────────────────────────────╮
│                                    │ Tips for getting started                                            │
│            Welcome back!           │ Run /init to create a CLAUDE.md file with instructions for Claude   │
│                                    │ ─────────────────────────────────────────────────────────────────── │
│                                    │ Recent activity                                                     │
│               ▐▛███▜▌              │ 3m ago  Create only this file: .claude/skills/deployment-best-prac… │
│              ▝▜█████▛▘             │ /resume for more                                                    │
│                ▘▘ ▝▝               │                                                                     │
│   Sonnet 4.5 · API Usage Billing   │                                                                     │
│        /usercode/FILESYSTEM        │                                                                     │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────╯
                                                                                                            
  /model to try Opus 4.5                                                                                    
                                                                                                            
❯ /deployment-best-practices                                                                                
                                                                                                            
❯ This skill can only be invoked by Claude, not directly by users. Ask Claude to use the                    
  "deployment-best-practices" skill for you.                                                                
                                                                                                            
❯ What should I check before deploying to production?                                                       
                                                                                                            
● I'll help you with deployment best practices by using the deployment-best-practices skill.                
                                                                                                            
● Skill(deployment-best-practices)                                                                          
  ⎿  Successfully loaded skill                                                                              
                                                                                                            
● Based on deployment best practices, here's what you should check before deploying to production:          
                                                                                                            
  Pre-Deployment Checklist                                                                                  
                                                                                                            
  Essential Checks:                                                                                         
  1. Tests passing - Ensure all automated tests pass successfully                                           
  2. Code review approved - Get approval from reviewers before proceeding                                   
  3. Staging verification completed - Verify your specific changes work correctly in staging (don't assume  
  they work)                                                                                                
  4. Rollback procedure known - Understand how to rollback before you deploy                                
                                                                                                            
  Common Mistakes to Avoid                                                                                  
                                                                                                            
  - Skipping tests before deployment                                                                        
  - Deploying without approved code review                                                                  
  - Assuming staging works without actually verifying your specific change                                  
  - Starting a deployment without knowing the rollback path                                                 
                                                                                                            
  Emergency Rollback Procedure                                                                              
                                                                                                            
  If something goes wrong:                                                                                  
  1. Stop further deployment changes immediately                                                            
  2. Identify the last known good version                                                                   
  3. Roll back to that version                                                                              
  4. Verify production health after rollback                                                                
  5. Communicate the rollback status to the team                                                            
                                                                                                            
  The key principle is: never deploy unless you know how to undo it. Having a clear rollback path before    
  deployment is just as important as the deployment itself.                                                 
                                                                                                            
────────────────────────────────────────────────────────────────────────────────────────────────────────────
❯ create a pre-deployment checklist for my project                                                   ↵ send 
────────────────────────────────────────────────────────────────────────────────────────────────────────────
  ? for shortcuts   
  
Output:

========= CONVERSATION HISTORIES ==========
👤 User: Create only this file: .claude/skills/deployment-best-practices/SKILL.md

Content must be:

---
name: deployment-best-practices
description: Reference knowledge for deployment safety. Use when the user asks about deployment readiness, deployment safety, release pitfalls, staging verification, or rollback procedures.
user-invocable: false
---

Use this as background deployment knowledge, not as a manual command.

Deployment guidelines:
- Deploy only after tests pass.
- Deploy only after code review is approved.
- Verify changes in staging before production.

Common deployment mistakes:
- Skipping tests before deployment.
- Deploying without approved review.
- Assuming staging works without verifying the specific change.
- Starting a deployment without knowing the rollback path.

Safety checklist:
- Tests passing.
- Code review approved.
- Staging verification completed.
- Rollback procedure known before deployment.

Emergency rollback procedure:
- Stop further deployment changes.
- Identify the last known good version.
- Roll back to that version.
- Verify production health after rollback.
- Communicate the rollback status to the team.

🤖 Claude: I'll create the deployment-best-practices skill file for you.

🔧 Write(SKILL.md)

🤖 Claude: Done. Created `.claude/skills/deployment-best-practices/SKILL.md` with the deployment safety reference content.

👤 User: Check that .claude/skills/deployment-best-practices/SKILL.md exists, the filename is exactly SKILL.md, and the frontmatter contains:

- name
- description
- user-invocable: false

Do not change anything unless required to fix those checks.

🤖 Claude: I'll check the file to verify it meets all requirements.

🔧 Read(SKILL.md)

🤖 Claude: All checks passed:

✓ File exists at `.claude/skills/deployment-best-practices/SKILL.md`
✓ Filename is exactly `SKILL.md`
✓ Frontmatter contains all required fields:
  - `name: deployment-best-practices` (line 2)
  - `description: Reference knowledge for deployment safety...` (line 3)
  - `user-invocable: false` (line 4)

No changes needed.

👤 User: /exit
       ⎿  See ya!

------------ NEXT CONVERSATION ------------

👤 User: /deployment-best-practices

👤 User: This skill can only be invoked by Claude, not directly by users. Ask Claude to use the "deployment-best-practices" skill for you.

👤 User: What should I check before deploying to production?

🤖 Claude: I'll help you with deployment best practices by using the deployment-best-practices skill.

🔧 Skill

🤖 Claude: Based on deployment best practices, here's what you should check before deploying to production:

## Pre-Deployment Checklist

**Essential Checks:**
1. **Tests passing** - Ensure all automated tests pass successfully
2. **Code review approved** - Get approval from reviewers before proceeding
3. **Staging verification completed** - Verify your specific changes work correctly in staging (don't assume they work)
4. **Rollback procedure known** - Understand how to rollback before you deploy

## Common Mistakes to Avoid

- Skipping tests before deployment
- Deploying without approved code review
- Assuming staging works without actually verifying your specific change
- Starting a deployment without knowing the rollback path

## Emergency Rollback Procedure

If something goes wrong:
1. Stop further deployment changes immediately
2. Identify the last known good version
3. Roll back to that version
4. Verify production health after rollback
5. Communicate the rollback status to the team

The key principle is: **never deploy unless you know how to undo it**. Having a clear rollback path before deployment is just as important as the deployment itself.