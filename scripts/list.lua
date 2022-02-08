m = Map("mwan3helper")
m.title	= translate("MWAN3 IPSets")

s = m:section(TypedSection, "mwan3helper")
s.addremove = false
s.anonymous = true

o = s:option(DummyValue, "gfwlist", translate("GFW列表"))
o.description = translate("GFW列表数据： IPSET 名称为 gfwlist")

o = s:option(DummyValue, "all_jp", translate("日本所有IP地址"))
o.description = translate("日本所有IP地址路由表数据： IPSET 名称为 jp")

o = s:option(DummyValue, "all_kr", translate("韩国所有IP地址"))
o.description = translate("韩国所有IP地址路由表数据： IPSET 名称为 kr")

o = s:option(DummyValue, "all_tw", translate("台湾所有IP地址"))
o.description = translate("台湾所有IP地址路由表数据： IPSET 名称为 tw")

o = s:option(DummyValue, "all_cn", translate("中国所有IP地址"))
o.description = translate("中国所有IP地址路由表数据： IPSET 名称为 cn")

o = s:option(DummyValue, "chinatelecom", translate("中国电信"))
o.description = translate("中国电信路由表数据： IPSET 名称为 ct")

o = s:option(DummyValue, "unicom_cnc", translate("中国联通/网通"))
o.description = translate("中国联通/网通路由表数据： IPSET 名称为 cnc")

o = s:option(DummyValue, "cmcc", translate("中国移动"))
o.description = translate("中国移动路由表数据： IPSET 名称为 cmcc")

o = s:option(DummyValue, "crtc", translate("中国铁通"))
o.description = translate("中国铁通路由表数据： IPSET 名称为 crtc")

o = s:option(DummyValue, "cernet", translate("中国教育网"))
o.description = translate("中国教育网路由表数据： IPSET 名称为 cernet")

o = s:option(DummyValue, "gwbn", translate("长城宽带/鹏博士"))
o.description = translate("长城宽带/鹏博士： IPSET 名称为 gwbn")

o = s:option(DummyValue, "custom", translate("自定义地址"))
o.description = translate("自定义地址： IPSET 名称为 custom")

o = s:option(DummyValue, "othernet", translate("中国其他ISP"))
o.description = translate("中国其他ISP： IPSET 名称为 othernet")

return m
