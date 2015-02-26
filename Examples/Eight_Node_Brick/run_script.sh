rm *.feioutput *.pdf *~
../essi -f example_add_element_8nodebrick_von_mises_PP.fei
../essi -f example_add_element_8nodebrick_von_mises_IH.fei
../essi -f example_add_element_8nodebrick_von_mises_KH.fei
../essi -f example_add_element_8nodebrick_drucker_prager_PP.fei
../essi -f example_add_element_8nodebrick_drucker_prager_IH.fei
../essi -f example_add_element_8nodebrick_drucker_prager_KH.fei
../essi -f example_add_element_8nodebrick_SaniSand2004.fei
../essi -f example_add_element_8nodebrick_SaniSand2008.fei
python Post_Process.py
