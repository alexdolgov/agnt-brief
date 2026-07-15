# Agentic Audit Brief: T RIZE

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

- Project: T RIZE (`t-rize`)
- Website: [https://www.t-rize.io](https://www.t-rize.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 32 unique implementations (315 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,000,000.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for T RIZE. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across base. Structural roles: 2 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: accesscontrol (1), erc165 (1), erc1967proxy (1), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5f03d0...989335`, chain 8453)
- AccessList (`0x136a42...ae87c9`, chain 8453)
- RizeToken (`0x9818b6...c93583`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 29 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 32 unique; 29 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/26
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 32
- Raw deployments: 315
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: base `0x038fa5...97c4b6`; base `0x16f542...d602fd`; base `0x23e47a...edd226`; base `0x330ec3...033af3`; base `0x484cc2...e68744`; base `0x4c8348...4a5d95`; base `0x5d427e...59c4c5`; base `0x6f22c6...d684b8`; base `0x735326...a6250d`; base `0xaa1399...7d1523`; base `0xad2581...1b6f3e`; base `0xea990b...d222c3`; base `0xf3764b...675c9a` | ⚠️ Unaudited |
| AccessList | unknown | project_anchor | own_supporting | 0 | base | unit-393830 | `0x136a42...ae87c9` | ⚠️ Unaudited |
| ARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38660c...5cce5f` | ⚠️ Unaudited |
| ARMProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc842c6...3dd3e8` | ⚠️ Unaudited |
| BaseRizeMintBurnPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xd37361...ac8f43`; base `0xd4d129...8e16a0` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 42 deployments: base `0x03f255...cafc38`; base `0x0786b7...5ee86a`; base `0x0a995a...b7ac72`; base `0x0db8a9...4152a0`; base `0x0f0f71...dbd917`; base `0x1568a4...11f4ff`; base `0x162a6d...7b8e00`; base `0x194173...070c75`; base `0x19ef16...ef6d16`; base `0x1c9ee1...f3c107`; base `0x1e89f9...b8bb94`; base `0x227400...a5a9da`; base `0x25fad4...bdcd93`; base `0x34bc9b...d0475e`; base `0x3640a6...7bf8ed`; base `0x3b01cb...4ee6b8`; base `0x419cbf...039228`; base `0x5e3eb9...ca8f31`; base `0x5f8b0b...347989`; base `0x6ba211...8048e9`; base `0x7c7b15...82bcba`; base `0x88c053...ab9def`; base `0x8cce61...f69e69`; base `0x9118c2...6f7372`; base `0x919d98...032f2c`; base `0x926f1b...acda96`; base `0xa2d1bc...d454f1`; base `0xa84a33...05ac4c`; base `0xa8619f...1fe0bd`; base `0xac9b7f...cd5a71`; base `0xb5e347...cd4545`; base `0xbb9c6a...178258`; base `0xbd0800...ef77fa`; base `0xc253cb...dd06b6`; base `0xc3c6c1...5d1cca`; base `0xd0c34c...a8bd4e`; base `0xd21662...6aad64`; base `0xd54fe6...518eb7`; base `0xda5aa6...b13b6f`; base `0xe0f53a...a3b52e`; base `0xe6d469...3bbefa`; base `0xedfd76...d2e811` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 56 deployments: base `0x13d579...bb036f`; base `0x154d09...0ce034`; base `0x1766bc...14c5dc`; base `0x1cb5a9...8f0b00`; base `0x1cee35...447b57`; base `0x1e88d6...ac6cc0`; base `0x206e9a...3cbb95`; base `0x288b9b...5afbb0`; base `0x2f6f66...a8074f`; base `0x335cad...44ef34`; base `0x3ea696...73019e`; base `0x3efd83...1b77a8`; base `0x43fadc...f1c309`; base `0x4d87cb...36ea4c`; base `0x53cf4d...ead7ee`; base `0x580017...072fcb`; base `0x5c7509...7a09cf`; base `0x5f49e3...25e121`; base `0x644741...8209e0`; base `0x69797e...047346`; base `0x6f82c3...ce22a4`; base `0x7159e9...fa095d`; base `0x71aafd...a54729`; base `0x797c54...80fa74`; base `0x7deafd...7f5052`; base `0x8aa508...7206c6`; base `0x8fd488...a142af`; base `0x906124...d86a8e`; base `0x935b22...a5b383`; base `0x9c764e...afe5db`; base `0x9d5665...d614b2`; base `0xa12f40...7b32b3`; base `0xa2302b...a8c110`; base `0xa68899...83bc21`; base `0xa77ca3...75490f`; base `0xa9b679...695495`; base `0xaa0f88...c6aab4`; base `0xafc7e9...8128e1`; base `0xb90079...acd54d`; base `0xb96ae0...e74115`; base `0xbee038...ddb1ce`; base `0xbfcff6...2adc44`; base `0xc45f54...3c9e7b`; base `0xc6ed8b...9ccfde`; base `0xcaf4e8...01b943`; base `0xd206eb...a07d6b`; base `0xded11e...c38997`; base `0xdfeaa4...ed9dee`; base `0xe19723...2fcfec`; base `0xe45e35...83ceef`; base `0xe8e17c...7279b8`; base `0xee9ea9...36e7ea`; base `0xf0247d...b69f69`; base `0xf3fbba...e685f7`; base `0xfe8671...735a43`; base `0xffa859...6c4fce` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20dd6b...4041a7` | ⚠️ Unaudited |
| CommitStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 46 deployments: base `0x01b21f...2cc42e`; base `0x0753da...33aac3`; base `0x0ae3c2...ca4f77`; base `0x16f72c...3724e4`; base `0x174e3c...2c3472`; base `0x17891f...56039f`; base `0x1ccd0d...675c3c`; base `0x229890...961292`; base `0x275db6...a8c053`; base `0x282741...411fc2`; base `0x2d3fc7...fee2f1`; base `0x327e13...357916`; base `0x36b3ea...bc95cf`; base `0x398d21...41612e`; base `0x3d4d67...cc8a9c`; base `0x452750...59c1f5`; base `0x4cdca7...f409ea`; base `0x52b5b4...31ccb8`; base `0x565f70...ccdf3b`; base `0x575f92...67878f`; base `0x5f2ce9...41d411`; base `0x672dbd...5f33c9`; base `0x69a2f5...4aa9bc`; base `0x6fbe67...cc4d98`; base `0x700c67...98b5dd`; base `0x725f05...1010a4`; base `0x7acda4...5b50e9`; base `0x862642...356f20`; base `0x87e77c...3bf6e1`; base `0x932d6d...56d837`; base `0x96fc2d...89a1d9`; base `0x98f3dd...2625ce`; base `0x9ae736...b512b7`; base `0x9d5522...598326`; base `0xa8fa8a...0036cb`; base `0xaedbe5...b78363`; base `0xb40659...58ce0b`; base `0xb71961...67af9f`; base `0xc4a8b1...dd62a4`; base `0xccb222...ef839a`; base `0xcff74c...347985`; base `0xd0b13b...14f562`; base `0xdd2f2f...56b75b`; base `0xde480a...02f2d7`; base `0xf97127...9f72b0`; base `0xfb35d3...26be78` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: base `0x1eba1d...1ad093`; base `0x3e3a6b...569060`; base `0x63af83...b4d385`; base `0x676c4c...0e2f9d`; base `0x868a50...ce5f04`; base `0x88a984...dd36f4`; base `0x975043...12462d`; base `0xa669e5...3f4380`; base `0xaa98ae...bde0b1`; base `0xd78182...1e817d`; base `0xe3971e...612075`; base `0xf397bf...02e9a5`; base `0xff8c37...99eaba` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 46 deployments: base `0x03ee83...ae0446`; base `0x0a44db...553286`; base `0x10ab90...4f581e`; base `0x12aaad...eea829`; base `0x15f54f...d86401`; base `0x18095f...732062`; base `0x1861ed...e1b12b`; base `0x25f8fc...bf1504`; base `0x260ac2...90da7e`; base `0x300977...310661`; base `0x335581...a20ab3`; base `0x391b9b...08b9c7`; base `0x45d524...751083`; base `0x48a51f...c91a18`; base `0x5204a4...cd1af1`; base `0x53ab03...ddfdab`; base `0x61c3f6...afccdf`; base `0x62fae5...233cca`; base `0x639dc0...feab0d`; base `0x6d1eef...ae1da9`; base `0x73a600...aa6e96`; base `0x74d574...78adb7`; base `0x75f29f...c7b5d7`; base `0x7d38c6...f58d93`; base `0x7e2b07...4dfe10`; base `0x8345f2...8e00ad`; base `0x8531e6...95f3d5`; base `0x9001d6...0803c0`; base `0x90e04b...08f13d`; base `0x941f0e...916f01`; base `0x98b7a9...c8dd9a`; base `0x9c095e...497653`; base `0x9c32df...bdea73`; base `0xa24d3b...d78f18`; base `0xaa2805...cd18e9`; base `0xbd3b19...d4a404`; base `0xc18ef0...9f72b6`; base `0xca0416...5371f1`; base `0xd3680a...57913e`; base `0xd47363...5a907c`; base `0xd8fc83...ec2926`; base `0xe4e567...97a4d7`; base `0xec0cfe...88f0bb`; base `0xeff089...247d9d`; base `0xf50c0d...153e4f`; base `0xfc30bf...f18848` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 50 deployments: base `0x048f2f...85c332`; base `0x064f09...75aa0d`; base `0x11897f...8423ef`; base `0x1c179c...b2f341`; base `0x1e5ca7...2feb21`; base `0x223953...984c60`; base `0x2c8557...0d9a12`; base `0x31389d...4eac52`; base `0x362e6b...ad98c1`; base `0x3db8be...95d6a5`; base `0x4be6e0...646fd7`; base `0x4db62b...dfeed3`; base `0x557540...6b6c1c`; base `0x56b30a...1fa78e`; base `0x588990...14a285`; base `0x5d5191...a65c9c`; base `0x5de068...e4f622`; base `0x626acc...f429ba`; base `0x62e8d1...abe3f9`; base `0x757dad...7723d1`; base `0x75d1a8...f044d6`; base `0x7898d0...db287e`; base `0x88ced3...6b9268`; base `0x9292f9...ea639a`; base `0x98eecf...1d2790`; base `0x9a5983...e36266`; base `0x9d0ffa...a8ca69`; base `0xac58a3...20df4b`; base `0xadfe8e...224c46`; base `0xb1dddd...8af670`; base `0xbc8e66...52f894`; base `0xbd15d0...5c5977`; base `0xbd852e...1a27db`; base `0xbe5a9e...a42d96`; base `0xbe6b55...3c31a2`; base `0xc06dc9...700ce5`; base `0xccc32e...68ab81`; base `0xcdd0e9...a4a363`; base `0xd3bde6...1dd203`; base `0xd44371...c2e181`; base `0xd531e3...786d26`; base `0xd952fe...dd6457`; base `0xdcfb24...1f984b`; base `0xdd4fb4...c8c981`; base `0xdea286...4ea1cb`; base `0xe5fd5a...0eb754`; base `0xe96563...889c6c`; base `0xea2036...5d2c68`; base `0xeb50fc...e6e184`; base `0xf2bf69...ccad93` | ⚠️ Unaudited |
| GovernanceBonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a1340...ed26ee` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xdc4855...7f266d`; base `0xdea04d...69fdb8` | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x56b827...ae8dc7`; base `0xc64f6e...cbc01f` | ⚠️ Unaudited |
| MerkleAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6426fd...873a98` | ⚠️ Unaudited |
| PriceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x1ba15c...8acf46`; base `0x6337a5...79923a`; base `0xb1b31d...12ee78`; base `0xc79224...fed50b` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1a5f2d...ae1a77`; base `0xb0f1e5...16d4d7` | ⚠️ Unaudited |
| RizeToken | token | project_anchor | own_supporting | 0 | base | unit-393832 | `0x9818b6...c93583` | ⚠️ Unaudited |
| RMN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x41ec51...6f93c7`; base `0x91cb19...b007c3` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x673aa8...427a28`; base `0x881e3a...f58bcd`; base `0xa63124...9b29a7`; base `0xcd06f1...d5ba56` | ⚠️ Unaudited |
| TokenAdminRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f6c37...731e37` | ⚠️ Unaudited |
| UnallocatedVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x015198...959510`; base `0x0604eb...484c5c`; base `0x1c07bf...69c669`; base `0x6d596a...0811eb`; base `0xaafe9d...9fb70c`; base `0xad12b1...6f5f2d` | ⚠️ Unaudited |
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | base | unit-393831 | `0x5f03d0...989335` | ⚠️ Unaudited |
| USDCTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x13f967...acb6d5`; base `0x55a578...c61ba9` | ⚠️ Unaudited |
| VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x036460...083937`; base `0x2cfb5f...e5ca1c`; base `0x3100e9...4daf64`; base `0x431727...63507b`; base `0x44ef24...2e6728`; base `0x79bbcb...51f6c8`; base `0x9525df...241e7b`; base `0x9ec184...2ccd23` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x054ba1...12c53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x891e30...9b829c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa03bbd...fc00d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa824d...e73cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc94cc2...ca9c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0a614...0155b9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hashlock.com/audits/t-rize](https://hashlock.com/audits/t-rize) | unknown | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21130] hashlock.com/audits/t-rize — no match: The provided text is a marketing page for Hashlock's audit services, not an actual audit report. It mentions 'T-Rize Rizenet Governance Token Audit Updates' with a last audit date of March 2025, but no specific contract names or scope details are given.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x136a42...ae87c9` | AccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9818b6...c93583` | RizeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

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

- [21130] hashlock.com/audits/t-rize

Fork inheritance lineage and inherited audits are included when available.
