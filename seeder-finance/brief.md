# Agentic Audit Brief: Seeder Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 8.7% over 90 days

## Project Overview

- Project: Seeder Finance (`seeder-finance`)
- Lifecycle: declining (Tier 0, 99.9% below peak)
- Generated: 2026-06-19T19:16:12.614Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 4 unique implementations (5 raw deployments)
- DeFi Llama TVL: $3,055.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Seeder Finance is a yield farming protocol on BSC that allows users to stake assets and earn rewards through a system of farms, vaults, and a marketplace. It uses upgradeable proxy contracts to manage liquidity and distribute incentives.

### Architecture

All contracts are deployed by the same deployer and share a common upgradeable proxy pattern. The BigFarmV3 and Leaf contracts form the core farming logic, while other contracts like VendingMachine, TreeFarm, and BankV3 provide additional staking and reward mechanisms, all likely interacting through shared token contracts and the SeederVerseBridge for cross-chain functionality.

## Contract Surface Quality

- Indexed contracts: 46; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 23 inactive, 18 singleton, 0 uninitialized.
- Deployment units: 0/9 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 5
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Leaf | unknown | bsc | n/a | [`0x1cbddf...eea12c`](./contracts/bsc-56/0x1cbddf83de068464eba3a4e319bd3197a7eea12c/) | ⚠️ Unaudited |
| PlatformWallet | unknown | bsc | n/a | 2 deployments: bsc [`0x4ffee8...8c89e5`](./contracts/bsc-56/0x4ffee8e4be5f71fddb76e3a0f958c065708c89e5/); bsc `0x572e94...fa2f52` | ⚠️ Unaudited |
| sdToken | token | bsc | n/a | [`0xc51e41...058908`](./contracts/bsc-56/0xc51e41c88e1f7ccc12bc12748bfd1cf3d0058908/) | ⚠️ Unaudited |
| Seed | unknown | bsc | n/a | [`0xae3c58...655e0b`](./contracts/bsc-56/0xae3c585edfba5733f1dfb6bd454928c64d655e0b/) | ⚠️ Unaudited |

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
| [DL audit link](https://inspex.co/reports/Inspex_AUDIT2021005_SeederFinance_Core_FullReport_v1.0.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x1cbddf...eea12c`](./contracts/bsc-56/0x1cbddf83de068464eba3a4e319bd3197a7eea12c/) | Leaf | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ffee8...8c89e5`](./contracts/bsc-56/0x4ffee8e4be5f71fddb76e3a0f958c065708c89e5/) | PlatformWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc51e41...058908`](./contracts/bsc-56/0xc51e41c88e1f7ccc12bc12748bfd1cf3d0058908/) | sdToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xae3c58...655e0b`](./contracts/bsc-56/0xae3c585edfba5733f1dfb6bd454928c64d655e0b/) | Seed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13813] DL audit link

Fork inheritance lineage and inherited audits are included when available.
