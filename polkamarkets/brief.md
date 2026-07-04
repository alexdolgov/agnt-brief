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
| ERC20PresetMinterPauser | unknown | polygon | n/a | 3 deployments: polygon [`0x1192f1...9dcc4d`](./contracts/polygon-137/0x1192f125c3a269834a3b59775ceb37889c9dcc4d/); polygon `0x9ab121...d37f2b`; celo `0x83d3f4...f508b2` | ⚠️ Unaudited |
| FantasyERC20 | unknown | polygon | n/a | 3 deployments: polygon [`0x3f5c62...3a3364`](./contracts/polygon-137/0x3f5c62b07a38bce116fb5fcc61cbc262b43a3364/); polygon `0x7595e1...da8965`; polygon `0xdefb36...e03bad` | ⚠️ Unaudited |
| FxERC20 | token | polygon | n/a | [`0x996f19...187fd0`](./contracts/polygon-137/0x996f19d4b1ce6d5ad72ceaaa53152ceb1b187fd0/) | ⚠️ Unaudited |
| PolkamarketsToken | token | ethereum | n/a | [`0xd47816...f1cfbf`](./contracts/ethereum-1/0xd478161c952357f05f0292b56012cd8457f1cfbf/) | ⚠️ Unaudited |
| PredictionMarketV2 | unknown | polygon | n/a | [`0x39e66e...bef340`](./contracts/polygon-137/0x39e66ee6b2ddaf4defded3038e0162180dbef340/) | ⚠️ Unaudited |
| PredictionMarketV3 | unknown | celo | n/a | [`0xdcbe79...54b026`](./contracts/celo-42220/0xdcbe79f74c98368141798ea0b7b979b9ba54b026/) | ⚠️ Unaudited |
| PredictionMarketV3Manager | governance | celo | n/a | [`0x1f021b...4791de`](./contracts/celo-42220/0x1f021be85d6b4d1867c43ef98d30ccc5a44791de/) | ⚠️ Unaudited |
| TokenImplementation | token | celo | n/a | [`0xb4d8a6...399b2d`](./contracts/celo-42220/0xb4d8a602fff7790eec3f2c0c1a51a475ee399b2d/) | ⚠️ Unaudited |
| WETH | token | moonriver | n/a | [`0x98878b...032b8a`](./contracts/moonriver-1285/0x98878b06940ae243284ca214f92bb71a2b032b8a/) | ⚠️ Unaudited |
| WETH9 | token | moonbeam | n/a | [`0xacc15d...c6077f`](./contracts/moonbeam-1284/0xacc15dc74880c9944775448304b263d191c6077f/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | moonbeam | n/a | `0x8b2934...0c8e1f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa67cd9...5614ed` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xdb63af...f3046f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf50225...de0c4d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0340bc...eeb1c9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x056973...9c04d2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0c10e6...07bb96` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x121662...6cbf9c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1866be...4d9494` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1d00a3...80023e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x21a181...2065ac` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3ae63e...64f444` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4b9c51...71f9c9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4d476a...7c6de4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x537004...fca9f1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x66136a...f0a3b3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x73cfca...bf9e18` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x73f3bf...6da003` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x78aa55...8196ff` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7963ff...3ec310` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7bb649...374bd5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x809049...7e66dc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x80f133...570fc6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x825ada...40678a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8b2934...0c8e1f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8f367a...45188b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x938971...59ab76` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9702b4...a0a419` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9cfb3b...807663` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa8a6fd...607831` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa8d3a6...393dab` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb26b39...09f1d9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb37869...13b172` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb3fb48...107db7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb497c3...cfc9d6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc0755d...9f0873` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc08081...e501bb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc4753f...9599b1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcf9b64...32e3ee` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd3da6e...92eb90` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd5cdf3...802229` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd8ef5f...ab612a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdf53c4...e350ed` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe3dedc...728cba` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xeb47b1...ef113c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf8595b...0f6048` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfd9e18...61022b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x307893...a2ee3d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x60d795...06cc57` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x61ccdd...544f2f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9ab121...d37f2b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbc39fa...bbaec6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdefb36...e03bad` | ❓ Unverified |

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
| polygon | [`0x1192f1...9dcc4d`](./contracts/polygon-137/0x1192f125c3a269834a3b59775ceb37889c9dcc4d/) | ERC20PresetMinterPauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3f5c62...3a3364`](./contracts/polygon-137/0x3f5c62b07a38bce116fb5fcc61cbc262b43a3364/) | FantasyERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x996f19...187fd0`](./contracts/polygon-137/0x996f19d4b1ce6d5ad72ceaaa53152ceb1b187fd0/) | FxERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd47816...f1cfbf`](./contracts/ethereum-1/0xd478161c952357f05f0292b56012cd8457f1cfbf/) | PolkamarketsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x39e66e...bef340`](./contracts/polygon-137/0x39e66ee6b2ddaf4defded3038e0162180dbef340/) | PredictionMarketV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xdcbe79...54b026`](./contracts/celo-42220/0xdcbe79f74c98368141798ea0b7b979b9ba54b026/) | PredictionMarketV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x1f021b...4791de`](./contracts/celo-42220/0x1f021be85d6b4d1867c43ef98d30ccc5a44791de/) | PredictionMarketV3Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xb4d8a6...399b2d`](./contracts/celo-42220/0xb4d8a602fff7790eec3f2c0c1a51a475ee399b2d/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x98878b...032b8a`](./contracts/moonriver-1285/0x98878b06940ae243284ca214f92bb71a2b032b8a/) | WETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xacc15d...c6077f`](./contracts/moonbeam-1284/0xacc15dc74880c9944775448304b263d191c6077f/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
