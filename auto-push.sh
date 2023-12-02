#!/bin/bash   
echo "IF9fX19fXyAgICAgX18gIF9fICAgICBfX19fX18gICBfX19fX18gICAgIF9fX19fXyAgIF9fICBf
XyAgICAgX19fX19fICAgICBfXyAgX18gICAgCi9cICBfXyBcICAgL1wgXC9cIFwgICAvXF9fICBf
XCAvXCAgX18gXCAgIC9cICA9PSBcIC9cIFwvXCBcICAgL1wgIF9fX1wgICAvXCBcX1wgXCAgIApc
IFwgIF9fIFwgIFwgXCBcX1wgXCAgXC9fL1wgXC8gXCBcIFwvXCBcICBcIFwgIF8tLyBcIFwgXF9c
IFwgIFwgXF9fXyAgXCAgXCBcICBfXyBcICAKIFwgXF9cIFxfXCAgXCBcX19fX19cICAgIFwgXF9c
ICBcIFxfX19fX1wgIFwgXF9cICAgIFwgXF9fX19fXCAgXC9cX19fX19cICBcIFxfXCBcX1wgCiAg
XC9fL1wvXy8gICBcL19fX19fLyAgICAgXC9fLyAgIFwvX19fX18vICAgXC9fLyAgICAgXC9fX19f
Xy8gICBcL19fX19fLyAgIFwvXy9cL18vIA==" | base64 --decode 
echo -e "\n"
# horizontalline=$(printf '%150s\n' | tr ' ' -)
echo starting auto push...
add=$(git add .)
$add
echo enter commit Message:
read commit
echo commit Message " $commit "
while true; do
    read -p "Everthing allright? y/n " yn 
    case $yn in
        [Yy]* ) git commit -m "$commit"; git push; break;;
        [Nn]* ) echo autopush canceled by user!; exit;;
        * ) echo "Please answer yes or no.";;
    esac
done




