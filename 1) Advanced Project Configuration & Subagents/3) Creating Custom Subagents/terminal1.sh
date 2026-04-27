# create your first custom subagent using the AI-assisted flow

                                                                                                          
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
                                                                                                          
❯ /agents                                                                                                 
  ⎿  Agent changes:                                                                                       
     Created agent: doc-quality-reviewer                                                                  
                                                                                                          
❯ Show the generated definition file. Make sure the new subagent and its file path appear clearly in      
  the terminal output.                                                                                    
                                                                                                          
● I'll find and show the definition file for the doc-quality-reviewer agent.                              
                                                                                                          
● Search(pattern: "**/*doc-quality-reviewer*")                                                            
  ⎿  Error: spawn /root/.nvm/versions/node/v24.12.0/lib/node_modules/@anthropic-ai/claude-code/vendor/ripg
     ep/x64-linux/rg ENOENT                                                                               
                                                                                                          
● Search(pattern: "**/.claude/agents/**/*.md")                                                            
  ⎿  Error: spawn /root/.nvm/versions/node/v24.12.0/lib/node_modules/@anthropic-ai/claude-code/vendor/ripg
     ep/x64-linux/rg ENOENT                                                                               
                                                                                                          
● Search(pattern: "**/.agents/**/*.md")                                                                   
  ⎿  Error: spawn /root/.nvm/versions/node/v24.12.0/lib/node_modules/@anthropic-ai/claude-code/vendor/ripg
     ep/x64-linux/rg ENOENT                                                                               
                                                                                                          
● Bash(find /usercode -name "*doc-quality-reviewer*" -type f 2>/dev/null)                                 
  ⎿  /usercode/FILESYSTEM/.claude/agents/doc-quality-reviewer.md                                          
                                                                                                          
● Read(.claude/agents/doc-quality-reviewer.md)                                                            
  ⎿  Read 129 lines                                                                                       
                                                                                                          
● Doc Quality Reviewer Agent Definition                                                                   
                                                                                                          
  File path: .claude/agents/doc-quality-reviewer.md                                                       
                                                                                                          
  Agent name: doc-quality-reviewer                                                                        
                                                                                                          
  The agent definition file has been successfully created with the following configuration:               
                                                                                                          
  ---                                                                                                     
  name: doc-quality-reviewer                                                                              
  description: "Use this agent proactively whenever documentation files (MDX, Markdown, or similar) are   
  created or modified..."                                                                                 
  model: sonnet                                                                                           
  ---                                                                                                     
                                                                                                          
  The file contains a comprehensive 129-line definition that includes:                                    
                                                                                                          
  - Core Responsibilities: Reviews docs for content clarity, accessibility compliance (WCAG 2.1), code    
  example validation, link integrity, SEO metadata, and documentation completeness                        
  - Quality Assurance Process: 7-step review process from initial scan to final polish                    
  - Reporting Format: Structured feedback using emoji categories (✅ Strengths, 🔴 Critical Issues, 🟡    
  Important Improvements, 🔵 Suggestions)                                                                 
  - Best Practices: Enforcement of show-don't-tell, progressive disclosure, consistency, and inclusivity  
  - Trigger Conditions: Automatically activates when .md, .mdx, or .markdown files are created/modified   
                                                                                                          
  The agent is configured to use the sonnet model and includes detailed examples of when it should be     
  proactively invoked (after documentation updates, API docs creation, README modifications, etc.).       
                                                                                                          
✻ Cooked for 38s                                                                                          
                                                                                                          
──────────────────────────────────────────────────────────────────────────────────────────────────────────
❯                                                                                                         
──────────────────────────────────────────────────────────────────────────────────────────────────────────
  ? for shortcuts  
  
  
  

Output:
========= CONVERSATION HISTORIES ==========
👤 User: /agents
       ⎿  Agent changes:
     Created agent: doc-quality-reviewer

👤 User: Show the generated definition file. Make sure the new subagent and its file path appear clearly in the terminal output.

🤖 Claude: I'll find and show the definition file for the doc-quality-reviewer agent.

🔧 Glob

🔧 Glob

🔧 Glob

🔧 Bash(find /usercode -name "*doc-quality-reviewer*" -type f 2>/dev/null)

🔧 Read(doc-quality-reviewer.md)

🤖 Claude: ## Doc Quality Reviewer Agent Definition

**File path:** `.claude/agents/doc-quality-reviewer.md`

**Agent name:** `doc-quality-reviewer`

The agent definition file has been successfully created with the following configuration:

```markdown
---
name: doc-quality-reviewer
description: "Use this agent proactively whenever documentation files (MDX, Markdown, or similar) are created or modified..."
model: sonnet
---
```

The file contains a comprehensive 129-line definition that includes:

- **Core Responsibilities**: Reviews docs for content clarity, accessibility compliance (WCAG 2.1), code example validation, link integrity, SEO metadata, and documentation completeness
- **Quality Assurance Process**: 7-step review process from initial scan to final polish
- **Reporting Format**: Structured feedback using emoji categories (✅ Strengths, 🔴 Critical Issues, 🟡 Important Improvements, 🔵 Suggestions)
- **Best Practices**: Enforcement of show-don't-tell, progressive disclosure, consistency, and inclusivity
- **Trigger Conditions**: Automatically activates when .md, .mdx, or .markdown files are created/modified

The agent is configured to use the `sonnet` model and includes detailed examples of when it should be proactively invoked (after documentation updates, API docs creation, README modifications, etc.).