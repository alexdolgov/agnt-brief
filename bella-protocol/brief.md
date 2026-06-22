# Agentic Audit Brief: Bella Protocol

⚠️ Lifecycle status: DEAD - TVL dropped 5.4% over 90 days

## Project Overview

- Project: Bella Protocol (`bella-protocol`)
- Lifecycle: dead (Tier 0, 99.8% below peak)
- Generated: 2026-06-21T10:02:46.124Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum, manta
- Contract surface: 11 unique implementations (14 raw deployments)
- DeFi Llama TVL: $150,216.49
- On-chain TVL (included contracts): $215,134.43
- TVL by chain: Ethereum $215,134.43

## Project Description

Bella Protocol is a yield aggregator that deploys user deposits into DeFi strategies to generate returns. It offers bVaults that auto-compound yields and a TokenPool for liquidity management.

### Architecture

The bVaults serve as the primary yield-generating contracts, while the TokenPool likely manages the BEL token and associated rewards. The MantaMintableERC20 tokens and bridge flag contract support cross-chain functionality on Manta, and the UniswapV2Pair provides liquidity for the BEL token.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 14 (7 live, 7 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 11
- Raw deployments: 14
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $215,134.43
- Latest audit: 2020-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $215,134.43 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| bVault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/); ethereum `0x378388...a35153`; ethereum `0x3fb6b0...15a2cc`; ethereum `0x750d30...7996d0` | ⚠️ Unaudited |
| MantaMintableERC20 | token | manta | n/a | [`0x916476...295f9a`](./contracts/manta-169/0x91647632245cabf3d66121f86c387ae0ad295f9a/) | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | manta | n/a | [`0xbdad40...61fb07`](./contracts/manta-169/0xbdad407f77f44f7da6684b416b1951eca461fb07/) | ⚠️ Unaudited |
| TokenPool | core_logic | ethereum | n/a | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | manta | n/a | `0x2c9bfc...2d7c0f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x6731a6...dfde2a` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x994be2...96f5a7` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9e98de...91ca35` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xbf2b95...23980c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc865dd...8c1df9` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf0d110...edf61a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [bella_audit_report_2020_48_en_1_0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/bella_audit_report_2020_48_en_1_0.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/) | bVault | core_logic | $215,134.43 | Verified native implementation with $215,134.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x916476...295f9a`](./contracts/manta-169/0x91647632245cabf3d66121f86c387ae0ad295f9a/) | MantaMintableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xbdad40...61fb07`](./contracts/manta-169/0xbdad407f77f44f7da6684b416b1951eca461fb07/) | MantaMintableERC20WithBridgeFlag | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | TokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
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

- [12756] bella_audit_report_2020_48_en_1_0.pdf

Fork inheritance lineage and inherited audits are included when available.
