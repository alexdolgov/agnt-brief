# Agentic Audit Brief: NEOPIN

## Project Overview

- Project: NEOPIN (`neopin`)
- Website: [https://neopin.io](https://neopin.io)
- Lifecycle: active (Tier 0, 70.1% below peak)
- Generated: 2026-06-11T01:22:47.809Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-1f48
- Chains: ethereum, klaytn, polygon
- Contract surface: 100 unique implementations (100 raw deployments)
- DeFi Llama TVL: $55,370,847.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NEOPIN is the legacy CeDeFi/DeFi product associated with staking, liquid staking, DEX swap, and farm services historically deployed across Ethereum, Polygon, and Klaytn/Kaia. The current public homepage is branded as Mayflower and positions the project around an AI guide for navigating crypto, with emphasis on a Solana launch, so the current identity should not be described primarily as a liquid-staking or DEX homepage. Contract and chain coverage should be refreshed to distinguish legacy NEOPIN deployments from current Mayflower/Solana positioning and current DefiLlama-reported Kaia, Tron, and staking surfaces.

### Architecture

The product families share a common deployer cluster, indicating unified governance and potential token flows between liquid staking tokens and pool/staking contracts. Proxies are used across families for upgradeability, suggesting a shared infrastructure pattern.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 99
- Unique implementations: 100
- Raw deployments: 100
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Controller | governance | ethereum | [`0x5bdf27...2444fa`](./contracts/ethereum-1/0x5bdf270a9e3898aa081e19592ded3e7cfb2444fa/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (99)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x0464786780545b67e0fe7a384993592764e207e9) | proxy | ethereum | `0x46e581...0040d2` | ❓ Unverified |
| Proxy (impl: 0x1312e1149df72e85c18adcc79c151812ce7ab652) | proxy | polygon | `0xbc57a9...413917` | ❓ Unverified |
| Proxy (impl: 0x1560f0ffde7baa1fee9ba4118c2799beb4c55507) | proxy | ethereum | `0xc1e718...22566f` | ❓ Unverified |
| Proxy (impl: 0x19a16aa7c987fbda7dae021b05c1eb06524c7893) | proxy | ethereum | `0x73eb5e...6382c6` | ❓ Unverified |
| Proxy (impl: 0x6e6c6cf18e1dda9c429da782f76a738333ed9df1) | proxy | polygon | `0x3afc4f...23f036` | ❓ Unverified |
| Proxy (impl: 0x73d481324cd2fc13a277391d719905db974c76fe) | proxy | polygon | `0x1cf9e9...2e7513` | ❓ Unverified |
| Proxy (impl: 0x964fddd7623f6e7d8a0532f8bd823ac1c5c4246e) | proxy | polygon | `0x6f051c...d12718` | ❓ Unverified |
| Proxy (impl: 0x9817ab9947e4b2afbf9a58fc6aa97c7d19df5739) | proxy | polygon | `0x6fd088...a139c0` | ❓ Unverified |
| Proxy (impl: 0xa483ec6793e330793debc28449380620b93e9e93) | proxy | polygon | `0xc1e718...22566f` | ❓ Unverified |
| Proxy (impl: 0xca22e41274cc16ec02a03eb295d93adbbb6f88df) | proxy | ethereum | `0x0807ae...d9fec0` | ❓ Unverified |
| Proxy (impl: 0xca4e15131c415a163052c330453435879b4f9239) | proxy | ethereum | `0x5d25bc...d382a0` | ❓ Unverified |
| Proxy (impl: 0xdd1129db859ab25123d6c11aec19a8dec24a8b28) | proxy | ethereum | `0x2726a3...569106` | ❓ Unverified |
| Proxy (impl: 0xe0b469cb3eda0ece9e425cfeda4df986a55ea9f8) | proxy | polygon | `0x2d723f...abc792` | ❓ Unverified |
| Proxy (impl: 0xebf597bb0e3fd63381a55c5e2c754df744f5417e) | proxy | polygon | `0x5d25bc...d382a0` | ❓ Unverified |
| Proxy (impl: 0xef994468c11d88d91b063efe82f425e193471cce) | proxy | ethereum | `0xf5a0f6...59e13a` | ❓ Unverified |
| Proxy (impl: 0xf93623657af14dd2766decdbd2e050fbf1d539fd) | proxy | polygon | `0xa6bab6...10a301` | ❓ Unverified |
| Proxy (impl: 0xfce5ea678c76fbe03c080c240796f5a9c7f0829b) | proxy | ethereum | `0x841d3b...a4e182` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x006fc9...fc4603` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x006fd2...ae0f9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x02b3ea...d3b4b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x046478...e207e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x09dc8a...995bb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0c6c0b...14be59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19a16a...4c7893` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19cf25...b25f86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x22ef8e...efeee4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d723f...abc792` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x30fad6...748f66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a1d81...2b8f34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e4a23...7c1901` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x511c18...5980ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5ccb3b...55a7e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e277f...a6f076` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x72a0b5...401749` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f1706...6a61e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x829dce...71bdae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9fedbb...aa71b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa483ec...3e9e93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae65d6...044595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb1157a...1979ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5b5cd...a72ead` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb6a029...6a27f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc356f...fc75f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc57a9...413917` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xca22e4...6f88df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcf1ec7...79b87c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd23b1b...874dd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xda33d5...74fd5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdc7476...1c941f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdd1129...4a8b28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xde205b...261fe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe0b469...5ea9f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe17d9b...f07a06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xebf597...f5417e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef9944...471cce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf03539...325292` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfce5ea...f0829b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd5948...931e0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfdc823...5f1884` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x062565...78dc14` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x09dc8a...995bb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x117ad9...15fda4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1289ae...1e71aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x19cb27...105968` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1a1f14...5b43e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1f772c...1fb0df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x511c18...5980ec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x57d1a6...032974` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x59a754...37071e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5e8091...ec3e5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6e277f...a6f076` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6e6c6c...ed9df1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x72a0b5...401749` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x74f16c...5fceee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x778b6d...ac9dcf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x78fefc...efb404` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7f1706...6a61e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8331ce...7fd848` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x95bcd0...dfd0fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x964fdd...c4246e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9817ab...df5739` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa483ec...3e9e93` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xae65d6...044595` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xceb63b...37012b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xde205b...261fe1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe0b469...5ea9f8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xebf597...f5417e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xec8236...4affc5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xef9944...471cce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf4ac08...3ccb88` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf93623...d539fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfd28c7...d9829d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x184e03...b0e646` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x1a1f14...5b43e9` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x306ee0...62000c` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x489d6d...db8057` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xe06597...bd3815` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xf20816...02ae10` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xf9d92b...5a898f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf](https://github.com/Neopin/neopin-audits/blob/master/Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf) | SlowMist | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf](https://github.com/Neopin/neopin-audits/blob/master/Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf) | SlowMist | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Audit_Report_Verification_NPT_SlowMist.pdf](https://github.com/Neopin/neopin-audits/blob/master/Audit_Report_Verification_NPT_SlowMist.pdf) | SlowMist | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5bdf27...2444fa`](./contracts/ethereum-1/0x5bdf270a9e3898aa081e19592ded3e7cfb2444fa/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 95 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4694] Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf
- [4695] Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf
- [4696] Audit_Report_Verification_NPT_SlowMist.pdf

Fork inheritance lineage and inherited audits are included when available.
