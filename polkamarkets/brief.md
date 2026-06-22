# Agentic Audit Brief: Polkamarkets

⚠️ Lifecycle status: DECLINING - TVL dropped 17.3% over 90 days

## Project Overview

- Project: Polkamarkets (`polkamarkets`)
- Website: [https://www.polkamarkets.com](https://www.polkamarkets.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-22T11:14:33.197Z
- Pipeline run: v2-pipeline-2026-06-22-727228-695b
- Chains: celo, ethereum, moonbeam, moonriver, polygon
- Contract surface: 18 unique implementations (18 raw deployments)
- DeFi Llama TVL: $12,570.81
- On-chain TVL (included contracts): $294,007.64
- TVL by chain: Ethereum $291,148.47 | Celo $1,469.37 | Polygon $1,389.80

## Project Description

Polkamarkets is a decentralized prediction market protocol that allows users to create and trade outcome tokens on real-world events. It uses a reality oracle to resolve markets and a native token for governance and rewards.

### Architecture

The Polkamarkets family consists of multiple prediction market versions (V1, V2, V3) that rely on reality oracle contracts (RealitioERC20, RealityETH_ERC20_v3_0) for event resolution. The PredictionMarketV3Factory deploys new markets, while the PredictionMarketV3Manager handles governance and upgrades. Token contracts like PolkamarketsToken and TokenProxy are used for staking, rewards, and bridging across chains.

## Contract Surface Quality

- Indexed contracts: 133; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 111 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 1/4 live.
- Detected codebases: none
- Unverified dependencies: 4/17.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $294,007.64
- Latest audit: 2021-11 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $294,007.64 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PolkamarketsToken | token | ethereum | n/a | [`0xd47816...f1cfbf`](./contracts/ethereum-1/0xd478161c952357f05f0292b56012cd8457f1cfbf/) | ⚠️ Unaudited |
| TokenImplementation | token | celo | unit-44162 | [`0xb4d8a6...399b2d`](./contracts/celo-42220/0xb4d8a602fff7790eec3f2c0c1a51a475ee399b2d/) | ⚠️ Unaudited |
| FxERC20 | token | polygon | n/a | [`0x996f19...187fd0`](./contracts/polygon-137/0x996f19d4b1ce6d5ad72ceaaa53152ceb1b187fd0/) | ⚠️ Unaudited |
| PredictionMarketV2 | unknown | polygon | n/a | [`0x39e66e...bef340`](./contracts/polygon-137/0x39e66ee6b2ddaf4defded3038e0162180dbef340/) | ⚠️ Unaudited |
| PredictionMarketV3 | unknown | celo | n/a | [`0xdcbe79...54b026`](./contracts/celo-42220/0xdcbe79f74c98368141798ea0b7b979b9ba54b026/) | ⚠️ Unaudited |
| PredictionMarketV3Manager | governance | celo | n/a | [`0x1f021b...4791de`](./contracts/celo-42220/0x1f021be85d6b4d1867c43ef98d30ccc5a44791de/) | ⚠️ Unaudited |
| WETH | token | moonriver | n/a | [`0x98878b...032b8a`](./contracts/moonriver-1285/0x98878b06940ae243284ca214f92bb71a2b032b8a/) | ⚠️ Unaudited |
| WETH9 | token | moonbeam | n/a | [`0xacc15d...c6077f`](./contracts/moonbeam-1284/0xacc15dc74880c9944775448304b263d191c6077f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonbeam | n/a | `0x8b2934...0c8e1f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x66136a...f0a3b3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8b2934...0c8e1f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb3fb48...107db7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb497c3...cfc9d6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x307893...a2ee3d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x61ccdd...544f2f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9ab121...d37f2b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbc39fa...bbaec6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdefb36...e03bad` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/polkamarkets) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://hacken.io/audits/polkamarkets/sca-polkamarkets-gamefi-oct2021) | Hacken | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/u/3/d/121EaqOJPGuxhXeRWIGe4KHiWxTA8OO0P/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<img alt="Red4sec" srcSet="/_next/image?url=%2Fimages%2Fpages%2Fhome%2Faudits%2Fred4sec.png&amp;w=256&amp;q=75 1x, /_next/image?url=%2Fimages%2Fpages%2Fhome%2Faudits%2Fred4sec.png&amp;w=384&amp;q=75 2x" src="/_next/image?url=%2Fimages%2Fpages%2Fhome%2Faudits%2Fred4sec.png&amp;w=384&amp;q=75" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" loading="lazy"/>V2 Security audit](https://drive.google.com/file/d/1eJ5okthHrzOpU1ZUwlafibaki4WI8Bcf/view?usp=share_link) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd47816...f1cfbf`](./contracts/ethereum-1/0xd478161c952357f05f0292b56012cd8457f1cfbf/) | PolkamarketsToken | token | $291,148.47 | Verified native implementation with $291,148.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xb4d8a6...399b2d`](./contracts/celo-42220/0xb4d8a602fff7790eec3f2c0c1a51a475ee399b2d/) | TokenImplementation | token | $1,469.37 | Verified native implementation with $1,469.37 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x39e66e...bef340`](./contracts/polygon-137/0x39e66ee6b2ddaf4defded3038e0162180dbef340/) | PredictionMarketV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xdcbe79...54b026`](./contracts/celo-42220/0xdcbe79f74c98368141798ea0b7b979b9ba54b026/) | PredictionMarketV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x1f021b...4791de`](./contracts/celo-42220/0x1f021be85d6b4d1867c43ef98d30ccc5a44791de/) | PredictionMarketV3Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=5

Zero-match audit list:

- [13681] DL audit link
- [13682] DL audit link
- [13683] DL audit link
- [13684] <img alt="Red4sec" srcSet="/_next/image?url=%2Fimages%2Fpages%2Fhome%2Faudits%2Fred4sec.png&amp;w=256&amp;q=75 1x, /_next/image?url=%2Fimages%2Fpages%2Fhome%2Faudits%2Fred4sec.png&amp;w=384&amp;q=75 2x" src="/_next/image?url=%2Fimages%2Fpages%2Fhome%2Faudits%2Fred4sec.png&amp;w=384&amp;q=75" decoding="async" data-nimg="intrinsic" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%" loading="lazy"/>V2 Security audit

Fork inheritance lineage and inherited audits are included when available.
