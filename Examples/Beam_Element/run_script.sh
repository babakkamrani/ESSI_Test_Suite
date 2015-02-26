rm *.feioutput *.pdf
../essi -f example_add_element_beam_static.fei
../essi -f example_add_element_beam_eigen.fei
../essi -f example_add_element_beam_dynamic.fei
../essi -f example_add_element_beam_two_stages.fei
python Post_Process.py
