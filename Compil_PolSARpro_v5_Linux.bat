cd PolSARproSIM
echo "PolSARproSIM"
gcc -o PolSARproSim.exe PolSARproSim.c Allometrics.c Attenuation.c Branch.c c3Vector.c c33Matrix.c Complex.c Cone.c Crown.c Cylinder.c d3Vector.c d33Matrix.c Drawing.c Facet.c GraphicIMage.c GrgCyl.c Ground.c InfCyl.c JLkp.c Jnz.c Leaf.c LightingMaterials.c MonteCarlo.c Perspective.c Plane.c PolSARproSim_Direct_Ground.c PolSARproSim_Forest.c PolSARproSim_Procedures.c PolSARproSim_Progress.c PolSARproSim_Short_Vegi.c Ray.c RayCrownIntersection.c Realisation.c SarIMage.c Shuffling.c Sinc.c soilsurface.c Spheroid.c Tree.c YLkp.c -lm
gcc -o PolSARproSim_ImgSize.exe PolSARproSim_ImgSize.c -lm
gcc -o PolSARproSim_FE_Kz.exe ../lib/PolSARproLib.c PolSARproSim_FE_Kz.c -lm
cd ..

cd PolSARproSIMgr
echo "PolSARproSIMgr"
gcc -o PolSARproSim_gr.exe PolSARproSim.c Allometrics.c Attenuation.c Branch.c c3Vector.c c33Matrix.c Complex.c Cone.c Crown.c Cylinder.c d3Vector.c d33Matrix.c Drawing.c Facet.c GraphicIMage.c GrgCyl.c Ground.c InfCyl.c JLkp.c Jnz.c Leaf.c LightingMaterials.c MonteCarlo.c Perspective.c Plane.c PolSARproSim_Direct_Ground.c PolSARproSim_Forest.c PolSARproSim_Procedures.c PolSARproSim_Progress.c PolSARproSim_Short_Vegi.c Ray.c RayCrownIntersection.c Realisation.c SarIMage.c Shuffling.c Sinc.c soilsurface.c Spheroid.c Tree.c YLkp.c -lm
gcc -o PolSARproSimGR_ImgSize.exe PolSARproSimGR_ImgSize.c -lm
gcc -o PolSARproSim_FE_Kz.exe ../lib/PolSARproLib.c PolSARproSim_FE_Kz.c -lm
cd ..

cd PolSARproSIMsv
echo "PolSARproSIMsv"
gcc -o PolSARproSim_sv.exe PolSARproSim.c Allometrics.c Attenuation.c Branch.c c3Vector.c c33Matrix.c Complex.c Cone.c Crown.c Cylinder.c d3Vector.c d33Matrix.c Drawing.c Facet.c GraphicIMage.c GrgCyl.c Ground.c InfCyl.c JLkp.c Jnz.c Leaf.c LightingMaterials.c MonteCarlo.c Perspective.c Plane.c PolSARproSim_Direct_Ground.c PolSARproSim_Forest.c PolSARproSim_Procedures.c PolSARproSim_Progress.c PolSARproSim_Short_Vegi.c Ray.c RayCrownIntersection.c Realisation.c SarIMage.c Shuffling.c Sinc.c soilsurface.c Spheroid.c Tree.c YLkp.c -lm
gcc -o PolSARproSimSV_ImgSize.exe PolSARproSimSV_ImgSize.c -lm
gcc -o PolSARproSim_FE_Kz.exe ../lib/PolSARproLib.c PolSARproSim_FE_Kz.c -lm
cd ..


LIB_FILES="lib/PolSARproLib.c"
C_FILES=`find ./ \( -name "*.c" \) | egrep -v "lib" | egrep -v "PolSARproSIM" | egrep -v "PolSARproSIMgr" | egrep -v "PolSARproSIMsv"  | egrep -v "SVM"  | egrep -v "PolSARap" `
for file in $C_FILES
do
echo $file
gcc -g -Wall $LIB_FILES $file -o ${file%.c}.exe  -lm
done

chmod -R 777 *
