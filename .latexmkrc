# Use pdflatex for compilation
$pdf_mode = 1;

# Enable bibtex
$bibtex_use = 2;

# Set the PDF viewer (optional - adjust for your system)
# macOS: open -a Preview
# Linux: evince or okular
# Windows: start
$pdf_previewer = 'open -a Preview';

# Continuous preview mode settings
$preview_continuous_mode = 1;

# Clean up auxiliary files
$clean_ext = 'aux log nav out snm toc vrb bbl blg synctex.gz fls fdb_latexmk';

# Additional pdflatex options
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
