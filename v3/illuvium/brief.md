# Agentic Audit Brief: Illuvium

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

- Project: Illuvium (`illuvium`)
- Website: [https://illuvium.io](https://illuvium.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, goerli
- Contract surface: 31 unique implementations (45 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,112,695.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Illuvium. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across ethereum, goerli. Structural roles: 5 unclassified, 2 core, 2 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: unclassified (5), core (2), supporting (2)
- Contract kinds: contract (6), abstract (3)
- Detected standards: erc1967proxy (2), erc20 (2), ownable (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x800e48...ad83cb`, chain 1)
- UnnamedContract (`0xaa2e72...e8e778`, chain 1)
- ERC1967Proxy (`0x6bd281...57adc6`, chain 1)
- EscrowedIlluvium2 (`0x7e77dc...f1b068`, chain 1)
- IlluviumERC20 (`0x767fe9...d7ca0e`, chain 1)
- ILVPool (`0xdb0a2a...f20cb3`, chain 1)
- PoolFactory (`0x53aff3...56d6e1`, chain 1)
- Vesting (`0xc01e7d...08bfdb`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 8 of 31 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/19
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 31
- Raw deployments: 45
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BurnableVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ee666...eb1cff` | ⚠️ Unaudited |
| EscrowedIlluvium2 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-387336 | `0x7e77dc...f1b068` | ⚠️ Unaudited |
| IlluvinatiCouncil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaebd9b...52dc69` | ⚠️ Unaudited |
| IlluviumCorePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x25121e...4e2a36`; ethereum `0x8b4d84...843f72` | ⚠️ Unaudited |
| IlluviumERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-387335 | `0x767fe9...d7ca0e` | ⚠️ Unaudited |
| IlluviumIDOCollection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4222b2...161e52` | ⚠️ Unaudited |
| IlluviumNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x384aa0...af9fdf`; ethereum `0xb90161...cbf8b9` | ⚠️ Unaudited |
| ILVPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b7220...e201c6` | ⚠️ Unaudited |
| ILVPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387356 | 2 deployments: ethereum `0x7f5f85...34291d`; ethereum `0xdb0a2a...f20cb3` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa904f2...a8c79a` | ⚠️ Unaudited |
| MockedPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1b1c0...e5a8c6` | ⚠️ Unaudited |
| NFTClaimManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa9f4...aa9c4c` | ⚠️ Unaudited |
| NFTDisperser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5df4f...b3233c` | ⚠️ Unaudited |
| PoolFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387352 | 2 deployments: ethereum `0x53aff3...56d6e1`; ethereum `0x9dca38...94597c` | ⚠️ Unaudited |
| PreIlluvium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xabdef6...78f11f`; ethereum `0xc657f5...536d36` | ⚠️ Unaudited |
| SushiLPPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-387350 | `0xe98477...571cc2` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e1ce...378b9f` | ⚠️ Unaudited |
| Vesting | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-387354 | 2 deployments: ethereum `0x6bd281...57adc6`; ethereum `0xc01e7d...08bfdb` | ⚠️ Unaudited |
| VotingIlluvium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x035dc7...b08207`; ethereum `0x04da3f...21392c`; ethereum `0x19ac50...413945`; ethereum `0x2e15ea...14b71b`; ethereum `0x487e58...173032`; ethereum `0x5f04ca...436418`; ethereum `0x98c7c1...ca0c76`; ethereum `0xbf9a92...8ce17e`; ethereum `0xe8d3c5...73fb00` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088823...cae7b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387337 | `0x800e48...ad83cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa305cd...a3dc70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387338 | `0xaa2e72...e8e778` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387339 | `0x0434d7...a332d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387340 | `0x0dd04f...0b3c7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387341 | `0x2192f2...fd61dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387342 | `0x5afa29...d524b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387343 | `0xc8eb43...694615` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387344 | `0xde9a2e...a302c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387346 | `0xe71ddc...38fc7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-387348 | `0xf444a3...ed499f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [0xmacro.com/library/audits/illuvium-1](https://0xmacro.com/library/audits/illuvium-1) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20729] 0xmacro.com/library/audits/illuvium-1 — no match: Only one contract, Fuel.sol, is explicitly listed in the scope section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 0xmacro.com/library/audits/illuvium-1 | Fuel | unmatched — not counted | — | listed in scope table with SHA256 hash | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7e77dc...f1b068` | EscrowedIlluvium2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x767fe9...d7ca0e` | IlluviumERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f5f85...34291d` | ILVPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x53aff3...56d6e1` | PoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6bd281...57adc6` | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20729] 0xmacro.com/library/audits/illuvium-1

Fork inheritance lineage and inherited audits are included when available.
