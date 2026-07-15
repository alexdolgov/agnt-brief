# Agentic Audit Brief: Shadow Exchange

## Export Authority

- Production state: **published scope**
- Raw selected rows: 14 across 3 audit(s)
- Eligible audit results: 4 (3 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Shadow Exchange (`shadow-exchange`)
- Website: [https://www.shadow.so](https://www.shadow.so)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: sonic
- Contract surface: 124 unique implementations (444 raw deployments)
- Coverage basis: 9/30 confirmed own live verified implementations (30.0%); conservative 30.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,440,156.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Shadow Exchange. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 33 contract row(s) across sonic. Structural roles: 14 supporting, 14 unclassified, 4 core, 1 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 33
- Structural roles: supporting (14), unclassified (14), core (4), infra (1)
- Contract kinds: contract (33)
- Detected standards: erc165 (4), erc20 (4), multicall (3), erc20permit (2), erc721 (2), accesscontrol (1), erc1967proxy (1), erc4626 (1), pausable (1)
- Frameworks: openzeppelin (13), permit2 (1), solmate (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

3 of 29 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

**PairFactory** (`0x2da25e...6374c8`, chain 146)
Origin: vfat.io (`0x60b7ec...03a8b6`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**RamsesV3Factory** (`0xcd2d06...8de6d7`, chain 146)
Origin: shadow-exchange (`0x20b770...5d1f5a`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VoteModule** (`0xdcb5a2...b666b4`, chain 146)
Origin: vfat.io (`0xf7a585...13656c`)
Containment: 100.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0e03b0...690dcf`, chain 146)
- UnnamedContract (`0x1a99e5...1b1d74`, chain 146)
- AccessHub2 (`0xc1c7e1...510193`, chain 146)
- FeeDistributorFactory (`0x29adf0...847ff5`, chain 146)
- FeeRecipientFactory (`0x5712bd...bf37c1`, chain 146)
- GaugeFactory (`0x8cf82d...1299e9`, chain 146)
- Gems (`0x5555b2...ee5555`, chain 146)
- GnosisSafeProxy (`0x137f7c...dec218`, chain 146)
- GnosisSafeProxy (`0x5be2e8...553432`, chain 146)
- GnosisSafeProxy (`0x7fdf76...9f3d22`, chain 146)
- LauncherPlugin (`0x3ec4fc...dbfc7f`, chain 146)
- Minter (`0xc7022f...7f3765`, chain 146)
- NonfungiblePositionManager (`0x12e66c...0f4406`, chain 146)
- NonfungiblePositionManager (`0xa57fa3...f1542e`, chain 146)
- NonfungibleTokenPositionDescriptor (`0xdaa4b0...2c4607`, chain 146)
- Quoter (`0x3003b4...d79dc7`, chain 146)
- QuoterV2 (`0x219b7a...07535a`, chain 146)
- Router (`0x1d3687...330cdc`, chain 146)
- Shadow (`0x3333b9...a33333`, chain 146)
- ShadowTimelock (`0x4577d5...83df50`, chain 146)
- SwapRouter (`0x5543c6...e2d695`, chain 146)
- TransparentUpgradeableProxy (`0x5e7a9e...e8e37f`, chain 146)
- TransparentUpgradeableProxy (`0x9f5939...b0062d`, chain 146)
- UniversalRouter (`0x92643d...04a9c2`, chain 146)
- x33 (`0x333311...333333`, chain 146)
- XShadow (`0x5050bc...4b2424`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 33; live-surface rows included: 33 (32 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 31/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/30 (30.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 32 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 92 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 21
- Confirmed-live implementations: 32 of 124 unique; 92 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 9/90
- Verified + Unaudited implementations: 81
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 124
- Raw deployments: 444
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 30.0% (Code4rena, ConsenSys Diligence, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 9 | 10.0% | 2025-10 |
| Code4rena | Tier 1 | 3 | 3.3% | 2024-10 |
| Consensys Diligence | Tier 1 | 2 | 2.2% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessHub2 | unknown | project_anchor | own_supporting | 1 | sonic | unit-392528 | 2 deployments: sonic `0x5e7a9e...e8e37f`; sonic `0xc1c7e1...510193` | ✅ Audited |
| FeeCollector | unknown | project_anchor | own_supporting | 0 | sonic | unit-392518 | `0xcc0365...f8d27f` | ✅ Audited |
| FeeDistributorFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-392503 | `0x29adf0...847ff5` | ✅ Audited |
| GaugeV3 | unknown | project_anchor | own_supporting | 1 | sonic | unit-392524 | `0x452f37...b6968c` | ✅ Audited |
| Minter | unknown | project_anchor | own_supporting | 0 | sonic | unit-392517 | `0xc7022f...7f3765` | ✅ Audited |
| RamsesV3Factory | registry | project_anchor | own_supporting | 0 | sonic | unit-392519 | `0xcd2d06...8de6d7` | ✅ Audited |
| RamsesV3PoolDeployer | unknown | project_anchor | own_supporting | 0 | sonic | unit-392514 | `0x8bbdc1...142d59` | ✅ Audited |
| VoteModule | unknown | project_anchor | own_supporting | 0 | sonic | unit-392521 | `0xdcb5a2...b666b4` | ✅ Audited |
| Voter | unknown | project_anchor | own_supporting | 1 | sonic | unit-392526 | 2 deployments: sonic `0x6393c8...807eca`; sonic `0x9f5939...b0062d` | ✅ Audited |

### ⚠️ Verified + Unaudited (81)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 42 deployments: sonic `0x0a709b...75dc8b`; sonic `0x0d6cd9...8a9e9f`; sonic `0x126803...f9bfe4`; sonic `0x18131c...3b3fab`; sonic `0x2af763...8068d8`; sonic `0x2e9418...9976ba`; sonic `0x352ad7...6e7369`; sonic `0x359d5b...978ca9`; sonic `0x398d76...bd0cec`; sonic `0x4597b6...2bee8e`; sonic `0x45aa6f...828aca`; sonic `0x56d7e8...f97fd7`; sonic `0x573afa...fcc4fa`; sonic `0x57dda5...27642f`; sonic `0x585118...7d88fc`; sonic `0x617a62...302b63`; sonic `0x6b400c...0318a9`; sonic `0x6c26aa...e6264d`; sonic `0x82129f...b31111`; sonic `0x925ba5...c391a4`; sonic `0x95156b...82d143`; sonic `0x96a557...8e61db`; sonic `0x9885e6...f2977b`; sonic `0xa12757...969657`; sonic `0xa9ddae...1b35a4`; sonic `0xaf29cc...c62a35`; sonic `0xb3d0be...d0b397`; sonic `0xb8ca18...3df175`; sonic `0xbb1ed8...7ed298`; sonic `0xbd1a7a...726e01`; sonic `0xbf0630...c4931e`; sonic `0xc051ce...8a1c6d`; sonic `0xc4433c...b2c0b3`; sonic `0xc55c7b...a80d9c`; sonic `0xc89be3...96f444`; sonic `0xcd3632...608cd1`; sonic `0xd87df0...3b8c95`; sonic `0xe4c3dc...dd1522`; sonic `0xe66030...8ed8b5`; sonic `0xe6ae8b...244ced`; sonic `0xebd682...918e80`; sonic `0xee4e01...7007fc` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x23f702...da2fd9`; sonic `0xd230af...b0a13a` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3a9999...bd7cd5`; sonic `0xf5b935...fe73c4` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x45b111...b9fdff`; sonic `0x69e390...f65d9a` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x896e1d...e75f61`; sonic `0xe6fe34...02483d` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x8b109e...f05224`; sonic `0xffee7c...069269` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x97a1c7...aca096`; sonic `0xdd632e...75c664` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x995531...4573d0`; sonic `0xb1ad3f...7e4424` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x9da6da...ac9c84`; sonic `0x9fb974...1e9cd0` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xedd897...26caef`; sonic `0xff78ad...20bc46` | ⚠️ Unaudited |
| AccessHub2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: sonic `0x038e1f...4080b7`; sonic `0x147b1e...825874`; sonic `0x32d6e0...2c941b`; sonic `0x47643a...c300a6`; sonic `0x60b9c3...53b070`; sonic `0x64c24f...7f797f`; sonic `0x662aa9...19f8e5`; sonic `0x980b9f...04b011`; sonic `0xa6ae47...41b817`; sonic `0xb16685...aa4f35`; sonic `0xbff917...9e8545` | ⚠️ Unaudited |
| AccessHubExpansionPack1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 17 deployments: sonic `0x01f6e1...5f3e75`; sonic `0x073fde...46bd08`; sonic `0x0fa569...95043a`; sonic `0x14f98a...804d6b`; sonic `0x222d90...b8bcaa`; sonic `0x4f5ddb...d92f0c`; sonic `0x5739e4...0f49c7`; sonic `0x63966d...6f61f5`; sonic `0x680179...f8e86f`; sonic `0x68aa93...aa95cd`; sonic `0x8fbdb7...3b17d1`; sonic `0xb340d5...e09b60`; sonic `0xbc6177...5f793d`; sonic `0xc01f4d...760f13`; sonic `0xcee3c0...42c088`; sonic `0xd827a4...5c2bf8`; sonic `0xf76bbc...059bce` | ⚠️ Unaudited |
| AccessHubExpansionPackTemp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x30b2c4...41a2a1`; sonic `0x3d4ec7...850fe3`; sonic `0x78f557...5926f4`; sonic `0x861bfa...45970d`; sonic `0x8c56bc...469fad`; sonic `0x92b921...31c78f` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x1edf30...30b76d`; sonic `0x6f6a53...484aef`; sonic `0x9eb5b7...55b4b1`; sonic `0xba5f9a...919ac8` | ⚠️ Unaudited |
| ClGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x38bff9...243470`; sonic `0x9b7e62...2bea1c`; sonic `0x9caf8e...5686e0`; sonic `0xee3168...160116`; sonic `0xf914cc...e8a1a8` | ⚠️ Unaudited |
| CrossAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc7409c...53aaec` | ⚠️ Unaudited |
| DustSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x1817ec...b84965`; sonic `0xa8d15f...60bc9f` | ⚠️ Unaudited |
| EmissionsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x7423e3...c4318e`; sonic `0xa42008...452171`; sonic `0xca4b1a...6c5bb7` | ⚠️ Unaudited |
| EqualizerPerpetualBuyOut | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1d7fdd...46d5b4` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x6a4400...29c9c5`; sonic `0x949e7b...046c0e`; sonic `0xa3c90f...bdd8f7`; sonic `0xbf9ab1...2fa017`; sonic `0xf5228b...cb38a0` | ⚠️ Unaudited |
| FeeDistributorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x14520c...26582d`; sonic `0x292676...f87d47`; sonic `0x5bc32b...83b186`; sonic `0x90e433...cec31c`; sonic `0xa73ff0...eca4bf`; sonic `0xa98a11...f5335a`; sonic `0xcfca4c...72618c`; sonic `0xda5140...5f5c5a`; sonic `0xf0ee36...c6aab2` | ⚠️ Unaudited |
| FeeRecipientFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x178800...5d0acc`; sonic `0x45623b...9690b0`; sonic `0x49607c...cc860d`; sonic `0x5f86d1...4a241b`; sonic `0x75729a...11e17d`; sonic `0x9875f6...d06bf8`; sonic `0xde8db1...3ca699`; sonic `0xe44676...4e4d8f`; sonic `0xeff5fd...47cc51` | ⚠️ Unaudited |
| FeeRecipientFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-392512 | `0x5712bd...bf37c1` | ⚠️ Unaudited |
| FixedRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8b78bb...c8c4a5` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x1903c7...939d22`; sonic `0x3263aa...5ddd85`; sonic `0x57c4c4...86043f`; sonic `0x7b8248...803650`; sonic `0x8bef5e...c434ec`; sonic `0x94a3eb...46d07b`; sonic `0xd37101...496614`; sonic `0xec08a4...0d199f`; sonic `0xf2f565...1bfd15` | ⚠️ Unaudited |
| GaugeFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-392515 | `0x8cf82d...1299e9` | ⚠️ Unaudited |
| GaugeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x3ff637...fbee12`; sonic `0x553ad1...1bdb85` | ⚠️ Unaudited |
| Gems | unknown | project_anchor | own_supporting | 0 | sonic | unit-392511 | `0x5555b2...ee5555` | ⚠️ Unaudited |
| Gems | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x649805...07a9f0` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | sonic | unit-392499 | `0x137f7c...dec218` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | sonic | unit-392513 | `0x7fdf76...9f3d22` | ⚠️ Unaudited |
| LauncherPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x02d833...113c53`; sonic `0x0e192e...7f7c33`; sonic `0x26dd03...c30789`; sonic `0x3ebe65...065967`; sonic `0x5b4e02...5d0f80`; sonic `0x804331...42325e`; sonic `0xb91e35...bf8561`; sonic `0xecdb78...eab6b0`; sonic `0xed5901...a16d78` | ⚠️ Unaudited |
| LauncherPlugin | unknown | project_anchor | own_supporting | 0 | sonic | unit-392508 | `0x3ec4fc...dbfc7f` | ⚠️ Unaudited |
| MarbleMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x109ddd...20faf7`; sonic `0x2ee15b...85c03a`; sonic `0x57551e...5a07db`; sonic `0x923832...298221`; sonic `0xb5e550...9364c2`; sonic `0xeb1dbe...18bd7d` | ⚠️ Unaudited |
| MarbleMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x13f8e3...dfd16c`; sonic `0x2a78f3...2affbf` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x2b0302...289856`; sonic `0x2f7864...639340`; sonic `0x4e3a52...13a752`; sonic `0x635e17...3aa2d8`; sonic `0x71619c...f7f644`; sonic `0x9bc0b2...1a1c46`; sonic `0xa478d8...e01364` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x57cb65...1a7263`; sonic `0x7c2916...5abe76`; sonic `0xbf63dc...ce5a13`; sonic `0xcc83a7...e2cd34`; sonic `0xd464d0...f106d9`; sonic `0xdce360...9ec261` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 13 deployments: sonic `0x002ee6...b00985`; sonic `0x10acce...0bb6d9`; sonic `0x20547b...5e925a`; sonic `0x3b3699...cee8ea`; sonic `0x5f477c...76f847`; sonic `0x8850a3...ad7176`; sonic `0xa3f3b8...4a5866`; sonic `0xa829e3...c87713`; sonic `0xb3154c...89f5df`; sonic `0xbca6a2...3930d7`; sonic `0xd3fdf8...589f2f`; sonic `0xd7e648...91ae8e`; sonic `0xf9f98b...543874` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | sonic | unit-392522 | `0x12e66c...0f4406` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | sonic | unit-392527 | `0xa57fa3...f1542e` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 19 deployments: sonic `0x0d1eda...9df33e`; sonic `0x1a36e8...715e60`; sonic `0x41fa7f...0836fb`; sonic `0x42690d...da664d`; sonic `0x444591...307d3f`; sonic `0x4d28e3...9a657c`; sonic `0x4eaeca...960c29`; sonic `0x60b1b2...2e7b98`; sonic `0x78be3a...2d5390`; sonic `0x7f7f08...3ae6b9`; sonic `0x9a6158...88c4dc`; sonic `0xd54406...04784a`; sonic `0xd9009b...759441`; sonic `0xd98aca...f18561`; sonic `0xdafd97...cc7673`; sonic `0xdb0cf2...97436e`; sonic `0xe2c4bd...22bd09`; sonic `0xf4d700...33e4e1`; sonic `0xfe3244...2d8c4b` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | project_anchor | own_supporting | 0 | sonic | unit-392520 | `0xdaa4b0...2c4607` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x2735e2...238a7d`; sonic `0x99982a...7e00bb` | ⚠️ Unaudited |
| PairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x292da3...a69493`; sonic `0x522f94...146b52`; sonic `0x60b7ec...03a8b6`; sonic `0x8d0f45...ff5c34`; sonic `0xaccf68...3ee652`; sonic `0xcb3e3c...2be924`; sonic `0xd54aa5...a8010c` | ⚠️ Unaudited |
| PairFactory | registry | project_anchor | own_supporting | 0 | sonic | unit-392504 | `0x2da25e...6374c8` | ⚠️ Unaudited |
| PoolUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x01d6f4...861fcd`; sonic `0xd517cc...800328` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x324963...649970` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x705858...1ce145`; sonic `0x891db3...0041de`; sonic `0xb2b28f...be6eec` | ⚠️ Unaudited |
| PythOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x5c63d7...7cf5b2`; sonic `0x88a653...978bca`; sonic `0xf0367d...3bb4d2` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 19 deployments: sonic `0x0960e2...886a0e`; sonic `0x0e3142...d3c09f`; sonic `0x1af8d0...7e41d8`; sonic `0x1ddc80...d265c9`; sonic `0x23645c...2ac521`; sonic `0x34c0d5...22721a`; sonic `0x3f7486...18abf6`; sonic `0x65c3f1...1a25ac`; sonic `0x6696e4...f51769`; sonic `0x6d1cfc...0865fe`; sonic `0x7983e9...6e0cf6`; sonic `0x802bab...98a003`; sonic `0xacf850...4a4580`; sonic `0xad75cf...1dc45f`; sonic `0xbcc69b...5c9500`; sonic `0xd479e3...7f8d7d`; sonic `0xe46f54...a1587c`; sonic `0xf2a751...1e614d`; sonic `0xfc5739...698ae6` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | sonic | unit-392505 | `0x3003b4...d79dc7` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 19 deployments: sonic `0x13819d...6c62ad`; sonic `0x1fa4bb...0efa62`; sonic `0x23151c...b6faf0`; sonic `0x358154...0824fd`; sonic `0x56602b...ee1744`; sonic `0x5b7162...53a1f9`; sonic `0x727618...7b6eab`; sonic `0x7f5134...149bf8`; sonic `0x819bd8...5145ba`; sonic `0x8ebd92...a9fee7`; sonic `0x99e035...24e9dc`; sonic `0xa49d65...41f9b1`; sonic `0xb1e6f4...bbf3fe`; sonic `0xbbf6ed...b0d866`; sonic `0xc260f8...42748b`; sonic `0xced0d4...a526f0`; sonic `0xd2c355...e8eb72`; sonic `0xd3a8b1...ff5da7`; sonic `0xfa2c03...ef5e28` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | sonic | unit-392502 | `0x219b7a...07535a` | ⚠️ Unaudited |
| RamsesV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: sonic `0x209345...6c7f75`; sonic `0x20b770...5d1f5a`; sonic `0x6a216e...fd09e8`; sonic `0x73e326...6297e1`; sonic `0x836821...90aa5b`; sonic `0x9d2dfb...8aeae5`; sonic `0xb24538...886e87`; sonic `0xbc2c66...7e8f7e`; sonic `0xed147b...bb9bef`; sonic `0xed55fa...fdb2dc`; sonic `0xff1a32...7d6356` | ⚠️ Unaudited |
| RamsesV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x092c0b...c8799b`; sonic `0x9053fe...3ee8e7` | ⚠️ Unaudited |
| RamsesV3PoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: sonic `0x04cad8...131ab9`; sonic `0x2207b7...0854d7`; sonic `0x310e97...a2368c`; sonic `0x32f417...7a2344`; sonic `0x4c0a98...bea3b6`; sonic `0x737e6e...3e47da`; sonic `0x9e0115...efe671`; sonic `0xac8928...067a84`; sonic `0xc1747e...d77156`; sonic `0xe6e461...e63d7d`; sonic `0xf04581...0db8c8` | ⚠️ Unaudited |
| RewardClaimers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x684667...ff4082` | ⚠️ Unaudited |
| RewardClaimers2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x1881fc...ba11d5`; sonic `0x54e6ec...c84b98`; sonic `0xf99693...a8b995` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | sonic | unit-392501 | `0x1d3687...330cdc` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x4e0262...0a0a6b`; sonic `0xdedfa6...c51c95`; sonic `0xdfdb9c...aa4217`; sonic `0xe5a4f2...4deff5`; sonic `0xf2079f...0ece7a` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | third_party_dependency | 2 | sonic | unit-392523 (2 proxies) | 2 deployments: sonic `0x5be2e8...553432`; sonic `0x600ad8...5b4de8` | ⚠️ Unaudited |
| Shadow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x299d61...53f950` | ⚠️ Unaudited |
| Shadow | unknown | project_anchor | own_supporting | 0 | sonic | unit-392507 | `0x3333b9...a33333` | ⚠️ Unaudited |
| ShadowGelatoTask | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x14a9bd...e4a699`; sonic `0x654224...f2f11d` | ⚠️ Unaudited |
| ShadowMessageRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x40afbe...b4b717`; sonic `0x422cbe...30764a`; sonic `0x8cceb0...047e04` | ⚠️ Unaudited |
| ShadowTimelock | unknown | project_anchor | own_supporting | 0 | sonic | unit-392509 | `0x4577d5...83df50` | ⚠️ Unaudited |
| Shadrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x1d8c9f...084347`; sonic `0x1e3b05...70ed92`; sonic `0xaf424d...3c5349` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 19 deployments: sonic `0x33f3c9...17838b`; sonic `0x450c8f...fe5578`; sonic `0x46416f...d7acd8`; sonic `0x477da5...4afda3`; sonic `0x5c0230...4322ba`; sonic `0x6c4331...0e69df`; sonic `0x9354e0...d38fb2`; sonic `0x96b83a...62d2f5`; sonic `0x97d93a...feaaa9`; sonic `0xa0f206...ac317d`; sonic `0xa921a4...96ca45`; sonic `0xab419b...9d2543`; sonic `0xccc583...008080`; sonic `0xe11651...e30937`; sonic `0xe63bcc...f22248`; sonic `0xe7d26a...df99c2`; sonic `0xec15b8...6b8fdf`; sonic `0xf047f8...885ce8`; sonic `0xfe1557...76dc2f` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 1 | sonic | unit-392525 | `0x5543c6...e2d695` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | sonic | unit-392497 | `0x095bbc...202e14` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 19 deployments: sonic `0x0e347f...604715`; sonic `0x15d917...dd676d`; sonic `0x2e09d0...07fe6b`; sonic `0x375cce...aa19d1`; sonic `0x4069bf...75c00c`; sonic `0x4d84dc...762933`; sonic `0x4ec026...b0554f`; sonic `0x4eed7b...933cc7`; sonic `0x562c52...124731`; sonic `0x78de12...69cda7`; sonic `0x791ab0...fa016a`; sonic `0x83038d...6b0eb5`; sonic `0x8bfdc3...ee244d`; sonic `0x8e12bc...5d524c`; sonic `0xb3c1f2...8af888`; sonic `0xc710b2...75cce7`; sonic `0xe281ff...c65211`; sonic `0xe88c3c...6bbcde`; sonic `0xf87cd7...a83b47` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x78189f...f57381`; sonic `0xd558d9...0236da` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x18e9c0...e38c73`; sonic `0x7ec314...66a03d`; sonic `0x90b9c2...993a96`; sonic `0xa5ec3f...63b687` | ⚠️ Unaudited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | sonic | unit-392516 | `0x92643d...04a9c2` | ⚠️ Unaudited |
| VoteModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x1bc016...d10f66`; sonic `0x57f518...aca0ef`; sonic `0xf7a585...13656c` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 16 deployments: sonic `0x005a44...5ed32f`; sonic `0x03171a...c644b5`; sonic `0x06d3c0...feca4e`; sonic `0x1172aa...af3513`; sonic `0x199619...6a320f`; sonic `0x1f4e37...4b9335`; sonic `0x27ffc8...f7fdf3`; sonic `0x348d9b...de4d6a`; sonic `0x3af1dd...838f4f`; sonic `0x3cd2ca...28df5d`; sonic `0x702c17...f53562`; sonic `0x80cde6...a507fb`; sonic `0xa3ce58...0d7d2d`; sonic `0xcbc6ff...17055d`; sonic `0xccfda4...c8fdbf`; sonic `0xdafd30...a5b83c` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5d7e87...4af3ad`; sonic `0x8d91c7...6f7777` | ⚠️ Unaudited |
| x33 | unknown | project_anchor | own_supporting | 0 | sonic | unit-392506 | `0x333311...333333` | ⚠️ Unaudited |
| x33Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x0135f5...1fabe5`; sonic `0x8c9df8...ba2186`; sonic `0x9500fe...db50ce`; sonic `0x9710e1...84548d` | ⚠️ Unaudited |
| XShadow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x13944a...7b4d84`; sonic `0x8a756e...f85448` | ⚠️ Unaudited |
| XShadow | unknown | project_anchor | own_supporting | 0 | sonic | unit-392510 | `0x5050bc...4b2424` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x016bca...483570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x035476...96d773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x06a18e...e099ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392498 | `0x0e03b0...690dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x16f786...5f2829` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392500 | `0x1a99e5...1b1d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ee369...9f7afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x24ad57...9546b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x276e9c...ec77dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x294098...a0a39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2d619f...fc57a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x35456f...7c46f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4b96c9...c9e232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4ce364...01c4cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4e70f2...47f62d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x508a83...1e0fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x62e93a...088c29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6369e8...47fa9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6dc606...92f785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x83489c...cdfe5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x895377...128232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa03dfc...c90b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa5cfbb...7574e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa4796...816b70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb0fceb...676085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb71fb3...b53ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xba62b2...5e8ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbfacb5...470325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc1857e...b0155c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc66ca3...b92e67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc9b0c7...40f160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcf0d4c...61dd1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xda4329...d65fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xede959...fbfcbd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e](https://cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | matched | 10 | 4 | 0 | 15 | high |
| [cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [diligence.security/audits/2024/08/ramses-v3](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | 2024-08 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [code4rena.com/reports/2024-10-ramses-exchange](https://code4rena.com/reports/2024-10-ramses-exchange) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | matched | 3 | 1 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2501] cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e — matched: Extracted contract names from findings and file paths mentioned in the report. No explicit scope section found, but contracts are clearly referenced as part of the audited codebase.
- [2502] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c — no match: No scope section or contract names found in the provided text.
- [2503] diligence.security/audits/2024/08/ramses-v3 — matched: The audit report explicitly lists six contracts in scope: RamsesV3PoolDeployer, RamsesV3Factory, RamsesV3Pool, Oracle, Tick, and Position. The audit was conducted from July to September 2024, with the extension into September, so the end date is September 30, 2024.
- [15349] code4rena.com/reports/2024-10-ramses-exchange — matched: Extracted 6 contracts from scope and findings. Audit date from report title.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | AccessHub | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5e7a9e...e8e37f` — deployed 2024-12-27 05:22:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | ClGaugeFactory | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x452f37...b6968c` — deployed 2025-02-26 12:46:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | ClGaugeFactoryStorage | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Etherex | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeCollector | own contract | FeeCollector (selected) `0xcc0365...f8d27f` — deployed 2025-01-15 22:06:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeDistributor | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeDistributorFactory | own contract | FeeDistributorFactory (selected) `0x29adf0...847ff5` — deployed 2025-01-15 20:56:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Gauge | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | GaugeV3 | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x452f37...b6968c` — deployed 2025-02-26 12:46:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Minter | own contract | Minter (selected) `0xc7022f...7f3765` — deployed 2025-01-15 20:56:14+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | NonfungiblePositionManager | ambiguous — not counted | NonfungiblePositionManager (proxy) (alternative) `0xa57fa3...f1542e` — deployed 2024-12-27 05:34:40+03 — liveness: live (current_address_book_code)<br>NonfungiblePositionManager (proxy) (alternative) `0x12e66c...0f4406` — deployed 2025-01-01 11:07:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Pair | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | PositionKey | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesTreasuryHelper | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xcd2d06...8de6d7` — deployed 2024-12-27 05:25:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3Pool | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3PoolDeployer | own contract | RamsesV3PoolDeployer (selected) `0x8bbdc1...142d59` — deployed 2024-12-27 05:25:16+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3PositionManager | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | REX33 | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RewardValidator | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | VoteModule | own contract | VoteModule (selected) `0xdcb5a2...b666b4` — deployed 2025-01-15 21:35:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Voter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x9f5939...b0062d` — deployed 2025-02-26 12:46:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | VoterGovernanceActions | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | VoterStorage | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | XRex | unmatched — not counted | — | mentioned in findings | no |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3PoolDeployer | own contract | RamsesV3PoolDeployer (selected) `0x8bbdc1...142d59` — deployed 2024-12-27 05:25:16+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xcd2d06...8de6d7` — deployed 2024-12-27 05:25:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Pool | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Oracle | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Tick | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Position | unmatched — not counted | — | listed in scope section | no |
| code4rena.com/reports/2024-10-ramses-exchange | GaugeV3 | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x452f37...b6968c` — deployed 2025-02-26 12:46:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Pool | unmatched — not counted | — | Listed in scope and mentioned in findings. | no |
| code4rena.com/reports/2024-10-ramses-exchange | FeeCollector | own contract | FeeCollector (selected) `0xcc0365...f8d27f` — deployed 2025-01-15 22:06:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xcd2d06...8de6d7` — deployed 2024-12-27 05:25:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | NonfungiblePositionManager | ambiguous — not counted | NonfungiblePositionManager (proxy) (alternative) `0xa57fa3...f1542e` — deployed 2024-12-27 05:34:40+03 — liveness: live (current_address_book_code)<br>NonfungiblePositionManager (proxy) (alternative) `0x12e66c...0f4406` — deployed 2025-01-01 11:07:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2024-10-ramses-exchange | Oracle | unmatched — not counted | — | Referenced in code and findings as Oracle library. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x5712bd...bf37c1` | FeeRecipientFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x8cf82d...1299e9` | GaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5555b2...ee5555` | Gems | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3ec4fc...dbfc7f` | LauncherPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x12e66c...0f4406` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa57fa3...f1542e` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xdaa4b0...2c4607` | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x2da25e...6374c8` | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3003b4...d79dc7` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x219b7a...07535a` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x1d3687...330cdc` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3333b9...a33333` | Shadow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x4577d5...83df50` | ShadowTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5543c6...e2d695` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x095bbc...202e14` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x92643d...04a9c2` | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x333311...333333` | x33 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5050bc...4b2424` | XShadow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 85 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 15 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 20 unmatched
- Matched-own operational status: 15 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=14

Zero-match audit list:

- [2502] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c

Fork inheritance lineage and inherited audits are included when available.
