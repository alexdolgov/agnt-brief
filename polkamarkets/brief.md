# Agentic Audit Brief: Polkamarkets

## Project Overview

- Project: Polkamarkets (`polkamarkets`)
- Website: [https://www.polkamarkets.com](https://www.polkamarkets.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.964Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: celo, ethereum, moonbeam, moonriver, polygon
- Contract surface: 63 unique implementations (67 raw deployments)
- DeFi Llama TVL: $11,946.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prediction Market. Structurally: 24 project-authored contract(s) across 5 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 82; live-surface contracts included: 67 (14 live, 53 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 63 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 53
- Unique implementations: 63
- Raw deployments: 67
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20PresetMinterPauser | unknown | polygon | n/a | 3 deployments: polygon [`0x1192f125c3a269834a3b59775ceb37889c9dcc4d`](./contracts/polygon-137/0x1192f125c3a269834a3b59775ceb37889c9dcc4d/); polygon `0x9ab1213d360bea3eda75d88d81d7fbfc9fd37f2b`; celo `0x83d3f4769a19f1b43337888b0290f5473cf508b2` | ⚠️ Unaudited |
| FantasyERC20 | unknown | polygon | n/a | 3 deployments: polygon [`0x3f5c62b07a38bce116fb5fcc61cbc262b43a3364`](./contracts/polygon-137/0x3f5c62b07a38bce116fb5fcc61cbc262b43a3364/); polygon `0x7595e10c45cdd68cab85f32bc9d52ead31da8965`; polygon `0xdefb36c47754d2e37d44b8b8c647d4d643e03bad` | ⚠️ Unaudited |
| FxERC20 | token | polygon | n/a | [`0x996f19d4b1ce6d5ad72ceaaa53152ceb1b187fd0`](./contracts/polygon-137/0x996f19d4b1ce6d5ad72ceaaa53152ceb1b187fd0/) | ⚠️ Unaudited |
| PolkamarketsToken | token | ethereum | n/a | [`0xd478161c952357f05f0292b56012cd8457f1cfbf`](./contracts/ethereum-1/0xd478161c952357f05f0292b56012cd8457f1cfbf/) | ⚠️ Unaudited |
| PredictionMarketV2 | unknown | polygon | n/a | [`0x39e66ee6b2ddaf4defded3038e0162180dbef340`](./contracts/polygon-137/0x39e66ee6b2ddaf4defded3038e0162180dbef340/) | ⚠️ Unaudited |
| PredictionMarketV3 | unknown | celo | n/a | [`0xdcbe79f74c98368141798ea0b7b979b9ba54b026`](./contracts/celo-42220/0xdcbe79f74c98368141798ea0b7b979b9ba54b026/) | ⚠️ Unaudited |
| PredictionMarketV3Manager | governance | celo | n/a | [`0x1f021be85d6b4d1867c43ef98d30ccc5a44791de`](./contracts/celo-42220/0x1f021be85d6b4d1867c43ef98d30ccc5a44791de/) | ⚠️ Unaudited |
| TokenImplementation | token | celo | n/a | [`0xb4d8a602fff7790eec3f2c0c1a51a475ee399b2d`](./contracts/celo-42220/0xb4d8a602fff7790eec3f2c0c1a51a475ee399b2d/) | ⚠️ Unaudited |
| WETH | token | moonriver | n/a | [`0x98878b06940ae243284ca214f92bb71a2b032b8a`](./contracts/moonriver-1285/0x98878b06940ae243284ca214f92bb71a2b032b8a/) | ⚠️ Unaudited |
| WETH9 | token | moonbeam | n/a | [`0xacc15dc74880c9944775448304b263d191c6077f`](./contracts/moonbeam-1284/0xacc15dc74880c9944775448304b263d191c6077f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (53)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonbeam | n/a | `0x8b29344f368b5fa35595325903fe0eaab70c8e1f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa67cd90381e4c96382ea42ee1f5d58aab85614ed` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xdb63afd747948a26e4979f0cdd6ad96fb9f3046f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf50225a84382c74cbdea10b0c176f71fc3de0c4d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0340bce99962573c45d27a95cd39c63bd7eeb1c9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x056973f631a5533470143bb7010c9229c19c04d2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0c10e603e21f765c50805ce019adc034ef07bb96` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1216624e9753f77dfcdedda7c2938d69076cbf9c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1866be6a65a22a333136b720ba2906cb794d9494` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1d00a3fc0467d511d05aa37de5b70a5bc580023e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x21a181922e6b7cc4aef7f6f28521ffff152065ac` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3ae63e34add2e67c036586cd6d93c4ff1d64f444` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4b9c5198ad73f358041d60600f4cdc3d8671f9c9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4d476a6aac8b5a296a882b94254cd73ae37c6de4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x537004440fffe1d4ae9f009031fc2b0385fca9f1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x66136ab227b455ba05b316c30b63dbc112f0a3b3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x73cfcafab984b846bf96e4122eeb10643cbf9e18` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x73f3bf53a3891feb06e3deed63c9231f336da003` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x78aa55ce0b0dc7488d2c38bd92769f4d0c8196ff` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7963ff5f7b7bb4c459cb189bff036a0da43ec310` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7bb6499326c6bdd2eed32c8483d38ae8a7374bd5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8090494302d4b3be0f51bce41fc164b1fc7e66dc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x80f1336c2908b564ecb70516796fd19f16570fc6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x825adaea5fc56d93b348a48542749e59a340678a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8b29344f368b5fa35595325903fe0eaab70c8e1f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8f367a53fb1ea5e9a08cee00eae27ed37f45188b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x938971c46566538c122eed41100b05bd8159ab76` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9702b462c188fe47196f864944cf392e6da0a419` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9cfb3b437ba82c8d243d3e77e2858c46fa807663` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa8a6fd8d021d9e32e3318ffacdd94e8cda607831` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa8d3a6008f894682f681d1d0f3a09e4064393dab` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb26b39d502fa1eea8fc822ecdb1f9ba73809f1d9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb37869cfca0117be335f77a9c7e5ff241713b172` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb3fb48bf090bedff4f6f93ffb40221742e107db7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb497c3e9d27ba6b1fea9f1b941d8c79e66cfc9d6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc0755dfc279449384b4764e799d59c96fe9f0873` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc08081a057287a8ead7751b6a37a101b12e501bb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc4753f878ec4d06e4d02e539ff61c5818c9599b1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcf9b646077f0ecc06ee0cfea99bf2900f332e3ee` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd3da6e6ee82b2c01b723854bfcc1fcdada92eb90` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd5cdf34a7eb986fa4bfa5313362c9259af802229` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd8ef5f9e8d752eb8c76f1b6105cd48f8efab612a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdf53c48ed0690146b7d168984eb8632a73e350ed` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe3dedcf63940e5ebd8b72ea4f49616f440728cba` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xeb47b10660aad38bd24fcb38f6afaa2090ef113c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf8595b8a096d2284c5b2ed08d0659396730f6048` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfd9e186f03bb5b5e992de8704bff4a04d661022b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x307893b1d9f2f6af097310ef6e49b90bc5a2ee3d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x60d7956805ec5a698173def4d0e1ecdefb06cc57` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x61ccdd59b133497121dfe05eabe0943574544f2f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9ab1213d360bea3eda75d88d81d7fbfc9fd37f2b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbc39fa757886e8a56422abc460b1fffc70bbaec6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdefb36c47754d2e37d44b8b8c647d4d643e03bad` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/polkamarkets](https://skynet.certik.com/projects/polkamarkets) | CertiK | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [hacken.io/audits/polkamarkets/sca-polkamarkets-gamefi-oct2021](https://hacken.io/audits/polkamarkets/sca-polkamarkets-gamefi-oct2021) | Hacken | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/u/3/d/121EaqOJPGuxhXeRWIGe4KHiWxTA8OO0P/view](https://drive.google.com/file/u/3/d/121EaqOJPGuxhXeRWIGe4KHiWxTA8OO0P/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1eJ5okthHrzOpU1ZUwlafibaki4WI8Bcf/view](https://drive.google.com/file/d/1eJ5okthHrzOpU1ZUwlafibaki4WI8Bcf/view?usp=share_link) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x1192f125c3a269834a3b59775ceb37889c9dcc4d`](./contracts/polygon-137/0x1192f125c3a269834a3b59775ceb37889c9dcc4d/) | ERC20PresetMinterPauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3f5c62b07a38bce116fb5fcc61cbc262b43a3364`](./contracts/polygon-137/0x3f5c62b07a38bce116fb5fcc61cbc262b43a3364/) | FantasyERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x996f19d4b1ce6d5ad72ceaaa53152ceb1b187fd0`](./contracts/polygon-137/0x996f19d4b1ce6d5ad72ceaaa53152ceb1b187fd0/) | FxERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd478161c952357f05f0292b56012cd8457f1cfbf`](./contracts/ethereum-1/0xd478161c952357f05f0292b56012cd8457f1cfbf/) | PolkamarketsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x39e66ee6b2ddaf4defded3038e0162180dbef340`](./contracts/polygon-137/0x39e66ee6b2ddaf4defded3038e0162180dbef340/) | PredictionMarketV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xdcbe79f74c98368141798ea0b7b979b9ba54b026`](./contracts/celo-42220/0xdcbe79f74c98368141798ea0b7b979b9ba54b026/) | PredictionMarketV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x1f021be85d6b4d1867c43ef98d30ccc5a44791de`](./contracts/celo-42220/0x1f021be85d6b4d1867c43ef98d30ccc5a44791de/) | PredictionMarketV3Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xb4d8a602fff7790eec3f2c0c1a51a475ee399b2d`](./contracts/celo-42220/0xb4d8a602fff7790eec3f2c0c1a51a475ee399b2d/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x98878b06940ae243284ca214f92bb71a2b032b8a`](./contracts/moonriver-1285/0x98878b06940ae243284ca214f92bb71a2b032b8a/) | WETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xacc15dc74880c9944775448304b263d191c6077f`](./contracts/moonbeam-1284/0xacc15dc74880c9944775448304b263d191c6077f/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 53 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13681] skynet.certik.com/projects/polkamarkets
- [13682] hacken.io/audits/polkamarkets/sca-polkamarkets-gamefi-oct2021
- [13683] drive.google.com/file/u/3/d/121EaqOJPGuxhXeRWIGe4KHiWxTA8OO0P/view
- [13684] drive.google.com/file/d/1eJ5okthHrzOpU1ZUwlafibaki4WI8Bcf/view

Fork inheritance lineage and inherited audits are included when available.
