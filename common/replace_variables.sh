cd $(dirname -- "$0")
source ./utils.sh
activate_python_venv

python -c "import json5;import jinja2" || pip install json5 jinja2
# rm -f /opt/hiddify-manager/singbox/configs/*.json
# rm -f /opt/hiddify-manager/xray/configs/*.json
python /opt/hiddify-manager/common/jinja.py $MODE
