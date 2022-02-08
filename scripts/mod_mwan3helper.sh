# 1.Replace ip-list in luci-app-mwan3helper with https://github.com/gaoyifan/china-operator-ip
# 2.Add jp,kr,tw iplist

MWN3_PATH="$PWD/package/lean/luci-app-mwan3helper"
cd $MWN3_PATH/root/etc/mwan3helper
cp $SCRIPTS_PATH/geniplist.sh geniplist.sh && chmod a+x geniplist.sh && ./geniplist.sh
touch custom.txt
sed -i -e '/cn[^c]/{s/.*/&\n&\n&\n&/g}' -e '/other/{s/.*/&\n&/g}' $MWN3_PATH/root/etc/init.d/mwan3helper
sed -i -e '0,/cn/s/cn/jp/g' -e '0,/cn/s/cn/kr/g' -e '0,/cn/s/cn/tw/g' -e '0,/othernet/s/othernet/custom/g' $MWN3_PATH/root/etc/init.d/mwan3helper
cp $SCRIPTS_PATH/list.lua $MWN3_PATH/luasrc/model/cbi/mwan3helper/list.lua
