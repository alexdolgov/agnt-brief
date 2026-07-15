# Agentic Audit Brief: Limitless Exchange

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Limitless Exchange (`limitless-exchange`)
- Website: [https://limitless.exchange](https://limitless.exchange)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 39 unique implementations (39 raw deployments)
- Coverage basis: 0/9 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $727,571.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Limitless Exchange. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across base. Structural roles: 9 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (9)
- Contract kinds: contract (9)
- Detected standards: erc165 (2), erc1967proxy (1), erc20permit (1)
- Frameworks: solmate (8), openzeppelin (3)
- Upgradeable-pattern rows: 1

## Fork Analysis

2 of 9 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

**CTFExchange** (`0x05c748...923fa5`, chain 8453)
Origin: limitless-exchange (`0x46e607...48891d`)
Containment: 100.0% - 35 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**NegRiskAdapter** (`0x6151ef...1e712d`, chain 8453)
Origin: predict-fun (`0x41dce1...0b2a40`)
Containment: 66.7% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- renounceAdmin()

Removals (removed from original):
- addOperator(address)
- isOperator(address)
- removeOperator(address)
- renounceAdminRole()
- renounceOperatorRole()
- setIsConvertPositionsGated(bool)
- setIsMergePositionsGated(bool)
- setIsSplitPositionGated(bool)
- setPermissions(address,bool,bool,bool)

### Original Contracts (no fork detected - full audit scope)

- FeeModule (`0x5130c2...a9d6eb`, chain 8453)
- FiatTokenProxy (`0x833589...a02913`, chain 8453)
- NegRiskCtfExchange (`0x46e607...48891d`, chain 8453)
- NegRiskFeeModule (`0x18b3e1...4a483d`, chain 8453)
- NegRiskOperator (`0xae363a...543992`, chain 8453)
- Vault (`0x2ec22e...d210b3`, chain 8453)
- WrappedCollateral (`0x428f0f...6b8c03`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/9 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 30 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 9 of 39 unique; 30 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 39
- Raw deployments: 39
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

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ConditionalTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b017c...b9ae28` | ⚠️ Unaudited |
| CTFExchange | unknown | project_anchor | own_supporting | 0 | base | unit-266862 | `0x05c748...923fa5` | ⚠️ Unaudited |
| FeeModule | unknown | project_anchor | own_supporting | 0 | base | unit-266867 | `0x5130c2...a9d6eb` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | base | unit-266870 | `0x833589...a02913` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d0c9a...c8d0c1` | ⚠️ Unaudited |
| Fixed192x64Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe4974...f466bb` | ⚠️ Unaudited |
| FixedProductMarketMakerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8cf2c1...68cb32` | ⚠️ Unaudited |
| FPMMDeterministicFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b5d0c...2c7ca6` | ⚠️ Unaudited |
| LMSRMarketMakerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0665ac...ac94ae` | ⚠️ Unaudited |
| LMTS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9eadbe...b02f93` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x223039...ed52e1` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x050b10...8379b8` | ⚠️ Unaudited |
| MockCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd9dc7...ec71dd` | ⚠️ Unaudited |
| MockERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04792d...270378` | ⚠️ Unaudited |
| MockWETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0f654b...eef2b3` | ⚠️ Unaudited |
| NegRiskAdapter | unknown | project_anchor | own_supporting | 0 | base | unit-266868 | `0x6151ef...1e712d` | ⚠️ Unaudited |
| NegRiskCtfExchange | unknown | project_anchor | own_supporting | 0 | base | unit-266866 | `0x46e607...48891d` | ⚠️ Unaudited |
| NegRiskFeeModule | unknown | project_anchor | own_supporting | 0 | base | unit-266863 | `0x18b3e1...4a483d` | ⚠️ Unaudited |
| NegRiskOperator | unknown | project_anchor | own_supporting | 0 | base | unit-266869 | `0xae363a...543992` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | base | unit-266864 | `0x2ec22e...d210b3` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa94cbe...57afed` | ⚠️ Unaudited |
| WrappedCollateral | unknown | project_anchor | own_supporting | 0 | base | unit-266865 | `0x428f0f...6b8c03` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a38af...aedfc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5d6c6a...27886a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d8a7d...aae87d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73fc1b...3cc661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7afeb9...ab2436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x80307d...7a1c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa4409d...4f0dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7d463...4b5f61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8daa4...41340c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd8ff5...798b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc9c989...b76e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2e4a2...fb2751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7d245...87bd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3e00b...bb5c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeecd2c...931c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf1de95...af096d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfeb646...92dadb` | ❓ Unverified |

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
| base | `0x05c748...923fa5` | CTFExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5130c2...a9d6eb` | FeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x833589...a02913` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6151ef...1e712d` | NegRiskAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x46e607...48891d` | NegRiskCtfExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x18b3e1...4a483d` | NegRiskFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xae363a...543992` | NegRiskOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2ec22e...d210b3` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x428f0f...6b8c03` | WrappedCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

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
