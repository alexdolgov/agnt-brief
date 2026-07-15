# Agentic Audit Brief: Brickken

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Brickken (`brickken`)
- Website: [https://www.brickken.com](https://www.brickken.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, bsc, ethereum, polygon
- Contract surface: 36 unique implementations (101 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $42,164,586.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Brickken. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across base, ethereum, polygon. Structural roles: 2 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: accesscontrol (1), erc165 (1), erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x8f523d...46ceb8`, chain 1)
- UnnamedContract (`0xfc209e...7b5f82`, chain 1)
- Brickken (`0x0a638f...dea36d`, chain 1)
- PerpetualStakingV4 (`0x482b09...d91143`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 33 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 3 of 36 unique; 33 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 36
- Raw deployments: 101
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Brickken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381505 | `0x0a638f...dea36d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xee0462...e8a546`; ethereum `0xf4f74d...2e7713` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95954c...99a6f7` | ⚠️ Unaudited |
| MerkleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc0f15...8dff20` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d5165...3fe9d1` | ⚠️ Unaudited |
| NegativeCarbonBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44b751...ec90a8` | ⚠️ Unaudited |
| OwnedTimelockWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6ac5a1...1228d7`; ethereum `0xbc718a...dd8afe` | ⚠️ Unaudited |
| P2PHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x64fdd9...f3ed45`; polygon `0x8ed660...0c5800`; base `0x89b281...c7ba3b` | ⚠️ Unaudited |
| PerpetualStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x31c64c...d4726f`; ethereum `0x37d9b4...740083`; ethereum `0x935621...b85ad0`; ethereum `0xa79596...e3cbe8`; ethereum `0xc1bb5d...ef32c0` | ⚠️ Unaudited |
| PerpetualStakingV4 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381507 | 2 deployments: ethereum `0x482b09...d91143`; ethereum `0x8f523d...46ceb8` | ⚠️ Unaudited |
| PriceAndSwapManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x36fb65...af8fd6`; polygon `0xd84620...bd19b0`; base `0xff3624...4aeb07` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf66aa...11ef7b` | ⚠️ Unaudited |
| STOEscrowManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x445943...9c4a6f`; ethereum `0xe2f8f2...7a713d` | ⚠️ Unaudited |
| STOEscrowManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x27576e...476f14`; polygon `0xd1ba50...76ea5c` | ⚠️ Unaudited |
| STOEscrowManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: ethereum `0x513f0b...7cbdeb`; ethereum `0xa6df46...f523d8`; ethereum `0xb75260...b6b3ee`; polygon `0x409a37...9d86f7`; polygon `0xc6c230...bcde61`; base `0x409a37...9d86f7`; base `0x6d0432...685e89`; base `0xf6b623...079977` | ⚠️ Unaudited |
| STOEscrowManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2c82a5...2aca94`; base `0xd1ba50...76ea5c` | ⚠️ Unaudited |
| STOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x217418...8e690d`; ethereum `0x377589...384065`; ethereum `0x67e71d...cf951c`; ethereum `0x8ad2bc...70ade0` | ⚠️ Unaudited |
| STOFactoryManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1bb57e...0c1956`; polygon `0xd515ca...0a0634` | ⚠️ Unaudited |
| STOFactoryManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0xbb0b08...9e1b69`; ethereum `0xccda54...8bbd88`; ethereum `0xf48a42...83f0fa`; polygon `0x26840f...1d40ff`; base `0xbc2074...d3f074`; base `0xe19619...703fe2` | ⚠️ Unaudited |
| STOFactoryManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x278d7b...1d4d83`; base `0x816e88...984607` | ⚠️ Unaudited |
| STOTokenManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x46ff5d...c3ebac`; ethereum `0xd4ddc1...7419d7`; polygon `0xb409eb...03ab3e`; base `0xb409eb...03ab3e`; base `0xbd3d7e...3b38aa` | ⚠️ Unaudited |
| STOTokenManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5dc006...09618a`; ethereum `0x643630...e3af54` | ⚠️ Unaudited |
| STOTokenManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x5e4e3a...d13666`; polygon `0xff3624...4aeb07` | ⚠️ Unaudited |
| STOTokenManagedUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x478dff...158477`; base `0x8bedc6...01ad48` | ⚠️ Unaudited |
| VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x00f568...fb6735`; ethereum `0x04016a...5845c1`; ethereum `0x1d6fa1...928c82`; ethereum `0x24df0f...3bb013`; ethereum `0x2b8021...4fa7bd`; ethereum `0x48f33a...5d9bae`; ethereum `0x5e431b...248cd2`; ethereum `0x617945...7bcf97`; ethereum `0x6260f3...0e3db6`; ethereum `0x6a5b55...6ad143`; ethereum `0x6d0432...685e89`; ethereum `0x775ef8...92763c`; ethereum `0x834381...69c074`; ethereum `0x916c14...3b69a1`; ethereum `0xa5cc01...9e0a1c`; ethereum `0xab1eb4...e9e597`; ethereum `0xaf9231...6214f6`; ethereum `0xb81b6a...18f37c`; ethereum `0xb8a0e9...90e8bf`; ethereum `0xbd3ae9...acccbe`; ethereum `0xcce3f7...9720c3`; ethereum `0xcd26bc...c8fd04`; ethereum `0xcdda2b...ca183d`; ethereum `0xde22d9...6c8a76`; ethereum `0xe44af4...74b04e`; ethereum `0xef46cf...11e84b`; ethereum `0xf9b60a...f2095f` | ⚠️ Unaudited |
| WBKNVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcaefc1...309c73`; ethereum `0xfa8dbf...4e359e` | ⚠️ Unaudited |
| WBKNVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe867c...c90877` | ⚠️ Unaudited |
| WBrickken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6b623...079977` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21b78b...5384f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52292d...99238d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75509c...f62482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b823e...ad1915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe851c3...efba18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381506 | `0xfc209e...7b5f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa7a06b...9dd5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdecbcb...e06f5a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/brickken](https://skynet.certik.com/projects/brickken) | CertiK | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [69e0f131a3c7f0b39a48f86d_BRICKKEN_AI 2026_signed.pdf](https://cdn.prod.website-files.com/680a2df699085611f5f9221a/69e0f131a3c7f0b39a48f86d_BRICKKEN_AI%202026_signed.pdf) | unknown | Audit | 2026-01 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11550] skynet.certik.com/projects/brickken — no match: Extracted from 'Audited Files/SHA256' list in the report. Only two files explicitly listed; others referenced as 'View 13 Audited Files' but not named.
- [12093] 69e0f131a3c7f0b39a48f86d_BRICKKEN_AI 2026_signed.pdf — no match: The document is an ISO/IEC 27001 certificate for Brickken Solutions, not a smart contract audit report. No smart contracts are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/brickken | UpgradeableBeaconEscrow | unmatched — not counted | — | Audited Files/SHA256 section | no |
| skynet.certik.com/projects/brickken | UpgradeableBeaconToken | unmatched — not counted | — | Audited Files/SHA256 section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x0a638f...dea36d` | Brickken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x482b09...d91143` | PerpetualStakingV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [11550] skynet.certik.com/projects/brickken
- [12093] 69e0f131a3c7f0b39a48f86d_BRICKKEN_AI 2026_signed.pdf

Fork inheritance lineage and inherited audits are included when available.
