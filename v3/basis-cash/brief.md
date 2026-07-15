# Agentic Audit Brief: Basis Cash

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

- Project: Basis Cash (`basis-cash`)
- Website: [https://basis.cash/](https://basis.cash/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 41 unique implementations (41 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $245,599.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Basis Cash. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across ethereum. Structural roles: 11 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (11)
- Contract kinds: contract (11)
- Detected standards: ownable (10), erc20 (3)
- Frameworks: openzeppelin (11)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x88da51...4ee747`, chain 1)
- UnnamedContract (`0xffd035...5d6118`, chain 1)
- BACDAIPool (`0xebd126...02bde8`, chain 1)
- BACSUSDPool (`0xdc42a2...93305c`, chain 1)
- BACUSDCPool (`0x518821...429fd4`, chain 1)
- BACUSDTPool (`0x2833bd...877e44`, chain 1)
- BACyCRVPool (`0xc462d8...14c3bf`, chain 1)
- Bond (`0xc36824...f5abc5`, chain 1)
- Cash (`0x3449fc...03a69a`, chain 1)
- DAIBACLPTokenSharePool (`0x067d4d...f9db0f`, chain 1)
- DAIBASLPTokenSharePool (`0x9569d4...fb0d0a`, chain 1)
- Share (`0xa7ed29...b63696`, chain 1)
- Timelock (`0xd98bc1...5d0e6a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 27 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 13 of 41 unique; 28 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 41
- Raw deployments: 41
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

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BACDAIPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380301 | `0xebd126...02bde8` | ⚠️ Unaudited |
| BACPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e7ae8...d6ed8c` | ⚠️ Unaudited |
| BACSUSDPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380300 | `0xdc42a2...93305c` | ⚠️ Unaudited |
| BACUSDCPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380292 | `0x518821...429fd4` | ⚠️ Unaudited |
| BACUSDTPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380290 | `0x2833bd...877e44` | ⚠️ Unaudited |
| BACyCRVPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380298 | `0xc462d8...14c3bf` | ⚠️ Unaudited |
| BASPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5859ad...8120c0` | ⚠️ Unaudited |
| BIP11 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6f889...c115a2` | ⚠️ Unaudited |
| Boardroom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27c20f...96fd4f` | ⚠️ Unaudited |
| BoardroomV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecf0dd...33e42a` | ⚠️ Unaudited |
| Bond | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380297 | `0xc36824...f5abc5` | ⚠️ Unaudited |
| Bondroom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9a904...efe109` | ⚠️ Unaudited |
| Cash | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380291 | `0x3449fc...03a69a` | ⚠️ Unaudited |
| ControlledAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c48fd...47d30c` | ⚠️ Unaudited |
| DAIBACLPTokenSharePool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380289 | `0x067d4d...f9db0f` | ⚠️ Unaudited |
| DAIBASLPTokenSharePool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380295 | `0x9569d4...fb0d0a` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818f83...402f2e` | ⚠️ Unaudited |
| Feeder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x065894...8eb1b0` | ⚠️ Unaudited |
| InitialCashDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x666c2a...54c0cd` | ⚠️ Unaudited |
| InitialShareDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5323...e2f4bb` | ⚠️ Unaudited |
| LinearThreshold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdbae6...120b11` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6043...ade677` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b3868...8ff7ed` | ⚠️ Unaudited |
| PickleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf4ac...912828` | ⚠️ Unaudited |
| PoolMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66d7fa...30b7bb` | ⚠️ Unaudited |
| PoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe765...b432c5` | ⚠️ Unaudited |
| PoolStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01592e...a00ae6` | ⚠️ Unaudited |
| PoolWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e3d21...41510c` | ⚠️ Unaudited |
| Share | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380296 | `0xa7ed29...b63696` | ⚠️ Unaudited |
| ShareV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x106538...875287` | ⚠️ Unaudited |
| SigmoidThreshold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa72872...07f7f3` | ⚠️ Unaudited |
| SimpleERCFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b075b...98fe22` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380299 | `0xd98bc1...5d0e6a` | ⚠️ Unaudited |
| TokenStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0440ae...25c87c` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02957a...c877f5` | ⚠️ Unaudited |
| VoteProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bddf1...eb729b` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06364f...d6c763` | ⚠️ Unaudited |
| WeightFeeder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5800fc...816546` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-380293 | `0x751d0e...bf75ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380294 | `0x88da51...4ee747` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380302 | `0xffd035...5d6118` | ❓ Unverified |

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
| ethereum | `0xebd126...02bde8` | BACDAIPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdc42a2...93305c` | BACSUSDPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x518821...429fd4` | BACUSDCPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2833bd...877e44` | BACUSDTPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc462d8...14c3bf` | BACyCRVPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc36824...f5abc5` | Bond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3449fc...03a69a` | Cash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x067d4d...f9db0f` | DAIBACLPTokenSharePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9569d4...fb0d0a` | DAIBASLPTokenSharePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa7ed29...b63696` | Share | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd98bc1...5d0e6a` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

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
