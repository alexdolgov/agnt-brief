# Agentic Audit Brief: Hakka Finance

## Project Overview

- Project: Hakka Finance (`hakka-finance`)
- Website: [https://hakka.finance/](https://hakka.finance/)
- Lifecycle: active (Tier 0, 70.8% below peak)
- Generated: 2026-06-17T07:00:49.571Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum, polygon
- Contract surface: 13 unique implementations (20 raw deployments)
- DeFi Llama TVL: $3,703,772.48
- On-chain TVL (included contracts): $5,425.42
- TVL by chain: Ethereum $5,425.42

## Project Description

Hakka Finance is a DeFi ecosystem in the derivatives category. Its historically associated products include derivative and yield-related contracts, but current product claims such as specific vaults, swap pools, or staking systems should be tied only to verified Hakka-owned contracts and should exclude third-party dependencies or unrelated token/LP contracts.

### Architecture

The protocol's vaults (bVault) and liquidity pools (BAC pools, BPool) are the core yield-generating components, while staking contracts (HakkaRewards, MasterChef) distribute rewards in the form of tokens like BlackPoolToken and StakedBPT. Supporting contracts such as GuildBank and ThreeFMutual provide treasury management and mutual cover, sharing the same deployer clusters and token infrastructure.

## Contract Surface Quality

- Indexed contracts: 67; live-surface contracts included: 20 (16 live, 4 unknown).
- Excluded by liveness: 47 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 4/11.

## Audit Coverage Summary

- Verified implementations audited: 5/13 (38.5%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 20
- Audits discovered: 8
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $5,425.42
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 38.5% | 2021-03 |
| unknown | Tier 2 | 1 | 7.7% | 2022-01 |
| yAudit | Tier 2 | 1 | 7.7% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| blackholeswap | unknown | ethereum | n/a | 2 deployments: ethereum [`0x35101c...341935`](./contracts/ethereum-1/0x35101c731b1548b5e48bb23f99edbc2f5c341935/); bsc `0x75192d...34ce7e` | ✅ Audited |
| Hakka | unknown | ethereum | n/a | [`0x0e29e5...de3bcd`](./contracts/ethereum-1/0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd/) | ✅ Audited |
| HakkaRewardsVesting | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x735a80...40c95a`](./contracts/ethereum-1/0x735a80510536a9a18c8824f40dbc92824640c95a/); ethereum `0xf4d1f9...5b7977` | ✅ Audited |
| InsuranceImprovementProposalProxy | unknown | ethereum | n/a | [`0x9933ad...530780`](./contracts/ethereum-1/0x9933ad4d38702cdc28c5db2f421f1f02cf530780/) | ✅ Audited |
| VestingVault | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x51f123...238ed6`](./contracts/ethereum-1/0x51f12323820b3c0077864990d9e6ad9604238ed6/); bsc `0x6dbff2...fa94dc`; polygon `0xec4b77...b8001a` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BPool | core_logic | ethereum | n/a | [`0x1b8874...d77016`](./contracts/ethereum-1/0x1b8874baceaafba9ea194a625d12e8b270d77016/) | ⚠️ Unaudited |
| Burner | unknown | ethereum | n/a | [`0xde0231...c2b16d`](./contracts/ethereum-1/0xde02313f8bf17f31380c63e41cdecee98bc2b16d/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | polygon | unit-29994 | [`0xb44c87...46eaa8`](./contracts/polygon-137/0xb44c87181fb2ae4a7794a67c833c09e58a46eaa8/) | ⚠️ Unaudited |
| sHakka | unknown | bsc | n/a | 4 deployments: ethereum `0xb92586...897a62`; ethereum `0xd99588...f15040`; bsc [`0x51de1e...f29be6`](./contracts/bsc-56/0x51de1eef029b5cc1ef359e62aa98101f56f29be6/); polygon `0x7f8093...3032d5` | ⚠️ Unaudited |
| TFToken | token | ethereum | n/a | [`0xbdda96...e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | ⚠️ Unaudited |
| ThreeFMutual | unknown | ethereum | n/a | [`0x66be1b...c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ⚠️ Unaudited |
| TokenFactory | registry | polygon | n/a | [`0x47ca21...0a4e95`](./contracts/polygon-137/0x47ca2166a5b837e891e6e64e780d1b43fc0a4e95/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x9c5999...b9957e`](./contracts/ethereum-1/0x9c5999653f44672336c2ef0a0008587fa8b9957e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Hakka Finance Urban Giggle Audit.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka%20Finance%20Urban%20Giggle%20Audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 2 | high |
| [Hakka Finance Vault contract wHakka audit.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka%20Finance%20Vault%20contract%20wHakka%20audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |
| [Hakka_Finance_iGain_V2_Audit_Report.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka_Finance_iGain_V2_Audit_Report.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf](https://github.com/hakkafinance/audit-reports/blob/main/PeckShield-Audit-Report-Hakka-3FMutual-v1.0%20(1).pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf](https://github.com/hakkafinance/audit-reports/blob/main/PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 3 | high |
| [Smart Contract Security Audit Report - BlackHoleSwap.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Smart%20Contract%20Security%20Audit%20Report%20-%20BlackHoleSwap.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | 1 | high |
| [peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf](https://github.com/hakkafinance/audit-reports/blob/main/peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | 2 | high |
| [Read Audit Report](https://github.com/hakkafinance/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1b8874...d77016`](./contracts/ethereum-1/0x1b8874baceaafba9ea194a625d12e8b270d77016/) | BPool | core_logic | $5,425.42 | Verified native implementation with $5,425.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde0231...c2b16d`](./contracts/ethereum-1/0xde02313f8bf17f31380c63e41cdecee98bc2b16d/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x51de1e...f29be6`](./contracts/bsc-56/0x51de1eef029b5cc1ef359e62aa98101f56f29be6/) | sHakka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdda96...e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | TFToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66be1b...c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ThreeFMutual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x47ca21...0a4e95`](./contracts/polygon-137/0x47ca2166a5b837e891e6e64e780d1b43fc0a4e95/) | TokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=21

Zero-match audit list:

- [2557] Hakka Finance Vault contract wHakka audit.pdf
- [2558] Hakka_Finance_iGain_V2_Audit_Report.pdf
- [14453] Read Audit Report

Fork inheritance lineage and inherited audits are included when available.
