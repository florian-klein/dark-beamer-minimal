# Dark Beamer Minimal Template

A clean, dark-themed LaTeX beamer presentation template with a left sidebar navigation. Perfect for academic talks, conference presentations, or any professional slide deck.

| <img width="400" alt="image" src="https://github.com/user-attachments/assets/b2ddbe9a-2a0e-477c-843a-f72011bf246f" /> | <img width="400" alt="image" src="https://github.com/user-attachments/assets/4cbc5f88-93cf-467e-b6aa-54867e9a13e2" /> |
|---|---|
| <img width="400" alt="image" src="https://github.com/user-attachments/assets/31f935d8-e758-4e62-951e-108e2e5900cf" /> | <img width="400" alt="image" src="https://github.com/user-attachments/assets/a9e22127-d289-4853-8a97-6ad6b9ec4647" /> |

## Features

- **Dark theme**: Black background with white text for reduced eye strain
- **Left sidebar navigation**: Shows progress through sections/subsections with highlight
- **16:9 aspect ratio**: Modern widescreen format
- **Comprehensive examples** including:
  - Bullet points and numbered lists
  - Two-column layouts
  - Figures with captions
  - TikZ diagrams
  - PGFPlots charts
  - Code listings (syntax-highlighted)
  - Tables
  - Block environments (standard, alert, example)
  - BibTeX citations
  - Custom title slide (centered, ignoring sidebar)
- **Build automation**: `.latexmkrc` configuration for easy compilation
- **Clean repository**: `.gitignore` for LaTeX auxiliary files
- **Organized structure**: `figures/` directory for assets

## Requirements

### Required LaTeX packages:
- `beamer`
- `babel`
- `inputenc`
- `graphicx`
- `amsmath`, `amssymb`
- `pgfplots`, `pgfplotstable`
- `multicol`
- `subfigure`
- `listings`
- `isodate`
- `tikz` (with libraries: arrows.meta, positioning, fit, shapes.geometric, calc, fillbetween)

### Required Beamer theme:
- **beamer-owl**: Make sure you have the `owl` color theme installed
  - Install from: https://github.com/rchurchley/beamercolortheme-owl
  - Or via your TeX distribution's package manager

## Installation

1. Clone or download this repository
2. Ensure all required packages are installed (most come with standard TeX distributions)
3. Install the beamer-owl theme if not already available

## Usage

### Quick Start

1. Edit the metadata section (lines 33-37):
   ```latex
   \title[Short Title]{Main Talk Title Goes Here}
   \author{Presenter Name}
   \institute{Your Institution}
   \date{\today}
   ```

2. Replace example content with your own in the document sections

3. Compile with your preferred LaTeX compiler:

   **Option A: Using latexmk (recommended)**
   ```bash
   latexmk beamer.tex
   ```

   **Option B: Manual compilation**
   ```bash
   pdflatex beamer.tex
   bibtex beamer
   pdflatex beamer.tex
   pdflatex beamer.tex
   ```

   **Option C: Continuous preview mode**
   ```bash
   latexmk -pvc beamer.tex
   ```
   This will automatically recompile when you save changes.

### Customization

#### Colors
Adjust the dark theme colors (lines 24-31):
```latex
\setbeamercolor{background canvas}{bg=black}
\setbeamercolor{normal text}{fg=white}
```

Change the sidebar highlight color (line 55):
```latex
\setbeamercolor{section in sidebar current}{fg=black,bg=cyan!60}
```

#### Sidebar Width
Modify the sidebar width (line 40):
```latex
\useoutertheme[left,width=18mm]{sidebar}
```
Note: If you change this, update the title slide shift (line 99) accordingly.

#### Aspect Ratio
Change from 16:9 to 4:3 (line 1):
```latex
\documentclass[10pt,aspectratio=43]{beamer}
```

#### Font Sizes
Adjust sidebar font sizes (lines 43-46):
```latex
\setbeamerfont{section in sidebar}{size=\scriptsize}
```

## Template Structure

The template includes five main sections with examples:

1. **Introduction**: Motivation and figures
2. **Background**: Key concepts, two-column layouts, TikZ diagrams, code listings, block environments
3. **Methodology**: Method overview, PGFPlots charts
4. **Results**: Key findings, comparison tables
5. **Discussion & Conclusion**: Interpretation and summary

Each section demonstrates different slide layouts and LaTeX features.

### File Structure
```
dark-beamer-minimal/
├── beamer.tex          # Main presentation file
├── lit.bib             # Bibliography file
├── figures/            # Directory for images and figures
├── .latexmkrc          # Latexmk configuration
├── .gitignore          # Git ignore rules
└── README.md           # This file
```

## Tips

- Use `\section{}` and `\subsection{}` to organize content - they appear in the sidebar navigation
- The first slide uses `[plain]` and a special layout to center the title, ignoring the sidebar
- For equations, use standard LaTeX math environments
- Place images in the `figures/` directory and reference them with `\includegraphics{figures/your-image.png}`
- Replace `example-image` with your actual image files
- Add your references to `lit.bib` and cite using `\cite{key}`
- Use `[fragile]` frame option when including code listings: `\begin{frame}[fragile]{Title}`
- Code listings support many languages: Python, Java, C++, JavaScript, and more
- Use block environments to emphasize important content:
  - `\begin{block}{Title}...\end{block}` for standard blocks
  - `\begin{alertblock}{Title}...\end{block}` for warnings
  - `\begin{exampleblock}{Title}...\end{block}` for examples

## Troubleshooting

**Problem**: "owl" theme not found
- **Solution**: Install beamer-owl from https://github.com/rchurchley/beamercolortheme-owl

**Problem**: Title slide is off-center
- **Solution**: Adjust the horizontal shift value (line 99) to match your sidebar width

**Problem**: Sidebar text is too small/large
- **Solution**: Modify font sizes in lines 43-46

## License

This template is provided as-is for free use. Modify as needed for your presentations.

## Credits

- Based on the Beamer Madrid theme
- Uses the owl color theme by Ross Churchley
- Claude for this README 
