# Agentic Audit Brief: Meeds Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Meeds Finance (`meeds-finance`)
- Website: [https://www.meeds.io/](https://www.meeds.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 25 unique implementations (27 raw deployments)
- Coverage basis: 0/9 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,271,759.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Meeds Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, base, ethereum, optimism, polygon. Structural roles: 7 core, 1 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (7), supporting (1), unclassified (1)
- Contract kinds: contract (8), unclassified (1)
- Detected standards: ownable (2), erc20 (1)
- Frameworks: openzeppelin (2), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xdd462e9399624dfcf73018793bd50a7ef47940b9`, chain 10)
- UnnamedContract (`0x6aca77cf3bab0c4e8210a09b57b07854a995289a`, chain 137)
- UnnamedContract (`0xd9df947d2a8f9c28c37af7cb7c526022fb14efa2`, chain 8453)
- UnnamedContract (`0xe4db3652ac7f88c5712717fd774676bf4aa56769`, chain 42161)
- MeedsToken (`0x8503a7b00b4b52692cc6c14e5b96f142e30547b7`, chain 1)
- TokenFactory (`0x1b37d04759ad542640cc44ff849a373040386050`, chain 1)
- UniswapV3Pool (`0xc82b1c50609217075d28aa22f11a80450212b3d1`, chain 1)
- UniswapV3Pool (`0xfa127d9a1154610eedbab7323b64363089f9989e`, chain 1)
- UniswapV3Pool (`0xe133306fc90133e33a8c322e8c81f06ec2369b17`, chain 10)
- UniswapV3Pool (`0x4e7d4e5fd3e4a68adcbeacaa3748b9c67bb02a69`, chain 137)
- UniswapV3Pool (`0xada40f483dd44e9e6e126a2db59379d45551dd55`, chain 8453)
- UniswapV3Pool (`0xc76979618841ab656bb834b4fe812319677225a1`, chain 42161)
- Vyper_contract (`0x440701ca5817b5847438da2ec2ca3b9fdbf37dfa`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/9 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 5 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 13 of 25 unique; 12 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 25
- Raw deployments: 27
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Deed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0143b71443650aa8efa76bd82f35c22ebd558090` | ⚠️ Unaudited |
| DeedRenting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0af49e83e36256158c654ef549849d80f51fd76c`; ethereum `0x427aa8f31013960e0e5e73977c1918e15d693baa` | ⚠️ Unaudited |
| DeedTenantProvisioning | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45595f6f9b699d8becab00c6fe295147c4e84681` | ⚠️ Unaudited |
| DeedTenantProvisioning | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x49c0cf46c0eb6fdf05a4e8c1fe344d510422e1f0`; ethereum `0x887a70ec5d9a76b086e040fabc877b506ae4b9d0` | ⚠️ Unaudited |
| MeedsToken | token | project_anchor | own_supporting | 0 | ethereum | unit-246312 | `0x8503a7b00b4b52692cc6c14e5b96f142e30547b7` | ⚠️ Unaudited |
| TokenFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-246310 | `0x1b37d04759ad542640cc44ff849a373040386050` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-246313 | `0xc82b1c50609217075d28aa22f11a80450212b3d1` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-246314 | `0xfa127d9a1154610eedbab7323b64363089f9989e` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | optimism | unit-246316 | `0xe133306fc90133e33a8c322e8c81f06ec2369b17` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | polygon | unit-246317 | `0x4e7d4e5fd3e4a68adcbeacaa3748b9c67bb02a69` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | base | unit-246321 | `0xada40f483dd44e9e6e126a2db59379d45551dd55` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-246319 | `0xc76979618841ab656bb834b4fe812319677225a1` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246311 | `0x440701ca5817b5847438da2ec2ca3b9fdbf37dfa` | ⚠️ Unaudited |
| XMeedsNFTRewarding | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44d6d6ab50401dd846336e9c706a492f06e1bcd4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x70cad5d439591ea7f496b69dcb22521685015853` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x769cf241f79cfcfa5693f4a1adf6c7ebdd43e3c6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8f4660498e79c771f93316f09da98e1ebf94c576` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xba5e4d55ca96bf25c35fc65d9251355dcd120655` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-246315 | `0xdd462e9399624dfcf73018793bd50a7ef47940b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x29d31ad013dc276d0ffcf74e15e315f14dbe5858` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-246318 | `0x6aca77cf3bab0c4e8210a09b57b07854a995289a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x6e026d747bac14209e437261ec32a2c6f8347b34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xdbc382c0142c54bc9b7d1bd21ee1b87b320e6198` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-246322 | `0xd9df947d2a8f9c28c37af7cb7c526022fb14efa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-246320 | `0xe4db3652ac7f88c5712717fd774676bf4aa56769` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 7
- Live contracts: 1
- Unknown liveness contracts: 6
- Source-verified contracts: 7
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: exact address book overlap=1, source verified unclassified=6

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | exact address book overlap | Vyper_contract<br>`0x440701ca5817b5847438da2ec2ca3b9fdbf37dfa` | project_anchor | unknown | live | verified | n/a | `0x0d55f99d20cd4fc7eb36fb78f7d8a42c48826493` |
| ethereum | source verified unclassified | Deed<br>`0x0143b71443650aa8efa76bd82f35c22ebd558090` | non_address_book | unknown | unknown | verified | n/a | `0x0d55f99d20cd4fc7eb36fb78f7d8a42c48826493` |
| ethereum | source verified unclassified | DeedRenting<br>`0x0af49e83e36256158c654ef549849d80f51fd76c` | non_address_book | unknown | unknown | verified | n/a | `0x0d55f99d20cd4fc7eb36fb78f7d8a42c48826493` |
| ethereum | source verified unclassified | DeedTenantProvisioning<br>`0x45595f6f9b699d8becab00c6fe295147c4e84681` | non_address_book | unknown | unknown | verified | n/a | `0x0d55f99d20cd4fc7eb36fb78f7d8a42c48826493` |
| ethereum | source verified unclassified | DeedTenantProvisioning<br>`0x887a70ec5d9a76b086e040fabc877b506ae4b9d0` | non_address_book | unknown | unknown | verified | n/a | `0x0d55f99d20cd4fc7eb36fb78f7d8a42c48826493` |
| ethereum | source verified unclassified | DeedTenantProvisioningProxy<br>`0x49c0cf46c0eb6fdf05a4e8c1fe344d510422e1f0` | non_address_book | unknown | unknown | verified | n/a | `0x0d55f99d20cd4fc7eb36fb78f7d8a42c48826493` |
| ethereum | source verified unclassified | DeedTenantRentingProxy<br>`0x427aa8f31013960e0e5e73977c1918e15d693baa` | non_address_book | unknown | unknown | verified | n/a | `0x0d55f99d20cd4fc7eb36fb78f7d8a42c48826493` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x8503a7b00b4b52692cc6c14e5b96f142e30547b7` | MeedsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1b37d04759ad542640cc44ff849a373040386050` | TokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x440701ca5817b5847438da2ec2ca3b9fdbf37dfa` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 6 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
