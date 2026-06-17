# Agentic Audit Brief: Vesper

## Project Overview

- Project: Vesper (`vesper`)
- Website: [https://vesper.finance/](https://vesper.finance/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T07:00:49.913Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 13 unique implementations (20 raw deployments)
- DeFi Llama TVL: $41,880,245.93
- On-chain TVL (included contracts): $693,366.56
- TVL by chain: Ethereum $693,366.56

## Project Description

Vesper is a multi-chain yield platform where users deposit assets into pools and related yield products that allocate funds across DeFi strategies to generate returns. The protocol includes pool-based deposits, protocol/institutional yield offerings, VSP governance/rewards, and related Metronome synthetics messaging across supported chains.

### Architecture

The VSP token serves as the governance and reward token across the protocol, while VVSP is a derivative token likely used for staking or enhanced rewards. All pools and rewards contracts are part of a single product family, sharing the same deployer and upgradeable proxy infrastructure.

## Contract Surface Quality

- Indexed contracts: 147; live-surface contracts included: 20 (20 live, 0 unknown).
- Excluded by liveness: 97 inactive, 30 singleton, 0 uninitialized.
- Deployment units: 2/18 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 8/153.

## Audit Coverage Summary

- Verified implementations audited: 8/13 (61.5%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 20
- Audits discovered: 30
- Scoreable audits (matched contracts): 19
- ASD (verified + unaudited TVL): $351,118.42
- Latest audit: 2022-09 (stale)
- Staleness: 0 fresh, 0 aging, 30 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 7 | 53.8% | 2022-03 |
| Dedaub | Tier 2 | 4 | 30.8% | 2022-04 |
| CertiK | Tier 2 | 3 | 23.1% | 2021-06 |
| yAudit | Tier 2 | 1 | 7.7% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VPool | core_logic | ethereum | unit-30536 (4 proxies) | 4 deployments: ethereum [`0x0538c8...9e36ee`](./contracts/ethereum-1/0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee/); ethereum `0xb4edce...fd5f7d`; ethereum `0xba680a...f26e47`; ethereum `0xff43c3...42c257` | ✅ Audited |
| PoolAccountant | operational_periphery | ethereum | unit-30540 (5 proxies) | 5 deployments: ethereum [`0x13c88a...91b1fd`](./contracts/ethereum-1/0x13c88a2da8e83ba6933fd3aa51e008986b91b1fd/); ethereum `0x2337c5...c442c0`; ethereum `0x7c6226...0e639e`; ethereum `0xa17f64...a6088c`; ethereum `0xfb7fa7...24eb44` | ✅ Audited |
| PoolRewards | core_logic | ethereum | n/a | [`0x479a86...295f8d`](./contracts/ethereum-1/0x479a8666ad530af3054209db74f3c74ecd295f8d/) | ✅ Audited |
| VETH | unknown | ethereum | n/a | [`0x103cc1...e54d5e`](./contracts/ethereum-1/0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e/) | ✅ Audited |
| VLINK | unknown | ethereum | n/a | [`0x0a27e9...93d40c`](./contracts/ethereum-1/0x0a27e910aee974d05000e05eab8a4b8ebd93d40c/) | ✅ Audited |
| VSP | unknown | ethereum | n/a | [`0x1b4018...998421`](./contracts/ethereum-1/0x1b40183efb4dd766f11bda7a7c3ad8982e998421/) | ✅ Audited |
| VUSDC | unknown | ethereum | n/a | [`0x0c4906...bf113d`](./contracts/ethereum-1/0x0c49066c0808ee8c673553b7cbd99bcc9abf113d/) | ✅ Audited |
| VVSP | unknown | ethereum | n/a | [`0xba4cfe...ecf8fc`](./contracts/ethereum-1/0xba4cfe5741b357fa371b506e5db0774abfecf8fc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VWBTC | token | ethereum | n/a | [`0x4b2e76...b1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/) | ⚠️ Unaudited |
| MerkleBox | operational_periphery | ethereum | n/a | [`0xe67516...94bf73`](./contracts/ethereum-1/0xe67516417a934b27cf0c14868f8165b1bc94bf73/) | ⚠️ Unaudited |
| Redeemer | unknown | ethereum | n/a | [`0x7915ce...7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | ⚠️ Unaudited |
| VirtualDollar | unknown | ethereum | n/a | [`0xb791a8...a47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | ⚠️ Unaudited |
| VUSD | unknown | ethereum | n/a | [`0x677ddb...da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | ⚠️ Unaudited |

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
| [REP-Bloq-11_11_20.pdf](https://github.com/vesperfi/doc/blob/main/audit/v1/REP-Bloq-11_11_20.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 2 | high |
| [REP-Bloq-VesperPools-20_01_2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/REP-Bloq-VesperPools-20_01_2021.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 2 | high |
| [REP-Bloq_15_02_2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/REP-Bloq_15_02_2021.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 0 | n/a |
| [Vesper Pools Security - Fourth Audit v210119.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Fourth%20Audit%20v210119.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 2 | high |
| [Vesper Pools Security - PaymentSplitter Audit v210210.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20PaymentSplitter%20Audit%20v210210.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 0 | n/a |
| [Vesper Pools Security - Second Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Second%20Audit%20v201230.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 2 | high |
| [Vesper Pools Security - Third Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Third%20Audit%20v201230.pdf) | unknown | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [Vesper Pools Security Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20Audit%20v201230.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | 1 | high |
| [Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20-%20Nov%202021.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 6 | high |
| [Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Earn%20-%20September%202021.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 1 | high |
| [Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Pools%20February%202022.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 10 | high |
| [Coinspect - Smart Contract Audit - Vesper Pools January 2022.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Pools%20January%202022.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 11 | high |
| [PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/PRE-Bloq_%20Vesper%20Pools%20V3-2021-06-26-certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | 6 | high |
| [Vesper Pools audit-poolv2-dedaub-April-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20audit-poolv2-dedaub-April-2021.pdf) | Dedaub | Audit | 2021-04 | stale | Direct | contract_name | 2 | high |
| [Vesper Pools v3 audit-dedaub-May-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20v3%20audit-dedaub-May-2021.pdf) | Dedaub | Audit | 2021-05 | stale | Direct | contract_name | 1 | high |
| [Vesper Pools v3 audit-dedaub.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20v3%20audit-dedaub.pdf) | Dedaub | Audit | 2021-05 | stale | Direct | contract_name | 1 | high |
| [Vesper Pools+Strategies September-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%2BStrategies%20September-2021.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [Vesper Pools-Dedaub-Nov-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools-Dedaub-Nov-2021.pdf) | Dedaub | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [Vesper Strategies - April v210428.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Strategies%20-%20April%20v210428.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 1 | high |
| [Vesper V3 - 2nd Review - v2-may-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20V3%20-%202nd%20Review%20-%20v2-may-2021.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 0 | n/a |
| [Vesper V3 - 2nd Review - v210519 (1).pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20V3%20-%202nd%20Review%20-%20v210519%20(1).pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 0 | n/a |
| [Vesper-Pools-Audit-Coinspect-Jan21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Jan21.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 2 | high |
| [Vesper-Pools-Audit-Coinspect-March21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-March21.pdf) | unknown | Audit | 2021-03 | stale | Direct | contract_name | 0 | n/a |
| [Vesper-Pools-Audit-Coinspect-March22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-March22.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Vesper-Pools-Audit-Coinspect-Nov21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Nov21.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 6 | high |
| [Vesper-Pools-Audit-Coinspect-Sept21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Sept21.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 1 | high |
| [Vesper-Pools-Audit-Dedaub-April 22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Dedaub-April%2022.pdf) | Dedaub | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [Vesper-Pools-Audit-Dedaub-Oct21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Dedaub-Oct21.pdf) | Dedaub | Audit | 2021-10 | stale | Direct | contract_name | 1 | high |
| [Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf) | Halborn | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf) | Dedaub | Audit | 2022-03 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4b2e76...b1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/) | VWBTC | token | $351,118.42 | Verified native implementation with $351,118.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe67516...94bf73`](./contracts/ethereum-1/0xe67516417a934b27cf0c14868f8165b1bc94bf73/) | MerkleBox | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7915ce...7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb791a8...a47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | VirtualDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x677ddb...da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | VUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=19
- Match method counts: extraction_exact=520

Zero-match audit list:

- [4863] REP-Bloq_15_02_2021.pdf
- [4865] Vesper Pools Security - PaymentSplitter Audit v210210.pdf
- [4867] Vesper Pools Security - Third Audit v201230.pdf
- [4877] Vesper Pools+Strategies September-2021.pdf
- [4880] Vesper V3 - 2nd Review - v2-may-2021.pdf
- [4881] Vesper V3 - 2nd Review - v210519 (1).pdf
- [4883] Vesper-Pools-Audit-Coinspect-March21.pdf
- [4884] Vesper-Pools-Audit-Coinspect-March22.pdf
- [4887] Vesper-Pools-Audit-Dedaub-April 22.pdf
- [4889] Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf
- [4890] Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf

Fork inheritance lineage and inherited audits are included when available.
