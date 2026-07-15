# Agentic Audit Brief: YieldFlow

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

- Project: YieldFlow (`yieldflow`)
- Website: [https://yieldflow.com](https://yieldflow.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, fantom, polygon
- Contract surface: 61 unique implementations (61 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $321,615.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for YieldFlow. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, ethereum, fantom, polygon. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 40 contracts are derived from known codebases. 40 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x004375...f3a416`, chain 1)
- UnnamedContract (`0x0a4a16...fb1cc8`, chain 1)
- UnnamedContract (`0x0d4a11...1f1852`, chain 1)
- UnnamedContract (`0x11b1f5...8c9cf3`, chain 1)
- UnnamedContract (`0x3dd49f...b6bd74`, chain 1)
- UnnamedContract (`0x47dd57...c09cec`, chain 1)
- UnnamedContract (`0x55d5c2...4b4dba`, chain 1)
- UnnamedContract (`0x65d178...c736c7`, chain 1)
- UnnamedContract (`0x811bee...f1954f`, chain 1)
- UnnamedContract (`0x819f34...6062de`, chain 1)
- UnnamedContract (`0x857679...55163d`, chain 1)
- UnnamedContract (`0x9b7dad...e15eb0`, chain 1)
- UnnamedContract (`0xa0fdf5...e736fb`, chain 1)
- UnnamedContract (`0xa2107f...f6b974`, chain 1)
- UnnamedContract (`0xa43fe1...ccec9f`, chain 1)
- UnnamedContract (`0xac36a4...89b56e`, chain 1)
- UnnamedContract (`0xaffa16...36f917`, chain 1)
- UnnamedContract (`0xb6909b...2b4838`, chain 1)
- UnnamedContract (`0xbb2b80...72d940`, chain 1)
- UnnamedContract (`0xc0a6bb...4e406d`, chain 1)
- UnnamedContract (`0xd3d2e2...033a17`, chain 1)
- UnnamedContract (`0xdfc14d...ae044f`, chain 1)
- UnnamedContract (`0xeffc18...d1ce31`, chain 1)
- UnnamedContract (`0xfb04d4...ab59b8`, chain 1)
- UnnamedContract (`0xa6e383...669abd`, chain 137)
- UnnamedContract (`0xfc00fa...000000`, chain 250)
- UnnamedContract (`0x0fe185...52e6b8`, chain 42161)
- UnnamedContract (`0x12e985...01135d`, chain 42161)
- UnnamedContract (`0x2785dd...d2813d`, chain 42161)
- UnnamedContract (`0x49dcf2...470173`, chain 42161)
- UnnamedContract (`0x5e12b9...7e0cbd`, chain 42161)
- UnnamedContract (`0x6c3340...7acae6`, chain 42161)
- UnnamedContract (`0xa1607f...aa85e0`, chain 42161)
- UnnamedContract (`0xab9072...845876`, chain 42161)
- UnnamedContract (`0xb962f0...e1cc91`, chain 42161)
- UnnamedContract (`0xca5f34...57a7ee`, chain 42161)
- UnnamedContract (`0xe2e706...54276f`, chain 42161)
- UnnamedContract (`0xeda3cf...ba35a7`, chain 42161)
- RangePositionManager (`0x01af74...b503bd`, chain 1)
- Yieldflow (`0x113a05...a1546d`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/40 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 40 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 40 of 61 unique; 21 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 61
- Raw deployments: 61
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74f8c9...bd2644` | ⚠️ Unaudited |
| FeeSplitterManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd5179...c43fea` | ⚠️ Unaudited |
| MassTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb75b83...26f700` | ⚠️ Unaudited |
| PolygonStakingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159599...d5ec7e` | ⚠️ Unaudited |
| PolygonStakingImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x635f08...de21c9` | ⚠️ Unaudited |
| RangeMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x080901...0a3672` | ⚠️ Unaudited |
| RangePositionManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397564 | `0x01af74...b503bd` | ⚠️ Unaudited |
| RefSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ede97...0aa89c` | ⚠️ Unaudited |
| RewardNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b2fa8...6d5d73` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5940d...7fed88` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c166...d0974a` | ⚠️ Unaudited |
| StakingRewardsLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd47e26...cd1140` | ⚠️ Unaudited |
| SwapManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06cef6...494829` | ⚠️ Unaudited |
| UniV2LPETHFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b1ae...e4eb21` | ⚠️ Unaudited |
| UniV2LPETHImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6620...96743a` | ⚠️ Unaudited |
| UniV2LPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x940337...85961e` | ⚠️ Unaudited |
| UniV2LPImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51bee6...66bada` | ⚠️ Unaudited |
| VestingStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2c4e...247c85` | ⚠️ Unaudited |
| VestingStakerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d7913...bef592` | ⚠️ Unaudited |
| YFLOW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d2135...20a70c` | ⚠️ Unaudited |
| Yieldflow | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397591 | `0x113a05...a1546d` | ⚠️ Unaudited |
| YieldManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4b8df...9b8694` | ⚠️ Unaudited |
| YieldManagerOutpostV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d8bcd...955d85` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397563 | `0x004375...f3a416` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397565 | `0x0a4a16...fb1cc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397566 | `0x0d4a11...1f1852` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397567 | `0x11b1f5...8c9cf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397568 | `0x3dd49f...b6bd74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397569 | `0x47dd57...c09cec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397570 | `0x55d5c2...4b4dba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397571 | `0x65d178...c736c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397572 | `0x811bee...f1954f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397573 | `0x819f34...6062de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397574 | `0x857679...55163d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397575 | `0x9b7dad...e15eb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397576 | `0xa0fdf5...e736fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397577 | `0xa2107f...f6b974` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397578 | `0xa43fe1...ccec9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397579 | `0xac36a4...89b56e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397580 | `0xaffa16...36f917` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397581 | `0xb6909b...2b4838` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397582 | `0xbb2b80...72d940` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397583 | `0xc0a6bb...4e406d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397584 | `0xd3d2e2...033a17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397585 | `0xdfc14d...ae044f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397586 | `0xeffc18...d1ce31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397587 | `0xfb04d4...ab59b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397588 | `0xa6e383...669abd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-397589 | `0xfc00fa...000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397590 | `0x0fe185...52e6b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397592 | `0x12e985...01135d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397593 | `0x2785dd...d2813d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397594 | `0x49dcf2...470173` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397595 | `0x5e12b9...7e0cbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397596 | `0x6c3340...7acae6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397597 | `0xa1607f...aa85e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397598 | `0xab9072...845876` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397599 | `0xb962f0...e1cc91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397600 | `0xca5f34...57a7ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397601 | `0xe2e706...54276f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397602 | `0xeda3cf...ba35a7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/yieldflow](https://skynet.certik.com/projects/yieldflow) | CertiK | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21098] skynet.certik.com/projects/yieldflow — no match: Extracted from CertiK Skynet page for YieldFlow. Audited files listed include CallbackHandler.sol, GMXAdapter.sol, and 38 others (not individually named). Assessed contracts section shows ProtocolConfig.sol. Audit date from 'Last Audit was delivered on 6/26/2025'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/yieldflow | CallbackHandler | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/yieldflow | GMXAdapter | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/yieldflow | ProtocolConfig | unmatched — not counted | — | listed in assessed contracts | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x01af74...b503bd` | RangePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x113a05...a1546d` | Yieldflow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [21098] skynet.certik.com/projects/yieldflow

Fork inheritance lineage and inherited audits are included when available.
