# Agentic Audit Brief: NEOPIN

## Project Overview

- Project: NEOPIN (`neopin`)
- Website: [https://neopin.io](https://neopin.io)
- Lifecycle: active (Tier 0, 70.1% below peak)
- Generated: 2026-06-17T07:00:52.204Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum, klaytn, polygon
- Contract surface: 48 unique implementations (48 raw deployments)
- DeFi Llama TVL: $40,201,133.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NEOPIN is the legacy CeDeFi/DeFi product associated with staking, liquid staking, DEX swap, and farm services historically deployed across Ethereum, Polygon, and Klaytn/Kaia. The current public homepage is branded as Mayflower and positions the project around an AI guide for navigating crypto, with emphasis on a Solana launch, so the current identity should not be described primarily as a liquid-staking or DEX homepage. Contract and chain coverage should be refreshed to distinguish legacy NEOPIN deployments from current Mayflower/Solana positioning and current DefiLlama-reported Kaia, Tron, and staking surfaces.

### Architecture

The product families share a common deployer cluster, indicating unified governance and potential token flows between liquid staking tokens and pool/staking contracts. Proxies are used across families for upgradeability, suggesting a shared infrastructure pattern.

## Contract Surface Quality

- Indexed contracts: 104; live-surface contracts included: 48 (10 live, 38 unknown).
- Excluded by liveness: 30 inactive, 26 singleton, 0 uninitialized.
- Deployment units: 2/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 48
- Raw deployments: 48
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

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x1312e1149df72e85c18adcc79c151812ce7ab652) | proxy | polygon | unit-31455 | `0xbc57a9...413917` | ❓ Unverified |
| Proxy (impl: 0x1560f0ffde7baa1fee9ba4118c2799beb4c55507) | proxy | ethereum | unit-31446 | `0xc1e718...22566f` | ❓ Unverified |
| Proxy (impl: 0x73d481324cd2fc13a277391d719905db974c76fe) | proxy | polygon | unit-31448 | `0x1cf9e9...2e7513` | ❓ Unverified |
| Proxy (impl: 0xca4e15131c415a163052c330453435879b4f9239) | proxy | ethereum | unit-31443 | `0x5d25bc...d382a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02b3ea...d3b4b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22ef8e...efeee4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x511c18...5980ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e277f...a6f076` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72a0b5...401749` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6f659...dbdccf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0df2d...a52f33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7356e...ce4fe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd23b1b...874dd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0b469...5ea9f8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x062565...78dc14` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x09dc8a...995bb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x117ad9...15fda4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1289ae...1e71aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x19cb27...105968` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a1f14...5b43e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1f772c...1fb0df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x511c18...5980ec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x57d1a6...032974` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59a754...37071e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5e8091...ec3e5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6e277f...a6f076` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x72a0b5...401749` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x74f16c...5fceee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x778b6d...ac9dcf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78fefc...efb404` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f1706...6a61e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8331ce...7fd848` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x95bcd0...dfd0fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae65d6...044595` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xceb63b...37012b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf5e73...35da8c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xde205b...261fe1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xec8236...4affc5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef9944...471cce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4ac08...3ccb88` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfd28c7...d9829d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x184e03...b0e646` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x1a1f14...5b43e9` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x306ee0...62000c` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x489d6d...db8057` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xe06597...bd3815` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xf20816...02ae10` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xf9d92b...5a898f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf](https://github.com/Neopin/neopin-audits/blob/master/Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf) | SlowMist | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf](https://github.com/Neopin/neopin-audits/blob/master/Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf) | SlowMist | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Audit_Report_Verification_NPT_SlowMist.pdf](https://github.com/Neopin/neopin-audits/blob/master/Audit_Report_Verification_NPT_SlowMist.pdf) | SlowMist | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 48 |

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
