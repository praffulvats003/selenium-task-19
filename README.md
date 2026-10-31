# Robot Framework Login Automation - RobotSpareBin Industries

Keyword-driven test suite (Robot Framework + SeleniumLibrary) for https://robotsparebinindustries.com

## Structure
- `tests/login_test.robot` - test case: open app, login, verify, logout
- `resources/keywords.robot` - reusable keywords (Open Application, Login With Credentials, Verify Login, Logout, Close Application)
- `requirements.txt` - dependencies

## Setup
```bash
python -m venv venv
venv\Scripts\activate        # Windows
pip install -r requirements.txt
```
Google Chrome must be installed (Selenium Manager fetches the driver automatically).

## Run
```bash
python -m robot -d results tests/login_test.robot
```
Reports: `results/report.html`, `results/log.html`
