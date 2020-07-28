#dotfile隔离
function wd
    if [ -d ~/workdir ]
        cd ~/workdir
    else
        mkdir -p ~/workdir
        cd ~/workdir
    end
    alias up 'cd ..'
    alias back "cd $OLDPWD"
end
wd



