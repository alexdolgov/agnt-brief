# Agentic Audit Brief: DeFIL

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: DeFIL (`defil`)
- Website: [https://defil.org/](https://defil.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 52 unique implementations (84 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,800,957.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for DeFIL in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 52 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 52
- Raw deployments: 84
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BatchDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a189...7c0d18` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa8af26...e33744`; ethereum `0xe8d21c...3f3d11` | ⚠️ Unaudited |
| CErc20Delegator | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x036cf3...c1dbb0`; ethereum `0x8340c3...400443`; ethereum `0xbe8fb7...2dec9c` | ⚠️ Unaudited |
| CollateralOnlyCErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x629cdf...ed6733`; ethereum `0xed919c...b72a7f` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6b4f20...a6cd81`; ethereum `0x7a2127...3a974c` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6e3dc6...8bc737`; ethereum `0xcc28a1...f94d6d` | ⚠️ Unaudited |
| DeFIL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0e55f...bbc8ce` | ⚠️ Unaudited |
| DFL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x09ce2b...f095ab`; ethereum `0x6ded0f...67c9d7` | ⚠️ Unaudited |
| EFIL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x22b475...e56c2c`; ethereum `0x2a2cb9...5cb628` | ⚠️ Unaudited |
| FilChainStatOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1069...381c90` | ⚠️ Unaudited |
| FILST | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7346ad...c24ca2` | ⚠️ Unaudited |
| FILSTManage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd429f...3f9944` | ⚠️ Unaudited |
| FilstMarketCErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5dbb8...f8c0ea` | ⚠️ Unaudited |
| FilstMarketCErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19e47d...ac3396`; ethereum `0x71dd9c...8602e1` | ⚠️ Unaudited |
| FILSTUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x987dd3...f25928` | ⚠️ Unaudited |
| FixedRewardStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd89198...7948bb` | ⚠️ Unaudited |
| FoundationWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe1c0...60ffd3` | ⚠️ Unaudited |
| MFIL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c392c...b27b0c` | ⚠️ Unaudited |
| MinerManage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d7a67...9c97a1` | ⚠️ Unaudited |
| MiningNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad1ed3...a4a9cf` | ⚠️ Unaudited |
| MiningNFTManage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cfcb7...d502e2` | ⚠️ Unaudited |
| MiningNFTMintingLimitation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b72c8...e9d3ac` | ⚠️ Unaudited |
| MiningNFTMintingLimitationData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x097eb2...692f57` | ⚠️ Unaudited |
| NormalInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0f703a...d4ab9a`; ethereum `0x6cc9fe...228165`; ethereum `0x732b6b...8578ac`; ethereum `0xb394c6...ea6f80`; ethereum `0xd4e1a9...f6b4df`; ethereum `0xdb30f2...049145` | ⚠️ Unaudited |
| PriceConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f5f88...a79b42` | ⚠️ Unaudited |
| PrivilegedRedistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3c2f55...f60bf3`; ethereum `0x3ccd01...284c8f`; ethereum `0xb02f11...aa60eb`; ethereum `0xd86519...9cf252`; ethereum `0xe67ae1...39463d`; ethereum `0xecf802...4a00e7` | ⚠️ Unaudited |
| ReferrerRewardsDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x69f8eb...b1bb2b`; ethereum `0x9a9e42...b09c68` | ⚠️ Unaudited |
| Repurchase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9d7621...da5eb3`; ethereum `0xccb562...cbd7da` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aa5f0...ef6e13` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4d3cf9...4de48f`; ethereum `0x5e6468...165ed9` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x01aabb...fbbf0c`; ethereum `0x2170c3...117cf6`; ethereum `0x679546...54b169`; ethereum `0x6b0c7d...50a6a6`; ethereum `0x9e08bd...4d2f2f`; ethereum `0xb685bf...69c823`; ethereum `0xefeeb8...a7d6f6` | ⚠️ Unaudited |
| StakingDFL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842738...1da214` | ⚠️ Unaudited |
| StakingLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95bcdb...e1718e` | ⚠️ Unaudited |
| StandardPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a1e3e...543039` | ⚠️ Unaudited |
| StandardRewardCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe32d18...b5174c` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b0625...a33b77`; ethereum `0x8a6023...1e1cbc` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd372a3...57e163` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7971b...32b451` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x784ca6...894569`; ethereum `0xc3533e...ab5619`; ethereum `0xe0f23b...59a327`; ethereum `0xe34cc1...a8fa43` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18c87f...a9d7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c7f77...99103c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2542ac...21fedc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x312c6f...c55199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cd7b5...8315d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d5f20...abb9b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d4e77...8bc145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75ca1e...a0c0dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a664a...408405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b1322...821e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb94e91...f6fa82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8f017...b2197b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb2fd2...e1adac` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [security-audit-certificate.html](https://www.slowmist.com/security-audit-certificate.html?id=e84a975074cb9aef9299f9dec92311fd1458d0bbb4163adfadac8e16e0da3c61) | SlowMist | Audit | 2018-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2975] security-audit-certificate.html — no match: No contract names or scope section found in the provided text. The report appears to be a template or summary without specific contract details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [2975] security-audit-certificate.html

Fork inheritance lineage and inherited audits are included when available.
