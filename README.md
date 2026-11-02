# Cover Letter Pipeline

A docs-as-code workflow for producing cover letters that visually match my LaTeX resume.

## How it works

- Write each cover letter in **Markdown** with YAML front matter for per-application details
- Build to a styled **PDF** using [Pandoc](https://pandoc.org/) with a custom LaTeX template
- The template uses the same font (Source Sans Pro), margins, and header layout as my resume

## Usage

```
build.bat                  # builds cover-letter.md → cover-letter.pdf
build.bat acme-corp        # builds acme-corp.md → acme-corp.pdf
```

## Requirements

- [Pandoc](https://pandoc.org/installing.html)
- [MiKTeX](https://miktex.org/download) (LaTeX distribution for Windows)

## Tools

Markdown · Pandoc · LaTeX · Git
