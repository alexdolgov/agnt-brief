# Agentic Audit Brief: Stout

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Stout (`stout`)
- Website: [https://stout.fi/](https://stout.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: sonic
- Contract surface: 30 unique implementations (30 raw deployments)
- Coverage basis: 0/29 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,097,839.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Stout. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across sonic. Structural roles: 15 supporting, 14 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: supporting (15), core (14), unclassified (1)
- Contract kinds: contract (30)
- Detected standards: ownable (21), chainlinkaggregator (5), erc20 (4), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (23)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 28 contracts are derived from known codebases. 28 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BaseContracts (`0x5ce899...f13d5c`, chain 146)
- DUSX (`0xe30e73...76f854`, chain 146)
- DynamicInterestRate (`0x252ddc...993ff7`, chain 146)
- FeesDistributor (`0xfa925d...1aaa83`, chain 146)
- FeesWithdrawer (`0x1efd8d...5f9e97`, chain 146)
- Floor (`0xb8c30c...5bac0e`, chain 146)
- Lender (`0x40e0fa...ad4c48`, chain 146)
- LenderOwner (`0xec7fa6...39a6a7`, chain 146)
- LiquidationHelper (`0xef2d85...1aec75`, chain 146)
- MarketLens (`0x56f0b1...17db48`, chain 146)
- Minter (`0x5ed2e9...64b28e`, chain 146)
- MiscHelper (`0xa1ba6e...52fd0a`, chain 146)
- OracleApi3Reader (`0x25456c...042264`, chain 146)
- OracleApi3Reader (`0x6d5154...c10f82`, chain 146)
- OracleApi3Reader (`0x863a1d...4aa60c`, chain 146)
- OracleApi3Reader (`0x943697...fbd7bf`, chain 146)
- OracleApi3Reader (`0xfc73f4...5f76a9`, chain 146)
- OracleChainlink (`0x2a7d5d...7a1b45`, chain 146)
- PegStabilityModule (`0x24e2a8...44a89a`, chain 146)
- PegStabilityModule (`0xb96919...72a494`, chain 146)
- RepayHelper (`0x652427...dbb121`, chain 146)
- StableOwner (`0x002c4c...30fa86`, chain 146)
- StakedDUSX (`0xa0b0cb...d0cc6d`, chain 146)
- StoutTimelock (`0xd3a6b1...21744b`, chain 146)
- StoutVault (`0x88d6d8...f7cabf`, chain 146)
- STTX (`0x97a10b...957dea`, chain 146)
- SupplyHangingCalculator (`0x322544...e76e13`, chain 146)
- VoteEscrowedSTTX (`0x822131...f1cf9e`, chain 146)

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 30 (30 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 30/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/29 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 30 of 30 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/29
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 30
- Raw deployments: 30
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

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseContracts | unknown | project_anchor | own_supporting | 0 | sonic | unit-400538 | `0x5ce899...f13d5c` | ⚠️ Unaudited |
| DUSX | unknown | project_anchor | own_supporting | 0 | sonic | unit-400552 | `0xe30e73...76f854` | ⚠️ Unaudited |
| DUSXProvider | unknown | project_anchor | own_supporting | 0 | sonic | unit-400528 | `0x089313...d81aad` | ⚠️ Unaudited |
| DynamicInterestRate | unknown | project_anchor | own_supporting | 0 | sonic | unit-400532 | `0x252ddc...993ff7` | ⚠️ Unaudited |
| FeesDistributor | unknown | project_anchor | own_supporting | 0 | sonic | unit-400555 | `0xfa925d...1aaa83` | ⚠️ Unaudited |
| FeesWithdrawer | unknown | project_anchor | own_supporting | 0 | sonic | unit-400530 | `0x1efd8d...5f9e97` | ⚠️ Unaudited |
| Floor | unknown | project_anchor | own_supporting | 0 | sonic | unit-400549 | `0xb8c30c...5bac0e` | ⚠️ Unaudited |
| Lender | unknown | project_anchor | own_supporting | 0 | sonic | unit-400536 | `0x40e0fa...ad4c48` | ⚠️ Unaudited |
| LenderOwner | unknown | project_anchor | own_supporting | 0 | sonic | unit-400553 | `0xec7fa6...39a6a7` | ⚠️ Unaudited |
| LiquidationHelper | periphery | project_anchor | own_supporting | 0 | sonic | unit-400554 | `0xef2d85...1aec75` | ⚠️ Unaudited |
| MarketLens | unknown | project_anchor | own_supporting | 0 | sonic | unit-400537 | `0x56f0b1...17db48` | ⚠️ Unaudited |
| Minter | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-400539 | `0x5ed2e9...64b28e` | ⚠️ Unaudited |
| MiscHelper | periphery | project_anchor | own_supporting | 0 | sonic | unit-400548 | `0xa1ba6e...52fd0a` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400533 | `0x25456c...042264` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400541 | `0x6d5154...c10f82` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400543 | `0x863a1d...4aa60c` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400545 | `0x943697...fbd7bf` | ⚠️ Unaudited |
| OracleApi3Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-400556 | `0xfc73f4...5f76a9` | ⚠️ Unaudited |
| OracleChainlink | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | unit-400534 | `0x2a7d5d...7a1b45` | ⚠️ Unaudited |
| OracleFloorPrice | unknown | project_anchor | own_supporting | 0 | sonic | unit-400529 | `0x19b3a4...cb713f` | ⚠️ Unaudited |
| PegStabilityModule | unknown | project_anchor | own_supporting | 0 | sonic | unit-400531 | `0x24e2a8...44a89a` | ⚠️ Unaudited |
| PegStabilityModule | unknown | project_anchor | own_supporting | 0 | sonic | unit-400550 | `0xb96919...72a494` | ⚠️ Unaudited |
| RepayHelper | periphery | project_anchor | own_supporting | 0 | sonic | unit-400540 | `0x652427...dbb121` | ⚠️ Unaudited |
| StableOwner | unknown | project_anchor | own_supporting | 0 | sonic | unit-400527 | `0x002c4c...30fa86` | ⚠️ Unaudited |
| StakedDUSX | token | project_anchor | own_supporting | 0 | sonic | unit-400547 | `0xa0b0cb...d0cc6d` | ⚠️ Unaudited |
| StoutTimelock | governance | project_anchor | own_supporting | 0 | sonic | unit-400551 | `0xd3a6b1...21744b` | ⚠️ Unaudited |
| StoutVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-400544 | `0x88d6d8...f7cabf` | ⚠️ Unaudited |
| STTX | unknown | project_anchor | own_supporting | 0 | sonic | unit-400546 | `0x97a10b...957dea` | ⚠️ Unaudited |
| SupplyHangingCalculator | unknown | project_anchor | own_supporting | 0 | sonic | unit-400535 | `0x322544...e76e13` | ⚠️ Unaudited |
| VoteEscrowedSTTX | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-400542 | `0x822131...f1cf9e` | ⚠️ Unaudited |

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

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x5ce899...f13d5c` | BaseContracts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe30e73...76f854` | DUSX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x089313...d81aad` | DUSXProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x252ddc...993ff7` | DynamicInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xfa925d...1aaa83` | FeesDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x1efd8d...5f9e97` | FeesWithdrawer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb8c30c...5bac0e` | Floor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x40e0fa...ad4c48` | Lender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xec7fa6...39a6a7` | LenderOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xef2d85...1aec75` | LiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x56f0b1...17db48` | MarketLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5ed2e9...64b28e` | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa1ba6e...52fd0a` | MiscHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x25456c...042264` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x6d5154...c10f82` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x863a1d...4aa60c` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x943697...fbd7bf` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xfc73f4...5f76a9` | OracleApi3Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x19b3a4...cb713f` | OracleFloorPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x24e2a8...44a89a` | PegStabilityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb96919...72a494` | PegStabilityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x652427...dbb121` | RepayHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x002c4c...30fa86` | StableOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa0b0cb...d0cc6d` | StakedDUSX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xd3a6b1...21744b` | StoutTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x88d6d8...f7cabf` | StoutVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x97a10b...957dea` | STTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x322544...e76e13` | SupplyHangingCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x822131...f1cf9e` | VoteEscrowedSTTX | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

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
