# Shell Learning Journey

A structured curriculum for learning shell scripting, guided by ChatGPT. This repository contains practical examples and exercises covering fundamental shell scripting concepts.

## Contents

- `01_fundamentos/` - Fundamental shell scripting concepts including:
  - Basic shell scripts (`hello.sh`)
  - Control structures (`if.sh`, `for_while.sh`)
  - Functions (`functions.sh`)
  - String manipulation (`string.sh`)
  - File processing (`scanner.sh`)
  - Working with CSV files

## Purpose

This repository serves as a learning resource for mastering shell scripting through hands-on examples and exercises. The curriculum is designed with input from ChatGPT to ensure comprehensive coverage of essential concepts.

## Detailed Curriculum

### 🟢 Module 1: Shell Scripting Fundamentals
**Objective**: Learn basic syntax and essential commands.

| Topic | Description | Examples |
|-------|-------------|----------|
| bash, sh, zsh | Difference between interpreters | `#!/bin/bash` |
| Variables | How to create and use | `VAR="texto"` |
| Conditionals | if, elif, else | `if [ "$VAR" == "texto" ]; then` |
| Loops | for, while, until | `for f in *.csv; do ...; done` |
| Functions | Code modularization | `function transforma_csv() { ... }` |
| Debug | set -x, set -e | Step-by-step execution |

✅ **Mini-project**: Script that scans directories and counts lines in .csv files.

### 🟡 Module 2: File and String Manipulation
**Objective**: Automate ETL tasks in files.

| Topic | Description | Examples |
|-------|-------------|----------|
| cat, cut, awk, sed, tr, wc | Text manipulation | `cut -d',' -f1 file.csv` |
| Regular expressions | Filters with grep, sed | `grep "^2025" log.txt` |
| Redirection | >, >>, 2>, &> | `command > output.txt` |
| Pipes | Command chaining | `cat file.csv` |

✅ **Mini-project**: Script that cleans and transforms .csv files (removes header, normalizes delimiters, etc.)

### 🟠 Module 3: Pipeline Automation
**Objective**: Create robust local and remote ETL scripts.

| Topic | Description | Examples |
|-------|-------------|----------|
| cron scheduling | Automate execution | `0 0 * * * /path/script.sh` |
| Script arguments | "$1", "$@", getopts | `./etl.sh arquivo.csv` |
| Logging | Redirection + timestamps | `echo "$(date): processed $f" >> log.txt` |
| Error handling | trap, set -e | `trap 'echo ERROR' ERR` |

✅ **Mini-project**: Script that loads files to HDFS, with logging and cron scheduling.

### 🔵 Module 4: Data Engineering Tools Integration
**Objective**: Use shell to interact with the Big Data stack.

| Tool | Common Shell Commands |
|------|---------------------|
| HDFS | `hdfs dfs -put`, `-ls`, `-rm` |
| Hive | `hive -e "SELECT * FROM table"` |
| Sqoop | `sqoop import --connect jdbc:mysql...` |
| Airflow | Shell as BashOperator |
| Docker | `docker exec -it`, `docker cp` |
| SSH/SCP | `ssh user@host`, `scp file.csv` |

✅ **Mini-project**: Script that downloads data via API, saves locally, sends to HDFS, and triggers Hive query.

### 🔴 Module 5: Best Practices and Real Projects
**Objective**: Write robust, readable, and reusable scripts.

| Practice | Example |
|----------|---------|
| Modularization | Reusable functions by theme |
| Log organization | Date-separated logs by project |
| Version control | Scripts versioned in Git |
| Reusable templates | Standard structure for ETLs |

✅ **Final Project**: Complete pipeline:
- API extraction
- Transformation using awk/sed
- HDFS upload
- Hive query
- Job summary email

### 🔧 Support Tools
- Docker with Hadoop + Hive
- VSCode with Shell extension
- Terminal with tmux or customized zsh
- Linters: shellcheck
- Tests: bats-core

### 🔄 Recommended Study Routine

| Time | Action |
|------|--------|
| 1h/day (weekday) | Theoretical study + exercises |
| 2h/weekend | Mini-project or integration |
| 1x/week | Review and refactor old scripts |
