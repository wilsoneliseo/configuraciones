alias n='nano'
alias delete='rm -f'
alias rm='rm -i'

# Oracle 11g, puerto por default:localhost:10080
alias oracle-iniciar='sudo service oracle-xe start'
alias oracle-estado='sudo service oracle-xe status'
alias oracle-parar='sudo service oracle-xe stop'
alias oracle-reiniciar='sudo service oracle-xe restart'

#-----ini-para optimizar el comando cd
# notar que !$ en cd es igual a new/directory
# $ mkdir -p new/directory
# $ cd !$
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias .........="cd ../../../../../../../.."
alias ..........="cd ../../../../../../../../.."
alias ...........="cd ../../../../../../../../../.."
alias ............="cd ../../../../../../../../../../.."
alias .............="cd ../../../../../../../../../../../.."
alias pu=pushd
alias po=popd
#-----end-para optimizar el comando cd
