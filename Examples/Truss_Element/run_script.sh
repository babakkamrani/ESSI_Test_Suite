rm *.feioutput *.pdf
../essi -f example_add_element_truss_static_loading.fei
../essi -f example_add_element_truss_eigen.fei
../essi -f example_add_element_truss_dynamic.fei
../essi -f example_add_element_truss_two_Stages.fei
python Post_Process.py
