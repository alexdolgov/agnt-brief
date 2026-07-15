# Agentic Audit Brief: Allbridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 23 (0 matched; 23 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 8.2% over 90 days

## Project Overview

- Project: Allbridge (`allbridge`)
- Website: [https://app.allbridge.io](https://app.allbridge.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, avalanche, base, bsc, celo, ethereum, fantom, harmony, linea, optimism, polygon, sonic, unichain
- Contract surface: 211 unique implementations (384 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $22,541,708.00
- On-chain TVL (included contracts): $323,216,816.18
- TVL by chain: Polygon $303,422,509.75 | Ethereum $15,878,484.47 | Bsc $2,099,130.39 | Arbitrum $758,338.41 | Base $457,534.09 | Celo $318,258.32 | Avalanche $160,379.08 | Optimism $74,004.22 | Unichain $26,547.22 | Sonic $21,630.23

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Allbridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, aurora, avalanche, base, bsc, celo, ethereum, fantom, harmony, linea, optimism, polygon, sonic, unichain. Structural roles: 7 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: supporting (7)
- Contract kinds: contract (7)
- Detected standards: accesscontrol (7), erc165 (7)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd5d6b2...5d6fc4`, chain 137)
- UnnamedContract (`0xd5d6b2...5d6fc4`, chain 42220)
- Bridge (`0xd5d6b2...5d6fc4`, chain 1)
- Bridge (`0xd5d6b2...5d6fc4`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (2 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 203 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 1 of 211 unique; 210 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/56
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 4
- Unverified implementations: 155
- Unique implementations: 211
- Raw deployments: 384
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 11 stale, 11 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| QiStablecoin | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3fa99...6997f1` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 32 deployments: ethereum `0x1d3df1...8d403c`; ethereum `0x542ad3...a9ce97`; ethereum `0x7dbf07...74135d`; ethereum `0xa7062b...c57c4d`; ethereum `0xb827b1...9d1b0e`; ethereum `0xcab34d...51abad`; ethereum `0xce01bc...539172`; ethereum `0xe6fc2a...97063c`; optimism `0x3b96f8...f1f68f`; optimism `0xb24a05...b0deea`; bsc `0x179aad...799ca0`; bsc `0x731822...f29953`; bsc `0x8033d5...1d8b10`; bsc `0xb19cd6...3d2554`; bsc `0xb19dad...da0e02`; bsc `0xf833af...537811`; unichain `0xba2fba...a094d7`; unichain `0xd0a1ff...d9fce1`; polygon `0x0394c4...090791`; polygon `0x171f3f...a47826`; polygon `0x218556...0bd604`; polygon `0x4c42df...2eb0a6`; polygon `0x58cc62...9437da`; polygon `0x6d92cf...9e3622`; sonic `0xca0dc3...43c71f`; base `0xda6bb1...5e96d5`; arbitrum `0x2b5e5e...c59d6d`; arbitrum `0x47235c...8472c7`; arbitrum `0x690e66...8a21df`; celo `0xfb2c7c...e2b5af`; avalanche `0x2d2f46...8b5784`; avalanche `0xe82735...38ec9f` | ⚠️ Unaudited |
| YellowToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x90b7e2...8a3320`; polygon `0x18e73a...ab7b81` | ⚠️ Unaudited |
| BEP20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2c28b...115148` | ⚠️ Unaudited |
| StableTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xe8537a...ab4787` | ⚠️ Unaudited |
| Accounts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x0fe151...67ef53`; celo `0x565677...e2b98c`; celo `0x907f5c...9c525a`; celo `0xbac4a3...05f603` | ⚠️ Unaudited |
| Ariadne | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c9bc...2a81d2` | ⚠️ Unaudited |
| AttestationsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 18 deployments: celo `0x2496fd...8e9a3d`; celo `0x252b03...5f1649`; celo `0x30b3c1...0595ac`; celo `0x3a4936...edb3f4`; celo `0x488deb...6c8fa6`; celo `0x4a241b...877da9`; celo `0x65e25c...799411`; celo `0x673f19...74eecb`; celo `0x68da81...504785`; celo `0x93d52a...a0ecf7`; celo `0xb53ce2...d8d96a`; celo `0xc834e7...359afd`; celo `0xcc6517...9e8fbe`; celo `0xdadd05...6f9303`; celo `0xdd944d...99f451`; celo `0xeaaf55...bc9149`; celo `0xf114c7...f5406a`; celo `0xff2ba5...c9fd2d` | ⚠️ Unaudited |
| BatchTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x61a588...60be1b` | ⚠️ Unaudited |
| Bridge | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-378961 | 5 deployments: ethereum `0xbbbd1b...1de884`; bsc `0xbbbd1b...1de884`; polygon `0xbbbd1b...1de884`; celo `0xbbbd1b...1de884`; avalanche `0xbbbd1b...1de884` | ⚠️ Unaudited |
| Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: ethereum `0x609c69...af0c9e`; ethereum `0xa31433...a3bea9`; optimism `0x97e5bf...50d5ab`; bsc `0x3c4fa6...58312f`; bsc `0x7e6c25...c3260a`; unichain `0x782e91...05c598`; polygon `0x7775d6...d7d3e0`; sonic `0x801217...19a116`; base `0x001e3f...35def7`; arbitrum `0x9ce344...92d189`; celo `0x80858f...c6ba0e`; avalanche `0x9068e1...caeea9`; aurora `0xbbbd1b...1de884` | ⚠️ Unaudited |
| CctpBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 11 deployments: ethereum `0x965a5e...5f31d1`; ethereum `0xc51397...2210d6`; optimism `0x08391e...7c1cd0`; optimism `0x125ead...13b5d2`; polygon `0x43330f...166dcf`; polygon `0x710282...1ac82c`; base `0x1efe2c...6314f6`; base `0xaefb62...56af62`; arbitrum `0x23e1ae...92ccdb`; arbitrum `0x2ed095...b98a29`; avalanche `0x791a36...47ba6d` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92f7cc...fb9bf4` | ⚠️ Unaudited |
| DucklingsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x435b74...c7b0f0`; polygon `0x6966c8...6a7add` | ⚠️ Unaudited |
| DucklingsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ba842...fe2499` | ⚠️ Unaudited |
| DucklingsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1debb8...1febe2`; polygon `0x8056f8...a6b4d0` | ⚠️ Unaudited |
| DuckyFamilyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x2e1380...f57977`; polygon `0x7cf9ed...37c1c8`; polygon `0xb66bf7...ff7675` | ⚠️ Unaudited |
| Election | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x169c94...3009bc`; celo `0x3db69c...9f6f28`; celo `0xbd7d39...31780e` | ⚠️ Unaudited |
| EpochManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x91e35c...dfc535` | ⚠️ Unaudited |
| EpochRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x33285c...63464b`; celo `0x4cadba...562aba`; celo `0x9dc549...f050d9` | ⚠️ Unaudited |
| ERC20Lookup | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e7285...1e7ef0` | ⚠️ Unaudited |
| FeeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba6d8d...f2e1f6` | ⚠️ Unaudited |
| FixedAmountVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x187b9b...1c8f80`; ethereum `0x6d2463...73c820`; ethereum `0xabccdf...535af9`; bsc `0xacfde4...bfd768` | ⚠️ Unaudited |
| GasOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0bdf61...5b96e0`; optimism `0x4ad835...199d9a`; bsc `0xcaf00d...b9689b`; polygon `0x163f20...29d612`; base `0x7b2f61...7c6841`; base `0x7b806a...42f6d6`; arbitrum `0x2476b2...ebcb10`; avalanche `0x175fda...a2d29e` | ⚠️ Unaudited |
| GoldToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x04a182...c7edb2`; celo `0xb16516...b2c19d`; celo `0xfea1b3...c4f7b1` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x40bca4...1824e6`; celo `0x40cac0...a6c57a`; celo `0xf51d27...7a215d` | ⚠️ Unaudited |
| GovernanceSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0xb1b7b6...c51e9e`; celo `0xed1073...6dbe14` | ⚠️ Unaudited |
| HAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9c2d3...84fb54` | ⚠️ Unaudited |
| HAPIBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9c2d3...84fb54` | ⚠️ Unaudited |
| HedgetToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7d8d3...071731` | ⚠️ Unaudited |
| ImpossibleFinance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0e1fc...614af1` | ⚠️ Unaudited |
| IntegerSortedLinkedList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa86051...0d047c` | ⚠️ Unaudited |
| LPStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff3dfe...a87286` | ⚠️ Unaudited |
| Messenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x203e87...9086da`; optimism `0x309a09...093695`; bsc `0x3c37bd...66c27f`; polygon `0x3e0383...38451c`; base `0x9bc674...558271`; arbitrum `0xd5826d...bc4f9d`; avalanche `0xfd6e9d...36446f` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ace30...ed6368` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x758361...8670b6` | ⚠️ Unaudited |
| NftBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x999cdf...b4bced` | ⚠️ Unaudited |
| OUpgradeable | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | 2 deployments: unichain `0x63f2f0...116ad8`; unichain `0xf48e70...cd32e3` | ⚠️ Unaudited |
| PEN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ee318...c88f66` | ⚠️ Unaudited |
| PortfolioToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbeff0c...63120d` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | 2 deployments: unichain `0x818861...73c97a`; unichain `0xcb768e...dc59cc` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88f042...085110` | ⚠️ Unaudited |
| StableTokenV3 | token | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xd8763c...d6ca73` | ⚠️ Unaudited |
| StakedUSDeOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x211cc4...5fe5d2` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | 3 deployments: unichain `0x01bff4...bc1071`; unichain `0x915143...60ecc5`; unichain `0xaf37e8...0847ff` | ⚠️ Unaudited |
| TreasureVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x68d1e3...74d852`; polygon `0xa0f014...d246d8` | ⚠️ Unaudited |
| TwoWeeksNotice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee170d...8626f6` | ⚠️ Unaudited |
| USDe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9edd...1e68b3` | ⚠️ Unaudited |
| USDeOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d3a1f...52ef34` | ⚠️ Unaudited |
| Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x937465...5bd74b`; celo `0x937465...5bd74b` | ⚠️ Unaudited |
| Validators | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa47961...c8dc95` | ⚠️ Unaudited |
| WormholeMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: optimism `0xf98a37...49e377`; arbitrum `0x5f4e0a...bfc313` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0xa11bd3...ce8c7c`; ethereum `0xf74134...ea3615`; bsc `0x37dfac...0aacb7`; polygon `0x14743e...4103e7` | ⚠️ Unaudited (bytecode match) |
| WrappedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 39 deployments: ethereum `0x087095...f1863f`; ethereum `0x2bd1f3...3f5f0f`; ethereum `0x34ac7e...52d469`; ethereum `0x48b847...9bba72`; ethereum `0x572614...9ab9da`; ethereum `0x934ac3...6ee8a9`; ethereum `0xac5c23...94c294`; bsc `0x4f161e...f8ce9e`; bsc `0x6756d5...4b86fd`; bsc `0x68784f...f42b4a`; bsc `0x9df465...71f8f0`; bsc `0xa0a996...e73d97`; polygon `0x04429f...293346`; polygon `0x42a16b...a1fd01`; polygon `0x5639c4...319543`; polygon `0x707d64...830b4d`; polygon `0x72bd80...af6f2f`; polygon `0x7dff46...2ea7a4`; polygon `0xb6ebc3...7b38ca`; polygon `0xbe276e...9b4b19`; polygon `0xbe8096...a9547c`; polygon `0xfc69f1...3c8831`; celo `0x173234...aed450`; celo `0x33827b...0e941d`; celo `0x47264a...7346a8`; celo `0x6e512b...680cc9`; celo `0x8d2c77...95f92d`; celo `0x8e3670...89b690`; celo `0xed193c...02835c`; avalanche `0xafc436...b291c9`; aurora `0x0f0057...5afd48`; aurora `0x0fad0e...bf41b5`; aurora `0x2bae00...630111`; aurora `0x486d4c...3d785b`; aurora `0x5c92a4...589783`; aurora `0x5ce9f0...34a9dc`; aurora `0x7b8d18...bc51eb`; aurora `0xb14674...f6e762`; aurora `0xc4bdd2...038096` | ⚠️ Unaudited (bytecode match) |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-378962 | 4 deployments: ethereum `0xd5d6b2...5d6fc4`; bsc `0xd5d6b2...5d6fc4`; polygon `0xd5d6b2...5d6fc4`; celo `0xd5d6b2...5d6fc4` | ⚠️ Unaudited (bytecode match) |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 9 deployments: celo `0x066f67...bd25f2`; celo `0x120c00...49e892`; celo `0x65534a...043372`; celo `0x68e231...ee3903`; celo `0x72306f...72c33d`; celo `0xad52b8...14e7fc`; celo `0xb7feac...ff582a`; celo `0xbcb789...c3a567`; celo `0xc99d54...dd411e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (155)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b337b...b56bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3415ca...fbd34b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3461fb...229644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x366a90...dbee50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b91b2...0a04a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4074ab...ba3b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44f9e6...52cf15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47dfcb...191bfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70d1f1...be8b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7972d6...d15c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x937465...5bd74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0719a...965e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb24c64...e60efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba6d8d...f2e1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc8889...f9c2eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0b6e0...ef31e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec455f...47ab7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4830e...3da83f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x63b693...55e933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xea7251...b077f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf357f3...bce9ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0556c7...cbe29c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a76cb...9229c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ac4a2...8a7229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dae5e...7d3bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f9016...db5724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c1353...9a2a05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3420cc...71c4b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3461fb...229644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34e27b...3b6954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37bb14...8bf175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x442ca9...fdaf5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x454d10...8afb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47dfcb...191bfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b0b25...c6a5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x619c99...c05ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ae4b1...2ff416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x749cf8...10eaea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x776bfe...1ac0e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x779fd5...6a2da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7bb5df...8a8cdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d5c70...fcee0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80f955...af396b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8445b8...a153d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f6c5f...0a3f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95603f...66ea40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa69083...204c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3404f...b2ea1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbabbcf...7bcf25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc06ebb...0e1b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc259b0...1bbae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3e289...801989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc4e74...1fd416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd41ef...c3731b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd16ab8...da6204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1f17f...81cccd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-378980 | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe23074...7df236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4631d...4fb58b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecc1ae...fc14c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf119b1...3e2022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x13313c...524c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3070c6...e85486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x44abfa...f62cc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe8a580...c0528b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0fad0e...bf41b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3461fb...229644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44aaa9...3a84d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x620a78...b21aae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9bb344...e75cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1f17b...889d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb25bdd...6d96f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb30d4d...4a4832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb43b97...746fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xba6d8d...f2e1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd32880...20595b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd45268...d736c6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378966 | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdbbe85...54669e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x83b71b...e170c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x92b033...76634e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc5b78b...6aac70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 8 deployments: fantom `0x1bb92e...0caa39`; fantom `0x44f723...e0f296`; fantom `0x543acd...87b679`; harmony `0x5cb524...9fcd4b`; harmony `0x788ba0...dcad4f`; harmony `0xa21aab...664fd4`; harmony `0xcc9d14...37e71c`; harmony `0xf80ed1...f3383c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-378967 | `0xbbbd1b...1de884` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-378969 | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x214d97...6d7fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4dc269...9cd337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f4be8...a908e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc75553...e307fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0c333...c67188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05266f...3cfe60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24c679...47e560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42f9e8...01ad9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ab965...543c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7746e4...bea56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ed534...88ca18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d7124...574eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa82b9e...e54d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb074e7...94fdea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb51905...0f9f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf8d0c...ef6f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe76d1b...66f130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd22b7...7c5423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x03e39a...7d1089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x08a4b5...f0bd29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0cb6fd...42422f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0d6d2c...f2900a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1b7a41...8865b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1e3d01...42ba5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2dad1c...64f261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x30584e...9f3f7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3461fb...229644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4efa94...8bc05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x55f3b4...ecb381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5f86cc...e156f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6da06a...806ef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8bc96d...272e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8fa407...eedf84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb658b5...be2b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb766b6...2fe062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb98746...ae9feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xba6d8d...f2e1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbc4ee7...0f606a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc682c3...67330d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xcb32ea...d10f3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd0716c...015c3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | celo | unit-378973 | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xddf776...0b27fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf0c3fc...3e8b34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x48b847...9bba72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b0093...1e5970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x513d0d...fcd5ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fbf8d...b521c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65de05...3b57ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x713157...32db10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x937465...5bd74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a3b53...007388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa666ec...297bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba6d8d...f2e1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd36ce9...2b010a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-378976 | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdcf579...ea40d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf216f2...7fd100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x30572f...42da34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x39a421...60e2c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x78ca67...5ce665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf3dd9d...99b907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x937465...5bd74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xba6d8d...f2e1f6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view](https://drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view) | Kudelski Security | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [20211105-Neodyme.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20211105-Neodyme.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [20211117-LeastAuthority.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20211117-LeastAuthority.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [20220916-Halborn.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20220916-Halborn.pdf) | Halborn | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [20221104-AckeeBlockchain.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20221104-AckeeBlockchain.pdf) | Ackee Blockchain | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [20221208-Halborn.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20221208-Halborn.pdf) | Halborn | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [20230607-Neodyme.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20230607-Neodyme.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [hacken.io/audits/allbridge](https://hacken.io/audits/allbridge) | Hacken | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view](https://drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view) | unknown | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [www.coinfabrik.com/blog/allbridge-audit-report](https://www.coinfabrik.com/blog/allbridge-audit-report) | CoinFabrik | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [allbridge.medium.com/allbridge-successfully-completes-smart-contract-code-review-by-hacken-82e8497b1d2b](https://allbridge.medium.com/allbridge-successfully-completes-smart-contract-code-review-by-hacken-82e8497b1d2b) | Hacken | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1lE-zwbrmNgVEDVa5t2pRCo9AiI2vvex3/view](https://drive.google.com/file/d/1lE-zwbrmNgVEDVa5t2pRCo9AiI2vvex3/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1gZ2KcBPNM_JC_xstw4_dUYWkJSZRQy7L/view](https://drive.google.com/file/d/1gZ2KcBPNM_JC_xstw4_dUYWkJSZRQy7L/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1JugtjUUBP7CxlFzgQt4Dntkt2s-URzLH/view](https://drive.google.com/file/d/1JugtjUUBP7CxlFzgQt4Dntkt2s-URzLH/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1teENtaU43DwTxsEtT5m9-Z-3nSHKHPVz/view](https://drive.google.com/file/d/1teENtaU43DwTxsEtT5m9-Z-3nSHKHPVz/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1kxJ4IOIL_qBeg-RYRIU9I53mQF-1cWnb/view](https://drive.google.com/file/d/1kxJ4IOIL_qBeg-RYRIU9I53mQF-1cWnb/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1tUK-oKF7MAZj-ylZq9RKAzHGiKX2xK-D/view](https://drive.google.com/file/d/1tUK-oKF7MAZj-ylZq9RKAzHGiKX2xK-D/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1xhWWWO1g9h6XGkxUsfeHybsFen0tCwuV/view](https://drive.google.com/file/d/1xhWWWO1g9h6XGkxUsfeHybsFen0tCwuV/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1Dp0uRpqlWXnPi0oynvd-0mbEg8GhdCH9/view](https://drive.google.com/file/d/1Dp0uRpqlWXnPi0oynvd-0mbEg8GhdCH9/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1zklH6nN5t-IDVabM_OUHqdawNmlaboX6/view](https://drive.google.com/file/d/1zklH6nN5t-IDVabM_OUHqdawNmlaboX6/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1U_lajhCK7RejsS33z6Imc9aBhaDpn2lf/view](https://drive.google.com/file/d/1U_lajhCK7RejsS33z6Imc9aBhaDpn2lf/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1MCj6XdjHbyHW8_L02PFskHca9_G8xRrA/view](https://drive.google.com/file/d/1MCj6XdjHbyHW8_L02PFskHca9_G8xRrA/view) | Kudelski Security | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1JIK5p2r7BBNuDm-Ci8MSVzrYh6VRh0ho/view](https://drive.google.com/file/d/1JIK5p2r7BBNuDm-Ci8MSVzrYh6VRh0ho/view) | Hacken | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1820] drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view — no match: Scope section lists three repositories (EVM, Solana, Info Server) but does not enumerate individual contract files. However, the Technical Analysis section explicitly lists five EVM contracts: Bridge, Farming, FeeOracle, Staking, WrappedToken. Solana and Info Server components are mentioned but not named individually.
- [9788] 20211105-Neodyme.pdf — no match: Extracted contract names from scope section and findings. The audit date is from the cover page: 'November 5, 2021'.
- [9789] 20211117-LeastAuthority.pdf — no match: The audit report covers three main components: Neon EVM (Rust EVM), EVM Loader, and Proxy Implementation. The Solidity contract SPL_ERC20_Wrapper is also mentioned in suggestions. The audit date is clearly stated on the cover page and throughout the report.
- [9790] 20220916-Halborn.pdf — no match: Only one program (evm-loader) is in scope. No individual contract names are provided beyond the program name.
- [9791] 20221104-AckeeBlockchain.pdf — no match: Scope includes two repositories: neon-evm and rust-evm. No individual contract files listed.
- [9792] 20221208-Halborn.pdf — no match: Only one program (evm-loader) is explicitly in scope. No individual contract names are provided beyond the program name.
- [9793] 20230607-Neodyme.pdf — no match: The report scope mentions the main Neon contract (evm_loader) and Solidity wrappers, but no specific contract names are listed. The audit date is from the cover page: 'June 7th, 2023'.
- [12352] hacken.io/audits/allbridge — no match: The text is a project overview page, not an audit report. No specific contracts, files, or audit date are provided.
- [12354] drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view — no match: The executive summary explicitly states the scope as 4 smart contracts: bridge-core, validator, fee-oracle, and wrapped-token. The date is from the cover page: 28.09.2022.
- [12355] www.coinfabrik.com/blog/allbridge-audit-report — no match: Scope section explicitly lists four files. Audit date is the final report date (2023-07-18) from changelog.
- [26291] allbridge.medium.com/allbridge-successfully-completes-smart-contract-code-review-by-hacken-82e8497b1d2b — no match: The text is a blog post announcing an audit by Hacken, but it does not list specific contract names or files in scope.
- [26304] drive.google.com/file/d/1lE-zwbrmNgVEDVa5t2pRCo9AiI2vvex3/view — no match: The provided text is a marketing recap, not an audit report. No contracts, scope sections, or audit dates are present.
- [26306] drive.google.com/file/d/1gZ2KcBPNM_JC_xstw4_dUYWkJSZRQy7L/view — no match: The document is a monthly report for Allbridge Core, not an audit report. No contracts in scope are mentioned.
- [26309] drive.google.com/file/d/1JugtjUUBP7CxlFzgQt4Dntkt2s-URzLH/view — no match: The provided text is a public report about Allbridge Core metrics and partnerships, not an audit report. No contracts in scope or audit date were found.
- [26312] drive.google.com/file/d/1teENtaU43DwTxsEtT5m9-Z-3nSHKHPVz/view — no match: The document is a monthly recap report, not an audit report. It mentions an audit by Hacken but does not list any specific contracts in scope.
- [26316] drive.google.com/file/d/1kxJ4IOIL_qBeg-RYRIU9I53mQF-1cWnb/view — no match: The provided text is a marketing report, not an audit report. No contracts in scope or audit date found.
- [26319] drive.google.com/file/d/1tUK-oKF7MAZj-ylZq9RKAzHGiKX2xK-D/view — no match: The provided text is not an audit report; it appears to be marketing material for Allbridge. No contracts in scope or audit date were found.
- [26320] drive.google.com/file/d/1xhWWWO1g9h6XGkxUsfeHybsFen0tCwuV/view — no match: The provided text is a marketing report, not an audit report. No contracts or audit date found.
- [26321] drive.google.com/file/d/1Dp0uRpqlWXnPi0oynvd-0mbEg8GhdCH9/view — no match: The document is a monthly progress report (March 2022) for Allbridge, not an audit report. It mentions a partnership with Kudelski Security for a future audit but does not list any contracts in scope.
- [26322] drive.google.com/file/d/1zklH6nN5t-IDVabM_OUHqdawNmlaboX6/view — no match: The document is a monthly update report for Allbridge, not a smart contract audit report. No contracts in scope are mentioned.
- [26327] drive.google.com/file/d/1U_lajhCK7RejsS33z6Imc9aBhaDpn2lf/view — no match: The document is a monthly report (September 2022) for Allbridge, not a smart contract audit report. No contracts in scope are listed.
- [26329] drive.google.com/file/d/1MCj6XdjHbyHW8_L02PFskHca9_G8xRrA/view — no match: The document is a public report about Allbridge Core and Classic metrics, product updates, and marketing. It mentions an audit by Cossack Labs but does not list any specific smart contracts in scope. No contract names or source files are identifiable.
- [26332] drive.google.com/file/d/1JIK5p2r7BBNuDm-Ci8MSVzrYh6VRh0ho/view — no match: The provided text is a marketing report for Allbridge, not an audit report. No contracts, source files, or audit date are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | Bridge | ambiguous — not counted | Bridge (alternative) `0xd5d6b2...5d6fc4` — deployed 2022-12-22 17:15:47+03 — liveness: live (current_address_book_code)<br>Bridge (alternative) `0xd5d6b2...5d6fc4` — deployed 2022-12-22 17:18:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | Farming | unmatched — not counted | — | Listed in General Observations as part of Allbridge EVM Contracts | no |
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | FeeOracle | unmatched — not counted | — | Listed in General Observations as part of Allbridge EVM Contracts | no |
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | Staking | unmatched — not counted | — | Listed in General Observations as part of Allbridge EVM Contracts | no |
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | WrappedToken | unmatched — not counted | — | Listed in General Observations as part of Allbridge EVM Contracts | no |
| 20211105-Neodyme.pdf | Neon EVM | unmatched — not counted | — | Scope section: 'Neon-EVM / evm_loader – The main Neon contract' | no |
| 20211105-Neodyme.pdf | evm_loader | unmatched — not counted | — | Scope section: 'Neon-EVM / evm_loader – The main Neon contract' | no |
| 20211105-Neodyme.pdf | ERC20Wrapper | unmatched — not counted | — | Scope section: 'Includes all ERC20Wrapper code' and finding 'ERC20 Wrapper allows privilege escalation' | no |
| 20211105-Neodyme.pdf | SYSTEM_ACCOUNT_SOLANA | unmatched — not counted | — | Finding 'External Calls execute Solana instruction instantly' mentions 'built-in SYSTEM_ACCOUNT_SOLANA contract' | no |
| 20211105-Neodyme.pdf | SYSTEM_ACCOUNT_ERC20_WRAPPER | unmatched — not counted | — | Finding 'ERC20 Wrapper allows privilege escalation' mentions 'pre-compiled SYSTEM_ACCOUNT_ERC20_WRAPPER contract' | no |
| 20211117-LeastAuthority.pdf | Neon EVM | unmatched — not counted | — | listed in scope as Rust EVM repository | no |
| 20211117-LeastAuthority.pdf | EVM Loader | unmatched — not counted | — | listed in scope as EVM Loader repository | no |
| 20211117-LeastAuthority.pdf | Proxy Implementation | unmatched — not counted | — | listed in scope as proxy implementation repository | no |
| 20211117-LeastAuthority.pdf | SPL_ERC20_Wrapper | unmatched — not counted | — | mentioned in Suggestion 7 and Suggestion 8 | no |
| 20220916-Halborn.pdf | evm-loader | unmatched — not counted | — | listed in scope section as program in scope | no |
| 20221104-AckeeBlockchain.pdf | neon-evm | unmatched — not counted | — | listed in scope as repository | no |
| 20221104-AckeeBlockchain.pdf | rust-evm | unmatched — not counted | — | listed in scope as repository | no |
| 20221208-Halborn.pdf | evm-loader | unmatched — not counted | — | listed in scope section as program in scope | no |
| 20230607-Neodyme.pdf | Neon | unmatched — not counted | — | Scope section: 'The full main Neon contract (evm_loader), which includes, among other things, the EVM, an Executor, the storage interface, and additional built-in Ethereum programs to interface with Solana.' | no |
| hacken.io/audits/allbridge | Allbridge | unmatched — not counted | — | Project description mentions Allbridge as a token bridge; no specific contracts listed. | no |
| drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view | bridge-core | unmatched — not counted | — | listed as one of 4 smart contracts in scope | no |
| drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view | validator | unmatched — not counted | — | listed as one of 4 smart contracts in scope | no |
| drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view | fee-oracle | unmatched — not counted | — | listed as one of 4 smart contracts in scope | no |
| drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view | wrapped-token | unmatched — not counted | — | listed as one of 4 smart contracts in scope | no |
| www.coinfabrik.com/blog/allbridge-audit-report | bridge | ambiguous — not counted | Bridge (alternative) `0xd5d6b2...5d6fc4` — deployed 2022-12-22 17:15:47+03 — liveness: live (current_address_book_code)<br>Bridge (alternative) `0xd5d6b2...5d6fc4` — deployed 2022-12-22 17:18:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.coinfabrik.com/blog/allbridge-audit-report | i-stx | unmatched — not counted | — | listed in scope | no |
| www.coinfabrik.com/blog/allbridge-audit-report | n-token | unmatched — not counted | — | listed in scope | no |
| www.coinfabrik.com/blog/allbridge-audit-report | w-token | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xd5d6b2...5d6fc4` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 11 |
| standard_library | 4 |
| needs_review | 148 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 23
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 26 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=14
- Match method counts: n/a

Zero-match audit list:

- [1820] drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view
- [9788] 20211105-Neodyme.pdf
- [9789] 20211117-LeastAuthority.pdf
- [9790] 20220916-Halborn.pdf
- [9791] 20221104-AckeeBlockchain.pdf
- [9792] 20221208-Halborn.pdf
- [9793] 20230607-Neodyme.pdf
- [12352] hacken.io/audits/allbridge
- [12354] drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view
- [12355] www.coinfabrik.com/blog/allbridge-audit-report
- [26291] allbridge.medium.com/allbridge-successfully-completes-smart-contract-code-review-by-hacken-82e8497b1d2b
- [26304] drive.google.com/file/d/1lE-zwbrmNgVEDVa5t2pRCo9AiI2vvex3/view
- [26306] drive.google.com/file/d/1gZ2KcBPNM_JC_xstw4_dUYWkJSZRQy7L/view
- [26309] drive.google.com/file/d/1JugtjUUBP7CxlFzgQt4Dntkt2s-URzLH/view
- [26312] drive.google.com/file/d/1teENtaU43DwTxsEtT5m9-Z-3nSHKHPVz/view
- [26316] drive.google.com/file/d/1kxJ4IOIL_qBeg-RYRIU9I53mQF-1cWnb/view
- [26319] drive.google.com/file/d/1tUK-oKF7MAZj-ylZq9RKAzHGiKX2xK-D/view
- [26320] drive.google.com/file/d/1xhWWWO1g9h6XGkxUsfeHybsFen0tCwuV/view
- [26321] drive.google.com/file/d/1Dp0uRpqlWXnPi0oynvd-0mbEg8GhdCH9/view
- [26322] drive.google.com/file/d/1zklH6nN5t-IDVabM_OUHqdawNmlaboX6/view
- [26327] drive.google.com/file/d/1U_lajhCK7RejsS33z6Imc9aBhaDpn2lf/view
- [26329] drive.google.com/file/d/1MCj6XdjHbyHW8_L02PFskHca9_G8xRrA/view
- [26332] drive.google.com/file/d/1JIK5p2r7BBNuDm-Ci8MSVzrYh6VRh0ho/view

Fork inheritance lineage and inherited audits are included when available.
