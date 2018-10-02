echo Criar diretorio para backup de arquivos TXT
mkdir Bkp.TXT
echo Copiar arquivos TXT para diretorio de backup
xcopy .\App\*.txt .\Bkp.TXT\. /y
echo apagar arquivos TXT do diretorio App
del .\App\*.txt

echo Cria pasta de backup de arquivos da pasta App

date /t
set data=%date%
set ano=%data:~6,4%
set mes=%data:~3,2%
set dia=%data:~0,2%
set data=%ano%.%mes%.%dia%
time /t
set horario=%time%
set hh=%horario:~0,2%
set mm=%horario:~3,2%
set ss=%horario:~6,2%
set horario=%hh%.%mm%.%ss%

set DataHora=%data%-%horario%
set DataHora=%DataHora: =0%
set FolderBkp=App.bkp.files.%DataHora%

mkdir %FolderBkp%
echo Copia arquivos EXE
xcopy .\App\*.exe .\%FolderBkp%\. /y
echo Copia arquivos DLL
xcopy .\App\*.dll .\%FolderBkp%\. /y
echo Copia arquivos PDB
xcopy .\App\*.pdb .\%FolderBkp%\. /y
echo Copia arquivos CONFIG
xcopy .\App\*.config .\%FolderBkp%\. /y
echo Copia arquivos BAT
xcopy .\App\*.bat .\%FolderBkp%\. /y
