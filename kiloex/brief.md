# Agentic Audit Brief: KiloEx

⚠️ Lifecycle status: DECLINING - TVL dropped 37.9% over 90 days

## Project Overview

- Project: KiloEx (`kiloex`)
- Website: [https://app.kiloex.io/#/trade](https://app.kiloex.io/#/trade)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-24T09:24:19.200Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base, bsc, manta
- Contract surface: 111 unique implementations (156 raw deployments)
- DeFi Llama TVL: $2,938,597.16
- On-chain TVL (included contracts): $7,252,777.46
- TVL by chain: Bsc $5,709,133.23 | Base $1,543,644.23

## Project Description

KiloEx is a decentralized derivatives trading platform that enables users to trade perpetual contracts with leverage. It operates across multiple chains and uses a native token (KiloExToken) along with various synthetic and wrapped assets to facilitate trading and liquidity.

### Architecture

The KiloEx family uses TransparentUpgradeableProxy contracts to manage upgradeable logic for core components, while BeaconProxy and StoneCross provide cross-chain and staking infrastructure. Tokens like IBTC, OBTC, and SolvBTCV3 serve as collateral or trading pairs within the derivatives platform.

## Audit Coverage Summary

- Verified implementations audited: 1/8 (12.5%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 103
- Unique implementations: 111
- Raw deployments: 156
- Audits discovered: 10
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $1,543,644.23
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 3 aging, 7 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,543,644.23 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Scalebit | Tier 2 | 1 | 12.5% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| KiloExToken | token | bsc | 2 deployments: bsc [`0x503fa2...c1df53`](./contracts/bsc-56/0x503fa24b7972677f00c4618e5fbe237780c1df53/); bsc `0xfcd054...a7019a` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PumpTokenOFT | token | base | [`0xf469fb...0a012e`](./contracts/base-8453/0xf469fbd2abcd6b9de8e169d128226c0fc90a012e/) | ⚠️ Unaudited |
| IBTC | unknown | base | [`0x124187...21cf62`](./contracts/base-8453/0x12418783e860997eb99e8acf682df952f721cf62/) | ⚠️ Unaudited |
| OBTC | unknown | base | [`0xe3c0ff...808b35`](./contracts/base-8453/0xe3c0ff176ef92fc225096c6d1788ccb818808b35/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | 2 deployments: base [`0xc2e5ae...651b72`](./contracts/base-8453/0xc2e5ae7c5ed7ec86b8ff0b3d8030ad8931651b72/); base `0xc7437d...3a6b0f` | ⚠️ Unaudited |
| SolvBTCV3 | unknown | base | [`0x3b86ad...ee931f`](./contracts/base-8453/0x3b86ad95859b6ab773f55f8d94b4b9d443ee931f/) | ⚠️ Unaudited |
| StoneCross | unknown | base | [`0xd2012f...c728c6`](./contracts/base-8453/0xd2012fc1b913ce50732ebcaa7e601fe37ac728c6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | base | 44 deployments: base [`0x01f4e3...7319fb`](./contracts/base-8453/0x01f4e3617aac0085729aae649714fe87117319fb/); base `0x19653d...a2717c`; base `0x1a7b3f...62f981`; base `0x1ebed4...6e8c46`; base `0x22c40b...92dae5`; base `0x27a2bf...80be1e`; base `0x2f75b5...7b21b6`; base `0x2f94c6...2054bc`; base `0x3274b6...ebe7c8`; base `0x34c625...54690e`; base `0x43e3e6...c6b477`; base `0x499dc9...b485ef`; base `0x54e874...d34aed`; base `0x618370...0e63e1`; base `0x61e120...50ffd5`; base `0x66dc90...5dbd7a`; base `0x7637e3...47c9c9`; base `0x796f17...f3aa9d`; base `0x7ab5c3...9af634`; base `0x7bc8d5...ac44ce`; base `0x9088e3...a2cf3c`; base `0x92a381...feafcc`; base `0x9438b8...6ae107`; base `0x994f4e...a5696e`; base `0x9a51dc...5b83c1`; base `0xa02d43...536acc`; base `0xa2e2f3...4fc5b2`; base `0xa39efa...957e86`; base `0xa9f9e1...9f6405`; base `0xac9bb9...17f5de`; base `0xb1c7f6...4670b9`; base `0xb31c98...abf56f`; base `0xc5655a...ffff97`; base `0xc56d3b...546ead`; base `0xc7444b...10977d`; base `0xc8d733...963292`; base `0xcf07e1...c0ae28`; base `0xd62d82...54b95c`; base `0xdf5acc...93ebbb`; base `0xe6999f...da76f6`; base `0xeae561...d67630`; base `0xef5d9f...356909`; base `0xf4d446...f709fe`; base `0xfdc7bc...3627ed` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (103)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | manta | `0x0bba2d...9742d8` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x174aef...219593` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x335459...bb8b16` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x44e568...492849` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x5dc0a3...12820f` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x739118...6c6176` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x7746ef...d75717` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x8dd0bd...32b7f6` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x95a4d4...d0f940` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x99a249...3c2d02` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x9d40ca...fbf0e2` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xb1437a...582e9a` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xb26a51...16c094` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xc94b9f...110423` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x041379...c4c0cd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x04760e...aedb80` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x04d6b3...e15e53` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x066b67...60cfea` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x07a60f...549086` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0811e1...98b451` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0997a8...7ef8fd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0fd17d...c07e26` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x10e363...e5c82f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x13b0e2...4b4694` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x14f204...abd9b9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1b64eb...c44024` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1c3f35...7ad0fb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x20bc89...105c83` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x221b96...0d1389` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x22b65d...b0c849` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2646e7...2dbbaa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x295213...b527ff` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x298e94...25d019` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2aca0c...343357` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2c9026...3729e8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x30865b...4a01de` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x34cb54...4e6b48` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x351377...b6a0ee` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3c8b46...a448af` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x41ce2a...de83db` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x489b55...66b105` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4d0f8d...995c13` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x514b14...890bc0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x52cbc0...405a90` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x56c927...3052ab` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x580242...8fecf9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x581074...a7c202` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x62a63f...5758fd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6390d5...c4cc41` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x63f7b5...20bea9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6d7f4b...059571` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x705263...776105` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x71134a...3a7d63` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x726516...5b9f11` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x72836f...b6c89d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x746c18...7692e2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x772dd9...ca5d7c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x78469b...0fc495` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7c09a8...9f0864` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x81e3f4...ed2a5b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x844e8a...ddb8bb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x87b718...046ee9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x87da9d...c144a1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x88b767...93ae79` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8995ed...bc9533` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8fd9e2...a0a246` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x97ad75...07a706` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x984eb2...9af13a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9c4a7f...b95a3c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9ddb41...fddbf7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9e357e...33aa9d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9f6cd2...dce2f2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa307f7...4b03e1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa4d342...1db86b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa62f9c...b90572` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb1d065...7a8fbc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb20faa...2745e3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb4105d...fdafe4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb537db...d2af81` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb553fe...5cce9f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xba86fc...87bfbb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbd1c1b...e44954` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbed75e...bb4e61` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc1d1d4...65dd29` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc23b49...973c48` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc90f1a...6c848a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc91672...42bcf6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc9d2aa...f1f540` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xccbd2a...fb0657` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xccf4df...fe03ec` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcdc526...f167e9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd28152...84e30e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd8f204...415984` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdaf169...98cf07` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdd304c...ef81ba` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdd8651...5cf45f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe40ece...0afcb7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf3eba5...1177dc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf46aec...b5ed1d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf6ee39...456706` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf7b1d5...800e8b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfd0696...02fbba` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfe03be...351356` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PDF](https://drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view?usp=sharing) | Secure3 | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [PDF](https://drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view?usp=sharing) | Ancilia | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [PDF](https://scalebit.xyz/reports/Kilo---Vault2-Final-Audit-Report.pdf) | Scalebit | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [PDF](https://scalebit.xyz/reports/20240802-HybridVault-Final-Audit-Report.pdf) | Scalebit | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [PDF](https://scalebit.xyz/reports/20250321-XKilo-Token-Final-Audit-Report.pdf) | Scalebit | Audit | 2024-07 | aging | Direct | contract_name | 2 | high |
| [PDF](https://github.com/KiloExPerp/kiloex-audit/blob/main/KiloEx%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [HybridVault Audit Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/HybridVault%20Audit%20Report.pdf) | unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Kilo - Vault2 Audit Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/Kilo%20-%20Vault2%20Audit%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Kilo Auditing Report 1.3 public.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/Kilo%20Auditing%20Report%201.3%20public.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [KiloEx_final_Secure3_Audit_Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/KiloEx_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 106 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [2766] PDF
- [2767] PDF
- [2768] PDF
- [2769] PDF
- [2771] PDF
- [2772] HybridVault Audit Report.pdf
- [2773] Kilo - Vault2 Audit Report.pdf
- [2774] Kilo Auditing Report 1.3 public.pdf
- [2775] KiloEx_final_Secure3_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
