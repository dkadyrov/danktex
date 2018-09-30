# LaTeX - Pandoc Templates

## About 

These [LaTeX](https://www.latex-project.org/get/) templates were created to expedite typical document writing (articles, letters, resumes) using [Pandoc](https://pandoc.org/)

## Examples

[Letter](http://docs.google.com/gview?url=https://github.com/dkadyrov/latex_templates/raw/master/letter/Example/letter.pdf)

[Resume](http://docs.google.com/gview?url=https://github.com/dkadyrov/latex_templates/raw/master/resume/Example/resume.pdf)
## Usage

The easiest way to use these tex files, especially with pandoc, is by placing them in a known directory and referencing them through a path. One can also look into installing them into your LaTeX and Pandoc directories. 

To use the template classes, enter this in your command terminal:

```bash 
pandoc name_of_input.md -o name_of_output.pdf --from markdown --template name_of_template.tex
```

If you would like to show listings: 

```bash 
pandoc name_of_input.md -o name_of_output.pdf --from markdown --template name_of_template.tex --listings
```

You can also have it output the Tex file using the template: 

```bash 
pandoc name_of_input.md -o name_of_output.tex --from markdown --template name_of_template.tex --listings
```

Or even Microsoft Word (ugh): 

```bash 
pandoc name_of_input.md -o name_of_output.doc --from markdown --template name_of_template.tex --listings
```