rm *.feioutput *.pdf
../essi -f example_add_element_Elastic27NodeBrick_static.fei
../essi -f example_add_element_Elastic27NodeBrick_DRM.fei
../essi -f example_add_element_Elastic27NodeBrick_2Stages.fei
python Post_Process.py
