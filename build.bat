@echo off
REM Build cover letter from Markdown to PDF
REM Usage: build.bat [filename]
REM   build.bat              --> builds cover-letter.md to cover-letter.pdf
REM   build.bat acme-corp    --> builds cover-letter-acme-corp.md to cover-letter-acme-corp.pdf

if "%~1"=="" (
    set BASENAME=cover-letter
) else (
    set BASENAME=%~1
)

echo Building %BASENAME%.md to %BASENAME%.pdf ...
echo pandoc %BASENAME%.md -o %BASENAME%.pdf --template=cover-letter.latex --pdf-engine=xelatex

pandoc "%BASENAME%.md" -o "%BASENAME%.pdf" --template=cover-letter.latex --pdf-engine=xelatex

if %ERRORLEVEL% EQU 0 (
    echo Done! Output: %BASENAME%.pdf
) else (
    echo Build failed. Check the error above.
)
