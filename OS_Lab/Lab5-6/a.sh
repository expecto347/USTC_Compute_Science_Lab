./Shellscript/push.sh

ssh root@vlab.ustc.edu.cn -i ~/.ssh/vlab-vm4329.pem 'bash -s' < Shellscript/make.sh

./Shellscript/pull.sh
