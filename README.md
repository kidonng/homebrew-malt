# 🍺 Malt

> Are you a Windows user? Check out my [Scoop](https://scoop-docs.now.sh/) bucket [**Sushi**](https://github.com/kidonng/sushi).

A flavored [Homebrew](https://brew.sh/) tap, providing various kinds of applications.

Spot an error? Find a place which can be improved? Or your favorite application isn't included? Feel free to [submit an issue](https://github.com/kidonng/homebrew-malt/issues/new) or make a pull request!

## Usage

```sh
brew tap kidonng/malt
brew install <formula>
# Or just
brew install kidonng/malt/<formula>
```

## Formulae

The lists are sorted alphabetically.

`#` Require root permissions (`sudo`)

`!` Require disabled System Integrity Protection (SIP)

<details>
<summary><strong>Applications</strong></summary>

- [glance-chamburr](https://github.com/chamburr/glance)

  A fork of discontinued [glance](https://formulae.brew.sh/cask/glance).

- [macforge](https://www.macenhance.com/macforge) `!`
- [vimac](https://github.com/dexterleng/vimac)

</details>


<details>
<summary><strong>Fonts</strong></summary>

- [JetBrainsMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono)

  Based on JetBrains Mono 2.225 from https://github.com/ryanoasis/nerd-fonts/pull/572.

- [Nonicons](https://github.com/yamatsum/nonicons)

</details>

<details>
<summary><strong>Hackintosh</strong></summary>

Including most tools used in [Dortania Guides](https://dortania.github.io/).

**NOTE** Most tools are scripts which doesn't have a fixed version, so using `--head` to install the latest version is recommended.

- [brigadier](https://github.com/corpnewt/brigadier)
- [cpufriendfriend](https://github.com/fewtarius/CPUFriendFriend)
- [dmidecode](https://github.com/acidanthera/dmidecode)
- [gensmbios](https://github.com/corpnewt/GenSMBIOS)
- [gfxutil](https://github.com/acidanthera/gfxutil)
- [gibmacos](https://github.com/corpnewt/gibMacOS)
- [ifrextract](https://github.com/LongSoft/Universal-IFR-Extractor)
- [ioregistryexplorer](https://github.com/khronokernel/IORegistryClone)
- [kextextractor](https://github.com/corpnewt/KextExtractor)
- [lilu-and-friends](https://github.com/corpnewt/Lilu-and-Friends)
- [mountefi](https://github.com/corpnewt/MountEFI)
- [occonfigcompare](https://github.com/corpnewt/OCConfigCompare)
- [one-key-hidpi](https://github.com/xzhih/one-key-hidpi)
- [one-key-cpufriend](https://github.com/stevezhengshiqi/one-key-cpufriend)
- [opencore-utils](https://github.com/acidanthera/OpenCorePkg)

  Utilities bundled with OpenCore such as `macserial`.

- [propertree](https://github.com/corpnewt/ProperTree)
- [ssdttime](https://github.com/corpnewt/SSDTTime)
- [uefitool](https://github.com/LongSoft/UEFITool)
- [usbmap](https://github.com/corpnewt/USBMap)

</details>

<details>
<summary><strong>npm package</strong></summary>

- [np](https://github.com/sindresorhus/np)
- [typescript-languageserver-server](https://github.com/theia-ide/typescript-language-server)
- [vscode-css-languageserver-bin](https://github.com/vscode-langservers/vscode-css-languageserver-bin)
- [vscode-html-languageserver-bin](https://github.com/vscode-langservers/vscode-html-languageserver-bin)

</details>

<details>
<summary><strong>Proxies</strong></summary>

- [naiveproxy](https://github.com/klzgrad/naiveproxy)
- [shadowsocks-go](https://github.com/shadowsocks/go-shadowsocks2)

</details>

<details>
<summary><strong><a href="https://qv2ray.net/">Qv2ray</a></strong></summary>

- [qv2ray-beta](https://github.com/Qv2ray/Qv2ray)
- [qv2ray-plugin-command / qv2ray-plugin-command-beta](https://github.com/Qv2ray/QvPlugin-Command)
- [qv2ray-plugin-naiveproxy / qv2ray-plugin-naiveproxy-beta](https://github.com/Qv2ray/QvPlugin-NaiveProxy)
- [qv2ray-plugin-ss / qv2ray-plugin-ss-beta](https://github.com/Qv2ray/QvPlugin-SS)
- [qv2ray-plugin-ssr / qv2ray-plugin-ssr-beta](https://github.com/Qv2ray/QvPlugin-SSR)
- [qv2ray-plugin-trojan / qv2ray-plugin-ssr-beta](https://github.com/Qv2ray/QvPlugin-Trojan)
- [qv2ray-plugin-trojan-go / qv2ray-plugin-trojan-go-beta](https://github.com/Qv2ray/QvPlugin-Trojan-Go)

</details>

<details>
<summary><strong>Misc</strong></summary>

- [iconsur](https://github.com/rikumi/iconsur)
- [unsign](https://github.com/steakknife/unsign)

  Useful for dealing with issues like [this](https://github.com/Nyx0uf/qlImageSize#limitations).

</details>

<details>
<summary><strong>Deprecated</strong></summary>

These formulae have been removed from this tap because there are better/maintained alternatives in other taps.

- [clash](https://github.com/Dreamacro/clash): use `homebrew/core/clash`
- [clashx-pro](https://github.com/yichengchen/clashX): use `homebrew/cask-versions/clashx-pro`
- [exa-mod](https://github.com/ogham/exa): use `homebrew/core/exa`
- [leaf](https://github.com/eycorsican/leaf): use `homebrew/core/leaf-proxy`
- [lsix](https://github.com/hackerb9/lsix): use `homebrew/core/lsix`
- [nali](https://github.com/zu1k/nali): use `homebrew/core/nali`
- [neofetch-optional-deps](https://github.com/dylanaraps/neofetch): use `homebrew/core/neofetch`
- [osu](https://osu.ppy.sh/): use `homebrew/cask-versions/osu-development`
- [trojan-go](https://github.com/p4gefau1t/trojan-go): use `homebrew/core/trojan-go`
- [vercel](https://vercel.com/): use `homebrew/core/vercel-cli`
- [viu](https://github.com/atanunq/viu): use `homebrew/core/viu`
- [wrangler](https://github.com/cloudflare/wrangler): use `homebrew/core/cloudflare-wrangler`
- [youtube-dl-mod](https://youtube-dl.org/): use `kidonng/malt/yt-dlp`
- [yt-dlp](https://github.com/yt-dlp/yt-dlp): use `homebrew/core/yt-dlp`
- [New York](https://developer.apple.com/fonts/): use `homebrew/cask-fonts`
- [SF Compact](https://developer.apple.com/fonts/): use `homebrew/cask-fonts`
- [SF Mono](https://developer.apple.com/fonts/): use `homebrew/cask-fonts`
- [SF Pro](https://developer.apple.com/fonts/): use `homebrew/cask-fonts`

</details>
