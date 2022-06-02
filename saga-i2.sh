module -quiet purge 
module use -a /cluster/shared/nlpl/software/eb/etc/all/ 
# module load Python/3.8.6-GCCcore-10.2.0
module load nlpl-transformers/4.5.1-gomkl-2019b-Python-3.7.4 
python3 -m venv $USERWORK/venvs/jtoml --clear 
source $USERWORK/venvs/jtoml/bin/activate
python3 -m pip install jsonlines
python3 -m pip install toml