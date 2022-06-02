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




## Note
- During experimenting, if you change the data in an input file, delete the pickle cahe files in wl-coref
- The conversion does not add real Head - information. I think the last word in the span becomes the head. 