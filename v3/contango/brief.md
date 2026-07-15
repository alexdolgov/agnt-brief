# Agentic Audit Brief: Contango

## Export Authority

- Production state: **published scope**
- Raw selected rows: 114 across 6 audit(s)
- Eligible audit results: 9 (6 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Contango (`contango`)
- Website: [https://contango.xyz](https://contango.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, gnosis, linea, optimism, polygon, scroll
- Contract surface: 751 unique implementations (752 raw deployments)
- Coverage basis: 6/9 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $94,907,979.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Contango. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, gnosis, linea, optimism, polygon, scroll. Structural roles: 5 supporting, 4 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: supporting (5), core (4)
- Contract kinds: contract (9)
- Detected standards: erc165 (5), accesscontrol (4), erc1967proxy (3), ownable (2), pausable (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 717 contracts are derived from known codebases. 717 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...c78ba3`, chain 1)
- UnnamedContract (`0x02c3ea...1793ee`, chain 1)
- UnnamedContract (`0x037a5e...5ac198`, chain 1)
- UnnamedContract (`0x057835...78fc6d`, chain 1)
- UnnamedContract (`0x070601...b4f74a`, chain 1)
- UnnamedContract (`0x0a656b...64ce0f`, chain 1)
- UnnamedContract (`0x0c9a3d...9ee383`, chain 1)
- UnnamedContract (`0x0d52d0...d7f8a3`, chain 1)
- UnnamedContract (`0x0e466f...1e76e9`, chain 1)
- UnnamedContract (`0x0f8816...d0a4db`, chain 1)
- UnnamedContract (`0x11c4e7...1b10ae`, chain 1)
- UnnamedContract (`0x17878a...abb857`, chain 1)
- UnnamedContract (`0x1b0e76...885a40`, chain 1)
- UnnamedContract (`0x1f96a1...98a3f9`, chain 1)
- UnnamedContract (`0x2206c3...f0710b`, chain 1)
- UnnamedContract (`0x255baf...ab98fc`, chain 1)
- UnnamedContract (`0x26bb01...0bd70e`, chain 1)
- UnnamedContract (`0x2752c0...0d9ce6`, chain 1)
- UnnamedContract (`0x2f39d2...d94e9e`, chain 1)
- UnnamedContract (`0x2fbf39...e37412`, chain 1)
- UnnamedContract (`0x319300...51f289`, chain 1)
- UnnamedContract (`0x322046...7307ed`, chain 1)
- UnnamedContract (`0x331243...33cc1c`, chain 1)
- UnnamedContract (`0x35e6c8...65b246`, chain 1)
- UnnamedContract (`0x3b849f...2d31b8`, chain 1)
- UnnamedContract (`0x3bfbc7...3a3843`, chain 1)
- UnnamedContract (`0x3d9819...c9cd3b`, chain 1)
- UnnamedContract (`0x3f37c7...12f36b`, chain 1)
- UnnamedContract (`0x4370d3...ff5b34`, chain 1)
- UnnamedContract (`0x4a5bfa...eede2a`, chain 1)
- UnnamedContract (`0x4c4156...d3da4f`, chain 1)
- UnnamedContract (`0x4d4875...3b2bf6`, chain 1)
- UnnamedContract (`0x4f5717...ea95ed`, chain 1)
- UnnamedContract (`0x5089e6...d44da7`, chain 1)
- UnnamedContract (`0x523021...35008d`, chain 1)
- UnnamedContract (`0x52cf30...3d1696`, chain 1)
- UnnamedContract (`0x534556...cd60bd`, chain 1)
- UnnamedContract (`0x56e01d...c92482`, chain 1)
- UnnamedContract (`0x57ac18...40f907`, chain 1)
- UnnamedContract (`0x58f24b...6c5480`, chain 1)
- UnnamedContract (`0x5bdeb2...c965bd`, chain 1)
- UnnamedContract (`0x5be89b...5a73a2`, chain 1)
- UnnamedContract (`0x5c1e26...5d5688`, chain 1)
- UnnamedContract (`0x5c5228...148717`, chain 1)
- UnnamedContract (`0x5e0250...ccd1e9`, chain 1)
- UnnamedContract (`0x5e49e2...aabe67`, chain 1)
- UnnamedContract (`0x5f4ec3...5b8419`, chain 1)
- UnnamedContract (`0x627ddd...012e65`, chain 1)
- UnnamedContract (`0x63dc4c...eac9c6`, chain 1)
- UnnamedContract (`0x6a2871...07bbd3`, chain 1)
- UnnamedContract (`0x6b210f...d97d85`, chain 1)
- UnnamedContract (`0x6c420b...35ea5f`, chain 1)
- UnnamedContract (`0x6cae28...c0c24e`, chain 1)
- UnnamedContract (`0x70fdf7...4409ab`, chain 1)
- UnnamedContract (`0x75cb5b...41e9b6`, chain 1)
- UnnamedContract (`0x773844...e57979`, chain 1)
- UnnamedContract (`0x79b237...516276`, chain 1)
- UnnamedContract (`0x7d9706...5d9c1d`, chain 1)
- UnnamedContract (`0x8164cc...80bfcb`, chain 1)
- UnnamedContract (`0x82181f...003781`, chain 1)
- UnnamedContract (`0x88e735...39868f`, chain 1)
- UnnamedContract (`0x8cadf8...ef5f90`, chain 1)
- UnnamedContract (`0x8cb701...0cb397`, chain 1)
- UnnamedContract (`0x8f9bfe...251f50`, chain 1)
- UnnamedContract (`0x912105...af8e34`, chain 1)
- UnnamedContract (`0x938909...41d683`, chain 1)
- UnnamedContract (`0x938e23...c51d2b`, chain 1)
- UnnamedContract (`0x987e0a...562393`, chain 1)
- UnnamedContract (`0x9a4d71...0e6d59`, chain 1)
- UnnamedContract (`0x9bbd78...f07339`, chain 1)
- UnnamedContract (`0x9df960...f0ebb7`, chain 1)
- UnnamedContract (`0x9e092c...a4917e`, chain 1)
- UnnamedContract (`0xa0b869...06eb48`, chain 1)
- UnnamedContract (`0xa0cb4e...09588f`, chain 1)
- UnnamedContract (`0xa216fc...bfab06`, chain 1)
- UnnamedContract (`0xa48cc0...bda531`, chain 1)
- UnnamedContract (`0xa4ac9b...43850e`, chain 1)
- UnnamedContract (`0xa64f0d...8e3cb3`, chain 1)
- UnnamedContract (`0xa6a147...4f969f`, chain 1)
- UnnamedContract (`0xa6ea08...68ef01`, chain 1)
- UnnamedContract (`0xa91d16...6f7bdf`, chain 1)
- UnnamedContract (`0xab5155...e641bd`, chain 1)
- UnnamedContract (`0xac72e6...aae0c2`, chain 1)
- UnnamedContract (`0xad7281...a35ee9`, chain 1)
- UnnamedContract (`0xb21a09...0aea90`, chain 1)
- UnnamedContract (`0xb2da5c...ed2d1e`, chain 1)
- UnnamedContract (`0xb519ab...7f23c3`, chain 1)
- UnnamedContract (`0xb53c1a...15c8c5`, chain 1)
- UnnamedContract (`0xb7d0ab...a5d0b5`, chain 1)
- UnnamedContract (`0xb8c082...53dc4d`, chain 1)
- UnnamedContract (`0xb9021d...d14b77`, chain 1)
- UnnamedContract (`0xbbbbbb...eeffcb`, chain 1)
- UnnamedContract (`0xbc2fdc...98725b`, chain 1)
- UnnamedContract (`0xbca306...b3a6f2`, chain 1)
- UnnamedContract (`0xbe781d...36038a`, chain 1)
- UnnamedContract (`0xc01218...6e6eb2`, chain 1)
- UnnamedContract (`0xc02aaa...756cc2`, chain 1)
- UnnamedContract (`0xc0939a...46a90d`, chain 1)
- UnnamedContract (`0xc2462f...58fd78`, chain 1)
- UnnamedContract (`0xc64d6a...401113`, chain 1)
- UnnamedContract (`0xc68cb3...cd5828`, chain 1)
- UnnamedContract (`0xc77c12...505d8a`, chain 1)
- UnnamedContract (`0xcda64d...f8803d`, chain 1)
- UnnamedContract (`0xcdfc3b...6aaac9`, chain 1)
- UnnamedContract (`0xceed1c...75bca9`, chain 1)
- UnnamedContract (`0xcfbf33...04b16d`, chain 1)
- UnnamedContract (`0xd3007d...8771ac`, chain 1)
- UnnamedContract (`0xd76460...1f074e`, chain 1)
- UnnamedContract (`0xd98342...4b76b3`, chain 1)
- UnnamedContract (`0xdaba83...e127f5`, chain 1)
- UnnamedContract (`0xdbbb1c...2576a6`, chain 1)
- UnnamedContract (`0xdbd020...428bd5`, chain 1)
- UnnamedContract (`0xded923...60b385`, chain 1)
- UnnamedContract (`0xdf6b6e...1c1f70`, chain 1)
- UnnamedContract (`0xdfea38...4c7899`, chain 1)
- UnnamedContract (`0xe03835...1bb72a`, chain 1)
- UnnamedContract (`0xe16cfa...0c7ece`, chain 1)
- UnnamedContract (`0xe1f9e0...557007`, chain 1)
- UnnamedContract (`0xe3c3c5...ddff00`, chain 1)
- UnnamedContract (`0xe4044d...9ed29e`, chain 1)
- UnnamedContract (`0xe46031...360b6a`, chain 1)
- UnnamedContract (`0xe6e744...6493dc`, chain 1)
- UnnamedContract (`0xea7e1f...ab8da9`, chain 1)
- UnnamedContract (`0xeaa6a2...379fac`, chain 1)
- UnnamedContract (`0xeba440...befcda`, chain 1)
- UnnamedContract (`0xebd8fe...f06e9a`, chain 1)
- UnnamedContract (`0xeecfb9...401aaf`, chain 1)
- UnnamedContract (`0xef2a2c...5d8f73`, chain 1)
- UnnamedContract (`0xf028c2...a5e8bb`, chain 1)
- UnnamedContract (`0xf4dcc1...f5ad4b`, chain 1)
- UnnamedContract (`0xf52d21...c0728a`, chain 1)
- UnnamedContract (`0xf63f41...e20445`, chain 1)
- UnnamedContract (`0xf7d504...6422ac`, chain 1)
- UnnamedContract (`0xfb8f0b...c16950`, chain 1)
- UnnamedContract (`0xfd856e...f75fcf`, chain 1)
- UnnamedContract (`0xfee97c...08c760`, chain 1)
- UnnamedContract (`0x000000...c78ba3`, chain 10)
- UnnamedContract (`0x037a5e...5ac198`, chain 10)
- UnnamedContract (`0x0aeff8...93e27f`, chain 10)
- UnnamedContract (`0x0b2c63...97ff85`, chain 10)
- UnnamedContract (`0x13e3ee...7e08c5`, chain 10)
- UnnamedContract (`0x168f59...25d813`, chain 10)
- UnnamedContract (`0x1ebf59...083f5f`, chain 10)
- UnnamedContract (`0x2014dc...9d9184`, chain 10)
- UnnamedContract (`0x28b621...5e91cd`, chain 10)
- UnnamedContract (`0x2c8ec5...d57a9d`, chain 10)
- UnnamedContract (`0x35e6c8...65b246`, chain 10)
- UnnamedContract (`0x3e2c04...00adae`, chain 10)
- UnnamedContract (`0x3f37c7...12f36b`, chain 10)
- UnnamedContract (`0x420000...000006`, chain 10)
- UnnamedContract (`0x443ea0...c3c2e9`, chain 10)
- UnnamedContract (`0x45886d...0cd37d`, chain 10)
- UnnamedContract (`0x48adfb...e84b7f`, chain 10)
- UnnamedContract (`0x498036...e13d9d`, chain 10)
- UnnamedContract (`0x4b0f25...8a5c11`, chain 10)
- UnnamedContract (`0x4d7ef6...c4a683`, chain 10)
- UnnamedContract (`0x4da83b...e79105`, chain 10)
- UnnamedContract (`0x4e6049...57eac7`, chain 10)
- UnnamedContract (`0x4ee92e...530e61`, chain 10)
- UnnamedContract (`0x5089e6...d44da7`, chain 10)
- UnnamedContract (`0x527c69...de23e1`, chain 10)
- UnnamedContract (`0x5598bb...51a0a9`, chain 10)
- UnnamedContract (`0x5a0a52...ad69b7`, chain 10)
- UnnamedContract (`0x5bdeb2...c965bd`, chain 10)
- UnnamedContract (`0x601583...8c4a33`, chain 10)
- UnnamedContract (`0x60c94f...04305d`, chain 10)
- UnnamedContract (`0x60cf09...751c58`, chain 10)
- UnnamedContract (`0x6407ee...cec14f`, chain 10)
- UnnamedContract (`0x6962ba...4e1438`, chain 10)
- UnnamedContract (`0x6a0406...5e04ad`, chain 10)
- UnnamedContract (`0x6b210f...d97d85`, chain 10)
- UnnamedContract (`0x6c38da...752f39`, chain 10)
- UnnamedContract (`0x6cae28...c0c24e`, chain 10)
- UnnamedContract (`0x72a6bf...50f172`, chain 10)
- UnnamedContract (`0x76b849...5dfe76`, chain 10)
- UnnamedContract (`0x853978...0bff4c`, chain 10)
- UnnamedContract (`0x88d267...145dc4`, chain 10)
- UnnamedContract (`0x92340f...aa5036`, chain 10)
- UnnamedContract (`0x929ec6...5b473e`, chain 10)
- UnnamedContract (`0x9546f6...5a9995`, chain 10)
- UnnamedContract (`0x969f1b...c34471`, chain 10)
- UnnamedContract (`0x9ccb6b...13d5cd`, chain 10)
- UnnamedContract (`0x9e092c...a4917e`, chain 10)
- UnnamedContract (`0xa02f0a...5660fc`, chain 10)
- UnnamedContract (`0xa4649b...a8e0db`, chain 10)
- UnnamedContract (`0xa64f0d...8e3cb3`, chain 10)
- UnnamedContract (`0xa6a147...4f969f`, chain 10)
- UnnamedContract (`0xa88594...2296ae`, chain 10)
- UnnamedContract (`0xa97684...ab3cdb`, chain 10)
- UnnamedContract (`0xaa8f3b...907a33`, chain 10)
- UnnamedContract (`0xab5155...e641bd`, chain 10)
- UnnamedContract (`0xac72e6...aae0c2`, chain 10)
- UnnamedContract (`0xaeb62e...6f027e`, chain 10)
- UnnamedContract (`0xaf255d...a0bb5b`, chain 10)
- UnnamedContract (`0xb519ab...7f23c3`, chain 10)
- UnnamedContract (`0xb6f557...b80e35`, chain 10)
- UnnamedContract (`0xb8b1f5...b0e6c9`, chain 10)
- UnnamedContract (`0xb9021d...d14b77`, chain 10)
- UnnamedContract (`0xba1222...6bf2c8`, chain 10)
- UnnamedContract (`0xbb685c...1b93f8`, chain 10)
- UnnamedContract (`0xbd1ba7...b2e031`, chain 10)
- UnnamedContract (`0xc0939a...46a90d`, chain 10)
- UnnamedContract (`0xc2462f...58fd78`, chain 10)
- UnnamedContract (`0xca7fe1...27ea7f`, chain 10)
- UnnamedContract (`0xca889f...c511b9`, chain 10)
- UnnamedContract (`0xcaa84a...281de0`, chain 10)
- UnnamedContract (`0xcce7df...917130`, chain 10)
- UnnamedContract (`0xcd11d4...c94b1c`, chain 10)
- UnnamedContract (`0xcf13cd...6238d6`, chain 10)
- UnnamedContract (`0xd3de08...414fed`, chain 10)
- UnnamedContract (`0xd52c40...a0a768`, chain 10)
- UnnamedContract (`0xdaba83...e127f5`, chain 10)
- UnnamedContract (`0xdbd703...c99df2`, chain 10)
- UnnamedContract (`0xdde5dc...e1c6d6`, chain 10)
- UnnamedContract (`0xe03835...1bb72a`, chain 10)
- UnnamedContract (`0xe10111...fcd4d7`, chain 10)
- UnnamedContract (`0xe42f7a...4cbaf7`, chain 10)
- UnnamedContract (`0xe50229...d1af10`, chain 10)
- UnnamedContract (`0xe5cc32...4dad2a`, chain 10)
- UnnamedContract (`0xe64c32...67a1ff`, chain 10)
- UnnamedContract (`0xe8d430...c76feb`, chain 10)
- UnnamedContract (`0xebb27d...d2e24c`, chain 10)
- UnnamedContract (`0xeeb626...ed258a`, chain 10)
- UnnamedContract (`0xf444d6...77d756`, chain 10)
- UnnamedContract (`0xf52d21...c0728a`, chain 10)
- UnnamedContract (`0xfee97c...08c760`, chain 10)
- UnnamedContract (`0xffd51f...788b75`, chain 10)
- UnnamedContract (`0x000000...c78ba3`, chain 56)
- UnnamedContract (`0x037a5e...5ac198`, chain 56)
- UnnamedContract (`0x0567f2...d42aee`, chain 56)
- UnnamedContract (`0x14f8e5...0c06c3`, chain 56)
- UnnamedContract (`0x163046...5081bc`, chain 56)
- UnnamedContract (`0x35e6c8...65b246`, chain 56)
- UnnamedContract (`0x39a4c4...caf687`, chain 56)
- UnnamedContract (`0x3f37c7...12f36b`, chain 56)
- UnnamedContract (`0x5089e6...d44da7`, chain 56)
- UnnamedContract (`0x5a0a52...ad69b7`, chain 56)
- UnnamedContract (`0x5bdeb2...c965bd`, chain 56)
- UnnamedContract (`0x6b210f...d97d85`, chain 56)
- UnnamedContract (`0x6cae28...c0c24e`, chain 56)
- UnnamedContract (`0x78f8bd...2820e0`, chain 56)
- UnnamedContract (`0x7c357c...2f2ccb`, chain 56)
- UnnamedContract (`0x885edb...fc4074`, chain 56)
- UnnamedContract (`0x8d82f0...21d5f7`, chain 56)
- UnnamedContract (`0xa1b131...610fa7`, chain 56)
- UnnamedContract (`0xa64f0d...8e3cb3`, chain 56)
- UnnamedContract (`0xa6a147...4f969f`, chain 56)
- UnnamedContract (`0xac72e6...aae0c2`, chain 56)
- UnnamedContract (`0xb199ac...52b546`, chain 56)
- UnnamedContract (`0xb9021d...d14b77`, chain 56)
- UnnamedContract (`0xbac248...3e4b57`, chain 56)
- UnnamedContract (`0xbb4cdb...bc095c`, chain 56)
- UnnamedContract (`0xc0939a...46a90d`, chain 56)
- UnnamedContract (`0xc0d5f5...ed8e5c`, chain 56)
- UnnamedContract (`0xc206c2...160ab4`, chain 56)
- UnnamedContract (`0xc2462f...58fd78`, chain 56)
- UnnamedContract (`0xc24e2b...2fb92d`, chain 56)
- UnnamedContract (`0xca5d37...64ec36`, chain 56)
- UnnamedContract (`0xcb8e5a...3c78cb`, chain 56)
- UnnamedContract (`0xdaba83...e127f5`, chain 56)
- UnnamedContract (`0xe03835...1bb72a`, chain 56)
- UnnamedContract (`0xecfa57...960c12`, chain 56)
- UnnamedContract (`0xf01d55...3b9a28`, chain 56)
- UnnamedContract (`0xf3ca71...96e086`, chain 56)
- UnnamedContract (`0xf7e650...2816b8`, chain 56)
- UnnamedContract (`0xfee97c...08c760`, chain 56)
- UnnamedContract (`0xff75b6...62ba6d`, chain 56)
- UnnamedContract (`0x000000...c78ba3`, chain 100)
- UnnamedContract (`0x037a5e...5ac198`, chain 100)
- UnnamedContract (`0x0792e5...9d80f6`, chain 100)
- UnnamedContract (`0x11d730...bc260c`, chain 100)
- UnnamedContract (`0x137a19...3d92db`, chain 100)
- UnnamedContract (`0x2e1ab5...2249b1`, chain 100)
- UnnamedContract (`0x34f1be...aa7491`, chain 100)
- UnnamedContract (`0x3547e9...5f9487`, chain 100)
- UnnamedContract (`0x35e6c8...65b246`, chain 100)
- UnnamedContract (`0x363047...8fd58e`, chain 100)
- UnnamedContract (`0x36616c...0b2132`, chain 100)
- UnnamedContract (`0x3673c2...bbb87f`, chain 100)
- UnnamedContract (`0x36a711...1183f3`, chain 100)
- UnnamedContract (`0x39a4c4...caf687`, chain 100)
- UnnamedContract (`0x3e00c0...f33bbc`, chain 100)
- UnnamedContract (`0x3f37c7...12f36b`, chain 100)
- UnnamedContract (`0x4d4875...3b2bf6`, chain 100)
- UnnamedContract (`0x5089e6...d44da7`, chain 100)
- UnnamedContract (`0x5bdeb2...c965bd`, chain 100)
- UnnamedContract (`0x60059b...7faf58`, chain 100)
- UnnamedContract (`0x6174e4...cdcd3e`, chain 100)
- UnnamedContract (`0x678df3...5a82f8`, chain 100)
- UnnamedContract (`0x6b210f...d97d85`, chain 100)
- UnnamedContract (`0x6cae28...c0c24e`, chain 100)
- UnnamedContract (`0x790f47...43037a`, chain 100)
- UnnamedContract (`0x885edb...fc4074`, chain 100)
- UnnamedContract (`0x8caad3...c4581d`, chain 100)
- UnnamedContract (`0x8cb701...0cb397`, chain 100)
- UnnamedContract (`0x918df4...8371d9`, chain 100)
- UnnamedContract (`0x97f4ce...cc9391`, chain 100)
- UnnamedContract (`0x98e6bc...20c30c`, chain 100)
- UnnamedContract (`0x9e092c...a4917e`, chain 100)
- UnnamedContract (`0xa0baed...a3857b`, chain 100)
- UnnamedContract (`0xa64f0d...8e3cb3`, chain 100)
- UnnamedContract (`0xa6a147...4f969f`, chain 100)
- UnnamedContract (`0xa98dac...eaba6d`, chain 100)
- UnnamedContract (`0xab5155...e641bd`, chain 100)
- UnnamedContract (`0xac72e6...aae0c2`, chain 100)
- UnnamedContract (`0xad36c8...02a335`, chain 100)
- UnnamedContract (`0xad4f91...e2f20d`, chain 100)
- UnnamedContract (`0xb159f0...ca6d70`, chain 100)
- UnnamedContract (`0xb9021d...d14b77`, chain 100)
- UnnamedContract (`0xba1222...6bf2c8`, chain 100)
- UnnamedContract (`0xbb3dd3...7f0305`, chain 100)
- UnnamedContract (`0xc0939a...46a90d`, chain 100)
- UnnamedContract (`0xc2462f...58fd78`, chain 100)
- UnnamedContract (`0xc4759d...1f690e`, chain 100)
- UnnamedContract (`0xc851e6...ad2763`, chain 100)
- UnnamedContract (`0xcb8e5a...3c78cb`, chain 100)
- UnnamedContract (`0xcc2970...d399e9`, chain 100)
- UnnamedContract (`0xdaba83...e127f5`, chain 100)
- UnnamedContract (`0xe03835...1bb72a`, chain 100)
- UnnamedContract (`0xe67293...b51329`, chain 100)
- UnnamedContract (`0xe91d15...63a97d`, chain 100)
- UnnamedContract (`0xeaa886...455560`, chain 100)
- UnnamedContract (`0xed9b2c...5aa3de`, chain 100)
- UnnamedContract (`0xee9881...048bd3`, chain 100)
- UnnamedContract (`0xf028c2...a5e8bb`, chain 100)
- UnnamedContract (`0xfa255f...1a5d86`, chain 100)
- UnnamedContract (`0xfee97c...08c760`, chain 100)
- UnnamedContract (`0xff7b4d...95d21e`, chain 100)
- UnnamedContract (`0x000000...c78ba3`, chain 137)
- UnnamedContract (`0x037a5e...5ac198`, chain 137)
- UnnamedContract (`0x0792f9...69aa86`, chain 137)
- UnnamedContract (`0x0d500b...df1270`, chain 137)
- UnnamedContract (`0x0ebb57...6d0091`, chain 137)
- UnnamedContract (`0x21c526...6f5e11`, chain 137)
- UnnamedContract (`0x253cfc...f07311`, chain 137)
- UnnamedContract (`0x2a8758...b1bde6`, chain 137)
- UnnamedContract (`0x319300...51f289`, chain 137)
- UnnamedContract (`0x33dfd5...985434`, chain 137)
- UnnamedContract (`0x35e6c8...65b246`, chain 137)
- UnnamedContract (`0x3f37c7...12f36b`, chain 137)
- UnnamedContract (`0x42353e...aceade`, chain 137)
- UnnamedContract (`0x43470c...12d74f`, chain 137)
- UnnamedContract (`0x459396...31e581`, chain 137)
- UnnamedContract (`0x5089e6...d44da7`, chain 137)
- UnnamedContract (`0x5598bb...51a0a9`, chain 137)
- UnnamedContract (`0x5bdeb2...c965bd`, chain 137)
- UnnamedContract (`0x6b210f...d97d85`, chain 137)
- UnnamedContract (`0x6cae28...c0c24e`, chain 137)
- UnnamedContract (`0x7551b5...71d46d`, chain 137)
- UnnamedContract (`0x790f47...43037a`, chain 137)
- UnnamedContract (`0x87a1c2...c8929c`, chain 137)
- UnnamedContract (`0x885edb...fc4074`, chain 137)
- UnnamedContract (`0x929ec6...5b473e`, chain 137)
- UnnamedContract (`0x947626...d63e85`, chain 137)
- UnnamedContract (`0x96e919...db71b4`, chain 137)
- UnnamedContract (`0x9d1179...880b4a`, chain 137)
- UnnamedContract (`0x9e092c...a4917e`, chain 137)
- UnnamedContract (`0xa046a8...1ae64c`, chain 137)
- UnnamedContract (`0xa64f0d...8e3cb3`, chain 137)
- UnnamedContract (`0xa6a147...4f969f`, chain 137)
- UnnamedContract (`0xa97684...ab3cdb`, chain 137)
- UnnamedContract (`0xaa6525...15ebd3`, chain 137)
- UnnamedContract (`0xab5155...e641bd`, chain 137)
- UnnamedContract (`0xab5946...862de0`, chain 137)
- UnnamedContract (`0xac72e6...aae0c2`, chain 137)
- UnnamedContract (`0xadf19c...b03fad`, chain 137)
- UnnamedContract (`0xb76c05...f5f050`, chain 137)
- UnnamedContract (`0xb9021d...d14b77`, chain 137)
- UnnamedContract (`0xba1222...6bf2c8`, chain 137)
- UnnamedContract (`0xc0939a...46a90d`, chain 137)
- UnnamedContract (`0xc2462f...58fd78`, chain 137)
- UnnamedContract (`0xc3e92f...870b8f`, chain 137)
- UnnamedContract (`0xc48512...fa5e0e`, chain 137)
- UnnamedContract (`0xc99807...5ea692`, chain 137)
- UnnamedContract (`0xcafd6a...12949e`, chain 137)
- UnnamedContract (`0xd05e3e...684744`, chain 137)
- UnnamedContract (`0xdaba83...e127f5`, chain 137)
- UnnamedContract (`0xdeb33d...33f7ae`, chain 137)
- UnnamedContract (`0xe03835...1bb72a`, chain 137)
- UnnamedContract (`0xebd8fe...f06e9a`, chain 137)
- UnnamedContract (`0xf72bf3...3e524c`, chain 137)
- UnnamedContract (`0xfbc8e7...24bc07`, chain 137)
- UnnamedContract (`0xfe189d...9eeba0`, chain 137)
- UnnamedContract (`0xfee97c...08c760`, chain 137)
- UnnamedContract (`0x000000...c78ba3`, chain 8453)
- UnnamedContract (`0x00b98a...d2bdd4`, chain 8453)
- UnnamedContract (`0x031919...f7e9b1`, chain 8453)
- UnnamedContract (`0x037a5e...5ac198`, chain 8453)
- UnnamedContract (`0x03823c...bccef0`, chain 8453)
- UnnamedContract (`0x07d2dc...1b9eaf`, chain 8453)
- UnnamedContract (`0x0a1198...ee100b`, chain 8453)
- UnnamedContract (`0x0aeff8...93e27f`, chain 8453)
- UnnamedContract (`0x0e7bc0...57228c`, chain 8453)
- UnnamedContract (`0x108182...1fdd93`, chain 8453)
- UnnamedContract (`0x1154fc...32854d`, chain 8453)
- UnnamedContract (`0x12158f...abaa9d`, chain 8453)
- UnnamedContract (`0x123964...00a6b1`, chain 8453)
- UnnamedContract (`0x180ace...56a5af`, chain 8453)
- UnnamedContract (`0x196d31...e123fd`, chain 8453)
- UnnamedContract (`0x1b51b8...1a7951`, chain 8453)
- UnnamedContract (`0x1db246...2245f0`, chain 8453)
- UnnamedContract (`0x1fed46...b0abc2`, chain 8453)
- UnnamedContract (`0x2014dc...9d9184`, chain 8453)
- UnnamedContract (`0x315b28...d7a97b`, chain 8453)
- UnnamedContract (`0x35e6c8...65b246`, chain 8453)
- UnnamedContract (`0x360423...f37f51`, chain 8453)
- UnnamedContract (`0x394c7a...bccb5c`, chain 8453)
- UnnamedContract (`0x3be95d...131fe3`, chain 8453)
- UnnamedContract (`0x3f37c7...12f36b`, chain 8453)
- UnnamedContract (`0x40ecbf...121430`, chain 8453)
- UnnamedContract (`0x420000...000006`, chain 8453)
- UnnamedContract (`0x4d7ef6...c4a683`, chain 8453)
- UnnamedContract (`0x4da83b...e79105`, chain 8453)
- UnnamedContract (`0x4ee92e...530e61`, chain 8453)
- UnnamedContract (`0x5089e6...d44da7`, chain 8453)
- UnnamedContract (`0x5213ab...a31007`, chain 8453)
- UnnamedContract (`0x554eca...cee3c6`, chain 8453)
- UnnamedContract (`0x580737...f4911b`, chain 8453)
- UnnamedContract (`0x5bdeb2...c965bd`, chain 8453)
- UnnamedContract (`0x5d4d40...eebd16`, chain 8453)
- UnnamedContract (`0x5d6d3c...5e8f99`, chain 8453)
- UnnamedContract (`0x6207ec...426207`, chain 8453)
- UnnamedContract (`0x655a1d...3cfc3d`, chain 8453)
- UnnamedContract (`0x68a488...dbed58`, chain 8453)
- UnnamedContract (`0x69b6e5...1d762b`, chain 8453)
- UnnamedContract (`0x6b210f...d97d85`, chain 8453)
- UnnamedContract (`0x6c38da...752f39`, chain 8453)
- UnnamedContract (`0x6cae28...c0c24e`, chain 8453)
- UnnamedContract (`0x71041d...16bb70`, chain 8453)
- UnnamedContract (`0x73a7a4...082cae`, chain 8453)
- UnnamedContract (`0x74dd7c...a89b06`, chain 8453)
- UnnamedContract (`0x76b849...5dfe76`, chain 8453)
- UnnamedContract (`0x7c832b...0017a4`, chain 8453)
- UnnamedContract (`0x803e5d...aee35f`, chain 8453)
- UnnamedContract (`0x833589...a02913`, chain 8453)
- UnnamedContract (`0x877f46...78efb2`, chain 8453)
- UnnamedContract (`0x89d0f3...52a657`, chain 8453)
- UnnamedContract (`0x8caad3...c4581d`, chain 8453)
- UnnamedContract (`0x8fb394...ceb6cd`, chain 8453)
- UnnamedContract (`0x92340f...aa5036`, chain 8453)
- UnnamedContract (`0x94695a...1762f9`, chain 8453)
- UnnamedContract (`0x9c17b1...06fa7e`, chain 8453)
- UnnamedContract (`0x9dda78...5ba428`, chain 8453)
- UnnamedContract (`0xa17e15...8515df`, chain 8453)
- UnnamedContract (`0xa64f0d...8e3cb3`, chain 8453)
- UnnamedContract (`0xa6a147...4f969f`, chain 8453)
- UnnamedContract (`0xa6e01b...4eec77`, chain 8453)
- UnnamedContract (`0xa88594...2296ae`, chain 8453)
- UnnamedContract (`0xab5155...e641bd`, chain 8453)
- UnnamedContract (`0xac72e6...aae0c2`, chain 8453)
- UnnamedContract (`0xae0735...4c15c2`, chain 8453)
- UnnamedContract (`0xb519ab...7f23c3`, chain 8453)
- UnnamedContract (`0xb9021d...d14b77`, chain 8453)
- UnnamedContract (`0xba1222...6bf2c8`, chain 8453)
- UnnamedContract (`0xba59f9...4f8be9`, chain 8453)
- UnnamedContract (`0xbbbbbb...eeffcb`, chain 8453)
- UnnamedContract (`0xbcf05e...51ac1e`, chain 8453)
- UnnamedContract (`0xc0939a...46a90d`, chain 8453)
- UnnamedContract (`0xc2462f...58fd78`, chain 8453)
- UnnamedContract (`0xc27534...0ca465`, chain 8453)
- UnnamedContract (`0xc4f675...0f162e`, chain 8453)
- UnnamedContract (`0xc8f25b...34cd95`, chain 8453)
- UnnamedContract (`0xcaa84a...281de0`, chain 8453)
- UnnamedContract (`0xcafd6a...12949e`, chain 8453)
- UnnamedContract (`0xcd11d4...c94b1c`, chain 8453)
- UnnamedContract (`0xd09532...eb8f52`, chain 8453)
- UnnamedContract (`0xd1e452...119905`, chain 8453)
- UnnamedContract (`0xd4e709...055713`, chain 8453)
- UnnamedContract (`0xd53440...4fb2f4`, chain 8453)
- UnnamedContract (`0xd5c145...98c297`, chain 8453)
- UnnamedContract (`0xdaba83...e127f5`, chain 8453)
- UnnamedContract (`0xdcfc5b...882b3e`, chain 8453)
- UnnamedContract (`0xe03835...1bb72a`, chain 8453)
- UnnamedContract (`0xe20fcb...7ad64d`, chain 8453)
- UnnamedContract (`0xe3809a...f9996c`, chain 8453)
- UnnamedContract (`0xe66044...27d2a5`, chain 8453)
- UnnamedContract (`0xe6e10d...02536e`, chain 8453)
- UnnamedContract (`0xe7f252...a0c541`, chain 8453)
- UnnamedContract (`0xe89d07...c16c0f`, chain 8453)
- UnnamedContract (`0xeb42de...4d3396`, chain 8453)
- UnnamedContract (`0xebb27d...d2e24c`, chain 8453)
- UnnamedContract (`0xf3861a...9b49dd`, chain 8453)
- UnnamedContract (`0xf52d21...c0728a`, chain 8453)
- UnnamedContract (`0xf549b5...0606c6`, chain 8453)
- UnnamedContract (`0xf7a710...1977e5`, chain 8453)
- UnnamedContract (`0xf9cc4f...1e1f44`, chain 8453)
- UnnamedContract (`0xfbb21d...3ef26c`, chain 8453)
- UnnamedContract (`0xfee97c...08c760`, chain 8453)
- UnnamedContract (`0xff8ade...03493d`, chain 8453)
- UnnamedContract (`0xffa3f8...c8352f`, chain 8453)
- UnnamedContract (`0x000000...c78ba3`, chain 42161)
- UnnamedContract (`0x037a5e...5ac198`, chain 42161)
- UnnamedContract (`0x07b94e...15be47`, chain 42161)
- UnnamedContract (`0x080ba2...7b37f5`, chain 42161)
- UnnamedContract (`0x091d52...5330e4`, chain 42161)
- UnnamedContract (`0x0f744f...da02ad`, chain 42161)
- UnnamedContract (`0x0f9104...f32c77`, chain 42161)
- UnnamedContract (`0x10b71c...e1bcaa`, chain 42161)
- UnnamedContract (`0x171c28...04a161`, chain 42161)
- UnnamedContract (`0x2876ed...6ab63a`, chain 42161)
- UnnamedContract (`0x293009...58275b`, chain 42161)
- UnnamedContract (`0x312437...0c1bff`, chain 42161)
- UnnamedContract (`0x319300...51f289`, chain 42161)
- UnnamedContract (`0x35e6c8...65b246`, chain 42161)
- UnnamedContract (`0x39662f...3c0271`, chain 42161)
- UnnamedContract (`0x3a669c...292f9e`, chain 42161)
- UnnamedContract (`0x3f37c7...12f36b`, chain 42161)
- UnnamedContract (`0x465704...d270cd`, chain 42161)
- UnnamedContract (`0x49bb23...851a8d`, chain 42161)
- UnnamedContract (`0x4d2540...7cec15`, chain 42161)
- UnnamedContract (`0x5089e6...d44da7`, chain 42161)
- UnnamedContract (`0x54f15c...8a9a4c`, chain 42161)
- UnnamedContract (`0x56d4b0...fdd733`, chain 42161)
- UnnamedContract (`0x596b0c...94a2cc`, chain 42161)
- UnnamedContract (`0x5bdeb2...c965bd`, chain 42161)
- UnnamedContract (`0x5d4d40...eebd16`, chain 42161)
- UnnamedContract (`0x5e2adc...4e3a03`, chain 42161)
- UnnamedContract (`0x5e8820...016d0d`, chain 42161)
- UnnamedContract (`0x639fe6...3ba612`, chain 42161)
- UnnamedContract (`0x643178...06ac28`, chain 42161)
- UnnamedContract (`0x652bcf...b189ad`, chain 42161)
- UnnamedContract (`0x6603ee...43d2cd`, chain 42161)
- UnnamedContract (`0x6a2871...07bbd3`, chain 42161)
- UnnamedContract (`0x6b210f...d97d85`, chain 42161)
- UnnamedContract (`0x6bd780...409072`, chain 42161)
- UnnamedContract (`0x6cae28...c0c24e`, chain 42161)
- UnnamedContract (`0x71ffbc...233a0a`, chain 42161)
- UnnamedContract (`0x755123...796b9d`, chain 42161)
- UnnamedContract (`0x77648d...3bea3d`, chain 42161)
- UnnamedContract (`0x7e4ec0...991462`, chain 42161)
- UnnamedContract (`0x82af49...3fbab1`, chain 42161)
- UnnamedContract (`0x885edb...fc4074`, chain 42161)
- UnnamedContract (`0x88730d...9f7fae`, chain 42161)
- UnnamedContract (`0x8a3eb5...d0ccb5`, chain 42161)
- UnnamedContract (`0x8a4688...00baa3`, chain 42161)
- UnnamedContract (`0x8cfd87...8d59be`, chain 42161)
- UnnamedContract (`0x912ce5...9e6548`, chain 42161)
- UnnamedContract (`0x929ec6...5b473e`, chain 42161)
- UnnamedContract (`0x9e092c...a4917e`, chain 42161)
- UnnamedContract (`0xa3c4cc...dde693`, chain 42161)
- UnnamedContract (`0xa64f0d...8e3cb3`, chain 42161)
- UnnamedContract (`0xa6a147...4f969f`, chain 42161)
- UnnamedContract (`0xa71cab...127458`, chain 42161)
- UnnamedContract (`0xa86dd9...057576`, chain 42161)
- UnnamedContract (`0xa8897b...29bf0d`, chain 42161)
- UnnamedContract (`0xa97684...ab3cdb`, chain 42161)
- UnnamedContract (`0xab5b13...4a3dea`, chain 42161)
- UnnamedContract (`0xab5ba6...1859a9`, chain 42161)
- UnnamedContract (`0xac72e6...aae0c2`, chain 42161)
- UnnamedContract (`0xb2a824...a548d6`, chain 42161)
- UnnamedContract (`0xb9021d...d14b77`, chain 42161)
- UnnamedContract (`0xba1222...6bf2c8`, chain 42161)
- UnnamedContract (`0xbe5c6a...e9aac5`, chain 42161)
- UnnamedContract (`0xc0939a...46a90d`, chain 42161)
- UnnamedContract (`0xc09b89...b00a51`, chain 42161)
- UnnamedContract (`0xc1ea6a...819da7`, chain 42161)
- UnnamedContract (`0xc2462f...58fd78`, chain 42161)
- UnnamedContract (`0xc3e944...cd8d37`, chain 42161)
- UnnamedContract (`0xc6f754...94a068`, chain 42161)
- UnnamedContract (`0xc9d66f...6bbc47`, chain 42161)
- UnnamedContract (`0xd28136...350314`, chain 42161)
- UnnamedContract (`0xd52ceb...6d3d77`, chain 42161)
- UnnamedContract (`0xd652e8...95e667`, chain 42161)
- UnnamedContract (`0xd6b435...286c8f`, chain 42161)
- UnnamedContract (`0xdaba83...e127f5`, chain 42161)
- UnnamedContract (`0xdcc905...86a4e3`, chain 42161)
- UnnamedContract (`0xdda410...11dfa1`, chain 42161)
- UnnamedContract (`0xe03835...1bb72a`, chain 42161)
- UnnamedContract (`0xe6267a...84d838`, chain 42161)
- UnnamedContract (`0xe7c53f...1e5884`, chain 42161)
- UnnamedContract (`0xe86537...eb2759`, chain 42161)
- UnnamedContract (`0xe9054d...c143be`, chain 42161)
- UnnamedContract (`0xe9cca6...ecd3cc`, chain 42161)
- UnnamedContract (`0xeb80a9...c51c4c`, chain 42161)
- UnnamedContract (`0xee7025...deface`, chain 42161)
- UnnamedContract (`0xeeb626...ed258a`, chain 42161)
- UnnamedContract (`0xf4a485...31b618`, chain 42161)
- UnnamedContract (`0xf69460...db953c`, chain 42161)
- UnnamedContract (`0xfee97c...08c760`, chain 42161)
- UnnamedContract (`0xff970a...db5cc8`, chain 42161)
- UnnamedContract (`0x000000...c78ba3`, chain 43114)
- UnnamedContract (`0x037a5e...5ac198`, chain 43114)
- UnnamedContract (`0x14f8e5...0c06c3`, chain 43114)
- UnnamedContract (`0x163046...5081bc`, chain 43114)
- UnnamedContract (`0x34b7fa...6a6574`, chain 43114)
- UnnamedContract (`0x35e6c8...65b246`, chain 43114)
- UnnamedContract (`0x38b527...d76a79`, chain 43114)
- UnnamedContract (`0x39a4c4...caf687`, chain 43114)
- UnnamedContract (`0x3c17c3...c213f1`, chain 43114)
- UnnamedContract (`0x3f37c7...12f36b`, chain 43114)
- UnnamedContract (`0x4d7ef6...c4a683`, chain 43114)
- UnnamedContract (`0x5089e6...d44da7`, chain 43114)
- UnnamedContract (`0x5598bb...51a0a9`, chain 43114)
- UnnamedContract (`0x5a0a52...ad69b7`, chain 43114)
- UnnamedContract (`0x5bdeb2...c965bd`, chain 43114)
- UnnamedContract (`0x694149...e2ae4a`, chain 43114)
- UnnamedContract (`0x6c38da...752f39`, chain 43114)
- UnnamedContract (`0x6cae28...c0c24e`, chain 43114)
- UnnamedContract (`0x929ec6...5b473e`, chain 43114)
- UnnamedContract (`0x95bb96...17d6c8`, chain 43114)
- UnnamedContract (`0x976b3d...9003b0`, chain 43114)
- UnnamedContract (`0xa64f0d...8e3cb3`, chain 43114)
- UnnamedContract (`0xa6a147...4f969f`, chain 43114)
- UnnamedContract (`0xa97684...ab3cdb`, chain 43114)
- UnnamedContract (`0xac72e6...aae0c2`, chain 43114)
- UnnamedContract (`0xb31f66...fd66c7`, chain 43114)
- UnnamedContract (`0xb5122b...af5252`, chain 43114)
- UnnamedContract (`0xb9021d...d14b77`, chain 43114)
- UnnamedContract (`0xbac248...3e4b57`, chain 43114)
- UnnamedContract (`0xc0939a...46a90d`, chain 43114)
- UnnamedContract (`0xc0d5f5...ed8e5c`, chain 43114)
- UnnamedContract (`0xc2462f...58fd78`, chain 43114)
- UnnamedContract (`0xd915a2...341945`, chain 43114)
- UnnamedContract (`0xd93187...7464ee`, chain 43114)
- UnnamedContract (`0xdaba83...e127f5`, chain 43114)
- UnnamedContract (`0xe03835...1bb72a`, chain 43114)
- UnnamedContract (`0xe7c3ea...20f80e`, chain 43114)
- UnnamedContract (`0xec5b0c...dc7fd1`, chain 43114)
- UnnamedContract (`0xecfa57...960c12`, chain 43114)
- UnnamedContract (`0xfee97c...08c760`, chain 43114)
- UnnamedContract (`0x000000...c78ba3`, chain 59144)
- UnnamedContract (`0x01fe7d...8c1702`, chain 59144)
- UnnamedContract (`0x037a5e...5ac198`, chain 59144)
- UnnamedContract (`0x06cf0b...8bc3d7`, chain 59144)
- UnnamedContract (`0x12158f...abaa9d`, chain 59144)
- UnnamedContract (`0x28f689...00b945`, chain 59144)
- UnnamedContract (`0x30bfea...daea9b`, chain 59144)
- UnnamedContract (`0x35e6c8...65b246`, chain 59144)
- UnnamedContract (`0x394c7a...bccb5c`, chain 59144)
- UnnamedContract (`0x3c6cd9...3354da`, chain 59144)
- UnnamedContract (`0x3f1a89...73d7da`, chain 59144)
- UnnamedContract (`0x3f37c7...12f36b`, chain 59144)
- UnnamedContract (`0x49282a...8a97fe`, chain 59144)
- UnnamedContract (`0x5089e6...d44da7`, chain 59144)
- UnnamedContract (`0x5bdeb2...c965bd`, chain 59144)
- UnnamedContract (`0x656dba...12f854`, chain 59144)
- UnnamedContract (`0x6cae28...c0c24e`, chain 59144)
- UnnamedContract (`0x81b318...91b2d2`, chain 59144)
- UnnamedContract (`0x885edb...fc4074`, chain 59144)
- UnnamedContract (`0x8dacc3...077ed2`, chain 59144)
- UnnamedContract (`0xa1b131...610fa7`, chain 59144)
- UnnamedContract (`0xa48cc0...bda531`, chain 59144)
- UnnamedContract (`0xa64f0d...8e3cb3`, chain 59144)
- UnnamedContract (`0xa6a147...4f969f`, chain 59144)
- UnnamedContract (`0xac72e6...aae0c2`, chain 59144)
- UnnamedContract (`0xb9021d...d14b77`, chain 59144)
- UnnamedContract (`0xbb44a8...ede564`, chain 59144)
- UnnamedContract (`0xc0939a...46a90d`, chain 59144)
- UnnamedContract (`0xc2462f...58fd78`, chain 59144)
- UnnamedContract (`0xc44827...d200eb`, chain 59144)
- UnnamedContract (`0xc52bd1...233e98`, chain 59144)
- UnnamedContract (`0xca5d37...64ec36`, chain 59144)
- UnnamedContract (`0xd3c41a...c73e2b`, chain 59144)
- UnnamedContract (`0xd9cafb...a18c1a`, chain 59144)
- UnnamedContract (`0xdaba83...e127f5`, chain 59144)
- UnnamedContract (`0xe03835...1bb72a`, chain 59144)
- UnnamedContract (`0xe5d7c2...5cf34f`, chain 59144)
- UnnamedContract (`0xe7c3ea...20f80e`, chain 59144)
- UnnamedContract (`0xf01d55...3b9a28`, chain 59144)
- UnnamedContract (`0xfee97c...08c760`, chain 59144)
- UnnamedContract (`0x000000...c78ba3`, chain 534352)
- UnnamedContract (`0x037a5e...5ac198`, chain 534352)
- UnnamedContract (`0x14334b...b62fe6`, chain 534352)
- UnnamedContract (`0x14f8e5...0c06c3`, chain 534352)
- UnnamedContract (`0x18b0af...e76607`, chain 534352)
- UnnamedContract (`0x35e6c8...65b246`, chain 534352)
- UnnamedContract (`0x38b527...d76a79`, chain 534352)
- UnnamedContract (`0x3f37c7...12f36b`, chain 534352)
- UnnamedContract (`0x46a258...21ea1e`, chain 534352)
- UnnamedContract (`0x5089e6...d44da7`, chain 534352)
- UnnamedContract (`0x530000...000004`, chain 534352)
- UnnamedContract (`0x5a1af7...697a0a`, chain 534352)
- UnnamedContract (`0x5bdeb2...c965bd`, chain 534352)
- UnnamedContract (`0x6726c6...129369`, chain 534352)
- UnnamedContract (`0x694149...e2ae4a`, chain 534352)
- UnnamedContract (`0x69850d...bcdd04`, chain 534352)
- UnnamedContract (`0x6bf14c...a8774c`, chain 534352)
- UnnamedContract (`0x6cae28...c0c24e`, chain 534352)
- UnnamedContract (`0x70167d...e0c5ee`, chain 534352)
- UnnamedContract (`0x790f47...43037a`, chain 534352)
- UnnamedContract (`0x885edb...fc4074`, chain 534352)
- UnnamedContract (`0x88d267...145dc4`, chain 534352)
- UnnamedContract (`0x908962...d82f1b`, chain 534352)
- UnnamedContract (`0x95bb96...17d6c8`, chain 534352)
- UnnamedContract (`0x9fee83...076055`, chain 534352)
- UnnamedContract (`0xa64f0d...8e3cb3`, chain 534352)
- UnnamedContract (`0xa6a147...4f969f`, chain 534352)
- UnnamedContract (`0xac72e6...aae0c2`, chain 534352)
- UnnamedContract (`0xac7c88...fcb6cf`, chain 534352)
- UnnamedContract (`0xb2f97c...77ce44`, chain 534352)
- UnnamedContract (`0xb9021d...d14b77`, chain 534352)
- UnnamedContract (`0xbac248...3e4b57`, chain 534352)
- UnnamedContract (`0xc0939a...46a90d`, chain 534352)
- UnnamedContract (`0xc0d5f5...ed8e5c`, chain 534352)
- UnnamedContract (`0xc206c2...160ab4`, chain 534352)
- UnnamedContract (`0xc2462f...58fd78`, chain 534352)
- UnnamedContract (`0xc851e6...ad2763`, chain 534352)
- UnnamedContract (`0xca5d37...64ec36`, chain 534352)
- UnnamedContract (`0xdaba83...e127f5`, chain 534352)
- UnnamedContract (`0xe03835...1bb72a`, chain 534352)
- UnnamedContract (`0xe061bf...f638b8`, chain 534352)
- UnnamedContract (`0xe7c3ea...20f80e`, chain 534352)
- UnnamedContract (`0xec5b0c...dc7fd1`, chain 534352)
- UnnamedContract (`0xecfa57...960c12`, chain 534352)
- UnnamedContract (`0xf01d55...3b9a28`, chain 534352)
- UnnamedContract (`0xf1bc61...58e010`, chain 534352)
- UnnamedContract (`0xfee97c...08c760`, chain 534352)
- UnnamedContract (`0xff7b4d...95d21e`, chain 534352)
- AaveMoneyMarket (`0x403cc0...7d30a1`, chain 1)
- CometReverseLookup (`0x3aaa75...f781e5`, chain 1)
- EulerMoneyMarket (`0x486b91...48e03e`, chain 1)
- EulerReverseLookup (`0xd0d9e5...f0fc68`, chain 1)
- EulerRewardsOperator (`0xb3863d...f29ead`, chain 1)
- ImmutableBeaconProxy (`0x034f65...bd8c3c`, chain 1)
- Router (`0xdaf4da...41024e`, chain 1)
- UpgradeableBeaconWithOwner (`0x41aa57...038a10`, chain 1)
- Vault (`0x3cab97...76861a`, chain 1)

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 716/726 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/9 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 716 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 33 discovered implementations excluded (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 716 of 751 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 6/9
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 707
- Unique implementations: 751
- Raw deployments: 752
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 102 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 55.6% | n/a |
| Offbeat Security | Tier 2 | 3 | 33.3% | 2024-10 |
| ABDK | Tier 2 | 2 | 22.2% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveMoneyMarket | unknown | project_anchor | third_party_dependency | 1 | ethereum | unit-383628 | 2 deployments: ethereum `0x2752c0...0d9ce6`; ethereum `0x403cc0...7d30a1` | ✅ Audited |
| EulerMoneyMarket | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382748 | `0x486b91...48e03e` | ✅ Audited |
| EulerReverseLookup | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382827 | `0xd0d9e5...f0fc68` | ✅ Audited |
| EulerRewardsOperator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382806 | `0xb3863d...f29ead` | ✅ Audited |
| ImmutableBeaconProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382718 | `0x034f65...bd8c3c` | ✅ Audited |
| UpgradeableBeaconWithOwner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382746 | `0x41aa57...038a10` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CashSettler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17104e...175433` | ⚠️ Unaudited |
| Cauldron | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44386d...4258dd` | ⚠️ Unaudited |
| CometMoneyMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29000d...0ba829` | ⚠️ Unaudited |
| CometMoneyMarketView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aeff8...93e27f` | ⚠️ Unaudited |
| CometReverseLookup | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382740 | `0x3aaa75...f781e5` | ⚠️ Unaudited |
| CompositeMultiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x750b3a...cd02f2` | ⚠️ Unaudited |
| Contango | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075632...afde89` | ⚠️ Unaudited |
| ContangoLadle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30e734...ce97db` | ⚠️ Unaudited |
| ContangoLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121b75...83e0c0` | ⚠️ Unaudited |
| ContangoPositionNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x361f02...8df53a` | ⚠️ Unaudited |
| ContangoToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc760f9...159966` | ⚠️ Unaudited |
| ContangoWitch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79857d...c53b75` | ⚠️ Unaudited |
| ContangoYield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe262...a08ab0` | ⚠️ Unaudited |
| ContangoYieldQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18004b...9d43f1` | ⚠️ Unaudited |
| DineroSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe189d...9eeba0` | ⚠️ Unaudited |
| EulerMoneyMarketView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c7d64...4a7704` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95bb96...17d6c8` | ⚠️ Unaudited |
| FixedFeeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02ef55...04e63b` | ⚠️ Unaudited |
| FluidMoneyMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2475b8...8890a7` | ⚠️ Unaudited |
| FluidMoneyMarketView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x767fa1...6c88df` | ⚠️ Unaudited |
| IdentityOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce3d36...83d29d` | ⚠️ Unaudited |
| Join | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f201b...23229e` | ⚠️ Unaudited |
| Maestro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01fe7d...8c1702` | ⚠️ Unaudited |
| OrderManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2226af...de7a05` | ⚠️ Unaudited |
| PoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96bf9a...455767` | ⚠️ Unaudited |
| ReferralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7b4d...95d21e` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382832 | `0xdaf4da...41024e` | ⚠️ Unaudited |
| SiloMoneyMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f57aa...17d341` | ⚠️ Unaudited |
| SiloMoneyMarketView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205e4b...de3422` | ⚠️ Unaudited |
| SimpleSpotExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12158f...abaa9d` | ⚠️ Unaudited |
| SpotExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908962...d82f1b` | ⚠️ Unaudited |
| StrategyBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39662f...3c0271` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x62c669...ac665e` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382743 | `0x3cab97...76861a` | ⚠️ Unaudited |
| Yield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b98a...d2bdd4` | ⚠️ Unaudited |
| YieldSpaceMultiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210f4e...27b414` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (709)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382716 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382717 | `0x02c3ea...1793ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382719 | `0x037a5e...5ac198` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382720 | `0x057835...78fc6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382721 | `0x070601...b4f74a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382722 | `0x0a656b...64ce0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382723 | `0x0c9a3d...9ee383` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382724 | `0x0d52d0...d7f8a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382725 | `0x0e466f...1e76e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382726 | `0x0f8816...d0a4db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382727 | `0x11c4e7...1b10ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382728 | `0x17878a...abb857` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382729 | `0x1b0e76...885a40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382730 | `0x1f96a1...98a3f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382731 | `0x2206c3...f0710b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382732 | `0x255baf...ab98fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382733 | `0x26bb01...0bd70e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382734 | `0x2f39d2...d94e9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382735 | `0x2fbf39...e37412` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382736 | `0x319300...51f289` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382737 | `0x322046...7307ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382738 | `0x331243...33cc1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382739 | `0x35e6c8...65b246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382741 | `0x3b849f...2d31b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382742 | `0x3bfbc7...3a3843` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382744 | `0x3d9819...c9cd3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382745 | `0x3f37c7...12f36b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382747 | `0x4370d3...ff5b34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382749 | `0x4a5bfa...eede2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382750 | `0x4c4156...d3da4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382751 | `0x4d4875...3b2bf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382752 | `0x4f5717...ea95ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382753 | `0x5089e6...d44da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382754 | `0x523021...35008d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382755 | `0x52cf30...3d1696` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382756 | `0x534556...cd60bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382757 | `0x56e01d...c92482` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382758 | `0x57ac18...40f907` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382759 | `0x58f24b...6c5480` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382760 | `0x5bdeb2...c965bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382761 | `0x5be89b...5a73a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382762 | `0x5c1e26...5d5688` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382763 | `0x5c5228...148717` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382764 | `0x5e0250...ccd1e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382765 | `0x5e49e2...aabe67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382766 | `0x5f4ec3...5b8419` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382767 | `0x627ddd...012e65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382768 | `0x63dc4c...eac9c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382769 | `0x6a2871...07bbd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382770 | `0x6b210f...d97d85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382771 | `0x6c420b...35ea5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382772 | `0x6cae28...c0c24e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382773 | `0x70fdf7...4409ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382774 | `0x75cb5b...41e9b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382775 | `0x773844...e57979` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382776 | `0x79b237...516276` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382777 | `0x7d9706...5d9c1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382778 | `0x8164cc...80bfcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382779 | `0x82181f...003781` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382780 | `0x88e735...39868f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382781 | `0x8cadf8...ef5f90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382782 | `0x8cb701...0cb397` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382783 | `0x8f9bfe...251f50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382784 | `0x912105...af8e34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382785 | `0x938909...41d683` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382786 | `0x938e23...c51d2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382787 | `0x987e0a...562393` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382788 | `0x9a4d71...0e6d59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382789 | `0x9bbd78...f07339` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382790 | `0x9df960...f0ebb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382791 | `0x9e092c...a4917e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382792 | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382793 | `0xa0cb4e...09588f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382794 | `0xa216fc...bfab06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382795 | `0xa48cc0...bda531` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382796 | `0xa4ac9b...43850e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382797 | `0xa64f0d...8e3cb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382798 | `0xa6a147...4f969f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382799 | `0xa6ea08...68ef01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382800 | `0xa91d16...6f7bdf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382801 | `0xab5155...e641bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382802 | `0xac72e6...aae0c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382803 | `0xad7281...a35ee9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382804 | `0xb21a09...0aea90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382805 | `0xb2da5c...ed2d1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382807 | `0xb519ab...7f23c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382808 | `0xb53c1a...15c8c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382809 | `0xb7d0ab...a5d0b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382810 | `0xb8c082...53dc4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382811 | `0xb9021d...d14b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382812 | `0xbbbbbb...eeffcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382813 | `0xbc2fdc...98725b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382814 | `0xbca306...b3a6f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382815 | `0xbe781d...36038a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382816 | `0xc01218...6e6eb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382817 | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382818 | `0xc0939a...46a90d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382819 | `0xc2462f...58fd78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382820 | `0xc64d6a...401113` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382821 | `0xc68cb3...cd5828` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382822 | `0xc77c12...505d8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382823 | `0xcda64d...f8803d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382824 | `0xcdfc3b...6aaac9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382825 | `0xceed1c...75bca9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382826 | `0xcfbf33...04b16d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382828 | `0xd3007d...8771ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382829 | `0xd76460...1f074e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382830 | `0xd98342...4b76b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382831 | `0xdaba83...e127f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382833 | `0xdbbb1c...2576a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382834 | `0xdbd020...428bd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382835 | `0xded923...60b385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382836 | `0xdf6b6e...1c1f70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382837 | `0xdfea38...4c7899` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382838 | `0xe03835...1bb72a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382839 | `0xe16cfa...0c7ece` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382840 | `0xe1f9e0...557007` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382841 | `0xe3c3c5...ddff00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382842 | `0xe4044d...9ed29e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382843 | `0xe46031...360b6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382844 | `0xe6e744...6493dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382845 | `0xea7e1f...ab8da9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382846 | `0xeaa6a2...379fac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382847 | `0xeba440...befcda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382848 | `0xebd8fe...f06e9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382850 | `0xeecfb9...401aaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382851 | `0xef2a2c...5d8f73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382852 | `0xf028c2...a5e8bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382853 | `0xf4dcc1...f5ad4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382854 | `0xf52d21...c0728a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382855 | `0xf63f41...e20445` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382856 | `0xf7d504...6422ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382857 | `0xfb8f0b...c16950` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382858 | `0xfd856e...f75fcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382859 | `0xfee97c...08c760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382860 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382861 | `0x037a5e...5ac198` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382862 | `0x0aeff8...93e27f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382863 | `0x0b2c63...97ff85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382864 | `0x13e3ee...7e08c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382865 | `0x168f59...25d813` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382866 | `0x1ebf59...083f5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382867 | `0x2014dc...9d9184` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382868 | `0x28b621...5e91cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382869 | `0x2c8ec5...d57a9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382870 | `0x35e6c8...65b246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382872 | `0x3e2c04...00adae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382873 | `0x3f37c7...12f36b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382874 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382875 | `0x443ea0...c3c2e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382876 | `0x45886d...0cd37d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382877 | `0x48adfb...e84b7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382878 | `0x498036...e13d9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382879 | `0x4b0f25...8a5c11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382880 | `0x4d7ef6...c4a683` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382881 | `0x4da83b...e79105` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382882 | `0x4e6049...57eac7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382883 | `0x4ee92e...530e61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382884 | `0x5089e6...d44da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382885 | `0x527c69...de23e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382886 | `0x5598bb...51a0a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382887 | `0x5a0a52...ad69b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382888 | `0x5bdeb2...c965bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382889 | `0x601583...8c4a33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382890 | `0x60c94f...04305d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382891 | `0x60cf09...751c58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382892 | `0x6407ee...cec14f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382893 | `0x6962ba...4e1438` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382894 | `0x6a0406...5e04ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382895 | `0x6b210f...d97d85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382896 | `0x6c38da...752f39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382897 | `0x6cae28...c0c24e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382898 | `0x72a6bf...50f172` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382899 | `0x76b849...5dfe76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382900 | `0x853978...0bff4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382901 | `0x88d267...145dc4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382902 | `0x92340f...aa5036` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382903 | `0x929ec6...5b473e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382904 | `0x9546f6...5a9995` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382905 | `0x969f1b...c34471` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382906 | `0x9ccb6b...13d5cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382907 | `0x9e092c...a4917e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382908 | `0xa02f0a...5660fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382909 | `0xa4649b...a8e0db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382910 | `0xa64f0d...8e3cb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382911 | `0xa6a147...4f969f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382912 | `0xa88594...2296ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382913 | `0xa97684...ab3cdb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382914 | `0xaa8f3b...907a33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382915 | `0xab5155...e641bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382916 | `0xac72e6...aae0c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382917 | `0xaeb62e...6f027e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382918 | `0xaf255d...a0bb5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382919 | `0xb519ab...7f23c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382920 | `0xb6f557...b80e35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382921 | `0xb8b1f5...b0e6c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382922 | `0xb9021d...d14b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382923 | `0xba1222...6bf2c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382924 | `0xbb685c...1b93f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382925 | `0xbd1ba7...b2e031` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382926 | `0xc0939a...46a90d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382927 | `0xc2462f...58fd78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382928 | `0xca7fe1...27ea7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382929 | `0xca889f...c511b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382930 | `0xcaa84a...281de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382931 | `0xcce7df...917130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382932 | `0xcd11d4...c94b1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382933 | `0xcf13cd...6238d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382934 | `0xd3de08...414fed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382935 | `0xd52c40...a0a768` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382936 | `0xdaba83...e127f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382937 | `0xdbd703...c99df2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382938 | `0xdde5dc...e1c6d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382939 | `0xe03835...1bb72a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382940 | `0xe10111...fcd4d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382941 | `0xe42f7a...4cbaf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382942 | `0xe50229...d1af10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382943 | `0xe5cc32...4dad2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382944 | `0xe64c32...67a1ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382945 | `0xe8d430...c76feb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382946 | `0xebb27d...d2e24c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382947 | `0xeeb626...ed258a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382948 | `0xf444d6...77d756` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382949 | `0xf52d21...c0728a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382950 | `0xfee97c...08c760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382951 | `0xffd51f...788b75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383313 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383315 | `0x037a5e...5ac198` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383318 | `0x0567f2...d42aee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383320 | `0x14f8e5...0c06c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383322 | `0x163046...5081bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383323 | `0x35e6c8...65b246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383326 | `0x39a4c4...caf687` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383328 | `0x3f37c7...12f36b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383330 | `0x5089e6...d44da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383333 | `0x5a0a52...ad69b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383335 | `0x5bdeb2...c965bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383337 | `0x6b210f...d97d85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383339 | `0x6cae28...c0c24e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383341 | `0x78f8bd...2820e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383343 | `0x7c357c...2f2ccb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383345 | `0x885edb...fc4074` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383347 | `0x8d82f0...21d5f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383349 | `0xa1b131...610fa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383352 | `0xa64f0d...8e3cb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383354 | `0xa6a147...4f969f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383356 | `0xac72e6...aae0c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383358 | `0xb199ac...52b546` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383360 | `0xb9021d...d14b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383361 | `0xbac248...3e4b57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383363 | `0xbb4cdb...bc095c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383365 | `0xc0939a...46a90d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383367 | `0xc0d5f5...ed8e5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383369 | `0xc206c2...160ab4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383371 | `0xc2462f...58fd78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383373 | `0xc24e2b...2fb92d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383375 | `0xca5d37...64ec36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383377 | `0xcb8e5a...3c78cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383379 | `0xdaba83...e127f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383381 | `0xe03835...1bb72a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383383 | `0xecfa57...960c12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383387 | `0xf01d55...3b9a28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383389 | `0xf3ca71...96e086` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383392 | `0xf7e650...2816b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383394 | `0xfee97c...08c760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383396 | `0xff75b6...62ba6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382952 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382953 | `0x037a5e...5ac198` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382954 | `0x0792e5...9d80f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382955 | `0x11d730...bc260c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382956 | `0x137a19...3d92db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382957 | `0x2e1ab5...2249b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382958 | `0x34f1be...aa7491` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382959 | `0x3547e9...5f9487` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382960 | `0x35e6c8...65b246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382961 | `0x363047...8fd58e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382962 | `0x36616c...0b2132` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382963 | `0x3673c2...bbb87f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382964 | `0x36a711...1183f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382965 | `0x39a4c4...caf687` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382966 | `0x3e00c0...f33bbc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382967 | `0x3f37c7...12f36b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382968 | `0x4d4875...3b2bf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382969 | `0x5089e6...d44da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382970 | `0x5bdeb2...c965bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382971 | `0x60059b...7faf58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382972 | `0x6174e4...cdcd3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382973 | `0x678df3...5a82f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382974 | `0x6b210f...d97d85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382975 | `0x6cae28...c0c24e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382976 | `0x790f47...43037a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382977 | `0x885edb...fc4074` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382978 | `0x8caad3...c4581d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382979 | `0x8cb701...0cb397` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382980 | `0x918df4...8371d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382981 | `0x97f4ce...cc9391` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382982 | `0x98e6bc...20c30c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382983 | `0x9e092c...a4917e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382984 | `0xa0baed...a3857b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382985 | `0xa64f0d...8e3cb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382986 | `0xa6a147...4f969f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382987 | `0xa98dac...eaba6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382988 | `0xab5155...e641bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382989 | `0xac72e6...aae0c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382990 | `0xad36c8...02a335` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382991 | `0xad4f91...e2f20d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382992 | `0xb159f0...ca6d70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382993 | `0xb9021d...d14b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382994 | `0xba1222...6bf2c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382995 | `0xbb3dd3...7f0305` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382996 | `0xc0939a...46a90d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382997 | `0xc2462f...58fd78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382998 | `0xc4759d...1f690e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-382999 | `0xc851e6...ad2763` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-383000 | `0xcb8e5a...3c78cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-383001 | `0xcc2970...d399e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-383002 | `0xdaba83...e127f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-383003 | `0xe03835...1bb72a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-383004 | `0xe67293...b51329` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-383005 | `0xe91d15...63a97d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-383006 | `0xeaa886...455560` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-383007 | `0xed9b2c...5aa3de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-383008 | `0xee9881...048bd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-383010 | `0xf028c2...a5e8bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-383011 | `0xfa255f...1a5d86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-383012 | `0xfee97c...08c760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-383013 | `0xff7b4d...95d21e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383014 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383015 | `0x037a5e...5ac198` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383016 | `0x0792f9...69aa86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383017 | `0x0d500b...df1270` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383018 | `0x0ebb57...6d0091` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383019 | `0x21c526...6f5e11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383020 | `0x253cfc...f07311` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383021 | `0x2a8758...b1bde6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383022 | `0x319300...51f289` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383023 | `0x33dfd5...985434` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383024 | `0x35e6c8...65b246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383025 | `0x3f37c7...12f36b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383026 | `0x42353e...aceade` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383027 | `0x43470c...12d74f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383028 | `0x459396...31e581` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383029 | `0x5089e6...d44da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383030 | `0x5598bb...51a0a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383031 | `0x5bdeb2...c965bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383032 | `0x6b210f...d97d85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383033 | `0x6cae28...c0c24e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383034 | `0x7551b5...71d46d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383035 | `0x790f47...43037a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383036 | `0x87a1c2...c8929c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383037 | `0x885edb...fc4074` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383038 | `0x929ec6...5b473e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383039 | `0x947626...d63e85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383040 | `0x96e919...db71b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383041 | `0x9d1179...880b4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383042 | `0x9e092c...a4917e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383043 | `0xa046a8...1ae64c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383044 | `0xa64f0d...8e3cb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383045 | `0xa6a147...4f969f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383046 | `0xa97684...ab3cdb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383047 | `0xaa6525...15ebd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383048 | `0xab5155...e641bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383049 | `0xab5946...862de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383050 | `0xac72e6...aae0c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383051 | `0xadf19c...b03fad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383052 | `0xb76c05...f5f050` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383053 | `0xb9021d...d14b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383054 | `0xba1222...6bf2c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383055 | `0xc0939a...46a90d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383056 | `0xc2462f...58fd78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383057 | `0xc3e92f...870b8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383058 | `0xc48512...fa5e0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383059 | `0xc99807...5ea692` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383060 | `0xcafd6a...12949e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383061 | `0xd05e3e...684744` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383062 | `0xdaba83...e127f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383063 | `0xdeb33d...33f7ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383064 | `0xe03835...1bb72a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383065 | `0xebd8fe...f06e9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383067 | `0xf72bf3...3e524c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383068 | `0xfbc8e7...24bc07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383069 | `0xfe189d...9eeba0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383070 | `0xfee97c...08c760` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383477 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383479 | `0x00b98a...d2bdd4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383481 | `0x031919...f7e9b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383483 | `0x037a5e...5ac198` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383485 | `0x03823c...bccef0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383486 | `0x07d2dc...1b9eaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383488 | `0x0a1198...ee100b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383490 | `0x0aeff8...93e27f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383492 | `0x0e7bc0...57228c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383494 | `0x108182...1fdd93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383496 | `0x1154fc...32854d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383498 | `0x12158f...abaa9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383500 | `0x123964...00a6b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383502 | `0x180ace...56a5af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383504 | `0x196d31...e123fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383506 | `0x1b51b8...1a7951` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383508 | `0x1db246...2245f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383510 | `0x1fed46...b0abc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383512 | `0x2014dc...9d9184` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383516 | `0x315b28...d7a97b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383517 | `0x35e6c8...65b246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383519 | `0x360423...f37f51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383521 | `0x394c7a...bccb5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383522 | `0x3be95d...131fe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383523 | `0x3f37c7...12f36b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383524 | `0x40ecbf...121430` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383525 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383526 | `0x4d7ef6...c4a683` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383527 | `0x4da83b...e79105` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383528 | `0x4ee92e...530e61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383529 | `0x5089e6...d44da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383530 | `0x5213ab...a31007` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383531 | `0x554eca...cee3c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383533 | `0x580737...f4911b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383535 | `0x5bdeb2...c965bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383537 | `0x5d4d40...eebd16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383538 | `0x5d6d3c...5e8f99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383540 | `0x6207ec...426207` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383542 | `0x655a1d...3cfc3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383544 | `0x68a488...dbed58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383545 | `0x69b6e5...1d762b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383546 | `0x6b210f...d97d85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383548 | `0x6c38da...752f39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383549 | `0x6cae28...c0c24e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383551 | `0x71041d...16bb70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383553 | `0x73a7a4...082cae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383555 | `0x74dd7c...a89b06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383557 | `0x76b849...5dfe76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383559 | `0x7c832b...0017a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383560 | `0x803e5d...aee35f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383561 | `0x833589...a02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383562 | `0x877f46...78efb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383564 | `0x89d0f3...52a657` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383566 | `0x8caad3...c4581d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383568 | `0x8fb394...ceb6cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383570 | `0x92340f...aa5036` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383572 | `0x94695a...1762f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383573 | `0x9c17b1...06fa7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383575 | `0x9dda78...5ba428` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383577 | `0xa17e15...8515df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383578 | `0xa64f0d...8e3cb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383579 | `0xa6a147...4f969f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383580 | `0xa6e01b...4eec77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383582 | `0xa88594...2296ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383584 | `0xab5155...e641bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383585 | `0xac72e6...aae0c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383587 | `0xae0735...4c15c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383588 | `0xb519ab...7f23c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383589 | `0xb9021d...d14b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383590 | `0xba1222...6bf2c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383591 | `0xba59f9...4f8be9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383592 | `0xbbbbbb...eeffcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383593 | `0xbcf05e...51ac1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383594 | `0xc0939a...46a90d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383595 | `0xc2462f...58fd78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383596 | `0xc27534...0ca465` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383597 | `0xc4f675...0f162e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383598 | `0xc8f25b...34cd95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383599 | `0xcaa84a...281de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383600 | `0xcafd6a...12949e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383601 | `0xcd11d4...c94b1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383602 | `0xd09532...eb8f52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383603 | `0xd1e452...119905` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383604 | `0xd4e709...055713` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383605 | `0xd53440...4fb2f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383606 | `0xd5c145...98c297` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383607 | `0xdaba83...e127f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383608 | `0xdcfc5b...882b3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383609 | `0xe03835...1bb72a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383610 | `0xe20fcb...7ad64d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383611 | `0xe3809a...f9996c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383612 | `0xe66044...27d2a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383613 | `0xe6e10d...02536e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383614 | `0xe7f252...a0c541` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383615 | `0xe89d07...c16c0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383616 | `0xeb42de...4d3396` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383617 | `0xebb27d...d2e24c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383619 | `0xf3861a...9b49dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383620 | `0xf52d21...c0728a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383621 | `0xf549b5...0606c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383622 | `0xf7a710...1977e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383623 | `0xf9cc4f...1e1f44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383624 | `0xfbb21d...3ef26c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383625 | `0xfee97c...08c760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383626 | `0xff8ade...03493d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-383627 | `0xffa3f8...c8352f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383071 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383072 | `0x037a5e...5ac198` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383073 | `0x07b94e...15be47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383074 | `0x080ba2...7b37f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383075 | `0x091d52...5330e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383076 | `0x0f744f...da02ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383077 | `0x0f9104...f32c77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383078 | `0x10b71c...e1bcaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383079 | `0x171c28...04a161` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383080 | `0x2876ed...6ab63a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383081 | `0x293009...58275b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383082 | `0x312437...0c1bff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383083 | `0x319300...51f289` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383084 | `0x35e6c8...65b246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383085 | `0x39662f...3c0271` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383086 | `0x3a669c...292f9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383087 | `0x3f37c7...12f36b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383088 | `0x465704...d270cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383089 | `0x49bb23...851a8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383090 | `0x4d2540...7cec15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383091 | `0x5089e6...d44da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383092 | `0x54f15c...8a9a4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383093 | `0x56d4b0...fdd733` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383094 | `0x596b0c...94a2cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383095 | `0x5bdeb2...c965bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383096 | `0x5d4d40...eebd16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383097 | `0x5e2adc...4e3a03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383098 | `0x5e8820...016d0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383100 | `0x639fe6...3ba612` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383102 | `0x643178...06ac28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383104 | `0x652bcf...b189ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383106 | `0x6603ee...43d2cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383107 | `0x6a2871...07bbd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383109 | `0x6b210f...d97d85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383111 | `0x6bd780...409072` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383113 | `0x6cae28...c0c24e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383115 | `0x71ffbc...233a0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383117 | `0x755123...796b9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383119 | `0x77648d...3bea3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383121 | `0x7e4ec0...991462` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383123 | `0x82af49...3fbab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383125 | `0x885edb...fc4074` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383129 | `0x88730d...9f7fae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383131 | `0x8a3eb5...d0ccb5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383133 | `0x8a4688...00baa3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383135 | `0x8cfd87...8d59be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383137 | `0x912ce5...9e6548` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383139 | `0x929ec6...5b473e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383141 | `0x9e092c...a4917e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383143 | `0xa3c4cc...dde693` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383144 | `0xa64f0d...8e3cb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383145 | `0xa6a147...4f969f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383146 | `0xa71cab...127458` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383147 | `0xa86dd9...057576` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383148 | `0xa8897b...29bf0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383149 | `0xa97684...ab3cdb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383150 | `0xab5b13...4a3dea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383151 | `0xab5ba6...1859a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383152 | `0xac72e6...aae0c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383153 | `0xb2a824...a548d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383154 | `0xb9021d...d14b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383155 | `0xba1222...6bf2c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383156 | `0xbe5c6a...e9aac5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383157 | `0xc0939a...46a90d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383158 | `0xc09b89...b00a51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383159 | `0xc1ea6a...819da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383160 | `0xc2462f...58fd78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383161 | `0xc3e944...cd8d37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383162 | `0xc6f754...94a068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383163 | `0xc9d66f...6bbc47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383164 | `0xd28136...350314` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383165 | `0xd52ceb...6d3d77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383166 | `0xd652e8...95e667` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383167 | `0xd6b435...286c8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383168 | `0xdaba83...e127f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383169 | `0xdcc905...86a4e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383170 | `0xdda410...11dfa1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383171 | `0xe03835...1bb72a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383172 | `0xe6267a...84d838` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383173 | `0xe7c53f...1e5884` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383174 | `0xe86537...eb2759` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383175 | `0xe9054d...c143be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383176 | `0xe9cca6...ecd3cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383177 | `0xeb80a9...c51c4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383178 | `0xee7025...deface` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383179 | `0xeeb626...ed258a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383180 | `0xf4a485...31b618` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383181 | `0xf69460...db953c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383182 | `0xfee97c...08c760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383183 | `0xff970a...db5cc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383184 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383185 | `0x037a5e...5ac198` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383186 | `0x14f8e5...0c06c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383187 | `0x163046...5081bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383188 | `0x34b7fa...6a6574` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383189 | `0x35e6c8...65b246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383190 | `0x38b527...d76a79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383191 | `0x39a4c4...caf687` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383192 | `0x3c17c3...c213f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383193 | `0x3f37c7...12f36b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383194 | `0x4d7ef6...c4a683` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383195 | `0x5089e6...d44da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383196 | `0x5598bb...51a0a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383197 | `0x5a0a52...ad69b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383198 | `0x5bdeb2...c965bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383199 | `0x694149...e2ae4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383200 | `0x6c38da...752f39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383201 | `0x6cae28...c0c24e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383202 | `0x929ec6...5b473e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383203 | `0x95bb96...17d6c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383204 | `0x976b3d...9003b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383205 | `0xa64f0d...8e3cb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383206 | `0xa6a147...4f969f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383207 | `0xa97684...ab3cdb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383208 | `0xac72e6...aae0c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383209 | `0xb31f66...fd66c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383210 | `0xb5122b...af5252` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383211 | `0xb9021d...d14b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383212 | `0xbac248...3e4b57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383213 | `0xc0939a...46a90d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383214 | `0xc0d5f5...ed8e5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383215 | `0xc2462f...58fd78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383216 | `0xd915a2...341945` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383217 | `0xd93187...7464ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383218 | `0xdaba83...e127f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383219 | `0xe03835...1bb72a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383220 | `0xe7c3ea...20f80e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383221 | `0xec5b0c...dc7fd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383222 | `0xecfa57...960c12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-383224 | `0xfee97c...08c760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383398 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383400 | `0x01fe7d...8c1702` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383402 | `0x037a5e...5ac198` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383404 | `0x06cf0b...8bc3d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383406 | `0x12158f...abaa9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383408 | `0x28f689...00b945` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383410 | `0x30bfea...daea9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383412 | `0x35e6c8...65b246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383414 | `0x394c7a...bccb5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383416 | `0x3c6cd9...3354da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383418 | `0x3f1a89...73d7da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383420 | `0x3f37c7...12f36b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383422 | `0x49282a...8a97fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383424 | `0x5089e6...d44da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383425 | `0x5bdeb2...c965bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383427 | `0x656dba...12f854` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383429 | `0x6cae28...c0c24e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383431 | `0x81b318...91b2d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383433 | `0x885edb...fc4074` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383435 | `0x8dacc3...077ed2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383437 | `0xa1b131...610fa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383439 | `0xa48cc0...bda531` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383441 | `0xa64f0d...8e3cb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383443 | `0xa6a147...4f969f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383444 | `0xac72e6...aae0c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383446 | `0xb9021d...d14b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383448 | `0xbb44a8...ede564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383450 | `0xc0939a...46a90d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383452 | `0xc2462f...58fd78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383454 | `0xc44827...d200eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383456 | `0xc52bd1...233e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383458 | `0xca5d37...64ec36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383460 | `0xd3c41a...c73e2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383462 | `0xd9cafb...a18c1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383464 | `0xdaba83...e127f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383466 | `0xe03835...1bb72a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383468 | `0xe5d7c2...5cf34f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383470 | `0xe7c3ea...20f80e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383473 | `0xf01d55...3b9a28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-383475 | `0xfee97c...08c760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383225 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383226 | `0x037a5e...5ac198` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383227 | `0x14334b...b62fe6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383229 | `0x14f8e5...0c06c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383231 | `0x18b0af...e76607` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383233 | `0x35e6c8...65b246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383235 | `0x38b527...d76a79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383237 | `0x3f37c7...12f36b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383238 | `0x46a258...21ea1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383240 | `0x5089e6...d44da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383242 | `0x530000...000004` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383244 | `0x5a1af7...697a0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383246 | `0x5bdeb2...c965bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383247 | `0x6726c6...129369` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383249 | `0x694149...e2ae4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383251 | `0x69850d...bcdd04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383253 | `0x6bf14c...a8774c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383255 | `0x6cae28...c0c24e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383257 | `0x70167d...e0c5ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383258 | `0x790f47...43037a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383260 | `0x885edb...fc4074` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383262 | `0x88d267...145dc4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383264 | `0x908962...d82f1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383266 | `0x95bb96...17d6c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383268 | `0x9fee83...076055` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383270 | `0xa64f0d...8e3cb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383272 | `0xa6a147...4f969f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383273 | `0xac72e6...aae0c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383275 | `0xac7c88...fcb6cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383277 | `0xb2f97c...77ce44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383279 | `0xb9021d...d14b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383281 | `0xbac248...3e4b57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383283 | `0xc0939a...46a90d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383285 | `0xc0d5f5...ed8e5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383287 | `0xc206c2...160ab4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383289 | `0xc2462f...58fd78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383291 | `0xc851e6...ad2763` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383293 | `0xca5d37...64ec36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383295 | `0xdaba83...e127f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383296 | `0xe03835...1bb72a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383298 | `0xe061bf...f638b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383299 | `0xe7c3ea...20f80e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383301 | `0xec5b0c...dc7fd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383303 | `0xecfa57...960c12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383307 | `0xf01d55...3b9a28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383309 | `0xf1bc61...58e010` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383310 | `0xfee97c...08c760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-383312 | `0xff7b4d...95d21e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ABDK_Contango_CoreV2PartIII_v_2_0.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/ABDK_Contango_CoreV2PartIII_v_2_0.pdf) | ABDK | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [ABDK_Contango_CoreV2_PARTII_v_3_0.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/ABDK_Contango_CoreV2_PARTII_v_3_0.pdf) | ABDK | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 10 | high |
| [ABDK_Contango_CoreV2_v_2_0.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/ABDK_Contango_CoreV2_v_2_0.pdf) | ABDK | Audit | 2023-10 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 26 | high |
| [Compound - Contango Integration Audit.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Compound%20-%20Contango%20Integration%20Audit.pdf) | Compound | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 5 | high |
| [Offbeat Security - Contango Perpetual Option Review - Oct 2024.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Contango%20Perpetual%20Option%20Review%20-%20Oct%202024.pdf) | Offbeat Security | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Offbeat Security - Dolomite Money Market Review - May 2024.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Dolomite%20Money%20Market%20Review%20-%20May%202024.pdf) | Offbeat Security | Audit | 2024-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [Offbeat Security - Euler Money Market Review - Sep 2024.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Euler%20Money%20Market%20Review%20-%20Sep%202024.pdf) | Offbeat Security | Audit | 2024-09 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 0 | high |
| [Offbeat Security - Strategy Builder Review - May 2024.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Strategy%20Builder%20Review%20-%20May%202024.pdf) | Offbeat Security | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [networks.json](https://github.com/contango-xyz/core-v2/blob/main/networks.json) | unknown | Audit | n/a | unknown | Direct | n/a | matched | 0 | 0 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16902] ABDK_Contango_CoreV2PartIII_v_2_0.pdf — no match: Scope section lists three files: CometMoneyMarket.sol, CometReverseLookup.sol, SiloMoneyMarket.sol. Audit date from cover page: 21st February 2024.
- [16903] ABDK_Contango_CoreV2_PARTII_v_3_0.pdf — matched: Extracted 11 contract names from the project scope section. Audit date from title page: 4th December 2023.
- [16904] ABDK_Contango_CoreV2_v_2_0.pdf — matched: Extracted 30 contract names from the Project Scope section listing files. Audit date from changelog: version 2.0 released on 3rd October 2023.
- [16905] Compound - Contango Integration Audit.pdf — matched: All contracts listed in the Scope section of the audit report.
- [16906] Offbeat Security - Contango Perpetual Option Review - Oct 2024.pdf — no match: Two contracts explicitly listed in scope section.
- [16907] Offbeat Security - Dolomite Money Market Review - May 2024.pdf — matched: One contract in scope: DolomiteMoneyMarket.sol. Audit date from title: May 10, 2024.
- [16908] Offbeat Security - Euler Money Market Review - Sep 2024.pdf — matched: Three contracts explicitly listed in scope section. Audit date is the fixes reviewed date (September 8, 2024).
- [16909] Offbeat Security - Strategy Builder Review - May 2024.pdf — no match: Three contracts explicitly listed in scope section.
- [16912] networks.json — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ABDK_Contango_CoreV2PartIII_v_2_0.pdf | CometMoneyMarket | ambiguous — not counted | 0x4da83b… (alternative) `0x4da83b...e79105` — liveness: live (current_address_book_code)<br>0xc3e92f… (alternative) `0xc3e92f...870b8f` — liveness: live (current_address_book_code)<br>0x8cadf8… (alternative) `0x8cadf8...ef5f90` — liveness: live (current_address_book_code)<br>0xecfa57… (alternative) `0xecfa57...960c12` — liveness: live (current_address_book_code)<br>0x8fb394… (alternative) `0x8fb394...ceb6cd` — liveness: live (current_address_book_code)<br>0x171c28… (alternative) `0x171c28...04a161` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2PartIII_v_2_0.pdf | CometReverseLookup | ambiguous — not counted | 0xc4f675… (alternative) `0xc4f675...0f162e` — liveness: live (current_address_book_code)<br>0xf1bc61… (alternative) `0xf1bc61...58e010` — liveness: live (current_address_book_code)<br>0xd52ceb… (alternative) `0xd52ceb...6d3d77` — liveness: live (current_address_book_code)<br>0xcafd6a… (alternative) `0xcafd6a...12949e` — liveness: live (current_address_book_code)<br>CometReverseLookup (alternative) `0x3aaa75...f781e5` — deployed 2024-11-20 13:17:35+03 — liveness: live (current_address_book_code)<br>0xbb685c… (alternative) `0xbb685c...1b93f8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2PartIII_v_2_0.pdf | SiloMoneyMarket | ambiguous — not counted | 0x45886d… (alternative) `0x45886d...0cd37d` — liveness: live (current_address_book_code)<br>0x8a4688… (alternative) `0x8a4688...00baa3` — liveness: live (current_address_book_code)<br>0xdcfc5b… (alternative) `0xdcfc5b...882b3e` — liveness: live (current_address_book_code)<br>0x9df960… (alternative) `0x9df960...f0ebb7` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_PARTII_v_3_0.pdf | Maestro | ambiguous — not counted | 0x163046… (alternative) `0x163046...5081bc` — liveness: live (current_address_book_code)<br>0x39a4c4… (alternative) `0x39a4c4...caf687` — liveness: live (current_address_book_code)<br>0x6603ee… (alternative) `0x6603ee...43d2cd` — liveness: live (current_address_book_code)<br>0x01fe7d… (alternative) `0x01fe7d...8c1702` — liveness: live (current_address_book_code)<br>0xe64c32… (alternative) `0xe64c32...67a1ff` — liveness: live (current_address_book_code)<br>0xcc2970… (alternative) `0xcc2970...d399e9` — liveness: live (current_address_book_code)<br>0x790f47… (alternative) `0x790f47...43037a` — liveness: live (current_address_book_code)<br>0xfe189d… (alternative) `0xfe189d...9eeba0` — liveness: live (current_address_book_code)<br>0x68a488… (alternative) `0x68a488...dbed58` — liveness: live (current_address_book_code)<br>0x79b237… (alternative) `0x79b237...516276` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_PARTII_v_3_0.pdf | PositionIdExt | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_PARTII_v_3_0.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_PARTII_v_3_0.pdf | ERC20Lib | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_PARTII_v_3_0.pdf | AaveMoneyMarket | ambiguous — not counted | AaveMoneyMarket (proxy) (alternative) `0x403cc0...7d30a1` — deployed 2024-09-11 10:22:23+03 — liveness: live (current_address_book_code)<br>0x694149… (alternative) `0x694149...e2ae4a` — liveness: live (current_address_book_code)<br>0x0f744f… (alternative) `0x0f744f...da02ad` — liveness: live (current_address_book_code)<br>0x03823c… (alternative) `0x03823c...bccef0` — liveness: live (current_address_book_code)<br>0x2e1ab5… (alternative) `0x2e1ab5...2249b1` — liveness: live (current_address_book_code)<br>0xf444d6… (alternative) `0xf444d6...77d756` — liveness: live (current_address_book_code)<br>0xa4ac9b… (alternative) `0xa4ac9b...43850e` — liveness: live (current_address_book_code)<br>0x39a4c4… (alternative) `0x39a4c4...caf687` — liveness: live (current_address_book_code)<br>0xcb8e5a… (alternative) `0xcb8e5a...3c78cb` — liveness: live (current_address_book_code)<br>0x87a1c2… (alternative) `0x87a1c2...c8929c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_PARTII_v_3_0.pdf | SparkMoneyMarket | ambiguous — not counted | 0x75cb5b… (alternative) `0x75cb5b...41e9b6` — liveness: live (current_address_book_code)<br>0x790f47… (alternative) `0x790f47...43037a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_PARTII_v_3_0.pdf | CompoundMoneyMarket | own contract | 0xebd8fe… (selected) `0xebd8fe...f06e9a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_Contango_CoreV2_PARTII_v_3_0.pdf | SonneMoneyMarket | ambiguous — not counted | 0x5a0a52… (alternative) `0x5a0a52...ad69b7` — liveness: live (current_address_book_code)<br>0xbcf05e… (alternative) `0xbcf05e...51ac1e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_PARTII_v_3_0.pdf | MorphoBlueMoneyMarket | ambiguous — not counted | 0x360423… (alternative) `0x360423...f37f51` — liveness: live (current_address_book_code)<br>0xeecfb9… (alternative) `0xeecfb9...401aaf` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_PARTII_v_3_0.pdf | MorphoBlueReverseLookup | ambiguous — not counted | 0x4a5bfa… (alternative) `0x4a5bfa...eede2a` — liveness: live (current_address_book_code)<br>0xcd11d4… (alternative) `0xcd11d4...c94b1c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_PARTII_v_3_0.pdf | SimpleSpotExecutor | ambiguous — not counted | 0xe8d430… (alternative) `0xe8d430...c76feb` — liveness: live (current_address_book_code)<br>0x38b527… (alternative) `0x38b527...d76a79` — liveness: live (current_address_book_code)<br>0xf7a710… (alternative) `0xf7a710...1977e5` — liveness: live (current_address_book_code)<br>0x30bfea… (alternative) `0x30bfea...daea9b` — liveness: live (current_address_book_code)<br>0xaa6525… (alternative) `0xaa6525...15ebd3` — liveness: live (current_address_book_code)<br>0xe061bf… (alternative) `0xe061bf...f638b8` — liveness: live (current_address_book_code)<br>0x0792e5… (alternative) `0x0792e5...9d80f6` — liveness: live (current_address_book_code)<br>0xc24e2b… (alternative) `0xc24e2b...2fb92d` — liveness: live (current_address_book_code)<br>0xdfea38… (alternative) `0xdfea38...4c7899` — liveness: live (current_address_book_code)<br>0x755123… (alternative) `0x755123...796b9d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | Contango | ambiguous — not counted | 0x3c17c3… (alternative) `0x3c17c3...c213f1` — liveness: live (current_address_book_code)<br>0x163046… (alternative) `0x163046...5081bc` — liveness: live (current_address_book_code)<br>0x394c7a… (alternative) `0x394c7a...bccb5c` — liveness: live (current_address_book_code)<br>0xeaa886… (alternative) `0xeaa886...455560` — liveness: live (current_address_book_code)<br>0xff7b4d… (alternative) `0xff7b4d...95d21e` — liveness: live (current_address_book_code)<br>0x168f59… (alternative) `0x168f59...25d813` — liveness: live (current_address_book_code)<br>0x1f96a1… (alternative) `0x1f96a1...98a3f9` — liveness: live (current_address_book_code)<br>0xc3e944… (alternative) `0xc3e944...cd8d37` — liveness: live (current_address_book_code)<br>0x33dfd5… (alternative) `0x33dfd5...985434` — liveness: live (current_address_book_code)<br>0x2014dc… (alternative) `0x2014dc...9d9184` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | Maestro | ambiguous — not counted | 0x163046… (alternative) `0x163046...5081bc` — liveness: live (current_address_book_code)<br>0x39a4c4… (alternative) `0x39a4c4...caf687` — liveness: live (current_address_book_code)<br>0x6603ee… (alternative) `0x6603ee...43d2cd` — liveness: live (current_address_book_code)<br>0x01fe7d… (alternative) `0x01fe7d...8c1702` — liveness: live (current_address_book_code)<br>0xe64c32… (alternative) `0xe64c32...67a1ff` — liveness: live (current_address_book_code)<br>0xcc2970… (alternative) `0xcc2970...d399e9` — liveness: live (current_address_book_code)<br>0x790f47… (alternative) `0x790f47...43037a` — liveness: live (current_address_book_code)<br>0xfe189d… (alternative) `0xfe189d...9eeba0` — liveness: live (current_address_book_code)<br>0x68a488… (alternative) `0x68a488...dbed58` — liveness: live (current_address_book_code)<br>0x79b237… (alternative) `0x79b237...516276` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | OrderManager | ambiguous — not counted | 0x5a1af7… (alternative) `0x5a1af7...697a0a` — liveness: live (current_address_book_code)<br>0xc6f754… (alternative) `0xc6f754...94a068` — liveness: live (current_address_book_code)<br>0x9d1179… (alternative) `0x9d1179...880b4a` — liveness: live (current_address_book_code)<br>0xa4649b… (alternative) `0xa4649b...a8e0db` — liveness: live (current_address_book_code)<br>0x912105… (alternative) `0x912105...af8e34` — liveness: live (current_address_book_code)<br>0xb159f0… (alternative) `0xb159f0...ca6d70` — liveness: live (current_address_book_code)<br>0x0aeff8… (alternative) `0x0aeff8...93e27f` — liveness: live (current_address_book_code)<br>0x7c357c… (alternative) `0x7c357c...2f2ccb` — liveness: live (current_address_book_code)<br>0x6c38da… (alternative) `0x6c38da...752f39` — liveness: live (current_address_book_code)<br>0x49282a… (alternative) `0x49282a...8a97fe` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | OrderManagerArbitrum | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | OrderManagerOptimism | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | PositionNFT | ambiguous — not counted | 0xc2462f… (alternative) `0xc2462f...58fd78` — liveness: live (current_address_book_code)<br>0xc2462f… (alternative) `0xc2462f...58fd78` — liveness: live (current_address_book_code)<br>0xc2462f… (alternative) `0xc2462f...58fd78` — liveness: live (current_address_book_code)<br>0xc2462f… (alternative) `0xc2462f...58fd78` — liveness: live (current_address_book_code)<br>0xc2462f… (alternative) `0xc2462f...58fd78` — liveness: live (current_address_book_code)<br>0xc2462f… (alternative) `0xc2462f...58fd78` — liveness: live (current_address_book_code)<br>0xc2462f… (alternative) `0xc2462f...58fd78` — liveness: live (current_address_book_code)<br>0xc2462f… (alternative) `0xc2462f...58fd78` — liveness: live (current_address_book_code)<br>0xc2462f… (alternative) `0xc2462f...58fd78` — liveness: live (current_address_book_code)<br>0xc2462f… (alternative) `0xc2462f...58fd78` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | ReferralManager | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | Vault | ambiguous — not counted | 0x76b849… (alternative) `0x76b849...5dfe76` — liveness: live (current_address_book_code)<br>0xac7c88… (alternative) `0xac7c88...fcb6cf` — liveness: live (current_address_book_code)<br>0x694149… (alternative) `0x694149...e2ae4a` — liveness: live (current_address_book_code)<br>0xd3c41a… (alternative) `0xd3c41a...c73e2b` — liveness: live (current_address_book_code)<br>0x34f1be… (alternative) `0x34f1be...aa7491` — liveness: live (current_address_book_code)<br>0x253cfc… (alternative) `0x253cfc...f07311` — liveness: live (current_address_book_code)<br>0x0aeff8… (alternative) `0x0aeff8...93e27f` — liveness: live (current_address_book_code)<br>Vault (alternative) `0x3cab97...76861a` — deployed 2024-11-20 13:27:35+03 — liveness: live (current_address_book_code)<br>0xecfa57… (alternative) `0xecfa57...960c12` — liveness: live (current_address_book_code)<br>0xe6267a… (alternative) `0xe6267a...84d838` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | Arrays | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | BitFlags | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | ERC20Lib | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | MathLib | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | Validations | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | PositionIdExt | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | BaseMoneyMarket | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | ImmutableBeaconProxy | own contract | ImmutableBeaconProxy (selected) `0x034f65...bd8c3c` — deployed 2024-09-06 12:28:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_Contango_CoreV2_v_2_0.pdf | UnderlyingPositionFactory | ambiguous — not counted | 0xdaba83… (alternative) `0xdaba83...e127f5` — liveness: live (current_address_book_code)<br>0xdaba83… (alternative) `0xdaba83...e127f5` — liveness: live (current_address_book_code)<br>0xdaba83… (alternative) `0xdaba83...e127f5` — liveness: live (current_address_book_code)<br>0xdaba83… (alternative) `0xdaba83...e127f5` — liveness: live (current_address_book_code)<br>0xdaba83… (alternative) `0xdaba83...e127f5` — liveness: live (current_address_book_code)<br>0xdaba83… (alternative) `0xdaba83...e127f5` — liveness: live (current_address_book_code)<br>0xdaba83… (alternative) `0xdaba83...e127f5` — liveness: live (current_address_book_code)<br>0xdaba83… (alternative) `0xdaba83...e127f5` — liveness: live (current_address_book_code)<br>0xdaba83… (alternative) `0xdaba83...e127f5` — liveness: live (current_address_book_code)<br>0xdaba83… (alternative) `0xdaba83...e127f5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | UpgradeableBeaconWithOwner | own contract | UpgradeableBeaconWithOwner (selected) `0x41aa57...038a10` — deployed 2024-12-16 18:05:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_Contango_CoreV2_v_2_0.pdf | AaveMoneyMarket | ambiguous — not counted | AaveMoneyMarket (proxy) (alternative) `0x403cc0...7d30a1` — deployed 2024-09-11 10:22:23+03 — liveness: live (current_address_book_code)<br>0x694149… (alternative) `0x694149...e2ae4a` — liveness: live (current_address_book_code)<br>0x0f744f… (alternative) `0x0f744f...da02ad` — liveness: live (current_address_book_code)<br>0x03823c… (alternative) `0x03823c...bccef0` — liveness: live (current_address_book_code)<br>0x2e1ab5… (alternative) `0x2e1ab5...2249b1` — liveness: live (current_address_book_code)<br>0xf444d6… (alternative) `0xf444d6...77d756` — liveness: live (current_address_book_code)<br>0xa4ac9b… (alternative) `0xa4ac9b...43850e` — liveness: live (current_address_book_code)<br>0x39a4c4… (alternative) `0x39a4c4...caf687` — liveness: live (current_address_book_code)<br>0xcb8e5a… (alternative) `0xcb8e5a...3c78cb` — liveness: live (current_address_book_code)<br>0x87a1c2… (alternative) `0x87a1c2...c8929c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | ExactlyMoneyMarket | own contract | 0x92340f… (selected) `0x92340f...aa5036` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_Contango_CoreV2_v_2_0.pdf | ExactlyReverseLookup | own contract | 0x6407ee… (selected) `0x6407ee...cec14f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_Contango_CoreV2_v_2_0.pdf | IFlashBorrowProvider | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | IMoneyMarket | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | IUnderlyingPositionFactory | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | AaveOracle | unmatched — not counted | — | listed in scope | no |
| ABDK_Contango_CoreV2_v_2_0.pdf | SpotExecutor | ambiguous — not counted | 0x14334b… (alternative) `0x14334b...b62fe6` — liveness: live (current_address_book_code)<br>0x9bbd78… (alternative) `0x9bbd78...f07339` — liveness: live (current_address_book_code)<br>0xa1b131… (alternative) `0xa1b131...610fa7` — liveness: live (current_address_book_code)<br>0x7e4ec0… (alternative) `0x7e4ec0...991462` — liveness: live (current_address_book_code)<br>0x96e919… (alternative) `0x96e919...db71b4` — liveness: live (current_address_book_code)<br>0x95bb96… (alternative) `0x95bb96...17d6c8` — liveness: live (current_address_book_code)<br>0x3f1a89… (alternative) `0x3f1a89...73d7da` — liveness: live (current_address_book_code)<br>0xcb8e5a… (alternative) `0xcb8e5a...3c78cb` — liveness: live (current_address_book_code)<br>0xb519ab… (alternative) `0xb519ab...7f23c3` — liveness: live (current_address_book_code)<br>0x76b849… (alternative) `0x76b849...5dfe76` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Compound - Contango Integration Audit.pdf | CompoundMoneyMarket | own contract | 0xebd8fe… (selected) `0xebd8fe...f06e9a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Compound - Contango Integration Audit.pdf | CompoundMoneyMarketView | own contract | 0x627ddd… (selected) `0x627ddd...012e65` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Compound - Contango Integration Audit.pdf | CompoundReverseLookup | own contract | 0xf7d504… (selected) `0xf7d504...6422ac` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Compound - Contango Integration Audit.pdf | CometMoneyMarket | ambiguous — not counted | 0x4da83b… (alternative) `0x4da83b...e79105` — liveness: live (current_address_book_code)<br>0xc3e92f… (alternative) `0xc3e92f...870b8f` — liveness: live (current_address_book_code)<br>0x8cadf8… (alternative) `0x8cadf8...ef5f90` — liveness: live (current_address_book_code)<br>0xecfa57… (alternative) `0xecfa57...960c12` — liveness: live (current_address_book_code)<br>0x8fb394… (alternative) `0x8fb394...ceb6cd` — liveness: live (current_address_book_code)<br>0x171c28… (alternative) `0x171c28...04a161` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Compound - Contango Integration Audit.pdf | CometMoneyMarketView | ambiguous — not counted | 0xaf255d… (alternative) `0xaf255d...a0bb5b` — liveness: live (current_address_book_code)<br>0x9fee83… (alternative) `0x9fee83...076055` — liveness: live (current_address_book_code)<br>0x5c1e26… (alternative) `0x5c1e26...5d5688` — liveness: live (current_address_book_code)<br>0xebb27d… (alternative) `0xebb27d...d2e24c` — liveness: live (current_address_book_code)<br>0xc48512… (alternative) `0xc48512...fa5e0e` — liveness: live (current_address_book_code)<br>0xbe5c6a… (alternative) `0xbe5c6a...e9aac5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Compound - Contango Integration Audit.pdf | CometReverseLookup | ambiguous — not counted | 0xc4f675… (alternative) `0xc4f675...0f162e` — liveness: live (current_address_book_code)<br>0xf1bc61… (alternative) `0xf1bc61...58e010` — liveness: live (current_address_book_code)<br>0xd52ceb… (alternative) `0xd52ceb...6d3d77` — liveness: live (current_address_book_code)<br>0xcafd6a… (alternative) `0xcafd6a...12949e` — liveness: live (current_address_book_code)<br>CometReverseLookup (alternative) `0x3aaa75...f781e5` — deployed 2024-11-20 13:17:35+03 — liveness: live (current_address_book_code)<br>0xbb685c… (alternative) `0xbb685c...1b93f8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Compound - Contango Integration Audit.pdf | BaseMoneyMarketView | unmatched — not counted | — | listed in scope | no |
| Compound - Contango Integration Audit.pdf | BaseMoneyMarket | unmatched — not counted | — | listed in scope | no |
| Offbeat Security - Contango Perpetual Option Review - Oct 2024.pdf | ContangoToken | unmatched — not counted | — | listed in scope | no |
| Offbeat Security - Contango Perpetual Option Review - Oct 2024.pdf | ContangoPerpetualOption | unmatched — not counted | — | listed in scope | no |
| Offbeat Security - Dolomite Money Market Review - May 2024.pdf | DolomiteMoneyMarket | own contract | 0x652bcf… (selected) `0x652bcf...b189ad` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Offbeat Security - Euler Money Market Review - Sep 2024.pdf | EulerMoneyMarket | own contract | EulerMoneyMarket (selected) `0x486b91...48e03e` — deployed 2024-12-16 17:44:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Offbeat Security - Euler Money Market Review - Sep 2024.pdf | EulerReverseLookup | own contract | EulerReverseLookup (selected) `0xd0d9e5...f0fc68` — deployed 2024-09-06 12:01:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Offbeat Security - Euler Money Market Review - Sep 2024.pdf | EulerRewardsOperator | own contract | EulerRewardsOperator (selected) `0xb3863d...f29ead` — deployed 2024-09-06 12:01:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Offbeat Security - Strategy Builder Review - May 2024.pdf | StrategyBuilder | ambiguous — not counted | 0xee7025… (alternative) `0xee7025...deface` — liveness: live (current_address_book_code)<br>0xf3861a… (alternative) `0xf3861a...9b49dd` — liveness: live (current_address_book_code)<br>0x38b527… (alternative) `0x38b527...d76a79` — liveness: live (current_address_book_code)<br>0x39a4c4… (alternative) `0x39a4c4...caf687` — liveness: live (current_address_book_code)<br>0x34b7fa… (alternative) `0x34b7fa...6a6574` — liveness: live (current_address_book_code)<br>0xb2da5c… (alternative) `0xb2da5c...ed2d1e` — liveness: live (current_address_book_code)<br>0xb519ab… (alternative) `0xb519ab...7f23c3` — liveness: live (current_address_book_code)<br>0x8d82f0… (alternative) `0x8d82f0...21d5f7` — liveness: live (current_address_book_code)<br>0xd9cafb… (alternative) `0xd9cafb...a18c1a` — liveness: live (current_address_book_code)<br>0xc99807… (alternative) `0xc99807...5ea692` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Offbeat Security - Strategy Builder Review - May 2024.pdf | StrategyBlocks | unmatched — not counted | — | listed in scope | no |
| Offbeat Security - Strategy Builder Review - May 2024.pdf | PositionPermit | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3aaa75...f781e5` | CometReverseLookup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdaf4da...41024e` | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3cab97...76861a` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 710 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 12 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 22 ambiguous, 27 unmatched
- Matched-own operational status: 12 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: unique_name=114

Zero-match audit list:

- [16902] ABDK_Contango_CoreV2PartIII_v_2_0.pdf
- [16906] Offbeat Security - Contango Perpetual Option Review - Oct 2024.pdf
- [16909] Offbeat Security - Strategy Builder Review - May 2024.pdf

Fork inheritance lineage and inherited audits are included when available.
