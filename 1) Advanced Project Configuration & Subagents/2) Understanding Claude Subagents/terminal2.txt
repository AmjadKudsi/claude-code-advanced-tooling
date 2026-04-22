# Ask Claude: Locate all deprecated APIs or features and identify what's replacing them
# create a file documenting the most critical deprecations

                                                                                                          
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
                                                                                                          
❯ Locate all deprecated APIs or features and identify what's replacing them                               
                                                                                                          
● I'll help you locate all deprecated APIs or features in the codebase and identify their replacements.   
                                                                                                          
● Explore(Find deprecated APIs and replacements)                                                          
  ⎿  Done (44 tool uses · 54.7k tokens · 4m 0s)                                                           
                                                                                                          
● I've completed a comprehensive search of the codebase and found 31 deprecated APIs and features. Here's 
  a summary organized by category:                                                                        
                                                                                                          
  Key Findings                                                                                            
                                                                                                          
  Blog Plugin (4 deprecations)                                                                            
                                                                                                          
  - id field → Use slug instead                                                                           
  (docusaurus/packages/docusaurus-plugin-content-blog/src/plugin-content-blog.d.ts:149)                   
  - Legacy author fields (author, author_title, etc.) → Use authors array for multi-author support        
                                                                                                          
  Sitemap Plugin (5 deprecations)                                                                         
                                                                                                          
  - changefreq → Removed in v4 (not used by Google)                                                       
  - priority → Removed in v4 (not used by Google)                                                         
  - cacheTime → Already forbidden                                                                         
  - trailingSlash → Use global Docusaurus config                                                          
                                                                                                          
  Theme Configuration (9 deprecations)                                                                    
                                                                                                          
  - disableDarkMode → Use colorMode.disableSwitch                                                         
  - defaultDarkMode → Use colorMode.defaultMode                                                           
  - hideableSidebar → Use docs.sidebar.hideable                                                           
  - autoCollapseSidebarCategories → Use docs.sidebar.autoCollapseCategories                               
  - navbar.links → Use navbar.items                                                                       
  - metadatas → Use metadata                                                                              
                                                                                                          
  Color Mode Hooks (3 deprecations)                                                                       
                                                                                                          
  - useColorMode().isDarkTheme → Use colorMode === "dark"                                                 
  - setLightTheme() → Use setColorMode("light")                                                           
  - setDarkTheme() → Use setColorMode("dark")                                                             
                                                                                                          
  Site Configuration (1 deprecation)                                                                      
                                                                                                          
  - siteConfig.onBrokenMarkdownLinks → Use siteConfig.markdown.hooks.onBrokenMarkdownLinks                
  (configValidation.ts:492)                                                                               
                                                                                                          
  Other Notable Deprecations                                                                              
                                                                                                          
  - Docs Plugin homePageId → Add slug: / in front matter                                                  
  - PWA Plugin reloadPopup → Use swizzling                                                                
  - Google Analytics anonymizeIP → Not needed in GA4                                                      
  - Admonition type Caution → Use Warning                                                                 
                                                                                                          
  Most deprecations provide clear migration paths, and many are already forbidden in current versions.    
  Several items are marked for removal in Docusaurus v4.                                                  
                                                                                                          
✻ Sautéed for 3m 10s                                                                                      
                                                                                                          
❯ create a file documenting the most critical deprecations.                                               
                                                                                                          
● Write(CRITICAL_DEPRECATIONS.md)                                                                         
  ⎿  Wrote 368 lines to CRITICAL_DEPRECATIONS.md                                                          
     # Critical Deprecations in Docusaurus                                                                
     This document outlines the most critical deprecated APIs and features that require immediate         
     attention or will be removed in future versions.                                                     
     ## Table of Contents                                                                                 
     - [Immediate Action Required (Forbidden)](#immediate-action-required-forbidden)                      
     - [Scheduled for Removal in v4](#scheduled-for-removal-in-v4)                                        
     - [Active Runtime Warnings](#active-runtime-warnings)                                                
     - [Migration Priority Guide](#migration-priority-guide)                                              
     … +358 lines (ctrl+o to expand)                                                                      
                                                                                                          
● I've created a comprehensive documentation file at /usercode/FILESYSTEM/CRITICAL_DEPRECATIONS.md that   
  focuses on the most critical deprecations requiring immediate attention.                                
                                                                                                          
  The file is organized into four main sections:                                                          
                                                                                                          
  1. Immediate Action Required (Forbidden) - 7 items that will break builds:                              
    - Dark mode configuration options                                                                     
    - Sidebar configuration options                                                                       
    - Navbar and metadata naming                                                                          
    - Docs plugin homePageId                                                                              
    - Sitemap plugin options                                                                              
    - PWA plugin reloadPopup                                                                              
    - Color mode switch config                                                                            
  2. Scheduled for Removal in v4 - 3 items to plan migration for:                                         
    - onBrokenMarkdownLinks configuration location                                                        
    - Sitemap SEO options (changefreq, priority)                                                          
    - Caution admonition type                                                                             
  3. Active Runtime Warnings - 2 items showing dev-time warnings:                                         
    - useColorMode().isDarkTheme property                                                                 
    - setLightTheme() and setDarkTheme() methods                                                          
  4. Migration Priority Guide - Helps prioritize which deprecations to address first                      
                                                                                                          
  Each deprecation includes:                                                                              
  - Clear before/after code examples                                                                      
  - Exact file locations with line numbers                                                                
  - Migration instructions                                                                                
  - Links to relevant documentation                                                                       
                                                                                                          
✻ Brewed for 53s                                                                                          
                                                                                                          
──────────────────────────────────────────────────────────────────────────────────────────────────────────
❯                                                                                                         
──────────────────────────────────────────────────────────────────────────────────────────────────────────
  ? for shortcuts        