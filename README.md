# Professional Resume Manager

Welcome to My Professional Resume Manager repository! This repository is designed to help manage my professional resume in Markdown format and deploy it in various formats (HTML, PDF, RTF, DOCX) using GitHub Pages.

## Getting Started

To get started, follow these steps:

1. Clone this repository to your local machine:
    ```sh
    git clone https://github.com/sebastiandaberdaku/resume.git
    ```
2. Navigate to the repository directory:
    ```sh
    cd resume
    ```
3. Edit the `resume.md` file with the resume details.

## Generating Output Formats
To generate various output formats (HTML, PDF, RTF, DOCX), follow these steps:

1. Install the required dependencies. If you haven't already, ensure you have pandoc and context installed on your system.
    ```sh
    sudo apt update
    sudo apt install -y pandoc context
    ```
2. Run the following command to generate the output formats:
    ```sh
    make all
    ```
3. After running the command, you will find the generated `./output` files in the output directory.

## Deploying to GitHub Pages
This repository is configured to automatically deploy the generated output files to GitHub Pages.

To access your resume online: [https://sebastiandaberdakugithub.io/resume/](https://sebastiandaberdakugithub.io/resume/)

## Customization
Feel free to customize this repository to suit your needs. You can modify the Markdown template in resume.md, customize the output formats in the Makefile, or adjust the GitHub Actions workflow in `.github/workflows/build-resume.yaml`.

## License
This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

## Acknowledgements
- [pandoc_resume](https://github.com/mszep/pandoc_resume)
- [GitHub Pages](https://pages.github.com/)
- [pandoc](https://pandoc.org/)
- [context](https://wiki.contextgarden.net/Main_Page)