#!/bin/bash

echo "Generating SBOM using Syft..."
syft packages . -o cyclonedx-json > sbom.json

if [ $? -eq 0 ]; then
    echo "SBOM generated successfully."
else
    echo "Error generating SBOM. Please make sure Syft is installed and try again."
    exit 1
fi

echo "Scanning SBOM using OWASP Dependency-Check..."
dependency-check --scan sbom.json --format HTML --out dependency-check-report.html

if [ $? -eq 0 ]; then
    echo "Vulnerability scan completed successfully."
    echo "Report generated: dependency-check-report.html"
else
    echo "Error scanning SBOM. Please make sure OWASP Dependency-Check is installed and try again."
    exit 1
fi

echo "Process completed. Please open dependency-check-report.html in your browser to view the results."