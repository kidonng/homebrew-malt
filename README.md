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

- [JetBrainsMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono)

  Based on JetBrains Mono 2.210 from https://github.com/ryanoasis/nerd-fonts/pull/540.

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
<summary><strong>npm package</strong></summary>

- [np](https://github.com/sindresorhus/np)
- [typescript-languageserver-server](https://github.com/theia-ide/typescript-language-server)
- [vscode-css-languageserver-bin](https://github.com/vscode-langservers/vscode-css-languageserver-bin)
- [vscode-html-languageserver-bin](https://github.com/vscode-langservers/vscode-html-languageserver-bin)

</details>

<details>
<summary><strong>Proxies</strong></summary>

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
- [qv2ray-plugin-ss / qv2ray-plugin-ss-beta](https://github.com/Qv2ray/QvPlugin-SS)
- [qv2ray-plugin-ssr / qv2ray-plugin-ssr-beta](https://github.com/Qv2ray/QvPlugin-SSR)
- [qv2ray-plugin-trojan / qv2ray-plugin-ssr-beta](https://github.com/Qv2ray/QvPlugin-Trojan)
- [qv2ray-plugin-trojan-go / qv2ray-plugin-trojan-go-beta](https://github.com/Qv2ray/QvPlugin-Trojan-Go)

</details>

<details>
<summary><strong>Misc</strong></summary>

- [vimac](https://github.com/dexterleng/vimac)
- [iconsur](https://github.com/rikumi/iconsur)
- [lsix](https://github.com/hackerb9/lsix)
- [nali](https://github.com/zu1k/nali)
- [neofetch-optional-deps](https://github.com/dylanaraps/neofetch)

  Install with `--without-imagemagick --without-screenresolution` to prevent pulling lots of dependencies.

- [unsign](https://github.com/steakknife/unsign)

  Useful for dealing with issues like [this](https://github.com/Nyx0uf/qlImageSize#limitations).

- [viu](https://github.com/atanunq/viu)
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)

</details>

<details>
<summary><strong>Deprecated</strong></summary>

These formulae have been removed from this tap because there are better/maintained alternatives in other taps.

- [clash](https://github.com/Dreamacro/clash): available in `homebrew/core`
- [clashx-pro](https://github.com/yichengchen/clashX): available in `homebrew/cask-versions`
- [exa-mod](https://github.com/ogham/exa): use `exa` instead
- [osu](https://osu.ppy.sh/): available in `homebrew/cask-versions` as `osu-development`
- [vercel](https://vercel.com/): available in `homebrew/core` as `vercel-cli`
- [wrangler](https://github.com/cloudflare/wrangler): available in `homebrew/core` as `cloudflare-wrangler`
- [youtube-dl-mod](https://youtube-dl.org/): use `yt-dlp` instead

</details>
