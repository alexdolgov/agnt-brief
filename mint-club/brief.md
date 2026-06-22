# Agentic Audit Brief: Mint Club

⚠️ Lifecycle status: DECLINING - TVL dropped 19.9% over 90 days

## Project Overview

- Project: Mint Club (`mint-club`)
- Website: [https://mint.club](https://mint.club)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T14:47:21.055Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, avalanche, base, blast, bsc, ethereum, klaytn, optimism, polygon, unichain, zora
- Contract surface: 22 unique implementations (87 raw deployments)
- DeFi Llama TVL: $597,996.00
- On-chain TVL (included contracts): $1,405,429.85
- TVL by chain: Base $1,333,373.94 | Bsc $72,055.90

## Project Description

Mint Club is a launchpad protocol that enables users to create and trade bonds and tokens without needing technical skills. It provides a bonding curve mechanism for token launches and a staking system for rewards.

### Architecture

Mint Club V2 builds upon V1 with a new bond contract and adds staking functionality, where users stake tokens to earn rewards. The MCV2_Token on Base chain is likely the reward token for staking, and the BondPeriphery contract facilitates interactions between the bond and staking systems.

## Contract Surface Quality

- Indexed contracts: 141; live-surface contracts included: 87 (81 live, 6 unknown).
- Excluded by liveness: 54 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 8; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 8/11 (72.7%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 1
- Unverified implementations: 11
- Unique implementations: 22
- Raw deployments: 87
- Audits discovered: 8
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Staleness: 4 fresh, 0 aging, 3 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 6 | 54.5% | 2025-08 |
| Sooho | Tier 2 | 2 | 18.2% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MCV2_Token | token | base | n/a | [`0xff4516...b57a7e`](./contracts/base-8453/0xff45161474c39cb00699070dd49582e417b57a7e/) | ✅ Audited |
| MintClubToken | token | bsc | n/a | [`0x1f3af0...fc5915`](./contracts/bsc-56/0x1f3af095cda17d63cad238358837321e95fc5915/) | ✅ Audited |
| Locker | unknown | avalanche | n/a | 7 deployments: ethereum `0xa3dcf3...dc9ab6`; optimism `0xa3dcf3...dc9ab6`; unichain `0xa3dcf3...dc9ab6`; polygon `0xa3dcf3...dc9ab6`; base `0xa3dcf3...dc9ab6`; arbitrum `0xa3dcf3...dc9ab6`; avalanche [`0x5b64ce...c77a17`](./contracts/avalanche-43114/0x5b64cecc5cf3e4b1a668abd895d16bddc0c77a17/) | ✅ Audited |
| MCV2_Bond | unknown | ethereum | n/a | 6 deployments: ethereum [`0xc5a076...7faa27`](./contracts/ethereum-1/0xc5a076cad94176c2996b32d8466be1ce757faa27/); optimism [`0xc5a076...7faa27`](./contracts/optimism-10/0xc5a076cad94176c2996b32d8466be1ce757faa27/); unichain [`0xc5a076...7faa27`](./contracts/unichain-130/0xc5a076cad94176c2996b32d8466be1ce757faa27/); polygon [`0xc5a076...7faa27`](./contracts/polygon-137/0xc5a076cad94176c2996b32d8466be1ce757faa27/); base [`0xc5a076...7faa27`](./contracts/base-8453/0xc5a076cad94176c2996b32d8466be1ce757faa27/); arbitrum [`0xc5a076...7faa27`](./contracts/arbitrum-42161/0xc5a076cad94176c2996b32d8466be1ce757faa27/) | ✅ Audited |
| MCV2_ZapV1 | adapter | ethereum | n/a | 6 deployments: ethereum [`0x91523b...e251fa`](./contracts/ethereum-1/0x91523b39813f3f4e406ece406d0beaaa9de251fa/); optimism [`0x91523b...e251fa`](./contracts/optimism-10/0x91523b39813f3f4e406ece406d0beaaa9de251fa/); unichain [`0x91523b...e251fa`](./contracts/unichain-130/0x91523b39813f3f4e406ece406d0beaaa9de251fa/); polygon [`0x91523b...e251fa`](./contracts/polygon-137/0x91523b39813f3f4e406ece406d0beaaa9de251fa/); base [`0x91523b...e251fa`](./contracts/base-8453/0x91523b39813f3f4e406ece406d0beaaa9de251fa/); arbitrum [`0x91523b...e251fa`](./contracts/arbitrum-42161/0x91523b39813f3f4e406ece406d0beaaa9de251fa/) | ✅ Audited |
| MintClubBond | unknown | bsc | n/a | [`0x8bbac0...f19975`](./contracts/bsc-56/0x8bbac0c7583cc146244a18863e708bffbbf19975/) | ✅ Audited |
| Stake | unknown | optimism | n/a | 27 deployments: ethereum `0x5b64ce...c77a17`; ethereum `0x841a2b...d2db09`; ethereum `0xf18764...9a2a65`; optimism [`0x29b0e6...10c724`](./contracts/optimism-10/0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724/); optimism `0x5b64ce...c77a17`; optimism `0xf18764...9a2a65`; bsc `0x7b09b7...7fe633`; bsc `0x841a2b...d2db09`; unichain `0x5dae94...a9ac2a`; unichain `0xa4021a...0f6798`; unichain `0xf44939...593e33`; polygon `0x5b64ce...c77a17`; polygon `0x95bda9...57aab7`; polygon `0xf18764...9a2a65`; base `0x3460e2...cf3399`; base `0x364e0f...bb86c1`; base `0x68f54a...353413`; base `0x9ab05e...76e802`; arbitrum `0x7b09b7...7fe633`; arbitrum `0x9a176d...d7818d`; arbitrum `0xf7e2cd...c1afbc`; avalanche `0x364e0f...bb86c1`; avalanche `0x68f54a...353413`; avalanche `0x95bda9...57aab7`; blast `0x364e0f...bb86c1`; blast `0x68f54a...353413`; blast `0x95bda9...57aab7` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BulkSender | unknown | polygon | n/a | 3 deployments: ethereum `0x621c33...628681`; polygon [`0x29b0e6...10c724`](./contracts/polygon-137/0x29b0e6d2c2884aea3fb4cb5dd1c7002a8e10c724/); base `0x95bda9...57aab7` | ⚠️ Unaudited |
| MCV2_BondPeriphery | periphery | base | n/a | 15 deployments: ethereum `0x7b09b7...7fe633`; optimism `0x841a2b...d2db09`; unichain `0x621c33...628681`; polygon `0x6c0e6c...9846f1`; base [`0x4328e5...df48da`](./contracts/base-8453/0x4328e5fb27ae0ad3c81cc2dc0809361245df48da/); base `0x492c41...1473a3`; base `0x4ccc69...2e7eb8`; base `0x683e89...8c2f42`; base `0x8eb28b...7cd4cf`; base `0xa3dfa8...02f22f`; base `0xaaa223...b60d74`; base `0xad4f45...922863`; arbitrum `0x5fbdc7...be1eb7`; avalanche `0x5dff49...9c5687`; blast `0x5dff49...9c5687` | ⚠️ Unaudited |
| MCV2_ZapV2 | adapter | base | n/a | [`0x7d9998...a559cd`](./contracts/base-8453/0x7d999874eae10f170c4813270173363468a559cd/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MerkleDistributor | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x1349a9...8213a4`](./contracts/ethereum-1/0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4/); optimism [`0x1349a9...8213a4`](./contracts/optimism-10/0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4/); unichain `0x3bc6b6...3b150b`; polygon [`0x1349a9...8213a4`](./contracts/polygon-137/0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4/); base [`0x1349a9...8213a4`](./contracts/base-8453/0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4/); arbitrum [`0x1349a9...8213a4`](./contracts/arbitrum-42161/0x1349a9ddee26fe16d0d44e35b3cb9b0ca18213a4/); avalanche `0x841a2b...d2db09`; blast `0x29b0e6...10c724` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | klaytn | n/a | `0x29b0e6...10c724` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x3fd5b4...4ccfd1` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa4021a...0f6798` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xc5a076...7faa27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa14120...f7530f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x29b0e6...10c724` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3fd5b4...4ccfd1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x06fd26...93030c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x621c33...628681` | ❓ Unverified |
| UnnamedContract | unknown | zora | n/a | `0x3fd5b4...4ccfd1` | ❓ Unverified |
| UnnamedContract | unknown | zora | n/a | `0xc5a076...7faa27` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CertiK-20240118.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-20240118.pdf) | CertiK | Audit | 2024-01 | stale | Direct | contract_name | 27 | high |
| [Community Contract Audit Announcement](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/COMMUNITY_AUDIT.md) | Community | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CertiK-Staking Investigation Report.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-Staking%20Investigation%20Report.pdf) | CertiK | Audit | 2025-08 | fresh | Direct | contract_name | 27 | medium |
| [CertiK-Staking-20250812.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-Staking-20250812.pdf) | CertiK | Audit | 2025-08 | fresh | Direct | contract_name | 27 | high |
| [CertiK-Staking-20250830.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-Staking-20250830.pdf) | CertiK | Audit | 2025-08 | fresh | Direct | contract_name | 27 | high |
| [{% embed url="<>" %}](https://skynet.certik.com/projects/mint-club) | CertiK | Audit | 2025-08 | fresh | Direct | contract_name | 19 | high |
| [[EN] Security Assessment By Sooho.pdf](https://github.com/Steemhunt/mint.club-contract/blob/main/audits/%5BEN%5D%20Security%20Assessment%20By%20Sooho.pdf) | Sooho | Audit | 2021-07 | stale | Direct | contract_name | 2 | high |
| [[KO] Security Assessment By Sooho.pdf](https://github.com/Steemhunt/mint.club-contract/blob/main/audits/%5BKO%5D%20Security%20Assessment%20By%20Sooho.pdf) | Sooho | Audit | 2021-07 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x4328e5...df48da`](./contracts/base-8453/0x4328e5fb27ae0ad3c81cc2dc0809361245df48da/) | MCV2_BondPeriphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7d9998...a559cd`](./contracts/base-8453/0x7d999874eae10f170c4813270173363468a559cd/) | MCV2_ZapV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6, medium=1
- Match method counts: extraction_exact=159

Zero-match audit list:

- [13503] Community Contract Audit Announcement

Fork inheritance lineage and inherited audits are included when available.
