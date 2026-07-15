# Agentic Audit Brief: Metropolis Exchange

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

- Project: Metropolis Exchange (`metropolis-exchange`)
- Website: [https://metropolis.exchange/](https://metropolis.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: sonic
- Contract surface: 37 unique implementations (37 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $463,030.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Metropolis Exchange. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across sonic. Structural roles: 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: ownable (3), erc20 (2), erc20permit (2), accesscontrol (1), erc165 (1), ownable2step (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 8 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

**LBFactory** (`0x39d966...d6ee43`, chain 146)
Origin: lynx (`0x39d966...d6ee43`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x56eaa8...383149`, chain 146)
- UnnamedContract (`0x67803f...7cba48`, chain 146)
- UnnamedContract (`0xed0673...7cb6a2`, chain 146)
- Factory (`0x157030...170ad0`, chain 146)
- Metro (`0x71e995...1f7321`, chain 146)
- MetroGem (`0x8a3b1c...f350db`, chain 146)
- Router (`0x95a7e4...a49fa3`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 29 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 8 of 37 unique; 29 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 37
- Raw deployments: 37
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArcadeMemecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x577fde...64341d` | ⚠️ Unaudited |
| BribeRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x161a72...b7f8a7` | ⚠️ Unaudited |
| DummyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe0143c...f78eb9` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | sonic | unit-247507 | `0x157030...170ad0` | ⚠️ Unaudited |
| FarmLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5657ab...03809b` | ⚠️ Unaudited |
| FarmZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa3db21...3c6cd3` | ⚠️ Unaudited |
| LBFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-247508 | `0x39d966...d6ee43` | ⚠️ Unaudited |
| LBHooksExtraRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0a82b2...d89e26` | ⚠️ Unaudited |
| LBHooksLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x087495...70e1a1` | ⚠️ Unaudited |
| LBHooksManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4962db...27f7ac` | ⚠️ Unaudited |
| LBHooksMCRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x78ceff...203388` | ⚠️ Unaudited |
| LBHooksSimpleRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x068812...531cb6` | ⚠️ Unaudited |
| LBPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xce7f2a...d416e4` | ⚠️ Unaudited |
| LBQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5277be...c6cc49` | ⚠️ Unaudited |
| LBRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x596eeb...ffb881` | ⚠️ Unaudited |
| LiquidityHelperContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4f95b0...774b20` | ⚠️ Unaudited |
| MasterChefRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x501c47...fdefd8` | ⚠️ Unaudited |
| Metro | unknown | project_anchor | own_supporting | 0 | sonic | unit-247511 | `0x71e995...1f7321` | ⚠️ Unaudited |
| MetroFairLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f18af...9b6609` | ⚠️ Unaudited |
| MetroGem | unknown | project_anchor | own_supporting | 0 | sonic | unit-247512 | `0x8a3b1c...f350db` | ⚠️ Unaudited |
| MetroGem2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ae89c...e37a5e` | ⚠️ Unaudited |
| MetroStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb7b785...8ceb8b` | ⚠️ Unaudited |
| MetroStaking2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x197e72...f3b254` | ⚠️ Unaudited |
| OracleRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x19d815...49a387` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4541cd...8046dc` | ⚠️ Unaudited |
| ProxyAdmin2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x35de16...73cfee` | ⚠️ Unaudited |
| PythAggregatorAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31b803...742ab0` | ⚠️ Unaudited |
| RewarderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6122dc...8bdaf4` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 0 | sonic | unit-247513 | `0x95a7e4...a49fa3` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x181713...c85e80` | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x03a989...891fda` | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x0444a9...c955ed` | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x116507...837d6f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x1a5ded...6e03da` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-247509 | `0x56eaa8...383149` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-247510 | `0x67803f...7cba48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-247514 | `0xed0673...7cb6a2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [\- **Metropolis DLMM Maker Vaults** by [Cantina](https://cantina.xyz/) via [public contest]():](https://cantina.xyz/competitions/076935b1-2706-48c6-bf0a-b3656aa24194/leaderboard) | Spearbit | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29746] \- **Metropolis DLMM Maker Vaults** by [Cantina](https://cantina.xyz/) via [public contest](): — no match: The provided text is a competition leaderboard, not an audit report. No contracts or audit date are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x157030...170ad0` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x39d966...d6ee43` | LBFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x71e995...1f7321` | Metro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x8a3b1c...f350db` | MetroGem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x95a7e4...a49fa3` | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 3 |

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

- [29746] \- **Metropolis DLMM Maker Vaults** by [Cantina](https://cantina.xyz/) via [public contest]():

Fork inheritance lineage and inherited audits are included when available.
