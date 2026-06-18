# Agentic Audit Brief: Arcade.xyz

⚠️ Lifecycle status: DECLINING - TVL dropped 47.4% over 90 days

## Project Overview

- Project: Arcade.xyz (`arcade.xyz`)
- Website: [https://www.arcade.xyz](https://www.arcade.xyz)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-18T19:56:49.541Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4ae8
- Chains: ethereum
- Contract surface: 12 unique implementations (13 raw deployments)
- DeFi Llama TVL: $4,792,976.26
- On-chain TVL (included contracts): $232,413.73
- TVL by chain: Ethereum $232,413.73

## Project Description

Arcade.xyz historically operated as an NFT-collateral lending protocol on Ethereum, enabling users to borrow against NFTs through loan origination, vault, and staking-related contracts. Current project messaging describes a broader lending marketplace for memecoins, NFTs, RWAs, and other tokens, with Ethereum and Base advertised; any Base contract surface should be treated as unverified until live deployments are confirmed.

### Architecture

The VaultFactory creates vaults that hold NFT collateral, while LoanCore manages loan origination and repayment, with PromissoryNote representing loan obligations. Staking contracts interact with the ArcadeToken to distribute rewards, and UniswapV2Pair provides liquidity for the token.

## Contract Surface Quality

- Indexed contracts: 147; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 119 inactive, 15 singleton, 0 uninitialized.
- Deployment units: 0/9 live.
- Detected codebases: none
- Dependencies extracted: 13; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 10/12 (83.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 13
- Audits discovered: 10
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Staleness: 0 fresh, 0 aging, 10 stale, 0 unknown
- Tier 1 coverage: 41.7% (Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 10 | 83.3% | 2024-03 |
| Quantstamp | Tier 2 | 5 | 41.7% | 2022-06 |
| Trail of Bits | Tier 1 | 5 | 41.7% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArcadeToken | token | ethereum | n/a | [`0xe020b0...cc70bf`](./contracts/ethereum-1/0xe020b01b6fbd83066aa2e8ee0ccd1eb8d9cc70bf/) | ✅ Audited |
| ArcadeAirdrop | operational_periphery | ethereum | n/a | [`0x2b49c3...c9ae38`](./contracts/ethereum-1/0x2b49c3b0340df9eca71d9f130084821c63c9ae38/) | ✅ Audited |
| ArcadeStakingRewards | unknown | ethereum | n/a | [`0x80bddd...7a5793`](./contracts/ethereum-1/0x80bddd56b947c547ab8964d80e98e42ff77a5793/) | ✅ Audited |
| ARCDVestingVault | operational_periphery | ethereum | n/a | [`0xae40af...09c40f`](./contracts/ethereum-1/0xae40af135c060e10b218c617c2d74a370b09c40f/) | ✅ Audited |
| ImmutableVestingVault | operational_periphery | ethereum | n/a | [`0xdd7a92...711e53`](./contracts/ethereum-1/0xdd7a92062d1939357fb17a66288cde30b3711e53/) | ✅ Audited |
| LoanCore | unknown | ethereum | n/a | [`0x89bc08...cc98af`](./contracts/ethereum-1/0x89bc08ba00f135d608bc335f6b33d7a9abcc98af/) | ✅ Audited |
| OriginationController | governance | ethereum | n/a | [`0xb7bfcc...185878`](./contracts/ethereum-1/0xb7bfcca7d7ff0f371867b770856fac184b185878/) | ✅ Audited |
| PromissoryNote | unknown | ethereum | n/a | 2 deployments: ethereum [`0x92ed78...0a7618`](./contracts/ethereum-1/0x92ed78b41537c902ad287608d8535bb6780a7618/); ethereum `0xe5b12b...ecb7be` | ✅ Audited |
| RepaymentController | governance | ethereum | n/a | [`0x74241e...b40d53`](./contracts/ethereum-1/0x74241e1a9c021643289476426b9b70229ab40d53/) | ✅ Audited |
| VaultFactory | registry | ethereum | n/a | [`0x269363...476d55`](./contracts/ethereum-1/0x269363665dbb1582b143099a3cb467e98a476d55/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirdropSingleSidedStaking | operational_periphery | ethereum | n/a | [`0x72854f...8740f0`](./contracts/ethereum-1/0x72854fbb44d3dd87109d46a9298aeb0d018740f0/) | ⚠️ Unaudited |
| ArcadeCoreVoting | unknown | ethereum | n/a | [`0x54b723...d39856`](./contracts/ethereum-1/0x54b7235db74103395dd48a2c3dd993e3b7d39856/) | ⚠️ Unaudited |

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
| [V1_Lending_LeastAuthority_2021-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V1_Lending_LeastAuthority_2021-08.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 2 | high |
| [V1_Lending_Macro_2022-04.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V1_Lending_Macro_2022-04.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 5 | high |
| [V2_Lending_Quantstamp_2022_06.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V2_Lending_Quantstamp_2022_06.pdf) | Quantstamp | Audit | 2022-06 | stale | Direct | contract_name | 6 | high |
| [V2_Lending_Roku_2022_06.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V2_Lending_Roku_2022_06.pdf) | unknown | Audit | 2022-06 | stale | Direct | contract_name | 4 | high |
| [V3_Lending_Omniscia_2023-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Lending_Omniscia_2023-08.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 6 | high |
| [V3_Lending_TrailOfBits_2023-07.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Lending_TrailOfBits_2023-07.pdf) | Trail of Bits | Audit | 2023-07 | stale | Direct | contract_name | 6 | high |
| [V3_Rollovers_Omniscia_2023-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Rollovers_Omniscia_2023-08.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [V4_Lending_Renascence_2024_02.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V4_Lending_Renascence_2024_02.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 3 | high |
| [arcade-staking-report-final.pdf](https://github.com/arcadexyz/dao-contracts/blob/main/audits/arcade-staking-report-final.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | high |
| [07152023_Omniscia_Audit_Arcade_Governance.pdf](https://github.com/arcadexyz/governance/blob/main/audits/07152023_Omniscia_Audit_Arcade_Governance.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x72854f...8740f0`](./contracts/ethereum-1/0x72854fbb44d3dd87109d46a9298aeb0d018740f0/) | AirdropSingleSidedStaking | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54b723...d39856`](./contracts/ethereum-1/0x54b7235db74103395dd48a2c3dd993e3b7d39856/) | ArcadeCoreVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=9
- Match method counts: extraction_exact=390

Zero-match audit list:

- [7726] V3_Rollovers_Omniscia_2023-08.pdf

Fork inheritance lineage and inherited audits are included when available.
