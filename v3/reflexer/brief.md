# Agentic Audit Brief: Reflexer

## Project Overview

- Project: Reflexer (`reflexer`)
- Website: [https://reflexer.finance/](https://reflexer.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:44.275Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 51 unique implementations (55 raw deployments)
- DeFi Llama TVL: $1,728,362.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 27 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 8 common project-authored base contract(s) (increasingtreasuryreimbursement, gebmath, basicactions). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 82; live-surface contracts included: 55 (13 live, 42 unknown).
- Excluded by liveness: 27 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/9 (77.8%)
- Deployed-live implementations: 9 of 51 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/9
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 51
- Raw deployments: 55
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 11.1% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solidified | Tier 2 | 5 | 55.6% | 2022-09 |
| Quantstamp | Tier 2 | 4 | 44.4% | 2021-10 |
| OpenZeppelin | Tier 1 | 1 | 11.1% | n/a |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DSDelegateToken | token | ethereum | n/a | 2 deployments: ethereum [`0x6243d8...8391f4`](./contracts/ethereum-1/0x6243d8cea23066d098a15582d81a598b4e8391f4/); ethereum `0xfdb58d...40e4b1` | ✅ Audited |
| GebProxyActions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0ae263...07153e`](./contracts/ethereum-1/0x0ae26397e6d456359faf36c770304bbc3607153e/); ethereum `0x880cec...0f64ed` | ✅ Audited |
| GebProxyIncentivesActions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x88a77b...7349e0`](./contracts/ethereum-1/0x88a77b8ff53329f88b8b6f9e29835fec287349e0/); ethereum `0xba2e2e...af3547` | ✅ Audited |
| GebSafeManager | governance | ethereum | n/a | [`0xefe0b4...94f185`](./contracts/ethereum-1/0xefe0b4ca532769a3ae758fd82e1426a03a94f185/) | ✅ Audited |
| RateSetter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x005fab...3bf947`](./contracts/ethereum-1/0x005fab4c9d1ef0f3e41cd27b26cf05680c3bf947/); ethereum `0xedeeaf...c6872b` | ✅ Audited |
| SAFEEngine | unknown | ethereum | n/a | [`0xcc88a9...1a6962`](./contracts/ethereum-1/0xcc88a9d330da1133df3a7bd823b95e52511a6962/) | ✅ Audited |
| StakingRewardsFactory | unknown | ethereum | n/a | [`0xa706d4...912a20`](./contracts/ethereum-1/0xa706d4c39c315288113020f3e2d7e1095e912a20/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollateralJoin1 | unknown | ethereum | n/a | [`0x2d3cd7...226e3a`](./contracts/ethereum-1/0x2d3cd7b81c93f188f3cb8ad87c8acc73d6226e3a/) | ⚠️ Unaudited |
| GebProxyActionsGlobalSettlement | unknown | ethereum | n/a | [`0x17b5d9...92cb93`](./contracts/ethereum-1/0x17b5d9914194a08c7ef14451ba15e8ae4f92cb93/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x027361...4b644b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06691e...c462ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0721f0...420747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f850d...dc7c61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x144b26...9925e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c50e1...16faf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24acc8...1ae09f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28c063...ef5549` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30cd6c...90159b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x320290...486425` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3be18c...106fa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41b220...274f03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x494939...eef370` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4aaacd...18f65c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59405f...5e952a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5efe1f...3a5e52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6552bc...543a64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68ac16...a57760` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x712141...cc65fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x712cab...acb116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x766bbe...e9d19b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fc405...f72e55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x870473...c64f73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d02d5...02f5dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94f468...57c4bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97a0a0...87c533` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98fd66...b196f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d1f48...bf7cc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f02dd...d72a6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3d266...e9845e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb13077...983178` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3ad68...d8f719` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba6eba...b10ba1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcaa45...8768b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb3103...7de1cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcddab8...859039` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfa37d...ae2688` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd07e26...64d671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd11b0b...c62f0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda2dbe...dce0d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf195a0...5525c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf71774...e68842` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [oz-geb-protocol-audit.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/open-zeppelin/core-contracts/oz-geb-protocol-audit.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | 1 | n/a |
| [Reflexer RAI Curve Pool - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/curve/Reflexer%20RAI%20Curve%20Pool%20-%20Report.pdf) | Quantstamp | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [Reflexer Helper Contracts - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/helper-contracts/first-audit/Reflexer%20Helper%20Contracts%20-%20Report.pdf) | Quantstamp | Audit | 2020-11 | stale | Direct | contract_name | 1 | n/a |
| [Reflexer Second Engagement - Final Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/helper-contracts/second-audit/Reflexer%20Second%20Engagement%20-%20Final%20Report.pdf) | Quantstamp | Audit | 2021-01 | stale | Direct | contract_name | 6 | high |
| [Reflexer Staking and Auction House - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/staking/Reflexer%20Staking%20and%20Auction%20House%20-%20Report.pdf) | Quantstamp | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - RAI Backup Oracles.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/backup-oracle/Audit%20Report%20-%20RAI%20Backup%20Oracles.pdf) | Solidified | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Solidified Audit Report - Reflexer [26.01.2021].pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/helper-contracts/Solidified%20Audit%20Report%20-%20Reflexer%20%5B26.01.2021%5D.pdf) | Solidified | Audit | 2021-01 | stale | Direct | contract_name | 9 | high |
| [Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/uniswap-v3/Audit%20Report%20-%20Uniswap%20V3%20Liquidity%20Manager%20%5B24.06.2021%5D.pdf) | Solidified | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 51 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=2, extraction_exact=15

Zero-match audit list:

- [2842] Reflexer RAI Curve Pool - Report.pdf
- [2845] Reflexer Staking and Auction House - Report.pdf
- [2846] Audit Report - RAI Backup Oracles.pdf
- [2848] Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf

Fork inheritance lineage and inherited audits are included when available.
