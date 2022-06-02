module purge 
# module load Python/3.8.6-GCCcore-10.2.0
module load CUDA/10.1.243-GCC-8.3.0 
python3 -m venv $USERWORK/venvs/wl --clear 
source $USERWORK/venvs/wl/bin/activate
python3 -m pip install -r /cluster/work/users/egilron/litbank4wl-coref/wl-coref/requirements.txt