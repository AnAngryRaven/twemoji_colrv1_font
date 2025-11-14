FONT_VERSION="17.0.2"

python3 -m venv nanoemoji
source nanoemoji/bin/activate
pip install nanoemoji
nanoemoji twemoji/assets/svg/*.svg --output_file "Twemoji_COLRv1-$FONT_VERSION.ttf" --family "Twemoji COLRv1 Font"
