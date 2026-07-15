# Agentic Audit Brief: Re

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

- Project: Re (`re`)
- Website: [https://app.re.xyz](https://app.re.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum
- Contract surface: 41 unique implementations (41 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $246,864,754.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Re. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, avalanche, base, bsc, ethereum. Structural roles: 4 core, 3 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), infra (3)
- Contract kinds: contract (7)
- Detected standards: accesscontrol (3), erc165 (3), erc1967proxy (3)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x0937df...64f281`, chain 43114)
- ERC1967Proxy (`0x180af8...a625bf`, chain 43114)
- InsuranceCapitalLayer (`0x4691c4...de3093`, chain 1)
- KYCRegistry (`0x2723d4...bedb19`, chain 43114)
- RedemptionVault (`0x5c454f...31b147`, chain 1)
- SharePriceCalculator (`0x5cd24d...3b7425`, chain 42161)
- TimelockController (`0x69ddea...7fca93`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 34 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 7 of 41 unique; 34 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 41
- Raw deployments: 41
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c0445...69e7d7` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x187275...2c493f` | ⚠️ Unaudited |
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x296da4...38a2cc` | ⚠️ Unaudited |
| AddressBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d9e4f...0d0cf5` | ⚠️ Unaudited |
| CollateralManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18538f...f8f1c7` | ⚠️ Unaudited |
| CompositeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x439b0f...2accc7` | ⚠️ Unaudited |
| DecentralizedFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78b52f...23ef71` | ⚠️ Unaudited |
| DepositTokenRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x474bd4...ec47f1` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f41ef...0c515b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-252554 | `0x0937df...64f281` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-252553 | `0x180af8...a625bf` | ⚠️ Unaudited |
| ExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x051755...b3fb1e` | ⚠️ Unaudited |
| FeeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15fd35...d9da45` | ⚠️ Unaudited |
| InstantRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x121e2d...3f9de4` | ⚠️ Unaudited |
| InsuranceCapitalLayer | unknown | project_anchor | own_supporting | 1 | ethereum | unit-252552 | `0x4691c4...de3093` | ⚠️ Unaudited |
| InsuranceCapitalLayerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x355fee...96e1f6` | ⚠️ Unaudited |
| KYCRegistry | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252551 | `0x2723d4...bedb19` | ⚠️ Unaudited |
| L2SequencerAwareOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0920f9...8a670d` | ⚠️ Unaudited |
| NAVConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x105f7f...31d717` | ⚠️ Unaudited |
| PayoutTokenRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15b533...87a0ea` | ⚠️ Unaudited |
| PendleREUSDESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x070752...7432e2` | ⚠️ Unaudited |
| PendleREUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x62f338...c7b2d4` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61d551...3d2975` | ⚠️ Unaudited |
| Prestaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03d16b...73875d` | ⚠️ Unaudited |
| PriceRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c0a73...05b9e4` | ⚠️ Unaudited |
| RatioVaultStableTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38ce52...08ad26` | ⚠️ Unaudited |
| RedemptionGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x380b62...9f15e7` | ⚠️ Unaudited |
| RedemptionReserveCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x192877...9538d3` | ⚠️ Unaudited |
| RedemptionVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252545 | `0x5c454f...31b147` | ⚠️ Unaudited |
| ReProtocolExchangeRateChainlinkAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c5586...0ce7bc` | ⚠️ Unaudited |
| ReProtocolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d24b4...bc0273` | ⚠️ Unaudited |
| ReProtocolTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x059061...f1c984` | ⚠️ Unaudited |
| SharePriceCalculator | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252550 | `0x5cd24d...3b7425` | ⚠️ Unaudited |
| SharePriceCalculatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0520a2...e96033` | ⚠️ Unaudited |
| SharePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0764bf...77b6bb` | ⚠️ Unaudited |
| SimpleOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906a94...65c87c` | ⚠️ Unaudited |
| StableTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x024457...3525d3` | ⚠️ Unaudited |
| ThresholdOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a5425...7a6bb6` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252546 | `0x69ddea...7fca93` | ⚠️ Unaudited |
| VolatileTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56b079...469511` | ⚠️ Unaudited |
| WindowRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f4eff...7b9686` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.certora.com/reports/re-core](https://www.certora.com/reports/re-core) | Hacken | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20984] www.certora.com/reports/re-core — no match: The provided text is a summary page without a detailed scope section listing specific contracts.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x4691c4...de3093` | InsuranceCapitalLayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x2723d4...bedb19` | KYCRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5c454f...31b147` | RedemptionVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5cd24d...3b7425` | SharePriceCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 0 |

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

- [20984] www.certora.com/reports/re-core

Fork inheritance lineage and inherited audits are included when available.
