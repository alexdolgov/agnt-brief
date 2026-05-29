# Agentic Audit Brief: NEAR Intents

## Project Overview

- Project: NEAR Intents (`near-intents`)
- Website: [https://near.com/](https://near.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-29T20:45:37.798Z
- Pipeline run: v2-pipeline-2026-05-29-691c43-0a62
- Chains: gnosis
- Contract surface: 7 unique implementations (24 raw deployments)
- DeFi Llama TVL: $79,032,269.00
- On-chain TVL (included contracts): $3,719,105.13
- TVL by chain: Gnosis $3,719,105.13

## Project Description

NEAR Intents is a cross-chain bridge protocol that enables asset transfers between NEAR and other blockchains. It uses governance-controlled token contracts and proxy-based upgradeability to manage bridged assets on Gnosis.

### Architecture

The protocol uses a single product family where governance contracts (GnosisControllerToken) control token proxies (FiatTokenProxy, TokenProxy) via upgradeable patterns. BlacklistValidatorUpgradeable contracts provide shared compliance infrastructure for token transfers.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 24
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,719,105.13
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PermittableToken | token | gnosis | [`0x177127...973d3c`](./contracts/gnosis-100/0x177127622c4a00f3d409b75571e12cb3c8973d3c/) | ⚠️ Unaudited |
| BlacklistValidatorUpgradeable | unknown | gnosis | 4 deployments: gnosis [`0x614fcc...0388e0`](./contracts/gnosis-100/0x614fcc5b7f621a01731a7598e3c9645a6b0388e0/); gnosis `0xc92186...4fe56b`; gnosis `0xd2d94d...24d17b`; gnosis `0xfe74a5...f238a0` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | gnosis | 3 deployments: gnosis [`0x6f795d...e11734`](./contracts/gnosis-100/0x6f795df1363b2c5e1361d77a1071053ec2e11734/); gnosis `0xaca177...525331`; gnosis `0xfcfcc8...517889` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | gnosis | [`0x2a22f9...8f76f0`](./contracts/gnosis-100/0x2a22f9c3b484c3629090feed35f17ff8f88f76f0/) | ⚠️ Unaudited |
| GnosisControllerToken | governance | gnosis | 9 deployments: gnosis [`0x06d53c...84450e`](./contracts/gnosis-100/0x06d53cbda1ebc80e99c76861777d0537d584450e/); gnosis `0x2ba8cb...1bf7be`; gnosis `0x420ca0...fa3430`; gnosis `0x50d1a7...7f2b7f`; gnosis `0x60cb9f...f4635d`; gnosis `0x614bd4...953f61`; gnosis `0x8e34bf...9b7053`; gnosis `0x9e9eab...ff135f`; gnosis `0xb1f2cc...ae6a54` | ⚠️ Unaudited |
| TokenV2_1_0 | token | gnosis | 5 deployments: gnosis [`0x33f8d5...d81f5a`](./contracts/gnosis-100/0x33f8d5dd8cadca4f924a03c63cb3726d07d81f5a/); gnosis `0x605365...b1919a`; gnosis `0x6b9124...cfe568`; gnosis `0xad57b8...c7fb55`; gnosis `0xf051cd...2685c4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | gnosis | `0x994bb2...a984a7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | [`0x177127...973d3c`](./contracts/gnosis-100/0x177127622c4a00f3d409b75571e12cb3c8973d3c/) | PermittableToken | token | $3,719,105.13 | Verified native implementation with $3,719,105.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x614fcc...0388e0`](./contracts/gnosis-100/0x614fcc5b7f621a01731a7598e3c9645a6b0388e0/) | BlacklistValidatorUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x2a22f9...8f76f0`](./contracts/gnosis-100/0x2a22f9c3b484c3629090feed35f17ff8f88f76f0/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x06d53c...84450e`](./contracts/gnosis-100/0x06d53cbda1ebc80e99c76861777d0537d584450e/) | GnosisControllerToken | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x33f8d5...d81f5a`](./contracts/gnosis-100/0x33f8d5dd8cadca4f924a03c63cb3726d07d81f5a/) | TokenV2_1_0 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [5482] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5483] 0002-metadata-manifest-and-pull-command.md
- [5484] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
