cd .. 
if [ -f "BEM.m" ]; then
    echo ""
else
    echo "Please run this script in the same directory as the rest of the files"
    exit
fi

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew install gfortran
brew install xquartz


mv ./xfoil-mac/xfoil.m ./xfoil/xfoil.m

cd ./xfoil-mac

sh setupxfoil.sh

