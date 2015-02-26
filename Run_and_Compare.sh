#!/bin/sh

#This script is writtent to run the essi's test suite ...
#Babak Kamrani
#

tolerance=0.00000000001	#Acceptable tolerance for the float number output ...

#Making link to the essi executable
cd ./Examples/
rm essi
ln -s /home/babak/fei-seq/2014-11-13/essi_feb_21_2014_/bin/essi essi #address of the essi executable ,,,
cd ../

#Delete the old log and put the some information about the system in the line
rm Run_Test_Suite.log
echo "                                     				ESSI TEST SUITE RUN LOG " >> Run_Test_Suite.log
echo "-------------------------------------------------------------------------------------------------------------------------------------------------" >> Run_Test_Suite.log
lsb_release --a >> Run_Test_Suite.log
hostname >> Run_Test_Suite.log
echo "User: $USER" >> Run_Test_Suite.log
date -u >> Run_Test_Suite.log
echo "-------------------------------------------------------------------------------------------------------------------------------------------------" >> Run_Test_Suite.log


# Running the example(s) in /Examples/8_Nodes_Brick_Contact/
#----------------------------------------------------------------------------------------------------------------------------------------------------
cd ./Examples/8_Nodes_Brick_Contact/
ln -s 
./run_script.sh > temp_buffer
rm temp_buffer
cd ../.. 

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/8_Nodes_Brick_Contact/8NodesSolid_SurroundedByContacts.h5.feioutput ./Original_Database/8_Nodes_Brick_Contact/8NodesSolid_SurroundedByContacts.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/8_Nodes_Brick_Contact/1-8NodeBricks+ContactsAround.fei							Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/8_Nodes_Brick_Contact/1-8NodeBricks+ContactsAround.fei							NOT Passed" >> Run_Test_Suite.log
fi
#----------------------------------------------------------------------------------------------------------------------------------------------------


# Running the example(s) in /Examples/20_Node_Brick/
#----------------------------------------------------------------------------------------------------------------------------------------------------
cd ./Examples/20_Node_Brick/
./run_script.sh > temp_buffer
rm temp_buffer
cd ../.. 

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/20_Node_Brick/20nodebrick_self_weight.h5.feioutput ./Original_Database/20_Node_Brick/20nodebrick_self_weight.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/20_Node_Brick/20_Node_Brick_Static.fei									Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/20_Node_Brick/20_Node_Brick_Static.fei									NOT Passed" >> Run_Test_Suite.log
fi
#----------------------------------------------------------------------------------------------------------------------------------------------------


# Running the example(s) in /Examples/27_Nodes_Brick_9_dof_Beam/
#----------------------------------------------------------------------------------------------------------------------------------------------------
cd ./Examples/20_Node_Brick/
./run_script.sh > temp_buffer
rm temp_buffer
cd ../.. 

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/27_Nodes_Brick_9_dof_Beam/27nodebrick_DRM.h5.feioutput ./Original_Database/27_Nodes_Brick_9_dof_Beam/27nodebrick_DRM.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/27_Nodes_Brick_9_dof_Beam/example_add_element_Elastic27NodeBrick_DRM.fei					Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/27_Nodes_Brick_9_dof_Beam/example_add_element_Elastic27NodeBrick_DRM.fei					NOT Passed" >> Run_Test_Suite.log
fi
#----------------------------------------------------------------------------------------------------------------------------------------------------


# Running the example(s) in /Examples/27_Nodes_Brick-Contact/
#----------------------------------------------------------------------------------------------------------------------------------------------------
cd ./Examples/27_Nodes_Brick-Contact/
./run_script.sh > temp_buffer
rm temp_buffer
cd ../.. 

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/27_Nodes_Brick-Contact/1SolidsContact+FullSideContact_UniformLoad.h5.feioutput ./Original_Database/27_Nodes_Brick-Contact/1SolidsContact+FullSideContact_UniformLoad.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/27_Nodes_Brick-Contact/Example.fei										Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/27_Nodes_Brick-Contact/Example.fei										NOT Passed" >> Run_Test_Suite.log
fi
#----------------------------------------------------------------------------------------------------------------------------------------------------



# Running the example(s) in /Examples/Beam_Element/
#----------------------------------------------------------------------------------------------------------------------------------------------------
cd ./Examples/Beam_Element/
./run_script.sh > temp_buffer
rm temp_buffer
cd ../.. 

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Beam_Element/beam_Shake.h5.feioutput ./Original_Database/Beam_Element/beam_Shake.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Beam_Element/example_add_element_beam_dynamic.fei								Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Beam_Element/example_add_element_beam_dynamic.fei								NOT Passed" >> Run_Test_Suite.log
fi


rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Beam_Element/beam_Static.h5.feioutput ./Original_Database/Beam_Element/beam_Static.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Beam_Element/example_add_element_beam_static.fei								Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Beam_Element/example_add_element_beam_static.fei								NOT Passed" >> Run_Test_Suite.log
fi



rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Beam_Element/beam_Static_Stage.h5.feioutput ./Original_Database/Beam_Element/beam_Static_Stage.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Beam_Element/example_add_element_beam_two_stages.fei - static stage					Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Beam_Element/example_add_element_beam_two_stages.fei - static stage					NOT Passed" >> Run_Test_Suite.log
fi



rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Beam_Element/beam_Shake_Stage.h5.feioutput ./Original_Database/Beam_Element/beam_Shake_Stage.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Beam_Element/example_add_element_beam_two_stages.fei -  shake stage					Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Beam_Element/example_add_element_beam_two_stages.fei -  shake stage					NOT Passed" >> Run_Test_Suite.log
fi
#----------------------------------------------------------------------------------------------------------------------------------------------------



# Running the example(s) in /Examples/Eight_Node_Brick/
#----------------------------------------------------------------------------------------------------------------------------------------------------
cd ./Examples/Eight_Node_Brick/
./run_script.sh > temp_buffer
rm temp_buffer
cd ../.. 

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_DPIH_confinement.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_DPIH_confinement.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_drucker_prager_IH.fei confinement stage			Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_drucker_prager_IH.fei confinement stage			NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_DPIH_shear.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_DPIH_shear.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_drucker_prager_IH.fei shear stage				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_drucker_prager_IH.fei confinement stage			NOT Passed" >> Run_Test_Suite.log
fi




rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_DPKH_confinement.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_DPKH_confinement.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 		
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_drucker_prager_KH.fei confinement stage			Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_drucker_prager_KH.fei confinement stage			NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_DPKH_shear.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_DPKH_shear.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_drucker_prager_KH.fei shear stage				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_drucker_prager_KH.fei shear stage				NOT Passed" >> Run_Test_Suite.log
fi



rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_DPPP_confinement.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_DPPP_confinement.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_drucker_prager_PP.fei confinement stage			Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_drucker_prager_PP.fei confinement stage			NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_DPPP_shear.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_DPPP_shear.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_drucker_prager_PP.fei shear stage				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_drucker_prager_PP.fei shear stage				NOT Passed" >> Run_Test_Suite.log
fi




rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_SS2004_confinement.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_SS2004_confinement.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_SaniSand2004.fei confinement stage				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_SaniSand2004.fei confinement stage				NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_SS2004_shear.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_SS2004_shear.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_SaniSand2004.fei shear stage				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_SaniSand2004.fei shear stage				NOT Passed" >> Run_Test_Suite.log
fi



rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_SS2008_confinement.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_SS2008_confinement.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_SaniSand2008.fei confinement stage				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_SaniSand2008.fei confinement stage	NOT 			Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_SS2008_shear.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_SS2008_shear.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_SaniSand2008.fei shear stage				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_SaniSand2008.fei shear stage				NOT Passed" >> Run_Test_Suite.log
fi



rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_VMIH_confinement.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_VMIH_confinement.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_von_mises_IH.fei confinement stage				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_von_mises_IH.fei confinement stage				NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_VMIH_shear.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_VMIH_shear.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_von_mises_IH.fei shear stage				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_von_mises_IH.fei shear stage				NOT Passed" >> Run_Test_Suite.log
fi



rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_VMKH_confinement.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_VMKH_confinement.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_von_mises_KH.fei confinement stage				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_von_mises_KH.fei confinement stage				NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_VMKH_shear.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_VMKH_shear.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_von_mises_KH.fei shear stage				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_von_mises_KH.fei shear stage				NOT Passed" >> Run_Test_Suite.log
fi



rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_VMPP_confinement.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_VMPP_confinement.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_von_mises_PP.fei confinement stage				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_von_mises_PP.fei confinement stage				NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick/Eight_Node_Brick_Triaxial_VMPP_shear.h5.feioutput ./Original_Database/Eight_Node_Brick/Eight_Node_Brick_Triaxial_VMPP_shear.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_von_mises_PP.fei shear stage				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick/example_add_element_8nodebrick_von_mises_PP.fei shear stage				NOT Passed" >> Run_Test_Suite.log
fi
#----------------------------------------------------------------------------------------------------------------------------------------------------



# Running the example(s) in /Examples/Eight_Node_Brick_Accelerated/
#----------------------------------------------------------------------------------------------------------------------------------------------------
cd ./Examples/Eight_Node_Brick_Accelerated/
./run_script.sh > temp_buffer
rm temp_buffer
cd ../.. 

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_DPIH_confinement.h5.feioutput ./Original_Database/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_DPIH_confinement.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_drucker_prager_IH.fei confinement stage	Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_drucker_prager_IH.fei confinement stage	NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_DPIH_shear.h5.feioutput ./Original_Database/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_DPIH_shear.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_drucker_prager_IH.fei shear stage		Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_drucker_prager_IH.fei shear stage		NOT Passed" >> Run_Test_Suite.log
fi




rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_DPKH_confinement.h5.feioutput ./Original_Database/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_DPKH_confinement.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_drucker_prager_KH.fei confinement stage	Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_drucker_prager_KH.fei confinement stage	NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_DPKH_shear.h5.feioutput ./Original_Database/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_DPKH_shear.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_drucker_prager_KH.fei shear stage		Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_drucker_prager_KH.fei shear stage		NOT Passed" >> Run_Test_Suite.log
fi



rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_DPPP_confinement.h5.feioutput ./Original_Database/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_DPPP_confinement.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_drucker_prager_PP.fei confinement stage	Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_drucker_prager_PP.fei confinement stage	NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_DPPP_shear.h5.feioutput ./Original_Database/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_DPPP_shear.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_drucker_prager_PP.fei shear stage		Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_drucker_prager_PP.fei shear stage		NOT Passed" >> Run_Test_Suite.log
fi



rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_VMIH_confinement.h5.feioutput ./Original_Database/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_VMIH_confinement.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_von_mises_IH.fei confinement stage		Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_von_mises_IH.fei confinement stage		NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_VMIH_shear.h5.feioutput ./Original_Database/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_VMIH_shear.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_von_mises_IH.fei shear stage			Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_von_mises_IH.fei shear stage			NOT Passed" >> Run_Test_Suite.log
fi



rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_VMKH_confinement.h5.feioutput ./Original_Database/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_VMKH_confinement.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_von_mises_KH.fei confinement stage		Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_von_mises_KH.fei confinement stage		NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_VMKH_shear.h5.feioutput ./Original_Database/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_VMKH_shear.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_von_mises_KH.fei shear stage			Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_von_mises_KH.fei shear stage			NOT Passed" >> Run_Test_Suite.log
fi



rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_VMPP_confinement.h5.feioutput ./Original_Database/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_VMPP_confinement.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_von_mises_PP.fei confinement stage		Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_von_mises_PP.fei confinement stage		NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_VMPP_shear.h5.feioutput ./Original_Database/Eight_Node_Brick_Accelerated/Eight_Node_Brick_Triaxial_Accelerated_VMPP_shear.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_von_mises_PP.fei shear stage			Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Eight_Node_Brick_Accelerated/example_add_element_8nodebrick_von_mises_PP.fei shear stage			NOT Passed" >> Run_Test_Suite.log
fi
#----------------------------------------------------------------------------------------------------------------------------------------------------



# Running the example(s) in /Examples/Shell_Elements/
#----------------------------------------------------------------------------------------------------------------------------------------------------
cd ./Examples/Shell_Elements/
ln -s 
./run_script.sh > temp_buffer
rm temp_buffer
cd ../.. 

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Shell_Elements/Shell_Elements_Outof_Plane.h5.feioutput ./Original_Database/Shell_Elements/Shell_Elements_Outof_Plane.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Shell_Elements/example_add_shell_elements_static_outof_plane.fei						Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Shell_Elements/example_add_shell_elements_static_outof_plane.fei						NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Shell_Elements/Shell_Elements_In_Plane.h5.feioutput ./Original_Database/Shell_Elements/Shell_Elements_In_Plane.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Shell_Elements/example_add_shell_elements_static_in_plane.fei						Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Shell_Elements/example_add_shell_elements_static_in_plane.fei						NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Shell_Elements/Shell_Elements_pathtimeseries_force.h5.feioutput ./Original_Database/Shell_Elements/Shell_Elements_pathtimeseries_force.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Shell_Elements/example_add_shell_elements_dynamic_outof_plane.fei						Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Shell_Elements/example_add_shell_elements_dynamic_outof_plane.fei						NOT Passed" >> Run_Test_Suite.log
fi


compare=$(diff ./Examples/Shell_Elements/Shell_Elements_Periods.feioutput ./Original_Database/Shell_Elements/Shell_Elements_Periods.feioutput)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Shell_Elements/example_add_shell_elements_eigen.fei periods							Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Shell_Elements/example_add_shell_elements_eigen.fei periods							NOT Passed" >> Run_Test_Suite.log
fi

compare=$(diff ./Examples/Shell_ElementsShell_Elements_EigenMode1.feioutput ./Original_Database/Shell_Elements/Shell_Elements_EigenMode1.feioutput)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Shell_Elements/example_add_shell_elements_eigen.fei eigen mode 1						Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Shell_Elements/example_add_shell_elements_eigen.fei eigen mode 1						NOT Passed" >> Run_Test_Suite.log
fi

compare=$(diff ./Examples/Shell_Elements_EigenValue.feioutput ./Original_Database/Shell_Elements/Shell_Elements_EigenValue.feioutput)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Shell_Elements/example_add_shell_elements_eigen.fei eigen value						Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Shell_Elements/example_add_shell_elements_eigen.fei eigen value						NOT Passed" >> Run_Test_Suite.log
fi

compare=$(diff ./Examples/Shell_Elements_Frequencies.feioutput ./Original_Database/Shell_Elements/Shell_Elements_Frequencies.feioutput)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Shell_Elements/example_add_shell_elements_eigen.fei Frequencies						Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Shell_Elements/example_add_shell_elements_eigen.fei Frequencies						NOT Passed" >> Run_Test_Suite.log
fi




#----------------------------------------------------------------------------------------------------------------------------------------------------



# Running the example(s) in /Examples/Truss_Element/
#----------------------------------------------------------------------------------------------------------------------------------------------------
cd ./Examples/Truss_Element/
ln -s 
./run_script.sh > temp_buffer
rm temp_buffer
cd ../.. 

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Truss_Element/truss_Static.h5.feioutput ./Original_Database/Truss_Element/truss_Static.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Truss_Element/example_add_element_truss_static_loading.fei							Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Truss_Element/example_add_element_truss_static_loading.fei	NOT 						Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Truss_Element/truss_Shake.h5.feioutput ./Original_Database/Truss_Element/truss_Shake.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Truss_Element/example_add_element_truss_pathtimeseries_force.fei						Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Truss_Element/example_add_element_truss_pathtimeseries_force.fei						NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Truss_Element/truss_Static_Stage.h5.feioutput ./Original_Database/Truss_Element/truss_Static_Stage.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Truss_Element/example_add_element_truss_two_Stages.fei static stage					Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Truss_Element/example_add_element_truss_two_Stages.fei dynamic stage					NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/Truss_Element/truss_Shake_Stage.h5.feioutput ./Original_Database/Truss_Element/truss_Shake_Stage.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/Truss_Element/example_add_element_truss_two_Stages.fei dynamic stage					Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Truss_Element/example_add_element_truss_two_Stages.fei dynamic stage					NOT Passed" >> Run_Test_Suite.log
fi
#----------------------------------------------------------------------------------------------------------------------------------------------------



# Running the example(s) in /Examples/TwentySeven_Node_Brick_Elastic/
#----------------------------------------------------------------------------------------------------------------------------------------------------
cd ./Examples/TwentySeven_Node_Brick_Elastic/
ln -s 
./run_script.sh > temp_buffer
rm temp_buffer
cd ../.. 

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/TwentySeven_Node_Brick_Elastic/27nodebrick_Static_SelfWeight_stage.h5.feioutput ./Original_Database/TwentySeven_Node_Brick_Elastic/27nodebrick_Static_SelfWeight_stage.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/TwentySeven_Node_Brick_Elastic/example_add_element_Elastic27NodeBrick_static.fei				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/Truss_Element/example_add_element_truss_two_Stages.fei dynamic stage					NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/TwentySeven_Node_Brick_Elastic/27nodebrick_Static_SelfWeight.h5.feioutput ./Original_Database/TwentySeven_Node_Brick_Elastic/27nodebrick_Static_SelfWeight.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/TwentySeven_Node_Brick_Elastic/example_add_element_Elastic27NodeBrick_DRM.fei				Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/TwentySeven_Node_Brick_Elastic/example_add_element_Elastic27NodeBrick_DRM.fei				NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/TwentySeven_Node_Brick_Elastic/27nodebrick_Static_SelfWeight_stage.h5.feioutput ./Original_Database/TwentySeven_Node_Brick_Elastic/27nodebrick_Static_SelfWeight_stage.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/TwentySeven_Node_Brick_Elastic/example_add_element_Elastic27NodeBrick_2Stages.fei static stage		Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/TwentySeven_Node_Brick_Elastic/example_add_element_Elastic27NodeBrick_2Stages.fei static stage		NOT Passed" >> Run_Test_Suite.log
fi

rm temp.txt
h5diff  -v --relative=$tolerance ./Examples/TwentySeven_Node_Brick_Elastic/27nodebrick_DRM_stage.h5.feioutput ./Original_Database/TwentySeven_Node_Brick_Elastic/27nodebrick_DRM_stage.h5.feioutput /Model > temp.txt

compare=$(diff temp.txt diff_out.txt)

if [ "$compare" = "" ]; then 
	echo "Test:	./Examples/TwentySeven_Node_Brick_Elastic/example_add_element_Elastic27NodeBrick_2Stages.fei dynamic stage		Passed" >> Run_Test_Suite.log
else
	echo "Test:	./Examples/TwentySeven_Node_Brick_Elastic/example_add_element_Elastic27NodeBrick_2Stages.fei dynamic stage		NOT Passed" >> Run_Test_Suite.log
fi
#----------------------------------------------------------------------------------------------------------------------------------------------------