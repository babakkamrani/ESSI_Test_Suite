rm *.feioutput *.pdf
../essi -f example_add_element_Elastic27NodeBrick_DRM.fei
python Post_Process.py
