# Agentic Audit Brief: 3F Mutual

## Project Overview

- Project: 3F Mutual (`3f-mutual`)
- Website: [https://3fmutual.com/](https://3fmutual.com/)
- Lifecycle: active (Tier 0, 67.4% below peak)
- Generated: 2026-07-03T21:05:23.628Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: ethereum
- Contract surface: 12 unique implementations (14 raw deployments)
- DeFi Llama TVL: $3,010,576.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Insurance. Structurally: 37 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 3 common project-authored base contract(s) (lptokenwrapper, irewarddistributionrecipient, erc20mintable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 53; live-surface contracts included: 14 (11 live, 3 unknown).
- Excluded by liveness: 39 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 9 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 12
- Raw deployments: 14
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| blackholeswap | unknown | ethereum | n/a | [`0x35101c...341935`](./contracts/ethereum-1/0x35101c731b1548b5e48bb23f99edbc2f5c341935/) | ⚠️ Unaudited |
| Hakka | unknown | ethereum | n/a | [`0x0e29e5...de3bcd`](./contracts/ethereum-1/0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd/) | ⚠️ Unaudited |
| HakkaRewardsVesting | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x735a80...40c95a`](./contracts/ethereum-1/0x735a80510536a9a18c8824f40dbc92824640c95a/); ethereum `0xf4d1f9...5b7977` | ⚠️ Unaudited |
| InsuranceImprovementProposalProxy | unknown | ethereum | n/a | [`0x9933ad...530780`](./contracts/ethereum-1/0x9933ad4d38702cdc28c5db2f421f1f02cf530780/) | ⚠️ Unaudited |
| sHakka | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb92586...897a62`](./contracts/ethereum-1/0xb925863a15ebdeae1a638bf2b6fd00d4db897a62/); ethereum `0xd99588...f15040` | ⚠️ Unaudited |
| TFToken | token | ethereum | n/a | [`0xbdda96...e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | ⚠️ Unaudited |
| ThreeFMutual | unknown | ethereum | n/a | [`0x66be1b...c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ⚠️ Unaudited |
| Vat | unknown | ethereum | n/a | [`0x35d1b3...a0492b`](./contracts/ethereum-1/0x35d1b3f3d7966a1dfe207aa4514c12a259a0492b/) | ⚠️ Unaudited |
| VestingVault | operational_periphery | ethereum | n/a | [`0x51f123...238ed6`](./contracts/ethereum-1/0x51f12323820b3c0077864990d9e6ad9604238ed6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0a3e36...5bc5d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5113db...139089` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2f08a...0fa7b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/hakkafinance/audit-reports/main/PeckShield-Audit-Report-Hakka-3FMutual-v1.0%20(1).pdf) | PeckShield | Audit | 2020-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9933ad...530780`](./contracts/ethereum-1/0x9933ad4d38702cdc28c5db2f421f1f02cf530780/) | InsuranceImprovementProposalProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdda96...e9dee3`](./contracts/ethereum-1/0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3/) | TFToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66be1b...c6cb32`](./contracts/ethereum-1/0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32/) | ThreeFMutual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51f123...238ed6`](./contracts/ethereum-1/0x51f12323820b3c0077864990d9e6ad9604238ed6/) | VestingVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21315] PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf

Fork inheritance lineage and inherited audits are included when available.
