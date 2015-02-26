rm *.feioutput *.pdf
../essi -f example_add_element_8nodebrick_accelerated_von_mises_PP.fei
../essi -f example_add_element_8nodebrick_accelerated_von_mises_IH.fei
../essi -f example_add_element_8nodebrick_accelerated_von_mises_KH.fei
../essi -f example_add_element_8nodebrick_accelerated_Drucker_Prager_PP.fei
../essi -f example_add_element_8nodebrick_accelerated_Drucker_Prager_IH.fei
../essi -f example_add_element_8nodebrick_accelerated_Drucker_Prager_KH.fei
python Post_Process.py