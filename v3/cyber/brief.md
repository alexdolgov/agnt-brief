# Agentic Audit Brief: Cyber

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

- Project: Cyber (`cyber`)
- Website: [https://cyber.co/](https://cyber.co/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum, optimism
- Contract surface: 49 unique implementations (53 raw deployments)
- Coverage basis: 0/22 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $361,709.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cyber. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across base, bsc, ethereum, optimism. Structural roles: 18 core, 3 supporting, 1 infra. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: core (18), supporting (3), infra (1)
- Contract kinds: contract (22)
- Detected standards: erc1967proxy (6), ownable (6), pausable (3), accesscontrol (1), erc165 (1), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (17), openzeppelin-upgradeable (12), solmate (10), layerzero (2)
- Upgradeable-pattern rows: 12

## Fork Analysis

1 of 41 contracts are derived from known codebases. 40 contracts have no detected origin.

### Forked Contracts

**L1StandardBridge** (`0x01b46e...d87997`, chain 1)
Origin: stcyber (`0x01b46e...d87997`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x10e34e...161b49`, chain 1)
- UnnamedContract (`0x12a580...55b255`, chain 1)
- UnnamedContract (`0x4f4b71...f47dbd`, chain 1)
- UnnamedContract (`0x544dbf...6c9680`, chain 1)
- UnnamedContract (`0x579f8d...2b28a6`, chain 1)
- UnnamedContract (`0x6daf22...007e6d`, chain 1)
- UnnamedContract (`0x726c6a...f0df0e`, chain 1)
- UnnamedContract (`0x7e5410...036e03`, chain 1)
- UnnamedContract (`0x849d08...f7aa56`, chain 1)
- UnnamedContract (`0x985f18...6e4b46`, chain 1)
- UnnamedContract (`0xa669a7...5e676d`, chain 1)
- UnnamedContract (`0xbf4676...c1b36f`, chain 1)
- UnnamedContract (`0xc2e2d8...5458c7`, chain 1)
- UnnamedContract (`0xd9db27...709552`, chain 1)
- UnnamedContract (`0x147788...fb88a9`, chain 10)
- UnnamedContract (`0x147788...fb88a9`, chain 56)
- UnnamedContract (`0x9a9d5a...f63921`, chain 56)
- UnnamedContract (`0x147788...fb88a9`, chain 8453)
- UnnamedContract (`0x9a9d5a...f63921`, chain 8453)
- AddressManager (`0x19b580...09853a`, chain 1)
- CyberToken (`0x147788...fb88a9`, chain 1)
- CyberTokenAdapter (`0xcb0799...43b052`, chain 1)
- CyberTokenController (`0x9a9d5a...f63921`, chain 10)
- DataAvailabilityChallenge (`0x0d93ea...b05c51`, chain 1)
- DisputeGameFactory (`0xb79cf1...3649a3`, chain 1)
- GnosisSafeProxy (`0xc2259e...d75398`, chain 1)
- GnosisSafeProxyFactory (`0xa6b71e...896ab2`, chain 1)
- L1ERC721Bridge (`0x1234c7...e2afb1`, chain 1)
- L2OutputOracle (`0x93e1c0...c32f85`, chain 1)
- MIPS (`0x0048de...3e4143`, chain 1)
- OptimismPortal (`0xacfd93...339142`, chain 1)
- PreimageOracle (`0x0747ef...6a8dde`, chain 1)
- Proxy (`0x1aec4c...96959d`, chain 1)
- Proxy (`0x1d59bc...d24c99`, chain 1)
- Proxy (`0x51a004...6268f4`, chain 1)
- Proxy (`0x588dad...103919`, chain 1)
- Proxy (`0x5d1f4b...ff6055`, chain 1)
- Proxy (`0xa1780b...d41a73`, chain 1)
- ResolvedDelegateProxy (`0x3c01eb...08dfc9`, chain 1)
- TimelockController (`0x81759a...d3337b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 22; live-surface rows included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 37/39 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/22 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 37 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 12 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 37 of 49 unique; 12 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/31
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 49
- Raw deployments: 53
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

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234830 | `0x19b580...09853a` | ⚠️ Unaudited |
| Create2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b2092...c67798` | ⚠️ Unaudited |
| CyberToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234829 | `0x147788...fb88a9` | ⚠️ Unaudited |
| CyberTokenAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234846 | `0xcb0799...43b052` | ⚠️ Unaudited |
| CyberTokenController | unknown | project_anchor | own_supporting | 0 | optimism | unit-234848 | `0x9a9d5a...f63921` | ⚠️ Unaudited |
| CyberVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2bbfc...ef57d0` | ⚠️ Unaudited |
| DataAvailabilityChallenge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234825 | `0x0d93ea...b05c51` | ⚠️ Unaudited |
| DisputeGameFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234844 | `0xb79cf1...3649a3` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d0349...e57eb3` | ⚠️ Unaudited |
| ExecutorFeeLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d6023...34c461` | ⚠️ Unaudited |
| FaultDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96769a...d3bbcc` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234859 | 2 deployments: ethereum `0xc2259e...d75398`; ethereum `0xd9db27...709552` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234842 | `0xa6b71e...896ab2` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234827 | `0x1234c7...e2afb1` | ⚠️ Unaudited |
| L1StandardBridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234823 | `0x01b46e...d87997` | ⚠️ Unaudited |
| L2OutputOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234839 | `0x93e1c0...c32f85` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb2bbfc...ef57d0` | ⚠️ Unaudited |
| MIPS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234822 | `0x0048de...3e4143` | ⚠️ Unaudited |
| OptimismPortal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234843 | `0xacfd93...339142` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe42cc...f36b0c` | ⚠️ Unaudited |
| PreimageOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234824 | `0x0747ef...6a8dde` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234853 | 2 deployments: ethereum `0x1aec4c...96959d`; ethereum `0x579f8d...2b28a6` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234861 | `0x1d59bc...d24c99` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234860 | `0x51a004...6268f4` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234854 | 2 deployments: ethereum `0x588dad...103919`; ethereum `0x6daf22...007e6d` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234855 | `0x5d1f4b...ff6055` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234856 | 2 deployments: ethereum `0xa1780b...d41a73`; ethereum `0xc2e2d8...5458c7` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a7228...259be3` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234858 | `0x3c01eb...08dfc9` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234837 | `0x81759a...d3337b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa4ccfb...8199f2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234826 | `0x10e34e...161b49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234828 | `0x12a580...55b255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3efe22...4b77e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234832 | `0x4f4b71...f47dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x522d3a...d02f2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234833 | `0x544dbf...6c9680` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234835 | `0x726c6a...f0df0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234836 | `0x7e5410...036e03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234838 | `0x849d08...f7aa56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234840 | `0x985f18...6e4b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a9d5a...f63921` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234841 | `0xa669a7...5e676d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234845 | `0xbf4676...c1b36f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-234847 | `0x147788...fb88a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-234849 | `0x147788...fb88a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-234850 | `0x9a9d5a...f63921` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-234851 | `0x147788...fb88a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-234852 | `0x9a9d5a...f63921` | ❓ Unverified |

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
| ethereum | `0x19b580...09853a` | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x147788...fb88a9` | CyberToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb0799...43b052` | CyberTokenAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x9a9d5a...f63921` | CyberTokenController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d93ea...b05c51` | DataAvailabilityChallenge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb79cf1...3649a3` | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa6b71e...896ab2` | GnosisSafeProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1234c7...e2afb1` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x01b46e...d87997` | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x93e1c0...c32f85` | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0048de...3e4143` | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xacfd93...339142` | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0747ef...6a8dde` | PreimageOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3c01eb...08dfc9` | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 11 |
| needs_review | 18 |

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
