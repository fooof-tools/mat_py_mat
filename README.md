# FOOOF: Matlab -> Python -> Matlab

This repository offers support and examples for how to integrate [FOOOF](https://github.com/fooof-tools/fooof) into a Matlab workflow.

Note that this workflow does use Python directly. Alternatively there is a full [Matlab wrapper](https://github.com/fooof-tools/fooof_mat). The benefit of this approach, over using the [wrapper](https://github.com/fooof-tools/fooof_mat), is that you have full access to the FOOOF module in Python, which makes it easier to use utilities to plot outputs and see what's happening. This approach

All [descriptions](https://github.com/fooof-tools/fooof/README.md) and [tutorials](https://github.com/fooof-tools/fooof/tutorial) for FOOOF are in the [main repository](https://github.com/fooof-tools/fooof), and a full description of the method is available in the [paper](https://www.biorxiv.org/content/early/2018/04/11/299859).

## Overview

This repository includes example code for a potential workflow whereby most stuff is done in Matlab, only using Python for FOOOF fitting specifically. This approach does require that you have Python and FOOOF installed. You can follow the direction to do so from [here](https://github.com/fooof-tools/fooof_mat).

The idea is that one can do all of the processing and analysis in Matlab, up to and including calculating power spectra. Power spectra are then saved out to mat files, and loaded into Python. You can the run and explore using FOOOF, in Python, fitting models, and then save out the model fit results, which can be loaded back into Matlab, if you prefer.

## Workflow

An example / template workflow for using this approach, including matlab and python scripts, is available here. This workflow is for using FOOOF in a Matlab pipeline, in which you process and analyze the data mostly in Matlab, but do the FOOOF fitting directly in Python. With this template, you should be able get working with this workflow without having to write almost any Python code.

This suggested workflow is to:
- A) Pre-process all data in Matlab, up to the point of creating and saving out power spectra
- B) Switch to Python, load these power spectra, explore and fit FOOOF models, then save out FOOOF results
- C) Continue analysis of the FOOOF results in Matlab

In this folder you will find two examples of this workflow, one showing the outline with a single PSD, and another showing how you can update this workflow to analyze multiple power spectra.

You can also use these files as templates - just download this folder, and update the files as you need to to use your data.

Note that as outlined the Python parts are done in notebooks, which allows for easy access to the plotting and exploration tools in FOOOF. When you have settled on parameters and so on, you can instead run this part as a Python script.
