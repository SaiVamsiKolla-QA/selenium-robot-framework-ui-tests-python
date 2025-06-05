# Sauce Demo UI Test Automation with Robot Framework and Allure Reporting

This project demonstrates automated UI testing of the [Sauce Demo](https://www.saucedemo.com/) website using Robot Framework with Selenium WebDriver and Allure reporting.

## Project Structure

```
selenium-robot-framework-ui-tests-python/
├── Resources/
│   ├── common.robot         # Common settings and keywords
│   ├── login_page.robot     # Login page specific keywords
│   └── allure_config.robot  # Allure reporting configuration
├── Tests/
│   └── login_test.robot     # Login test cases
└── Results/
    ├── Screenshots/         # Test execution screenshots
    ├── allure-results/      # Raw Allure results
    └── allure-report/       # Generated Allure HTML report
```

## Prerequisites

- Python 3.x
- pip (Python package installer)
- Chrome/Firefox browser
- ChromeDriver/GeckoDriver
- Java 8 or higher (for Allure report generation)
- Allure command-line tools

### Installing Allure Command Line Tools

#### macOS:
```bash
brew install allure
```

#### Windows:
```bash
scoop install allure
```

#### Linux:
```bash
sudo apt-add-repository ppa:qameta/allure
sudo apt-get update
sudo apt-get install allure
```

## Setup

1. Create and activate a virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

## Running Tests

### Basic Test Execution
```bash
robot -d Results Tests/login_test.robot
```

### Running Tests with Allure Reporting
```bash
robot --listener allure_robotframework -d Results Tests/login_test.robot
```

### Running Tests in Headless Mode
```bash
robot --listener allure_robotframework --variable BROWSER:headlesschrome -d Results Tests/login_test.robot
```

### Generating and Viewing Allure Report
After test execution, generate and view the Allure report:
```bash
# Generate the report
allure generate Results/allure-results -o Results/allure-report --clean

# View the report
allure open Results/allure-report
```

## Test Cases

The test suite includes login tests for all available user types:

1. Standard User (`standard_user`)
2. Locked Out User (`locked_out_user`)
3. Problem User (`problem_user`)
4. Performance Glitch User (`performance_glitch_user`)
5. Error User (`error_user`)
6. Visual User (`visual_user`)

All users share the same password: `secret_sauce`

## Features

- Page Object Model (POM) implementation
- Gherkin-style test cases (Given/When/Then)
- Allure reporting integration
- Automatic screenshot capture
- Support for both headed and headless browser testing
- Cross-browser testing support
- Detailed test execution reports

## Allure Report Features

The Allure report provides:
- Test execution overview
- Test case details with steps
- Screenshots for each test
- Test execution timeline
- Test suite statistics
- Environment information
- Test categorization by tags
- Failure analysis

## Troubleshooting

1. WebDriver Issues:
   - Ensure browser and WebDriver versions match
   - Check if WebDriver is in system PATH
   - Try using `webdriver-manager` for automatic driver management

2. Allure Report Issues:
   - Verify Java installation (`java -version`)
   - Check Allure installation (`allure --version`)
   - Ensure Results directories exist and are writable

3. Test Failures:
   - Check application availability
   - Verify test user credentials
   - Review screenshots in Results/Screenshots
   - Check Allure report for detailed error information

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License. 