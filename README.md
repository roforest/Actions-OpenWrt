# Actions-OpenWrt

Build OpenWrt firware [Lean's OpenWrt](https://github.com/coolsnowwolf/lede) using GitHub Actions  

Hereby thank P3TERX for his amazing job: https://github.com/P3TERX/Actions-OpenWrt/  

Hereby thank  esirplayground  for his amazing job: https://github.com/esirplayground/AutoBuild-OpenWrt  

## Note

**1. Adapt from Lean's OpenWrt**
  - Replace luci-theme-argon with [Jerrykuku's Argon](https://github.com/jerrykuku/luci-theme-argon)
  - Add [Kiddin9's luci-theme Edge](https://github.com/kiddin9/luci-theme-edge)
  - Replace ip-list in luci-app-mwan3helper with [Gaoyifan's China-operator-ip](https://github.com/gaoyifan/china-operator-ip)
  - Add jp, kr, tw & custom ip-list
    
**2. Default package setting**
  - Build for x86_64
  - image: squashfs only
  - Package_include: aria_full; BaiduPCS-Web; diskman; mwan3&helper; netdata; openvpn; passwall_xray_only; qemu-ga; rclone
  - Package_exclude：adbyby; nlbwmon; strongswan; UnblockNeteaseMusic; wireguard; xlnetacc; zerotier

**3. Rolling back to a certain previous commit**
  - Add file ".commit" beside ".config"
  - Echo previous full commit id into ".commit"
  - Max 100 commits for roll back by default
