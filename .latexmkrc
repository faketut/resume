# These paths assume latexmk runs with `-cd` on a file in `resume/src/CV/`.
# That keeps your existing `\input{../DB/...}` includes working.
$out_dir = '../../build';
$pdf_dir = '../../out';

# Make builds more deterministic/CI-friendly.
$interaction = 'nonstopmode';
$halt_on_error = 1;

