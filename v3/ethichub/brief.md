# Agentic Audit Brief: EthicHub

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: EthicHub (`ethichub`)
- Website: [https://ethichub.com](https://ethichub.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: celo, ethereum, gnosis
- Contract surface: 24 unique implementations (25 raw deployments)
- Coverage basis: 3/6 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,533,879.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for EthicHub. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across celo, ethereum, gnosis. Structural roles: 16 unclassified, 11 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: unclassified (16), core (11), supporting (1)
- Contract kinds: contract (28)
- Detected standards: ownable (3), accesscontrol (2), erc1967proxy (1), erc20 (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x751c08...a45119`, chain 42220)
- UnnamedContract (`0xad2f9f...767d4d`, chain 42220)
- AdminUpgradeabilityProxy (`0xfd0991...d80d3e`, chain 1)
- BridgeToken (`0x9995cc...c931ed`, chain 42220)
- ERC20Reserve (`0xb27132...063073`, chain 1)
- IncentiveVestingReserve (`0xcb16e2...273c6b`, chain 1)
- StakingRewards (`0xbfa274...a72684`, chain 42220)
- UniswapV2Pair (`0x62cfa2...85ddb7`, chain 42220)

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 28 (8 live, 20 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/6 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Deployed-live implementations: 10 of 24 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/6
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 24
- Raw deployments: 25
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 50.0% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC20NFTBond | unknown | project_anchor | own_supporting | 1 | celo | unit-239583 | `0x0f497a...378ff0` | ✅ Audited |
| StakedETHIX | unknown | project_anchor | own_supporting | 1 | celo | unit-239585 | `0xcb16e2...273c6b` | ✅ Audited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | celo | unit-239575 | `0xbfa274...a72684` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239566 | `0xb93aa4...db19f1` | ⚠️ Unaudited |
| ERC20Reserve | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239561 | `0x1ecc7e...04a5c5` | ⚠️ Unaudited |
| ERC20Reserve | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239565 | `0xb27132...063073` | ⚠️ Unaudited |
| ERC20Reserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239567 | `0xb97ef2...6e3518` | ⚠️ Unaudited |
| EthixToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-239578 | `0xfd0991...d80d3e` | ⚠️ Unaudited |
| ForeignOmnibridge | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-239581 | `0x88ad09...655671` | ⚠️ Unaudited |
| IncentiveVestingReserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239564 | `0x6f58a1...c0775e` | ⚠️ Unaudited |
| IncentiveVestingReserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239568 | `0xbf83fc...3ad51e` | ⚠️ Unaudited |
| IncentiveVestingReserve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239569 | `0xcb16e2...273c6b` | ⚠️ Unaudited |
| MerkleTreeVestingReserve | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239562 | `0x2f36b4...9b0afd` | ⚠️ Unaudited |
| OriginatorStaking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | ethereum | unit-239577 (2 proxies) | 2 deployments: ethereum `0x3b61cd...04d0e3`; ethereum `0x7435c0...1dd955` | ⚠️ Unaudited |
| PermittableToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-239582 | `0xec3f3e...3fbb19` | ⚠️ Unaudited |
| StakedETHIX | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-239580 | `0x5b2bbb...39cc2d` | ⚠️ Unaudited |
| StakedUETHIX | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-239579 | `0x89cea1...9478f5` | ⚠️ Unaudited |
| TeamVestingReserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239563 | `0x48c5bf...73517b` | ⚠️ Unaudited |
| TokenImplementation | token | project_anchor | own_supporting | 1 | celo | unit-239584 | `0x9995cc...c931ed` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-239571 | `0xe5bc36...3577eb` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | celo | unit-239572 | `0x62cfa2...85ddb7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-239570 | `0x2b8d7a...f2acd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-239573 | `0x751c08...a45119` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-239574 | `0xad2f9f...767d4d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf](https://gitlab.com/EthicHub/ethix-contracts/-/blob/master/audits/Red4Sec-EthicHub%20-%20Smart%20Contract%20Audit%20Report_v3.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 25 | high |
| [EthicHub - Smart Contract Audit Report Final.pdf](https://gitlab.com/EthicHub/minimice/-/blob/main/audits/EthicHub%20-%20Smart%20Contract%20Audit%20Report%20Final.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2663] Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf — matched: Scope section lists 27 files; contract names extracted from filenames. Note: 'CompensationSystemManager' is misspelled in the report (should be 'CompensationSystemManager' but listed as 'CompenstionSystemManager' in findings; used the scope listing name).
- [2664] EthicHub - Smart Contract Audit Report Final.pdf — matched: Extracted contract names from scope section and findings. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | BaseTokenUpgradeable | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | CompensationSystemManager | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | DistributionTypes | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ERC20Reserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ERC2612Upgradeable | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ERC677Upgradeable | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | EthixERC20Snapshot | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | EthixToken | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | FeesTreasury | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IBPool | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IERC677 | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IERC677Receiver | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IStakedEthix | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IStakingRewards | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ITransferHook | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ManagedVestingReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | MerkleTreeVestingReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | NativeFeesTreasury | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | NativeReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | PresaleVestingReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | StakedBETHIX | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | StakedETHIX | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xcb16e2...273c6b` — deployed 2022-07-12 17:58:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | StakedToken | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | StakingRewards | own contract | StakingRewards (selected) `0xbfa274...a72684` — deployed 2022-07-29 21:13:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | TeamVestingReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | VestingReserve | unmatched — not counted | — | listed in scope | no |
| EthicHub - Smart Contract Audit Report Final.pdf | ERC20NFTBond | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0f497a...378ff0` — deployed 2022-07-05 18:14:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EthicHub - Smart Contract Audit Report Final.pdf | NativeNFTBond | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | CollateralizedBondGranter | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | InterestParameters | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | BondGranter | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | NFTBond | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | AccessManager | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | NFT | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | InterestCalculator | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | LiquidityRequester | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xcb16e2...273c6b` | IncentiveVestingReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x9995cc...c931ed` | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 34 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=3

Fork inheritance lineage and inherited audits are included when available.
