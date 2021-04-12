# Spectral Parameterization: Matlab -> Python -> Matlab

Using an integrated workflow in which using Matlab is combined with running FOOOF directly in Python.

## Overview

This repository offers examples for how to integrate [FOOOF](https://github.com/fooof-tools/fooof) into a Matlab workflow.

This approach does use Python directly, and seeks to demonstrate how to use a primarily Matlab based approach, using Python only as needed for fitting power spectrum models. The idea is that one can do all of the processing and analysis in Matlab, up to and including calculating power spectra. These power spectra can then be saved out. These files can then be loaded into Python, and FOOOF can be used to fit power spectrum, and do any model related processing needed using the FOOOF module. The model results can also be saved out, and loaded back into Matlab.

The benefit of this approach, is that you have full access to the FOOOF module in Python. 
This does require that you have Python and FOOOF installed. You can follow the directions to do so from 
[here](https://github.com/fooof-tools/fooof_mat).
Note that the main documentation for the FOOOF module itself is on the 
[documentation site](https://fooof-tools.github.io/fooof/).

Alternatively there is a [Matlab wrapper](https://github.com/fooof-tools/fooof_mat), which you can use to call FOOOF directly from Matlab, without having to interact directly with Python.

The spectral parameterization algorithm has also been implemented in the 
[Brainstorm](https://neuroimage.usc.edu/brainstorm/Introduction) Matlab toolbox.  
You can find out more about the Brainstorm implementation in this 
[tutorial](https://neuroimage.usc.edu/brainstorm/Tutorials/Fooof).

## Workflow

Some examples for using this approach, including Matlab and Python scripts, are available here.

With this template, you should be able get running without having to write almost any Python code.

This suggested workflow is to:
- A) Pre-process data in Matlab, including creating and saving out power spectra
- B) Switch to Python, load these power spectra, explore and fit FOOOF models, then save out FOOOF results
- C) Continue analysis of FOOOF results in Matlab

In this folder you will find two examples of this workflow, one showing the outline with a single PSD, and another showing how you can update this workflow to analyze multiple power spectra.

You can also use these files as templates - just download this folder, and update the files as needed to use your own data.

Note that as outlined the Python parts are done using [Jupyter notebooks](https://jupyter.org/), which allow for interactive coding and integrated plotting, etc. Once you have checked the fitting, and settled on parameters and so on, you can instead run this part as a Python script.
