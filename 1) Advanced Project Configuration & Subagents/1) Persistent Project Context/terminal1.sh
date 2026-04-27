# create a CLAUDE.md file in the project root that gives the AI assistant persistent context about the project

#create a CLAUDE.md file at the root of the Docusaurus repository with three specific sections:

                                                                                                                    
╭─── Claude Code v2.1.17 ──────────────────────────────────────────────────────────────────────────────────────────╮
│                                     │ Tips for getting started                                                   │
│            Welcome back!            │ ✔ Run /init to create a CLAUDE.md file with instructions for Claude        │
│                                     │ ───────────────────────────────────────────────────────────────────        │
│                                     │ Recent activity                                                            │
│               ▐▛███▜▌               │ No recent activity                                                         │
│              ▝▜█████▛▘              │                                                                            │
│                ▘▘ ▝▝                │                                                                            │
│   Sonnet 4.5 · API Usage Billing    │                                                                            │
│   /usercode/FILESYSTEM/docusaurus   │                                                                            │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
                                                                                                                    
  /model to try Opus 4.5                                                                                            
                                                                                                                    
❯ create a CLAUDE.md file at the root of the Docusaurus repository with three specific sections:                    
                                                                                                                    
  Project Overview: A brief description of what Docusaurus does (it's a documentation site generator) and           
  mention that it uses a monorepo structure.                                                                        
  Architecture: Document where the major components live — core packages, plugins, themes, and the example          
  website.                                                                                                          
  Tech Stack: List the main technologies used (TypeScript, React, Webpack, MDX, Jest, and any others you            
  notice).                                                                                                          
                                                                                                                    
● I'll help you create a CLAUDE.md file for the Docusaurus repository. First, let me explore the repository         
  structure to understand the project layout and technologies used.                                                 
                                                                                                                    
● Bash(ls -la /usercode/FILESYSTEM)                                                                                 
  ⎿  total 36                                                                                                       
     drwxrwxrwt.  4 root   root      58 Apr 21 20:56 .                                                              
     drwxrwxrwx.  3 root   root      50 Apr 21 20:56 ..                                                             
     … +3 lines (ctrl+o to expand)                                                                                  
                                                                                                                    
● Read(/usercode/FILESYSTEM/package.json)                                                                           
  ⎿  Error reading file                                                                                             
                                                                                                                    
● Bash(cd /usercode/FILESYSTEM/docusaurus && ls -la)                                                                
  ⎿  total 1900                                                                                                     
     drwxr-xr-x. 14 runner runner  16384 Apr 21 20:56 .                                                             
     drwxrwxrwt.  4 root   root       58 Apr 21 20:56 ..                                                            
     … +41 lines (ctrl+o to expand)                                                                                 
                                                                                                                    
● Read(package.json)                                                                                                
  ⎿  Read 134 lines                                                                                                 
                                                                                                                    
● Bash(ls packages/)                                                                                                
  ⎿  create-docusaurus                                                                                              
     docusaurus                                                                                                     
     docusaurus-babel                                                                                               
     … +37 lines (ctrl+o to expand)                                                                                 
                                                                                                                    
● Bash(ls examples/)                                                                                                
  ⎿  classic                                                                                                        
     classic-typescript                                                                                             
     README.md                                                                                                      
                                                                                                                    
● Read(README.md)                                                                                                   
  ⎿  Read 124 lines                                                                                                 
                                                                                                                    
● Read(packages/docusaurus/package.json)                                                                            
  ⎿  Read 102 lines                                                                                                 
                                                                                                                    
● Read(tsconfig.base.json)                                                                                          
  ⎿  Read 72 lines                                                                                                  
                                                                                                                    
● Read(packages/docusaurus-bundler/package.json)                                                                    
  ⎿  Read 61 lines                                                                                                  
                                                                                                                    
● Now I'll create a comprehensive CLAUDE.md file at the root of the Docusaurus repository.                          
                                                                                                                    
● Write(CLAUDE.md)                                                                                                  
  ⎿  Wrote 112 lines to CLAUDE.md                                                                                   
     # Docusaurus                                                                                                   
     ## Project Overview                                                                                            
     Docusaurus is a modern static site generator designed specifically for building, deploying, and maintaining    
      open source documentation websites. Built and maintained by Meta (Facebook), it provides a streamlined way    
      to create feature-rich documentation sites with minimal configuration.                                        
     The project uses a **monorepo structure** managed by Lerna and Yarn Workspaces, containing all core            
     packages, plugins, themes, and utilities in a single repository. This architecture enables shared tooling,     
     consistent versioning, and efficient development across the entire Docusaurus ecosystem.                       
     ## Architecture                                                                                                
                                                                                                                    
     … +102 lines (ctrl+o to expand)                                                                                
                                                                                                                    
● I've successfully created the CLAUDE.md file at /usercode/FILESYSTEM/docusaurus/CLAUDE.md with the three sections 
  you requested:                                                                                                    
                                                                                                                    
  1. Project Overview - Describes Docusaurus as a modern static site generator for documentation websites,          
  emphasizing its monorepo structure managed by Lerna and Yarn Workspaces.                                          
  2. Architecture - Documents the location and purpose of major components:                                         
    - Core packages (framework, bundler, MDX loader, Babel)                                                         
    - Utility packages (logger, utils, validation, types)                                                           
    - Content plugins (docs, blog, pages)                                                                           
    - Feature plugins (sitemap, PWA, analytics, redirects, etc.)                                                    
    - Themes (classic, search, live codeblock, mermaid)                                                             
    - Presets (classic bundle)                                                                                      
    - Examples and the official documentation website                                                               
  3. Tech Stack - Comprehensive list of technologies including:                                                     
    - TypeScript, React 18+, MDX 3.x, Webpack 5, Babel 7                                                            
    - Node.js 20+, Yarn, Lerna                                                                                      
    - PostCSS, Jest, ESLint, Prettier, Stylelint                                                                    
    - React Router, Prism, Algolia DocSearch                                                                        
    - Deployment platforms (Netlify, Vercel, GitHub Actions)                                                        
                                                                                                                    
  The file provides a clear reference for understanding the Docusaurus codebase structure and technology choices.   
                                                                                                                    
✻ Brewed for 1m 41s                                                                                                 
                                                                                                                    
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
❯                                                                                                                   
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  ? for shortcuts                 