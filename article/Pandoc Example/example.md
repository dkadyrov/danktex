---
Title:   Pandoc Article Class
Author:  Daniel Kadyrov
Date:    \today
...

# Using this Script

## What is Pandoc?

## Using Custom Templates

\newpage

# Markdown Syntax

## Text Operations

The basic markdown text operations can be converted into LaTeX, Word, and into a PDF through Pandoc.

``` Markdown
Words can set in **bold** or they can be set in *italics*
```

Words can set in **bold** or they can be set in *italics*

## Hyperlinks

``` Markdown
Enclosed Links: <http://google.com>

Inline links: [one with a title](http://fsf.org "click here for a good time!")

Emails: [Write me!](mailto:sam@green.eggs.ham)

Reference Links: [Sends to Section 2.1.1 Hyperlinks](#Hyperlinks)
```

Enclosed Links: <http://google.com>

Inline links: [one with a title](http://fsf.org "click here for a good time!")

Emails: [Write me!](mailto:sam@green.eggs.ham)

Reference Links: [Sends to Section 2.1.1 Hyperlinks](#Hyperlinks)

## Quotes

Quotes are the highlight Markdown. They are achieved in LaTeX through the mdframed package.

> This is a block quote.
>
> > A block quote within a block quote.

\newpage

## Figures

![Image 1](300.png "ref1")

\newpage

## Footnotes

Here is a footnote reference,[^1] and another.[^longnote]

[^1]: Here is the footnote.

[^longnote]: Here's one with multiple blocks.

  Subsequent paragraphs are indented to show that they belong to the previous footnote.

### Inline Footnotes

Here is an inline note.^[Inlines notes are easier to write, since you don't have to pick an identifier and move down to type the note.]

## Code Inserts

\lipsum[2-4]

### Verbatim

\newpage
### Syntax Highlighted

``` Python
# Example of a Comments
class MyClass(Yourclass):
    def __init__(self, my, yours):
        print('This is a string')
```

\newpage

## \LaTeX

Traditional \LaTeX can be inserted by using the backward slash command.

### Mathematical Equations

Mathematical equations can be inserted in-line such as $F = ma$ by using the \$ between expressions. For equations however, the begin{equation} enviroment needs to be used, such as the example below:

\begin{equation}
F = ma 
\end{equation}