# Agentic Audit Brief: Shape Bridge

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

- Project: Shape Bridge (`shape-bridge`)
- Website: [https://shape.network/bridge](https://shape.network/bridge)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 32 unique implementations (32 raw deployments)
- Coverage basis: 0/19 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $724,407.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Shape Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across ethereum. Structural roles: 11 unclassified, 5 supporting, 3 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: unclassified (11), supporting (5), core (3)
- Contract kinds: contract (19)
- Detected standards: erc1967proxy (2), ownable (1), pausable (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (3), solmate (3)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...3eb395`, chain 1)
- UnnamedContract (`0x000000...00ad63`, chain 1)
- UnnamedContract (`0x000f3d...beac02`, chain 1)
- UnnamedContract (`0x4e59b4...b4956c`, chain 1)
- UnnamedContract (`0xacaf17...90a005`, chain 1)
- UnnamedContract (`0xcc9010...1df422`, chain 1)
- Create2Deployer (`0x13b0d8...e9bef2`, chain 1)
- ImmutableCreate2Factory (`0x000000...439497`, chain 1)
- L1ChugSplashProxy (`0x62edd5...76b57b`, chain 1)
- MIPS (`0xd30c2c...e5c91f`, chain 1)
- Multicall3 (`0xca11bd...76ca11`, chain 1)
- PreimageOracle (`0xdf6a16...448a5b`, chain 1)
- Proxy (`0xeb06ff...741dd3`, chain 1)
- Proxy (`0xff11e4...8f7355`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 19; live-surface rows included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/67 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/19 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 7 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 25 of 32 unique; 7 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 32
- Raw deployments: 32
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254484 | `0xcee784...fd7479` | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254499 | `0x02987e...6222d1` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc55f72...f3ed9b` | ⚠️ Unaudited |
| Create2Deployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254445 | `0x13b0d8...e9bef2` | ⚠️ Unaudited |
| DelayedWETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x36b4f7...2bd706` | ⚠️ Unaudited |
| DisputeGameFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2c03e8...4a5952` | ⚠️ Unaudited |
| DisputeGameFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254502 | `0x575aec...0bd8b0` | ⚠️ Unaudited |
| ImmutableCreate2Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-254440 | `0x000000...439497` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254503 | `0x2b1860...3788e3` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254497 | `0xe9d3e4...9f15af` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-254496 | `0x62edd5...76b57b` | ⚠️ Unaudited |
| L2OutputOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254494 | `0x6ef8c6...6e724d` | ⚠️ Unaudited |
| MIPS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254485 | `0xd30c2c...e5c91f` | ⚠️ Unaudited |
| Multicall3 | periphery | project_anchor | own_supporting | 0 | ethereum | unit-254482 | `0xca11bd...76ca11` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254498 | `0x319322...b1adc1` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254500 | `0xeb06ff...741dd3` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb8cd...87add3` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-254489 | `0xdf6a16...448a5b` | ⚠️ Unaudited |
| ProtocolVersions | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254505 | `0xa77995...a32ddd` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254495 | `0xfec786...1c2d57` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254443 | `0x11b190...db842e` | ⚠️ Unaudited |
| SuperchainConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254501 | `0x125664...ccde09` | ⚠️ Unaudited |
| SuperchainConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x95703e...f04a4c` | ⚠️ Unaudited |
| SystemConfig | governance | project_anchor | own_supporting | 1 | ethereum | unit-254504 | `0xff11e4...8f7355` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254439 | `0x000000...3eb395` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254441 | `0x000000...00ad63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254442 | `0x000f3d...beac02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254472 | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84e2fd...96467c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254480 | `0xacaf17...90a005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb7c77...df294a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254483 | `0xcc9010...1df422` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-09-shapenetwork-buybackcontract-securityreview.pdf](https://raw.githubusercontent.com/trailofbits/publications/1c2295698d654066038156c206fb3dd5502fa1a5/reviews/2025-09-shapenetwork-buybackcontract-securityreview.pdf) | Trail of Bits | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-05-shapenetwork-token-securityreview.pdf](https://raw.githubusercontent.com/trailofbits/publications/1c2295698d654066038156c206fb3dd5502fa1a5/reviews/2025-05-shapenetwork-token-securityreview.pdf) | Trail of Bits | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11660] 2025-09-shapenetwork-buybackcontract-securityreview.pdf — no match: Only one contract, ShapeBuyback, is in scope. Audit date is September 5, 2025 from the cover page.
- [11661] 2025-05-shapenetwork-token-securityreview.pdf — no match: Extracted from project targets section and detailed findings. Only two contracts are explicitly named as targets.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-09-shapenetwork-buybackcontract-securityreview.pdf | ShapeBuyback | unmatched — not counted | — | listed in scope and as target in findings | no |
| 2025-05-shapenetwork-token-securityreview.pdf | InteroperableGovernanceToken | unmatched — not counted | — | Target in finding TOB-SHAPE-1 | no |
| 2025-05-shapenetwork-token-securityreview.pdf | ImmutableCrossChainOwnable | unmatched — not counted | — | Target in finding TOB-SHAPE-2 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xcee784...fd7479` | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x02987e...6222d1` | AnchorStateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x575aec...0bd8b0` | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000000...439497` | ImmutableCreate2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2b1860...3788e3` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe9d3e4...9f15af` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x62edd5...76b57b` | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ef8c6...6e724d` | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd30c2c...e5c91f` | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x319322...b1adc1` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb06ff...741dd3` | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdf6a16...448a5b` | PreimageOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa77995...a32ddd` | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x125664...ccde09` | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xff11e4...8f7355` | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [11660] 2025-09-shapenetwork-buybackcontract-securityreview.pdf
- [11661] 2025-05-shapenetwork-token-securityreview.pdf

Fork inheritance lineage and inherited audits are included when available.
