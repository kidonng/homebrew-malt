# 🍺 Malt

> Are you a Windows user? Check out my [Scoop](https://scoop-docs.now.sh/) bucket [**Sushi**](https://github.com/kidonng/sushi).

A flavored [Homebrew](https://brew.sh/) tap, providing various kinds of applications.

Spot an error? Find a place which can be improved? Or your favorite application isn't included? Feel free to [submit an issue](https://github.com/kidonng/homebrew-malt/issues/new) or make a pull request!

<!-- **NOTE**: Unlike official taps, some formulae are updated automatically via GitHub Actions to reduce maintenance burden, which _may_ cause installation issues. -->

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

<details>
<summary><strong>Fonts</strong></summary>

- [New York](https://developer.apple.com/fonts/) `#`
- [SF Compact](https://developer.apple.com/fonts/) `#`
- [SF Mono](https://developer.apple.com/fonts/) `#`
- [SF Pro](https://developer.apple.com/fonts/) `#`

</details>

<details>
<summary><strong>Hackintosh</strong></summary>

Including most tools used in [Dortania Guides](https://dortania.github.io/).

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
<summary><strong>Proxies</strong></summary>

- [clash](https://github.com/Dreamacro/clash)
- [leaf](https://github.com/eycorsican/leaf)

  Use the full name `kidonng/malt/leaf` as there's a formula of the same name in `homebrew/core`.

- [naiveproxy](https://github.com/klzgrad/naiveproxy)
- [shadowsocks-go](https://github.com/shadowsocks/go-shadowsocks2)
- [trojan-go](https://github.com/p4gefau1t/trojan-go)

</details>

<details>
<summary><strong><a href="https://qv2ray.net/">Qv2ray</a></strong></summary>

- [qv2ray-beta](https://github.com/Qv2ray/Qv2ray)
- [qv2ray-plugin-command / qv2ray-plugin-command-beta](https://github.com/Qv2ray/QvPlugin-Command)
- [qv2ray-plugin-naiveproxy / qv2ray-plugin-naiveproxy-beta](https://github.com/Qv2ray/QvPlugin-NaiveProxy)
- [qv2ray-plugin-ss](https://github.com/Qv2ray/QvPlugin-SS)
- [qv2ray-plugin-ssr](https://github.com/Qv2ray/QvPlugin-SSR)
- [qv2ray-plugin-trojan](https://github.com/Qv2ray/QvPlugin-Trojan)
- [qv2ray-plugin-trojan-go / qv2ray-plugin-trojan-go-beta](https://github.com/Qv2ray/QvPlugin-Trojan-Go)

</details>

<details>
<summary><strong>Modified</strong></summary>

Modified applications for my personal use. Install with caution.

- [exa-mod](https://github.com/ogham/exa)

  [Add config file/env var support](https://github.com/ogham/exa/pull/763).

- [youtube-dl-mod](https://youtube-dl.org/)

  [Add support for Bilibili playlist](https://github.com/ytdl-org/youtube-dl/pull/25308).

</details>

<details>
<summary><strong>Misc</strong></summary>

- [clashx-pro](https://github.com/yichengchen/clashX)
- [osu](https://osu.ppy.sh/)
- [nali](https://github.com/zu1k/nali)
- [neofetch-optional-deps](https://github.com/dylanaraps/neofetch)

  Install with `--without-imagemagick --without-screenresolution` to prevent pulling lots of dependencies.

- [unsign](https://github.com/steakknife/unsign)

  Useful for dealing with issues like [this](https://github.com/Nyx0uf/qlImageSize#limitations).

- [wrangler](https://github.com/cloudflare/wrangler)

</details>
