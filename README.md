# Vulnerable Rails Application Demonstration

This project is an intentionally vulnerable Ruby on Rails application designed to demonstrate the importance of dependency management and vulnerability scanning in web development.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

1. Ruby (version 2.6.0 or higher recommended)
2. Bundler (for managing Ruby gems)
3. [Syft](https://github.com/anchore/syft) (for generating Software Bill of Materials)
4. [OWASP Dependency-Check](https://github.com/jeremylong/DependencyCheck) (for vulnerability scanning)

## Setup

1. Clone this repository:
   ```
   git clone https://github.com/your-username/vulnerable-rails-app.git
   cd vulnerable-rails-app
   ```

2. Install the dependencies:
   ```
   bundle install
   ```
   Note: This will install intentionally vulnerable versions of gems. Do not use this application in a production environment.

## Generating SBOM and Scanning for Vulnerabilities

We've provided a script that automates the process of generating a Software Bill of Materials (SBOM) and scanning it for vulnerabilities.

1. Make the script executable:
   ```
   chmod +x scan_dependencies.sh
   ```

2. Run the script:
   ```
   ./scan_dependencies.sh
   ```

This script will:
- Generate an SBOM using Syft
- Scan the SBOM for vulnerabilities using OWASP Dependency-Check
- Produce an HTML report of the findings

3. View the results:
   Open the generated `dependency-check-report.html` file in your web browser to see the vulnerability report.

## Understanding the Results

The vulnerability report will show several issues with the dependencies used in this project. This is intentional and serves to demonstrate:

1. The importance of keeping dependencies up-to-date
2. How automated tools can help identify security vulnerabilities
3. The potential risks of using outdated or unpatched libraries

## Demonstration Steps

When presenting this to developers:

1. Show the contents of the `Gemfile`, highlighting the intentionally outdated dependencies.
2. Run the `scan_dependencies.sh` script and explain each step.
3. Open and review the `dependency-check-report.html` file.
4. Discuss the found vulnerabilities and their potential impacts.
5. Explain how updating the vulnerable gems can resolve these issues.
6. Emphasize the importance of regular dependency audits and updates in real-world projects.

## Security Notice

This application is intentionally vulnerable and is for educational purposes only. Do not deploy or use this code in any production or publicly accessible environment.

## Additional Resources

- [Ruby on Rails Security Guide](https://guides.rubyonrails.org/security.html)
- [OWASP Top Ten Project](https://owasp.org/www-project-top-ten/)
- [Syft Documentation](https://github.com/anchore/syft)
- [OWASP Dependency-Check](https://owasp.org/www-project-dependency-check/)

## License

This project is open source and available under the [MIT License](LICENSE).