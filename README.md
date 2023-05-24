# Paged.js handout

This repository demonstrates how to create a handout with [Rmarkdown](https://rmarkdown.rstudio.com) and [paged.js](https://pagedjs.org). Some examples are given [here](examples/).

This repository includes:

- An Rmarkdown script for laying out the content of the handout
- A Makefile to easily compile the handout

This repository is self-contained but requires the following software (all open-source).

## Prerequisite software

### R & Rmarkdown

Rmarkdown requires R. Follow the instructions at [R's homepage](https://www.r-project.org) to download and install the latest release of R on your machine. Then, install Rmarkdown with:

```
R -e "install.packages('rmarkdown')"
```

### Pandoc

Rmarkdown requires Pandoc: a universal document converter. Follow the instructions at [Pandoc's homepage](https://pandoc.org) to download and install the latest release of Pandoc on your machine.

## Compile the handout

```
# Clone this repository
git clone https://github.com/buchanankerswell/paged_handout.git

# Change into the directory
cd paged_handout

# Use Makefile to compile
make
```

This will use Rmarkdown and Pandoc to render all .Rmd files in the directory as .html web pages. Print the webpage (save as .pdf) if you prefer .pdf.

# License

MIT License

Copyright (c) 2023 Buchanan Kerswell

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
