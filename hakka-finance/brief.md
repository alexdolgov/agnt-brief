# Agentic Audit Brief: Hakka Finance

## Project Overview

- Project: Hakka Finance (`hakka-finance`)
- Website: [https://hakka.finance/](https://hakka.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.165Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: bsc, ethereum, polygon
- Contract surface: 23 unique implementations (31 raw deployments)
- DeFi Llama TVL: $3,500,084.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 57 project-authored contract(s) across 3 chain(s); 13 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 3 common project-authored base contract(s) (lptokenwrapper, irewarddistributionrecipient, erc20mintable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 127; live-surface contracts included: 31 (21 live, 10 unknown).
- Excluded by liveness: 96 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/11 (54.5%)
- Deployed-live implementations: 13 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/13
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 23
- Raw deployments: 31
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 38.5% | 2021-03 |
| unknown | Tier 2 | 2 | 15.4% | 2022-01 |
| yAudit | Tier 2 | 1 | 7.7% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| blackholeswap | unknown | ethereum | n/a | 2 deployments: ethereum [`0x35101c731b1548b5e48bb23f99edbc2f5c341935`](./contracts/ethereum-1/0x35101c731b1548b5e48bb23f99edbc2f5c341935/); bsc `0x75192d6f3d51554cc2ee7b40c3aac5f97934ce7e` | ✅ Audited |
| Hakka | unknown | ethereum | n/a | [`0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd`](./contracts/ethereum-1/0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd/) | ✅ Audited |
| HakkaRewardsVesting | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x735a80510536a9a18c8824f40dbc92824640c95a`](./contracts/ethereum-1/0x735a80510536a9a18c8824f40dbc92824640c95a/); ethereum `0xf4d1f9674c8e9f29a69dc2e6f841292e675b7977` | ✅ Audited |
| InsuranceImprovementProposalProxy | unknown | ethereum | n/a | [`0x9933ad4d38702cdc28c5db2f421f1f02cf530780`](./contracts/ethereum-1/0x9933ad4d38702cdc28c5db2f421f1f02cf530780/) | ✅ Audited |
| TokenFactory | unknown | bsc | n/a | 2 deployments: bsc [`0x1794ad747340ccf7ae9d7d61c728aa7be1822606`](./contracts/bsc-56/0x1794ad747340ccf7ae9d7d61c728aa7be1822606/); polygon `0x47ca2166a5b837e891e6e64e780d1b43fc0a4e95` | ✅ Audited |
| VestingVault | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x51f12323820b3c0077864990d9e6ad9604238ed6`](./contracts/ethereum-1/0x51f12323820b3c0077864990d9e6ad9604238ed6/); bsc `0x6dbff20caff68b99b1e67b50d14a9d7bbdfa94dc`; polygon `0xec4b77e7369325b52a1f9d1ae080b59954b8001a` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BPool | core_logic | ethereum | n/a | [`0x1b8874baceaafba9ea194a625d12e8b270d77016`](./contracts/ethereum-1/0x1b8874baceaafba9ea194a625d12e8b270d77016/) | ⚠️ Unaudited |
| Burner | unknown | ethereum | n/a | [`0xde02313f8bf17f31380c63e41cdecee98bc2b16d`](./contracts/ethereum-1/0xde02313f8bf17f31380c63e41cdecee98bc2b16d/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | polygon | n/a | [`0xb44c87181fb2ae4a7794a67c833c09e58a46eaa8`](./contracts/polygon-137/0xb44c87181fb2ae4a7794a67c833c09e58a46eaa8/) | ⚠️ Unaudited |
| sHakka | unknown | bsc | n/a | 4 deployments: ethereum `0xb925863a15ebdeae1a638bf2b6fd00d4db897a62`; ethereum `0xd9958826bce875a75cc1789d5929459e6ff15040`; bsc [`0x51de1eef029b5cc1ef359e62aa98101f56f29be6`](./contracts/bsc-56/0x51de1eef029b5cc1ef359e62aa98101f56f29be6/); polygon `0x7f8093f5f49a9d7f0334f8017ff777f1893032d5` | ⚠️ Unaudited |
| TFToken | token | ethereum | n/a | [`0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | ⚠️ Unaudited |
| ThreeFMutual | unknown | ethereum | n/a | [`0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x9c5999653f44672336c2ef0a0008587fa8b9957e`](./contracts/ethereum-1/0x9c5999653f44672336c2ef0a0008587fa8b9957e/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x0a3e364ee37bac9e6aff9e864e65b4603d5bc5d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5113dbe8c1fa6e5397f0b3b00e890e7fa1139089` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2f08a9e8ce03b7f2f706a97b7cd8472b60fa7b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15fb145319351458ab5d608c705cf3a0adf49064` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d4eb3b4882b2b8ac33eec408ded865f24652faa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5113dbe8c1fa6e5397f0b3b00e890e7fa1139089` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a602e72e1b94cf3fcd85a0f9bdb25f3c86a3ba2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x350ebf46bd072b1a92cdfa97cfda5a29e90a39ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc441d00a10ec8efece3fc3308f42c036ac268f3b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xda40f33e32418048d6088b07f057348125251a6b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Hakka Finance Urban Giggle Audit.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka%20Finance%20Urban%20Giggle%20Audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 1 | n/a |
| [Hakka Finance Vault contract wHakka audit.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka%20Finance%20Vault%20contract%20wHakka%20audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |
| [Hakka_Finance_iGain_V2_Audit_Report.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka_Finance_iGain_V2_Audit_Report.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf](https://github.com/hakkafinance/audit-reports/blob/main/PeckShield-Audit-Report-Hakka-3FMutual-v1.0%20(1).pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf](https://github.com/hakkafinance/audit-reports/blob/main/PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 2 | n/a |
| [Smart Contract Security Audit Report - BlackHoleSwap.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Smart%20Contract%20Security%20Audit%20Report%20-%20BlackHoleSwap.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | 1 | n/a |
| [peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf](https://github.com/hakkafinance/audit-reports/blob/main/peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | 2 | n/a |
| [audit-reports (GitHub directory)](https://github.com/hakkafinance/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1b8874baceaafba9ea194a625d12e8b270d77016`](./contracts/ethereum-1/0x1b8874baceaafba9ea194a625d12e8b270d77016/) | BPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde02313f8bf17f31380c63e41cdecee98bc2b16d`](./contracts/ethereum-1/0xde02313f8bf17f31380c63e41cdecee98bc2b16d/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x51de1eef029b5cc1ef359e62aa98101f56f29be6`](./contracts/bsc-56/0x51de1eef029b5cc1ef359e62aa98101f56f29be6/) | sHakka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | TFToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ThreeFMutual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=7, extraction_exact=2

Zero-match audit list:

- [2557] Hakka Finance Vault contract wHakka audit.pdf
- [14453] audit-reports (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
