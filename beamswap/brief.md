# Agentic Audit Brief: BeamSwap

⚠️ Lifecycle status: DEAD - TVL dropped 17.5% over 90 days

## Project Overview

- Project: BeamSwap (`beamswap`)
- Website: [https://beamswap.io](https://beamswap.io)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-20T01:22:05.875Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: moonbeam
- Contract surface: 29 unique implementations (29 raw deployments)
- DeFi Llama TVL: $26,085.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

BeamSwap is a decentralized exchange and derivatives protocol on Moonbeam, offering token swaps, liquidity provision, yield farming, and perpetual futures trading through multiple automated market maker (AMM) models.

### Architecture

The BeamSwap family (V3) relies on the SwapRouter and Quoter for trade execution and pricing, while BeamChefV3 and Staking manage liquidity incentives. The Beamswap Contracts family provides legacy token infrastructure (StakedGlint, BeamShare) that may interact with staking rewards, and the Stable AMM operates independently with its own SwapFlashLoan contract.

## Contract Surface Quality

- Indexed contracts: 203; live-surface contracts included: 29 (29 live, 0 unknown).
- Excluded by liveness: 174 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 5/17.

## Audit Coverage Summary

- Verified implementations audited: 3/9 (33.3%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 29
- Raw deployments: 29
- Audits discovered: 6
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Staleness: 0 fresh, 0 aging, 6 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 3 | 33.3% | 2024-01 |
| PeckShield | Tier 2 | 1 | 11.1% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeamChefV3 | unknown | moonbeam | n/a | [`0x26b22e...75e0e1`](./contracts/moonbeam-1284/0x26b22e286f08e5e0ea9ec819ede70bbddb75e0e1/) | ✅ Audited |
| BeamShare | unknown | moonbeam | n/a | [`0x4204ca...0a6408`](./contracts/moonbeam-1284/0x4204cad97732282d261fbb7088e07557810a6408/) | ✅ Audited |
| Timelock | governance | moonbeam | n/a | [`0x5d3b3f...efb9df`](./contracts/moonbeam-1284/0x5d3b3f2e28eb08a578f11fb31a433956c4efb9df/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BLP | unknown | moonbeam | n/a | [`0x0e6580...2dde92`](./contracts/moonbeam-1284/0x0e6580f2f84c8191d36043fb340ad9c0982dde92/) | ⚠️ Unaudited |
| EarnBLP | unknown | moonbeam | n/a | [`0x3decce...04e217`](./contracts/moonbeam-1284/0x3deccefd66b34b64b8830b036843c9568504e217/) | ⚠️ Unaudited |
| FeeLessSwap | unknown | moonbeam | n/a | [`0x3c245a...ed1ecb`](./contracts/moonbeam-1284/0x3c245a333c3a173c81b302a8fcbf87a8e7ed1ecb/) | ⚠️ Unaudited |
| StakedGlint | token | moonbeam | n/a | [`0x63d43d...d71697`](./contracts/moonbeam-1284/0x63d43d0edda7de4b5ed9b2f2aa855f81fbd71697/) | ⚠️ Unaudited |
| Staking | unknown | moonbeam | n/a | [`0x548257...368fa9`](./contracts/moonbeam-1284/0x54825778d33140fe9011dcfbbbd50b924e368fa9/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | moonbeam | n/a | [`0x2fc632...83846f`](./contracts/moonbeam-1284/0x2fc63231f734850c4b8c6b80c275fdb66983846f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonbeam | n/a | `0x154e71...c39b4c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x4d5a91...d07ddb` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x5fc9e4...ac9d23` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x7baadb...58d4dc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x806f16...9d20f5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x909b62...9aef70` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x96b244...6970c7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x985bca...7a86fd` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x9d4814...aad42c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x9f52f5...98877c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa20682...a9c072` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xac7c02...e231cc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xb6b339...1e5771` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xbb23b6...a8ce33` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc6ca17...00587b` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc9d9e5...5145ed` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xcd3b51...ef1d58` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xcf8afa...764eca` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xe31a3b...84cc85` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xe3f59a...1e402c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-BeamEx-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-BeamEx-v1.0.pdf) | PeckShield | Audit | 2023-06 | stale | Direct | contract_name | 1 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/peckshield/publications/65be3a3b651bba87c4a9c024ca4306adbadba040/audit_reports/PeckShield-Audit-Report-Beamswap-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 0 | n/a |
| [{% embed url="<>" %}](https://sourcehat.com/audits/BeamSwap) | SourceHat | Audit | 2022-01 | stale | Direct | contract_name | 2 | high |
| [{% embed url="<>" %}](https://sourcehat.com/audits/BeamswapV3) | SourceHat | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://sourcehat.com/audits/BeamSwapStaking) | SourceHat | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://sourcehat.com/audits/BeamChefV3) | SourceHat | Audit | 2024-01 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | [`0x0e6580...2dde92`](./contracts/moonbeam-1284/0x0e6580f2f84c8191d36043fb340ad9c0982dde92/) | BLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x3decce...04e217`](./contracts/moonbeam-1284/0x3deccefd66b34b64b8830b036843c9568504e217/) | EarnBLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x3c245a...ed1ecb`](./contracts/moonbeam-1284/0x3c245a333c3a173c81b302a8fcbf87a8e7ed1ecb/) | FeeLessSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x63d43d...d71697`](./contracts/moonbeam-1284/0x63d43d0edda7de4b5ed9b2f2aa855f81fbd71697/) | StakedGlint | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x548257...368fa9`](./contracts/moonbeam-1284/0x54825778d33140fe9011dcfbbbd50b924e368fa9/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x2fc632...83846f`](./contracts/moonbeam-1284/0x2fc63231f734850c4b8c6b80c275fdb66983846f/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=8

Zero-match audit list:

- [12750] Rendered PDF capture
- [12753] {% embed url="<>" %}
- [12754] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
