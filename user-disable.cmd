@set ACTIVE=no
@echo Ucet zakazan
@set /p ACTIVE="yes/NO: "

net user USERNAME1 /active:%ACTIVE%
net user USERNAME2 /active:%ACTIVE%

@pause
