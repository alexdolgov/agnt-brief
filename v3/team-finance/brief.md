# Agentic Audit Brief: Team Finance

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

- Project: Team Finance (`team-finance`)
- Website: [https://www.team.finance](https://www.team.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, blast, bsc, cronos, ethereum, fantom, kaia, kava, lukso, mantle, polygon
- Contract surface: 77 unique implementations (126 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $45,710,188.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Team Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, base, blast, bsc, cronos, ethereum, fantom, kaia, kava, mantle, polygon. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x80825c...b2c9fe`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 76 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 25
- Confirmed-live implementations: 1 of 77 unique; 76 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 49
- Unique implementations: 77
- Raw deployments: 126
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
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
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2c98ca...209dfd`; bsc `0xe5ea6b...da42c5`; polygon `0xe2fe53...1435fb` | ⚠️ Unaudited |
| LockToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x0c89c0...518820` | ⚠️ Unaudited |
| LockToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x3ef744...6e56c7` | ⚠️ Unaudited |
| LockToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0xd03450...328b14` | ⚠️ Unaudited |
| LockToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x4f0fd5...a7c33a` | ⚠️ Unaudited |
| LockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xe0b0d2...f72a75` | ⚠️ Unaudited |
| LockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: ethereum `0xc77aab...878bd5`; ethereum `0xdbf723...c6220a`; bsc `0x753659...d9a85c`; polygon `0x586c21...9af55c`; polygon `0xc80764...028ebe`; base `0xeb8bb3...ff6db6`; avalanche `0x2cc5c6...05c1d9`; blast `0xd98287...8c7255` | ⚠️ Unaudited |
| PriceEstimator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x5fbf0a...e5dc93` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: bsc `0x44a7ff...1e929d`; bsc `0x63fe2d...732bbb`; bsc `0x906112...98bf3d`; bsc `0xd60491...ffd5b1`; polygon `0xdcaa5d...e29e5d`; mantle `0x7592e7...c54e1a`; mantle `0xb2240b...2ca908`; base `0x2784d0...bd6859`; base `0xb1e794...573b75`; arbitrum `0x28f47d...b3c11c`; arbitrum `0xded4a1...c41e9f`; avalanche `0xaf2249...d98385` | ⚠️ Unaudited |
| Ris3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x572db7...fb084c` | ⚠️ Unaudited |
| Ris3Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfed527...3ff078` | ⚠️ Unaudited |
| Ris3Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa264eb...a52b13` | ⚠️ Unaudited |
| Ris3TaxPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x033c99...965077` | ⚠️ Unaudited |
| StakingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9e9ce7...4040e6` | ⚠️ Unaudited |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x53a8e3...019e95` | ⚠️ Unaudited |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbf8471...e98ebd` | ⚠️ Unaudited |
| TeamToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: polygon `0x900eec...08f3ba`; base `0x950077...175eb8`; base `0xd1de18...28bb59`; base `0xe37ef0...692c73`; arbitrum `0x446eb0...8c40b9` | ⚠️ Unaudited |
| TIS3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7815ff...62b795` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x28f47d...b3c11c`; mantle `0xe0b0d2...f72a75` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | mantle | n/a | `0x39b9eb...0c3340` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x458fe9...3ee345`; mantle `0xf076a6...8a64cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x256c6f...b88efd`; base `0x80825c...b2c9fe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x37e7a4...a3541f`; base `0x950818...7a22fb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x962f07...f5c3c2`; base `0x9bad40...bb559b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x458fe9...3ee345`; arbitrum `0xf076a6...8a64cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x64b4c8...25cf4f`; arbitrum `0xde002f...811cdc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x594dbb...e02b0d`; avalanche `0xf8282d...d8e0e5` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393851 | `0x80825c...b2c9fe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (49)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LockToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x624a4c...02143c` | ❓ Unverified |
| Proxy (impl: 0x6dd27f2b82f78dd8a802a9228f340518280359f1) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xe2fe53...1435fb` | ❓ Unverified |
| Proxy (impl: 0x7e9e76b7e373028c2cfd22169f82bcd49d649f99) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x327f6f...61af36`; blast `0x7e9e76...649f99` | ❓ Unverified |
| Proxy (impl: 0xf5cf29567350ebad9854ea22f3281d508ef1b96c) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xd8ef3d...7b439a` | ❓ Unverified |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x13f602...a3bb14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | 14 deployments: cronos `0x05b711...e7995f`; cronos `0xb6061e...1bc194`; fantom `0xc2995a...12c12d`; fantom `0xccebbe...90b63e`; kava `0xa9ec65...2502d6`; kaia `0x070a08...a16d97`; kaia `0x0c89c0...518820`; kaia `0x5dd3d6...0c14b8`; kaia `0x6c7c87...fa7cfd`; kaia `0x7c2aa3...778934`; kaia `0x854b4c...28a152`; kaia `0x9b83f4...2f5abe`; kaia `0xb5c902...cd73f7`; kaia `0xf26194...4c2bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8894a5...8d5c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9171f4...c3646d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff1ba5...d9ab40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26029d...606ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d1dd9...cf2898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3217ee...ba91e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x594dbb...e02b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf2249...d98385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6a673...3541eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xccebbe...90b63e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd18458...048d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4745c...64c675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7c58c1...54f377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb377c1...20b546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbfef87...9dca3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe8c8ab...21ac94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x541895...9676eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7592e7...c54e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a7ab0...0f91d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x994913...ab89d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfef87...9dca3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd03450...328b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5540c...30bc5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38533f...493385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4db57b...345520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62bec6...7c8b91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x673038...26c948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88ada0...b70367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e5595...db3020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x935a45...c4b7a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe28de...cc3437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xccebbe...90b63e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd05367...022c90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4745c...64c675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdcaa5d...e29e5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf439cb...d7438f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x1557b1...38c18b`; blast `0x5b1c4d...73ecb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2fec57...fcb61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x6877bd...8083dd`; blast `0xdd111b...cc6485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x6adbcd...e8fd0b`; blast `0x7efc85...e1fdac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7f28fb...1a1482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x89e9a9...de2e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8b6582...a32872` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/cC38SHSHMB696ztGk5L9/uploads/hBZpTk3UcUBhL9NrB5A3/Bailsec - TrustSwap SWAP Token Audit.pdf](https://2491867235-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcC38SHSHMB696ztGk5L9%2Fuploads%2FhBZpTk3UcUBhL9NrB5A3%2FBailsec%20-%20TrustSwap%20SWAP%20Token%20Audit.pdf) | Code4rena | Contest | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/cC38SHSHMB696ztGk5L9/uploads/9HLnqL9xaTELvjjEZJtH/Bailsec Audit of Team Finance Staking Solution.pdf](https://2491867235-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcC38SHSHMB696ztGk5L9%2Fuploads%2F9HLnqL9xaTELvjjEZJtH%2FBailsec%20Audit%20of%20Team%20Finance%20Staking%20Solution.pdf) | Code4rena | Contest | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11702] spaces/cC38SHSHMB696ztGk5L9/uploads/hBZpTk3UcUBhL9NrB5A3/Bailsec - TrustSwap SWAP Token Audit.pdf — no match: Only one contract, SwapToken, is in scope. Audit date is March 2024, represented as last day of month.
- [11703] spaces/cC38SHSHMB696ztGk5L9/uploads/9HLnqL9xaTELvjjEZJtH/Bailsec Audit of Team Finance Staking Solution.pdf — no match: Only one contract in scope: StakingPool.sol. Audit date from cover page: July 20 24.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/cC38SHSHMB696ztGk5L9/uploads/hBZpTk3UcUBhL9NrB5A3/Bailsec - TrustSwap SWAP Token Audit.pdf | SwapToken | unmatched — not counted | — | listed in scope table and throughout report | no |
| spaces/cC38SHSHMB696ztGk5L9/uploads/9HLnqL9xaTELvjjEZJtH/Bailsec Audit of Team Finance Staking Solution.pdf | StakingPool | unmatched — not counted | — | listed in scope as contracts/StakingPool.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [11702] spaces/cC38SHSHMB696ztGk5L9/uploads/hBZpTk3UcUBhL9NrB5A3/Bailsec - TrustSwap SWAP Token Audit.pdf
- [11703] spaces/cC38SHSHMB696ztGk5L9/uploads/9HLnqL9xaTELvjjEZJtH/Bailsec Audit of Team Finance Staking Solution.pdf

Fork inheritance lineage and inherited audits are included when available.
