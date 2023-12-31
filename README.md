### PhDBiorobBeamerTemplate

This is a simple and clean LaTeX template for the presentation associated with the annual report of the Bioengineering and Robotics PhD progam from University of Genova (with VIDEO (and audio) EMBEDDING IN LATEX!):

<p align="center">
  <img src="docs/example/video_embedding.gif" alt="embedded video example" width="500" />
</p>

You can inspect a precompiled version of it [here](https://github.com/AndrePatri/PhDBiorobBeamerTemplate/blob/main/docs/example/phd_biorob_beamer_template.pdf).
Or, alternatively, 

<p align="center">
  <img src="docs/example/beamer_overview.gif" alt="beamer overview" width="500" />
</p>

All the definitions are in *00-def.tex*, all the imports in *00-imports.tex* and all settings are in *00-settings.tex*. This is a very simple but clean organization of the template which users are encouraged to employ. 

Feel free to add new functions, improve the existing ones or customize the style to suit your needs.

This template supports embedding video in the presentation with the utility command `\includevideo[mp4][pageopen][pageclose][${aspect_ratio}]{${width}}{${video_name}}`. The way this works is that there is, by convention, a video folder located at `./videos` and videos MUST be placed in the root of this folder. Before adding any new video to the presentation, you have to run the `extract_first_frames.bash` script located at the root of the template. This will automatically extract the placeholders to be used for the videos.

Main package dependencies: 
- Pdf visualization with slideshow and video support: *Okular*. Install on Linux with `sudo apt install okular`. Okular is tested and works with this template and also provides quite a complete set of tools, including drawing on the slides and customizing transitions between them. Other readers might work as well.
- `\includevideo` is a wrapper on top of the `media9` package. Install it on Linux with `sudo apt install texlive-latex-extra`.


