# WWW1-IGSSE

Anonymous ACM `sigconf` LaTeX source for the IGSSE WWW 2027 Research Track
draft.  The source frames IGSSE as a recoverable graph set-space representation
with aligned prediction, ablation, and constrained autoregressive evidence.

## Build

```bash
make pdf
```

`make pdf` uses a complete local TeX Live installation. The project also builds
with Tectonic:

```bash
tectonic --keep-logs --keep-intermediates main.tex
```

The Research Track requires `\documentclass[sigconf, anonymous, review]{acmart}`.
The official ACM `acmart` source distribution is retained under
`vendor/acm-official/`; `vendor/acmart.cls` is generated from that source.

`ALGORITHM_ALIGNMENT.md` maps the prose and pseudocode to the maintained Drawio
algorithm reference in the parent writing directory.

`EXPERIMENT_PLAN_WL123.md` defines a proposed WL-1/2/3 diagnostic. It is not a
reported result and must not be cited as evidence until it has been run.

## Evidence boundary

The paper reports only numbers frozen in the approved prediction, generation,
and ablation workbooks.  Before submission, add direct link and feature recovery
metrics, measured efficiency, and distribution-quality evidence for autoregression.
Those items are deliberately not claimed as completed results in this source.
