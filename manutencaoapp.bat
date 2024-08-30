@echo off

REM Navega até o diretório do projeto front-end
cd C:\Users\sonic\Documents\eletronics-maintenance

REM Inicia o servidor HTTP para o front-end na porta 5500
start python -m http.server 5500 --bind 10.0.0.104

REM Dá um tempo para garantir que o servidor front-end esteja ativo
timeout /t 5 /nobreak

REM Navega até o diretório do projeto back-end
cd C:\Users\sonic\Documents\eletronics-maintenance-db

REM Ativa o ambiente virtual (substitua '.venv' pelo nome correto do seu ambiente virtual)
call .venv\Scripts\activate

REM Inicia o servidor Flask na porta 5000
start python app.py

REM Dá um tempo para garantir que o servidor Flask esteja ativo
timeout /t 5 /nobreak

pause
