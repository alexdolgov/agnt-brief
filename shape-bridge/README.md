# Agentic Audit Brief: Shape Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Shape Bridge (`shape-bridge`)
- Website: [https://shape.network/bridge](https://shape.network/bridge)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 33 unique implementations (33 raw deployments)
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

- UnnamedContract (`0x0000000000000068f116a894984e2db1123eb395`, chain 1)
- UnnamedContract (`0x00000000f9490004c11cef243f5400493c00ad63`, chain 1)
- UnnamedContract (`0x000f3df6d732807ef1319fb7b8bb8522d0beac02`, chain 1)
- UnnamedContract (`0x4e59b44847b379578588920ca78fbf26c0b4956c`, chain 1)
- UnnamedContract (`0xacaf178b5048cb56712dc59e95fba72f7990a005`, chain 1)
- UnnamedContract (`0xcc90105d4a2aa067ee768120ada19886021df422`, chain 1)
- Create2Deployer (`0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2`, chain 1)
- ImmutableCreate2Factory (`0x0000000000ffe8b47b3e2130213b802212439497`, chain 1)
- L1ChugSplashProxy (`0x62edd5f4930ea92dca3fb81689bdd9b9d076b57b`, chain 1)
- MIPS (`0xd30c2cd3cd6112e61fdfb03e4b232564d7e5c91f`, chain 1)
- Multicall3 (`0xca11bde05977b3631167028862be2a173976ca11`, chain 1)
- PreimageOracle (`0xdf6a16a71d0bc7a1bbe8fffb33700ec3d9448a5b`, chain 1)
- Proxy (`0xeb06ffa16011b5628bab98e29776361c83741dd3`, chain 1)
- Proxy (`0xff11e41d5c4f522e423ff6c064ff8d55af8f7355`, chain 1)

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
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 25 of 33 unique; 8 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 33
- Raw deployments: 33
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
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254484 | `0xcee78437ae9e15cee9c78e63757e0153c0fd7479` | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254499 | `0x02987e7294379b9dda99d593b0c94c68266222d1` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc55f722cf6e14907b844a8b8d3cfd0c04cf3ed9b` | ⚠️ Unaudited |
| Create2Deployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254445 | `0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2` | ⚠️ Unaudited |
| DelayedWETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x36b4f78990619fdd8f7e9cc7965326336f2bd706` | ⚠️ Unaudited |
| DisputeGameFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2c03e8bf8b16af89079852be87f0e9ec674a5952` | ⚠️ Unaudited |
| DisputeGameFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254502 | `0x575aecd84083f93877291901907698f7db0bd8b0` | ⚠️ Unaudited |
| ImmutableCreate2Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-254440 | `0x0000000000ffe8b47b3e2130213b802212439497` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254503 | `0x2b18602877181c3cb72c687e2a771e123a3788e3` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254497 | `0xe9d3e49b0636016c5fe9eaa2347948d0ba9f15af` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-254496 | `0x62edd5f4930ea92dca3fb81689bdd9b9d076b57b` | ⚠️ Unaudited |
| L2OutputOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254494 | `0x6ef8c69cfe4635d866e3e02732068022c06e724d` | ⚠️ Unaudited |
| MIPS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254485 | `0xd30c2cd3cd6112e61fdfb03e4b232564d7e5c91f` | ⚠️ Unaudited |
| Multicall3 | periphery | project_anchor | own_supporting | 0 | ethereum | unit-254482 | `0xca11bde05977b3631167028862be2a173976ca11` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254498 | `0x319322906beadf69df5d4607169c63d692b1adc1` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254500 | `0xeb06ffa16011b5628bab98e29776361c83741dd3` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb8cdfc6831fc866ed9c51af8817da5c287add3` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-254489 | `0xdf6a16a71d0bc7a1bbe8fffb33700ec3d9448a5b` | ⚠️ Unaudited |
| ProtocolVersions | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254505 | `0xa77995e10b0a833cdd4fa414c26e869f7aa32ddd` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254495 | `0xfec7865dac5139886585f03146ff61d9b31c2d57` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254443 | `0x11b190ae661c6d6884dfee48e215691e0ddb842e` | ⚠️ Unaudited |
| SuperchainConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254501 | `0x125664bef08177ca43f6f301e63118b1e4ccde09` | ⚠️ Unaudited |
| SuperchainConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x95703e0982140d16f8eba6d158fccede42f04a4c` | ⚠️ Unaudited |
| SystemConfig | governance | project_anchor | own_supporting | 1 | ethereum | unit-254504 | `0xff11e41d5c4f522e423ff6c064ff8d55af8f7355` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254439 | `0x0000000000000068f116a894984e2db1123eb395` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254441 | `0x00000000f9490004c11cef243f5400493c00ad63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254442 | `0x000f3df6d732807ef1319fb7b8bb8522d0beac02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254472 | `0x4e59b44847b379578588920ca78fbf26c0b4956c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aec6db5fc9490120f209a313ebb8d15c91b1604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84e2fdb4f1017e70b0ace39b63953fc11e96467c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254480 | `0xacaf178b5048cb56712dc59e95fba72f7990a005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb7c7725484f85427c9a846f8e8dbebe15df294a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254483 | `0xcc90105d4a2aa067ee768120ada19886021df422` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 14
- Live contracts: 11
- Unknown liveness contracts: 3
- Source-verified contracts: 11
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=11, unverified unclassified=3

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AddressManager<br>`0xcee78437ae9e15cee9c78e63757e0153c0fd7479` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xee1af3f99af8c5b93512fbe2a3f0dd5568ce087f` |
| candidate review | Proxy<br>`0x02987e7294379b9dda99d593b0c94c68266222d1` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xee1af3f99af8c5b93512fbe2a3f0dd5568ce087f` |
| candidate review | Proxy<br>`0x125664bef08177ca43f6f301e63118b1e4ccde09` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xee1af3f99af8c5b93512fbe2a3f0dd5568ce087f` |
| candidate review | Proxy<br>`0x319322906beadf69df5d4607169c63d692b1adc1` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xee1af3f99af8c5b93512fbe2a3f0dd5568ce087f` |
| candidate review | Proxy<br>`0x575aecd84083f93877291901907698f7db0bd8b0` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xee1af3f99af8c5b93512fbe2a3f0dd5568ce087f` |
| candidate review | Proxy<br>`0x6ef8c69cfe4635d866e3e02732068022c06e724d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xee1af3f99af8c5b93512fbe2a3f0dd5568ce087f` |
| candidate review | Proxy<br>`0xa77995e10b0a833cdd4fa414c26e869f7aa32ddd` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xee1af3f99af8c5b93512fbe2a3f0dd5568ce087f` |
| candidate review | Proxy<br>`0xe9d3e49b0636016c5fe9eaa2347948d0ba9f15af` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xee1af3f99af8c5b93512fbe2a3f0dd5568ce087f` |
| candidate review | Proxy<br>`0xfec7865dac5139886585f03146ff61d9b31c2d57` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xee1af3f99af8c5b93512fbe2a3f0dd5568ce087f` |
| candidate review | ProxyAdmin<br>`0x11b190ae661c6d6884dfee48e215691e0ddb842e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xee1af3f99af8c5b93512fbe2a3f0dd5568ce087f` |
| candidate review | ResolvedDelegateProxy<br>`0x2b18602877181c3cb72c687e2a771e123a3788e3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xee1af3f99af8c5b93512fbe2a3f0dd5568ce087f` |
| unverified unclassified | UnnamedContract<br>`0x5aec6db5fc9490120f209a313ebb8d15c91b1604` | non_address_book | unknown | unknown | unverified | n/a | `0x64337bc28d3236e4a5f2fbdd697f8ce8879621d5` |
| unverified unclassified | UnnamedContract<br>`0x84e2fdb4f1017e70b0ace39b63953fc11e96467c` | non_address_book | unknown | unknown | unverified | n/a | `0xee1af3f99af8c5b93512fbe2a3f0dd5568ce087f` |
| unverified unclassified | UnnamedContract<br>`0xcb7c7725484f85427c9a846f8e8dbebe15df294a` | non_address_book | unknown | unknown | unverified | n/a | `0xee1af3f99af8c5b93512fbe2a3f0dd5568ce087f` |

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
| ethereum | `0xcee78437ae9e15cee9c78e63757e0153c0fd7479` | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x02987e7294379b9dda99d593b0c94c68266222d1` | AnchorStateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x575aecd84083f93877291901907698f7db0bd8b0` | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0000000000ffe8b47b3e2130213b802212439497` | ImmutableCreate2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2b18602877181c3cb72c687e2a771e123a3788e3` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe9d3e49b0636016c5fe9eaa2347948d0ba9f15af` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x62edd5f4930ea92dca3fb81689bdd9b9d076b57b` | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ef8c69cfe4635d866e3e02732068022c06e724d` | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd30c2cd3cd6112e61fdfb03e4b232564d7e5c91f` | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x319322906beadf69df5d4607169c63d692b1adc1` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb06ffa16011b5628bab98e29776361c83741dd3` | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdf6a16a71d0bc7a1bbe8fffb33700ec3d9448a5b` | PreimageOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa77995e10b0a833cdd4fa414c26e869f7aa32ddd` | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x125664bef08177ca43f6f301e63118b1e4ccde09` | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xff11e41d5c4f522e423ff6c064ff8d55af8f7355` | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 9 |

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
