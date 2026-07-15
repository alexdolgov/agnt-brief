# Agentic Audit Brief: Credit Coop

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

- Project: Credit Coop (`credit-coop`)
- Website: [https://www.creditcoop.xyz/](https://www.creditcoop.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, ethereum
- Contract surface: 58 unique implementations (278 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,628,036.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Credit Coop. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, avalanche, base, ethereum. Structural roles: 6 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (6), unclassified (1)
- Contract kinds: contract (7)
- Detected standards: accesscontrol (4), erc165 (4), erc20 (4), erc4626 (4), pausable (4), ownable (2)
- Frameworks: openzeppelin (6), chainlink (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 25 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x035a87...86fa77`, chain 1)
- UnnamedContract (`0x23b631...313225`, chain 1)
- UnnamedContract (`0x433e41...8cb6db`, chain 1)
- UnnamedContract (`0x507e5d...bc89aa`, chain 1)
- UnnamedContract (`0x5e332f...f3b7bc`, chain 1)
- UnnamedContract (`0x60c178...30be6c`, chain 1)
- UnnamedContract (`0x671b5b...c9fe0e`, chain 1)
- UnnamedContract (`0xb21eaf...097919`, chain 1)
- UnnamedContract (`0xc26a6f...84f99c`, chain 1)
- UnnamedContract (`0xc40fbb...b1c9a2`, chain 1)
- UnnamedContract (`0xc61694...7ec94a`, chain 1)
- UnnamedContract (`0xf65c1f...42f6f4`, chain 1)
- UnnamedContract (`0x61a860...ae47d4`, chain 8453)
- UnnamedContract (`0xc4ab61...6c84ca`, chain 8453)
- UnnamedContract (`0xd7c718...943c08`, chain 8453)
- UnnamedContract (`0xdfb94d...692001`, chain 8453)
- UnnamedContract (`0xa22ba4...de8b14`, chain 42161)
- UnnamedContract (`0xc6df25...c871be`, chain 43114)
- LendingVault (`0x6c99a7...e01dbc`, chain 1)
- LendingVault (`0x6dacaf...88b623`, chain 1)
- LendingVault (`0x0cf11a...5fcf9d`, chain 8453)
- LendingVault (`0x214699...dc85ce`, chain 8453)
- LiquidStrategy (`0x6df7ff...9d11f5`, chain 1)
- LiquidStrategy (`0x57184d...627e56`, chain 8453)
- LiquidStrategy (`0xe2c119...1ce960`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 33 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 25 of 58 unique; 33 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 58
- Raw deployments: 278
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

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CreditPositionToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: ethereum `0xd2332a...4b695f`; base `0x0284fc...90b4df`; base `0x1aea7f...c7d79e`; base `0x214931...3c18cd`; base `0x30cd72...c9e8bf`; base `0x4579de...20fa71`; base `0x9fe9c2...4168a3`; base `0xa8ab7b...094387`; base `0xc0c398...1cc1e4`; base `0xd05993...97324a`; base `0xd4bb7a...9f6b41` | ⚠️ Unaudited |
| CreditStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8c65c...beef6d` | ⚠️ Unaudited |
| ERC7540Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 31 deployments: ethereum `0xd66faf...a46d52`; base `0x0470a0...73c244`; base `0x0b9c1f...297ec0`; base `0x1080ea...f4a320`; base `0x2384d9...efd2b3`; base `0x25a353...5b5e36`; base `0x274946...0ef784`; base `0x2ba7ee...84d289`; base `0x45da94...092c3f`; base `0x5f7f31...50bb6a`; base `0x71a1b3...0797cd`; base `0x71f6cf...d477dd`; base `0x73a6aa...8b6b8a`; base `0x7ac259...7b1197`; base `0x958341...02ae8f`; base `0x95dd2b...d97648`; base `0x9c59ae...ccdd6a`; base `0x9d25a8...20e966`; base `0x9fb590...4245a8`; base `0xa3b3cf...980d1d`; base `0xab31e0...dfdf1e`; base `0xbdb43e...477af3`; base `0xc256e5...6bd4ca`; base `0xd2332a...4b695f`; base `0xd66faf...a46d52`; base `0xded99b...1c6fbc`; base `0xe0e100...3bdc32`; base `0xe32cba...033646`; base `0xed86f2...5df038`; base `0xf1a5cb...15b432`; base `0xf5e07e...d46a19` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x55e3ac...2c4493`; base `0xb2a475...388f53`; base `0xd3ac49...aabe85` | ⚠️ Unaudited |
| EscrowFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 34 deployments: ethereum `0x144b88...bf5ce8`; ethereum `0x3e420b...449ed7`; base `0x0d9b66...80edc7`; base `0x1a0a22...7a0975`; base `0x1c7203...c61f75`; base `0x21d2e6...f25c62`; base `0x2238ee...32b1eb`; base `0x233b9f...bd2caf`; base `0x2492ef...e09b06`; base `0x3519ae...d51471`; base `0x37441d...b0a1ce`; base `0x3b3457...4fd248`; base `0x3e420b...449ed7`; base `0x41607e...3e6368`; base `0x456821...accd03`; base `0x4c011e...338825`; base `0x77757b...80e638`; base `0x7a92eb...f49f22`; base `0x7d3bf7...cc53d7`; base `0x90c19b...089c9c`; base `0x928ea9...032c33`; base `0x937d68...63e996`; base `0x970011...9f72a9`; base `0x9e2141...b159f0`; base `0xa1f054...9d0fa1`; base `0xa526e7...b48d15`; base `0xa86c84...2a48c9`; base `0xacf001...6b5028`; base `0xb52eb2...966a66`; base `0xdf6839...e288df`; base `0xe7cc1a...ceaac6`; base `0xf9d715...36a7e4`; base `0xfa164a...2c5226`; base `0xfc3119...b4b535` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x833589...a02913` | ⚠️ Unaudited |
| LaaSEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0484a9...925f46`; base `0x3182c0...0d2359`; base `0xd6d28b...32cde4` | ⚠️ Unaudited |
| LendingVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-382505 | `0x6c99a7...e01dbc` | ⚠️ Unaudited |
| LendingVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-382507 | `0x6dacaf...88b623` | ⚠️ Unaudited |
| LendingVault | core_logic | project_anchor | own_supporting | 0 | base | unit-382526 | `0x0cf11a...5fcf9d` | ⚠️ Unaudited |
| LendingVault | core_logic | project_anchor | own_supporting | 0 | base | unit-382528 | `0x214699...dc85ce` | ⚠️ Unaudited |
| LendingVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 29 deployments: ethereum `0xecfd3e...a6fa63`; base `0x025bf5...244eea`; base `0x059c04...00b478`; base `0x0ee193...e324f4`; base `0x1506de...f69fdc`; base `0x1bf220...c0065a`; base `0x1c4226...ebf83d`; base `0x2063cc...cf54f3`; base `0x267772...3db0a3`; base `0x2b721a...e70102`; base `0x30b0af...6e3834`; base `0x32ccda...6b88dc`; base `0x38aad4...10d76c`; base `0x3f7a44...dbab23`; base `0x445b79...f02801`; base `0x49069e...8c57a3`; base `0x49cb1b...0d7512`; base `0x58f9e6...5089f3`; base `0x62d506...840e61`; base `0x6df7ff...9d11f5`; base `0x7894ff...e43e20`; base `0xab2891...f4abd4`; base `0xb53d9a...7c4e59`; base `0xb8e364...ec6e8c`; base `0xb95458...b46326`; base `0xbabd23...016d87`; base `0xe7d9b5...dd6b5e`; base `0xecfd3e...a6fa63`; base `0xf6b443...e52221` | ⚠️ Unaudited |
| LineFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 32 deployments: ethereum `0x353aa8...97bcf7`; ethereum `0xfff5ff...4080e7`; base `0x0dd377...513b55`; base `0x1b15e1...d473ca`; base `0x1e4301...ba00e6`; base `0x315b46...445a47`; base `0x343810...ab5a6c`; base `0x383cd8...08bf7b`; base `0x3ef727...09b6ca`; base `0x540766...e24bde`; base `0x589f19...5730b9`; base `0x5e14f4...a7eda4`; base `0x5fcce8...a8b3b2`; base `0x6bc836...74ff5e`; base `0x72ffee...4fab76`; base `0x73cb72...f3b812`; base `0x74cca1...f6043d`; base `0x7ebc84...a3497a`; base `0x87d33e...c1a596`; base `0x94d43a...bb178a`; base `0x9e8934...7a2f2a`; base `0xae240a...e3cefb`; base `0xba1926...77ec27`; base `0xd13e9f...d7820e`; base `0xebd351...58f4a0`; base `0xf2080a...f44628`; base `0xf53939...5f105f`; base `0xf6befd...05f5fb`; base `0xf95a56...014c7b`; base `0xf9b32c...f7fd79`; base `0xfebf92...43b895`; base `0xfff5ff...4080e7` | ⚠️ Unaudited |
| LiquidStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382509 | `0x6df7ff...9d11f5` | ⚠️ Unaudited |
| LiquidStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: ethereum `0x11eee9...be8a59`; ethereum `0xd462e8...87ac14`; base `0x07aaed...5827dc`; base `0x402c6b...3489e5`; base `0x43e7f9...e13a50`; base `0x454747...753f1e`; base `0x49577d...48b175`; base `0x7707f5...0fe982`; base `0x9ee0f8...0a292f`; base `0xa0e8ab...51585a`; base `0xbeb0ab...cc1263`; base `0xf9adb7...c8f9cb` | ⚠️ Unaudited |
| LiquidStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-382530 | `0x57184d...627e56` | ⚠️ Unaudited |
| LiquidStrategy | core_logic | project_anchor | own_supporting | 0 | base | unit-382539 | `0xe2c119...1ce960` | ⚠️ Unaudited |
| OnlyOwnersGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cdc14...6f0699` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 32 deployments: ethereum `0x6315b9...2e8757`; base `0x009409...edb6f1`; base `0x1b3228...e06712`; base `0x267ec4...7a0724`; base `0x2e18fa...291254`; base `0x2e2666...a3524b`; base `0x42e929...6e03dd`; base `0x500d81...4d6356`; base `0x533fd8...4c10f2`; base `0x5471bc...a3d92c`; base `0x551f35...a9bf67`; base `0x576f48...888fa1`; base `0x5f5c37...7887bd`; base `0x60e4a5...9ea40e`; base `0x611cf3...a822de`; base `0x6315b9...2e8757`; base `0x6b7d59...37e075`; base `0x700897...ed24d7`; base `0x7b1f3d...ed281d`; base `0x83c8b6...6c9769`; base `0x87d267...5ab98c`; base `0x928405...7c4c1a`; base `0x9bf3d9...5fcaa7`; base `0xab0837...aef03e`; base `0xb35a58...9e34cc`; base `0xce9503...29f377`; base `0xd19d2b...8bc2b0`; base `0xd38649...dbcfd2`; base `0xdacae6...f740ee`; base `0xe76b73...64e93a`; base `0xe8603d...62c4e2`; base `0xf0dfbc...38a89e` | ⚠️ Unaudited |
| SimpleBorrowerContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x42873a...b07144`; base `0x46271d...39dafd`; base `0x9f7de3...be99fc`; base `0xa2cf48...08ab14`; base `0xf658cc...57f01f` | ⚠️ Unaudited |
| SingleAssetStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x263dbf...ac07ba`; base `0x3aa8ac...adc241`; base `0x4349c6...36d348`; base `0xacf337...528759` | ⚠️ Unaudited |
| SpigotFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 33 deployments: ethereum `0xc37af9...92173b`; ethereum `0xc779aa...7a1643`; base `0x184243...88af68`; base `0x20d65c...f1d9ca`; base `0x221061...1cafb9`; base `0x26481d...e36406`; base `0x30561f...0314fc`; base `0x32b810...eda5fb`; base `0x32d7e1...512d5c`; base `0x360b33...c35ae0`; base `0x3ae964...c870bc`; base `0x44a4e6...b62b2c`; base `0x5ccfae...26cf7e`; base `0x6654e7...b8ac33`; base `0x6766e3...b4f772`; base `0x72c9c2...f2db0c`; base `0x74ec9f...ac876e`; base `0x798a77...3970ea`; base `0x7d3959...dbcdd2`; base `0x7dd346...c7962c`; base `0x88a29e...557081`; base `0x8c9a12...95eb8e`; base `0x9fe92f...76cb12`; base `0xa5de6e...32f34e`; base `0xac1cc0...f4ca1c`; base `0xad7c7f...6f6aae`; base `0xb5545b...0fc9ae`; base `0xc37971...33660c`; base `0xc71df3...cdfe8f`; base `0xc779aa...7a1643`; base `0xd04995...5dedb2`; base `0xe86cbd...2c9b20`; base `0xf2a335...d86e0b` | ⚠️ Unaudited |
| StableSwapAboveThreshold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3ad165...05415a`; ethereum `0xcdb3eb...3ce07c` | ⚠️ Unaudited |
| StableSwapGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3429ce...41ef59`; ethereum `0xb2275b...694bbd`; ethereum `0xde7251...d2b5a4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382489 | `0x035a87...86fa77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382492 | `0x23b631...313225` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382494 | `0x433e41...8cb6db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382496 | `0x507e5d...bc89aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382498 | `0x5e332f...f3b7bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382501 | `0x60c178...30be6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382503 | `0x671b5b...c9fe0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382512 | `0xb21eaf...097919` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382513 | `0xc26a6f...84f99c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382515 | `0xc40fbb...b1c9a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382517 | `0xc61694...7ec94a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382520 | `0xf65c1f...42f6f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b4105...9ff4c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1fd26a...18d81d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x293498...c19320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x326d4f...33ff0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5365bb...a3566f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5591ed...a3bf47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382532 | `0x61a860...ae47d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x717f1f...2eea72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7951f9...1182bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9dbee9...f277e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa56e4d...af16a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb76964...f949e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf2d49...b1d72e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382534 | `0xc4ab61...6c84ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382536 | `0xd7c718...943c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf655b...e7761a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382537 | `0xdfb94d...692001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf1baa8...09acb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3db1b...76a9c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382522 | `0xa22ba4...de8b14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-382524 | `0xc6df25...c871be` | ❓ Unverified |

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
| ethereum | `0x6c99a7...e01dbc` | LendingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6dacaf...88b623` | LendingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0cf11a...5fcf9d` | LendingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x214699...dc85ce` | LendingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6df7ff...9d11f5` | LiquidStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x57184d...627e56` | LiquidStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe2c119...1ce960` | LiquidStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 33 |

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
