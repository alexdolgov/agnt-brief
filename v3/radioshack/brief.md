# Agentic Audit Brief: RadioShack

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

- Project: RadioShack (`radioshack`)
- Website: [https://radioshack.org/](https://radioshack.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, cronos, ethereum, fantom, optimism, polygon
- Contract surface: 61 unique implementations (61 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $440,907.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for RadioShack. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across avalanche, bsc, cronos, ethereum, fantom, optimism, polygon. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 54 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/55
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 61
- Raw deployments: 61
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ATH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x532a59...8839f0` | ⚠️ Unaudited |
| Bitcoin100000K | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd42d04...049d38` | ⚠️ Unaudited |
| BuildToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57b59f...9a9eeb` | ⚠️ Unaudited |
| CARROT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9ee2a...f7b04e` | ⚠️ Unaudited |
| CHAPTER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x874000...e70efa` | ⚠️ Unaudited |
| CHORUS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5421f...3c03cf` | ⚠️ Unaudited |
| CollateralRatioPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x239089...3949bf` | ⚠️ Unaudited |
| CollateralReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x038ee1...047287` | ⚠️ Unaudited |
| Dollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e1437...be6c4d` | ⚠️ Unaudited |
| DollarOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03c70a...275ddd` | ⚠️ Unaudited |
| DreamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02f171...acf333` | ⚠️ Unaudited |
| Farms | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x070c02...b1d235` | ⚠️ Unaudited |
| FORMULA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f0925...337376` | ⚠️ Unaudited |
| iCollateralOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03c70a...275ddd` | ⚠️ Unaudited |
| JACKET | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f0988...ae728d` | ⚠️ Unaudited |
| LaunchToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0cfc...f8978e` | ⚠️ Unaudited |
| LAYOUT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbd601...2db32d` | ⚠️ Unaudited |
| MATERIAL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0effba...41b936` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5657d...36f3b1` | ⚠️ Unaudited |
| MOUNTAIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x944ab2...71a562` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07609d...c6ca2c` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd0a882...14c5b6` | ⚠️ Unaudited |
| MUSEUM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf0470e...7ec5c6` | ⚠️ Unaudited |
| NewWorldOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c299...718eb1` | ⚠️ Unaudited |
| NWORoboticsBilling | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed4a6...1bc9f6` | ⚠️ Unaudited |
| NWOStatePayout | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26a61d...c2ad01` | ⚠️ Unaudited |
| PBLCTreasureMultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2a192...44d900` | ⚠️ Unaudited |
| PcsPairOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038ee1...047287` | ⚠️ Unaudited |
| PoliticoinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ffbd6...02f2ab` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x261845...4899bf` | ⚠️ Unaudited |
| ProximaCentauri | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7383...6a7d44` | ⚠️ Unaudited |
| RadioStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a55ab...2532c0` | ⚠️ Unaudited |
| RadioToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-252243 | `0x02bfd1...d48815` | ⚠️ Unaudited |
| RBABY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f48d0...3dca07` | ⚠️ Unaudited |
| RBRIAR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9e928...1695ee` | ⚠️ Unaudited |
| RDFC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73b107...a96afa` | ⚠️ Unaudited |
| REMEDY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc15504...0ede64` | ⚠️ Unaudited |
| RewardRepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x040408...17d155` | ⚠️ Unaudited |
| REXO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5aa3...7a9a13` | ⚠️ Unaudited |
| RSTATE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0f6cb...458094` | ⚠️ Unaudited |
| ShackStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01d97d...0245dd` | ⚠️ Unaudited |
| ShackToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f018e...877f0e` | ⚠️ Unaudited |
| Share | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a1ea...6e429d` | ⚠️ Unaudited |
| ShareOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18a1ea...6e429d` | ⚠️ Unaudited |
| StakePBLCNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50202d...1901e3` | ⚠️ Unaudited |
| StakeSTATE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1502fb...18146e` | ⚠️ Unaudited |
| STATEActivationBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61d348...6ba20d` | ⚠️ Unaudited |
| TokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43bc05...3e2087` | ⚠️ Unaudited |
| TreasureContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdff3a0...29d866` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f70b8...816586` | ⚠️ Unaudited |
| TreasuryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f4af...4c86c0` | ⚠️ Unaudited |
| UNIFORM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x301823...6f28cf` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ef015...65e4e1` | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x687971...90cb72` | ⚠️ Unaudited |
| ZapPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0616bd...857407` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7a5d3a...d55636` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xf899e3...3e70f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xf899e3...3e70f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x30807d...90434a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x613a48...07b6e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xf899e3...3e70f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/radioshack](https://skynet.certik.com/projects/radioshack) | CertiK | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20983] skynet.certik.com/projects/radioshack — no match: Extracted from CertiK Skynet page for RadioShack. Only two files explicitly listed as audited. Date from 'Last Audit was delivered on 5/25/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/radioshack | Ownable | unmatched — not counted | — | listed in Audited Files section | no |
| skynet.certik.com/projects/radioshack | SafeMath | unmatched — not counted | — | listed in Audited Files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [20983] skynet.certik.com/projects/radioshack

Fork inheritance lineage and inherited audits are included when available.
