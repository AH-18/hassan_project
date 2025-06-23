###################Code Quality & Validation Tools:

-Terraform Validate
Role: Syntax checker
What it does: Ensures .tf files have correct Terraform syntax
Catches: Missing brackets, wrong variable types, invalid resource names


-Terraform Format
Role: Code style enforcer
What it does: Checks consistent formatting and indentation
Catches: Wrong spacing, mixed tabs/spaces, inconsistent style


-TFLint
Role: Terraform best practices enforcer
What it does: Validates Terraform-specific conventions and AWS rules
Catches: Unused variables, deprecated syntax, provider issues


####################Security Scanning Tools:
-TFSec
Role: AWS security scanner
What it does: Finds security misconfigurations in AWS resources
Catches: Open security groups, unencrypted storage, insecure configurations


-SonarQube
Role: Comprehensive code quality analyzer
What it does: Analyzes code quality, security, and technical debt
Catches: Code smells, duplications, maintainability issues, basic security flaws


-errascan (If Added)
Role: Multi-cloud compliance scanner
What it does: Checks compliance against security frameworks (CIS, NIST, SOC2)
Catches: Compliance violations, custom policy breaches, multi-cloud security issues


🔐 Snyk (If Added)
Role: Vulnerability & supply chain scanner
What it does: Scans for known vulnerabilities in dependencies and containers
Catches: CVEs in packages, vulnerable Docker images, license violations
