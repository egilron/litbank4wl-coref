# Train WL-coref on Litbank data
Not sofisticated, but it runs on my hardware.
- Get your virtual environment ready, e.g. through the rquirements.txt in wl-coref
- Run setup.sh to clone the resources
- Run `litbank2jsonlines.py`
- Run `python litbank_to_heads.py`

This process has established the litbank folder with jsonlines data, and copied the config file litbank_config.toml into the wl-coref folder
You can now use these data for training:
move into the wl-coref and run: 

`python run.py train bert --config-file litbank_config.toml`
`python run.py eval bert --config-file litbank_config.toml`




## Note
- During experimenting, if you change the data in an input file, delete the pickle cache files in wl-coref
- The conversion does not add real Head - information. I think the last word in the span becomes the head. 
- On Saga HPC I use saga-i3.sh after activating interactive shell on accel 

## Eval:
````
test: | WL:  loss: 0.15565, f1: 0.57776, p: 0.62245, r: 0.53905 | SL:  sa: 0.97595, f1: 0.56883, p: 0.61636, r: 0.52810: 100% 15/15 [00:17<00:00,  1.18s/docs]
```