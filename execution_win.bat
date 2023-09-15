pip3 install -r requirements.txt
set env=%1
if %env%==DEV (C:\Python310\python.exe -m pytest -v -m regression -n%2 --env=DEV --html=report.html --alluredir=build/allure-results)
if %env%==AUTOMATION (C:\Python310\python.exe -m pytest -v -m "tags or deviceposture" -n%2 --html=report.html --alluredir=build/allure-results)
::if %env%==DEV (C:\Python310\python.exe -m pytest -v -m smoke -n%2 --env=DEV --html=report.html --alluredir=build/allure-results)
::if %env%==AUTOMATION (C:\Python310\python.exe -m pytest -v -n%2 --html=report.html --alluredir=build/allure-results)
::if %env%==PRO (C:\Python310\python.exe -m pytest -v -m production -n%2 --env=PROD --html=report.html --alluredir=build/allure-results)

