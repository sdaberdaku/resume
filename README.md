# Professional Resume Manager

Welcome to My Professional Resume Manager repository! This repository is designed to help manage my professional resume in Markdown format and deploy it as HTML, PDF and DOCX on GitHub Pages.

## Getting Started

To get started, follow these steps:

1. Clone this repository to your local machine:
    ```sh
    git clone https://github.com/sdaberdaku/resume.git
    ```
2. Navigate to the repository directory:
    ```sh
    cd resume
    ```
3. Edit the `resume.md` file with the resume details.

## Generating Output Formats
To generate the output formats (HTML, PDF, DOCX), follow these steps:

1. Install pandoc and Google Chrome. The HTML page is styled by `templates/template.css`, and the PDF is that page printed by headless Chrome, so both share one design.
    ```sh
    sudo apt update
    sudo apt install -y pandoc
    ```
    To use another Chromium-based browser for the PDF, pass its binary: `make pdf CHROME=chromium`.
2. Run the following command to generate the output formats:
    ```sh
    make all
    ```
3. After running the command, you will find the generated `./output` files in the output directory.

## Deploying to GitHub Pages
This repository is configured to automatically deploy the generated output files to GitHub Pages.

To access the resume online visit: [https://sdaberdaku.github.io/resume](https://sdaberdaku.github.io/resume)

## Customization
Feel free to customize this repository to suit your needs. You can modify the Markdown template in resume.md, customize the output formats in the Makefile, or adjust the GitHub Actions workflow in `.github/workflows/build-and-deploy-resume.yaml`.

## License
This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

## Acknowledgements
- [pandoc_resume](https://github.com/mszep/pandoc_resume)
- [GitHub Pages](https://pages.github.com/)
- [pandoc](https://pandoc.org/)
