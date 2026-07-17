# Agentic Audit Brief: Reflexer

## Project Overview

- Project: Reflexer (`reflexer`)
- Website: [https://reflexer.finance/](https://reflexer.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.649Z
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
| DSDelegateToken | token | ethereum | n/a | 2 deployments: ethereum [`0x6243d8cea23066d098a15582d81a598b4e8391f4`](./contracts/ethereum-1/0x6243d8cea23066d098a15582d81a598b4e8391f4/); ethereum `0xfdb58d359971ba3467430443067e8d8a8040e4b1` | ✅ Audited |
| GebProxyActions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0ae26397e6d456359faf36c770304bbc3607153e`](./contracts/ethereum-1/0x0ae26397e6d456359faf36c770304bbc3607153e/); ethereum `0x880cecbc56f48bce5e0ef4070017c0a4270f64ed` | ✅ Audited |
| GebProxyIncentivesActions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x88a77b8ff53329f88b8b6f9e29835fec287349e0`](./contracts/ethereum-1/0x88a77b8ff53329f88b8b6f9e29835fec287349e0/); ethereum `0xba2e2edea9008c5aa633372945d05a5923af3547` | ✅ Audited |
| GebSafeManager | governance | ethereum | n/a | [`0xefe0b4ca532769a3ae758fd82e1426a03a94f185`](./contracts/ethereum-1/0xefe0b4ca532769a3ae758fd82e1426a03a94f185/) | ✅ Audited |
| RateSetter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x005fab4c9d1ef0f3e41cd27b26cf05680c3bf947`](./contracts/ethereum-1/0x005fab4c9d1ef0f3e41cd27b26cf05680c3bf947/); ethereum `0xedeeaf31efdd655b4fb34a775ff60339bac6872b` | ✅ Audited |
| SAFEEngine | unknown | ethereum | n/a | [`0xcc88a9d330da1133df3a7bd823b95e52511a6962`](./contracts/ethereum-1/0xcc88a9d330da1133df3a7bd823b95e52511a6962/) | ✅ Audited |
| StakingRewardsFactory | unknown | ethereum | n/a | [`0xa706d4c39c315288113020f3e2d7e1095e912a20`](./contracts/ethereum-1/0xa706d4c39c315288113020f3e2d7e1095e912a20/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollateralJoin1 | unknown | ethereum | n/a | [`0x2d3cd7b81c93f188f3cb8ad87c8acc73d6226e3a`](./contracts/ethereum-1/0x2d3cd7b81c93f188f3cb8ad87c8acc73d6226e3a/) | ⚠️ Unaudited |
| GebProxyActionsGlobalSettlement | unknown | ethereum | n/a | [`0x17b5d9914194a08c7ef14451ba15e8ae4f92cb93`](./contracts/ethereum-1/0x17b5d9914194a08c7ef14451ba15e8ae4f92cb93/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x0273616e492e011c76c36522e22a4e1be14b644b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06691edb4cdc78fa22d7ed575bc24f8672c462ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0721f0846235e299ca3d286df31dfd1b68420747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f850d64846bfe8e6ab2737225fea90a51dc7c61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x144b260fec7570c82ab49e0b5d8bfbf8989925e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c50e110f7231fc04eb4302b370b3bf07d16faf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24acc85528e6dd5b9c297fb8821522d36b1ae09f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28c06395a8373d45b91817604a20722b5cef5549` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30cd6ce0ee8b0964671f294bc4401f506190159b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3202901e355f05ded11f16ee771f23d3be486425` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3be18c3ede649ed0efa5a99e2020a5db5e106fa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41b2206d64492824c0cae9c7a963328fa1274f03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49493932bcbc24580a4758006247e2788aeef370` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4aaacd38be6e92b0764463f9e61d423e3e18f65c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59405ff89d7810180108779884af6b39055e952a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5efe1f0251a7e7172af57d620d28f3a06b3a5e52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6552bc6ae56754f69669a3089982a974bf543a64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68ac16ed107b2a733e625b36d95ef08d5ba57760` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7121415b6c944b61204d63750b08b5399ccc65fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x712cab233101c2962d32d5eb3f7697b74cacb116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x766bbe08bac7670ef86607ec52601e8040e9d19b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fc4054206167b2313a6486b477fdcb666f72e55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87047317c25f4881c81a5a9043d70f982bc64f73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d02d581c3b8ddd06f09d3364ee92d904c02f5dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94f468dbd2de11b0b2f6566ca3756d565f57c4bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97a0a0dace333d577c258ff4ed67b1d66287c533` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98fd668d71b3e449479e1ef0545559af8eb196f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d1f48776bd1eb10bbecd83c87f1d0ea47bf7cc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f02ddbfb4b045df83d45c4d644027fbd7d72a6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3d26613147e8155421068383d8751bd75e9845e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb13077d07afccf430e8353ce91bb157c7d983178` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3ad68940d3b59a5a0d36252ca298da359d8f719` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba6eba2462dbd464ef28e253e1fb16add3b10ba1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcaa45ac45828ade1f768bc5e6b814fdb18768b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb310348eea212a6d55cf201717e644c2d7de1cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcddab801770b98950479ea897791951644859039` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfa37dce6dfe80857c3b8dba100b592775ae2688` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd07e2696d33f08e69e269a8258658c4f4264d671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd11b0b848d59146d9b3ea0b63bf36189d6c62f0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda2dbe5929464d24fa05158ec73d1e7795dce0d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf195a04ffa890ebb4359f64db9730697bc5525c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf71774ee859d884ebb8c37cd94b2851cd2e68842` | ❓ Unverified |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2d3cd7b81c93f188f3cb8ad87c8acc73d6226e3a`](./contracts/ethereum-1/0x2d3cd7b81c93f188f3cb8ad87c8acc73d6226e3a/) | CollateralJoin1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17b5d9914194a08c7ef14451ba15e8ae4f92cb93`](./contracts/ethereum-1/0x17b5d9914194a08c7ef14451ba15e8ae4f92cb93/) | GebProxyActionsGlobalSettlement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

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
