# Agentic Audit Brief: Brotocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 4 audit(s)
- Eligible audit results: 14 (4 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Brotocol (`brotocol`)
- Website: [https://brotocol.xyz/](https://brotocol.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ailayer, arbitrum, avalanche, base, bsc, ethereum, linea, merlin, mode, sepolia
- Contract surface: 145 unique implementations (260 raw deployments)
- Coverage basis: 2/81 confirmed own live verified implementations (2.5%); conservative 2.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $707,392.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Brotocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 86 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, linea, merlin, mode, sepolia. Structural roles: 38 unclassified, 32 supporting, 16 core. 13 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 86
- Structural roles: unclassified (38), supporting (32), core (16)
- Contract kinds: contract (86)
- Detected standards: ownable (24), erc165 (23), erc20 (21), accesscontrol (18), pausable (18), erc1967proxy (4), erc20permit (1)
- Frameworks: openzeppelin (40), openzeppelin-upgradeable (5)
- Upgradeable-pattern rows: 13

## Fork Analysis

0 of 59 contracts are derived from known codebases. 59 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2260fa...c2c599`, chain 1)
- UnnamedContract (`0x514910...f986ca`, chain 1)
- UnnamedContract (`0x698250...311933`, chain 1)
- UnnamedContract (`0xc02aaa...756cc2`, chain 1)
- UnnamedContract (`0xd31a59...71b89c`, chain 1)
- UnnamedContract (`0xdac17f...831ec7`, chain 1)
- UnnamedContract (`0xe0f63a...b2c56c`, chain 1)
- UnnamedContract (`0x2170ed...f933f8`, chain 56)
- UnnamedContract (`0x25d887...aebb00`, chain 56)
- UnnamedContract (`0x88af5f...20d66c`, chain 43114)
- UnnamedContract (`0xd96f5d...26a060`, chain 43114)
- BEP20Token (`0x7130d2...3ead9c`, chain 56)
- BEP20USDT (`0x55d398...197955`, chain 56)
- BridgeEndpoint (`0xa18d96...b2aac9`, chain 34443)
- BridgeEndpointWithSwap (`0xb1c34a...31c94d`, chain 1)
- BridgeEndpointWithSwap (`0x529871...840092`, chain 56)
- BridgeEndpointWithSwap (`0x18c05e...438fa7`, chain 8453)
- BridgeEndpointWithSwap (`0x7a5912...3a5baf`, chain 42161)
- BridgeEndpointWithSwap (`0x0f38ed...80ce03`, chain 59144)
- BridgeToken (`0x31761a...233b0b`, chain 1)
- BridgeToken (`0x80074f...dfb7cd`, chain 1)
- BridgeToken (`0xa831a4...703f37`, chain 1)
- BridgeToken (`0x0f38ed...80ce03`, chain 56)
- BridgeToken (`0x18c05e...438fa7`, chain 56)
- BridgeToken (`0x2e512b...02cbc8`, chain 56)
- BridgeToken (`0x7a087e...5eafe0`, chain 8453)
- BridgeToken (`0x707272...b257e2`, chain 34443)
- BridgeToken (`0x7a087e...5eafe0`, chain 34443)
- BridgeToken (`0xd0d1b5...7b192a`, chain 34443)
- BridgeToken (`0xdfd066...8caf71`, chain 34443)
- BridgeToken (`0x7a087e...5eafe0`, chain 42161)
- BridgeToken (`0xa831a4...703f37`, chain 42161)
- BridgeToken (`0xdfd066...8caf71`, chain 42161)
- BridgeToken (`0x152b9d...943e50`, chain 43114)
- BridgeToken (`0x49d5c2...c10bab`, chain 43114)
- BridgeToken (`0x7a087e...5eafe0`, chain 59144)
- BridgeToken (`0xdfd066...8caf71`, chain 59144)
- ClonableBeaconProxy (`0x2f2a25...fc5b0f`, chain 42161)
- ClonableBeaconProxy (`0xf97f4d...539fb4`, chain 42161)
- ERC20BridgeToken (`0x5e0e90...21fb59`, chain 43114)
- FiatTokenProxy (`0x833589...a02913`, chain 8453)
- FiatTokenProxy (`0xcbb7c0...ed33bf`, chain 8453)
- FiatTokenProxy (`0xaf88d0...8e5831`, chain 42161)
- FiatTokenProxy (`0xb97ef9...c48a6e`, chain 43114)
- MigrateToken (`0x430637...6cd41e`, chain 1)
- MultisigWallet (`0x65dfac...394090`, chain 1)
- MultisigWallet (`0x430637...6cd41e`, chain 56)
- MultisigWallet (`0xf162b6...facf44`, chain 8453)
- MultisigWallet (`0xf162b6...facf44`, chain 34443)
- MultisigWallet (`0xf162b6...facf44`, chain 42161)
- MultisigWallet (`0x62f7d5...81e79c`, chain 43114)
- MultisigWallet (`0x3280a4...649f37`, chain 59144)
- PepeToken (`0x25d887...aebb00`, chain 42161)
- TBTC (`0x18084f...d93a88`, chain 1)
- TeamToken (`0x9bf543...defe3c`, chain 56)
- Token (`0x795d27...6703f3`, chain 56)
- TransparentUpgradeableProxy (`0x82af49...3fbab1`, chain 42161)
- WAVAX (`0xb31f66...fd66c7`, chain 43114)
- WETH9 (`0x420000...000006`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 86; live-surface rows included: 86 (82 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 92/185 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/81 (2.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 92 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 92 of 145 unique; 53 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/97
- Verified + Unaudited implementations: 95
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 145
- Raw deployments: 260
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 6 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CoinFabrik | Tier 2 | 2 | 2.1% | 2025-05 |
| Defence (Thesis) | Tier 2 | 1 | 1.0% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeEndpoint | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-231237 | `0xa18d96...b2aac9` | ✅ Audited |
| BridgeRegistry | unknown | project_anchor | own_supporting | 0 | mode | unit-231236 | `0x88af5f...20d66c` | ✅ Audited |

### ⚠️ Verified + Unaudited (95)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| aeWETH | token | project_anchor | own_supporting | 1 | arbitrum | unit-231301 | `0x82af49...3fbab1` | ⚠️ Unaudited |
| BatchTokenSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15ee5...91fa37` | ⚠️ Unaudited |
| BEP20LINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a0bf...1a51bd` | ⚠️ Unaudited |
| BEP20Token | token | project_anchor | own_supporting | 0 | bsc | unit-231271 | `0x7130d2...3ead9c` | ⚠️ Unaudited |
| BEP20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BEP20USDT | token | project_anchor | own_supporting | 0 | bsc | unit-231269 | `0x55d398...197955` | ⚠️ Unaudited |
| BridgeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x7062db...5d8711`; bsc `0x7062db...5d8711`; base `0xf99f62...88fc24`; mode `0xf99f62...88fc24`; arbitrum `0xf99f62...88fc24`; linea `0xf99f62...88fc24` | ⚠️ Unaudited |
| BridgeConfig | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-231170 | `0x79d1c9...b38e8a` | ⚠️ Unaudited |
| BridgeEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 18 deployments: ethereum `0x1c5ac4...fe38ea`; ethereum `0x4a5ccd...07340a`; ethereum `0x84254d...ce4547`; ethereum `0x9883fa...1ca925`; bsc `0x13b72a...626673`; bsc `0x2aed35...938430`; bsc `0xa18d96...b2aac9`; bsc `0xb17192...b369e7`; bsc `0xd851f6...e98661`; bsc `0xf4a617...273730`; base `0x79d1c9...b38e8a`; base `0xf6af0a...d6b600`; mode `0x79d1c9...b38e8a`; arbitrum `0x79d1c9...b38e8a`; arbitrum `0xc13a12...edcacb`; linea `0x790cd0...19edef`; linea `0x79d1c9...b38e8a`; linea `0xf6af0a...d6b600` | ⚠️ Unaudited |
| BridgeEndpointWithSwap | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-231135 | `0x1a86ff...c56ce5` | ⚠️ Unaudited |
| BridgeEndpointWithSwap | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231192 | `0xb1c34a...31c94d` | ⚠️ Unaudited |
| BridgeEndpointWithSwap | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-231268 | `0x529871...840092` | ⚠️ Unaudited |
| BridgeEndpointWithSwap | operational_periphery | project_anchor | own_supporting | 0 | base | unit-231289 | `0x18c05e...438fa7` | ⚠️ Unaudited |
| BridgeEndpointWithSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 37 deployments: ethereum `0x2df927...3d4ee4`; ethereum `0xb304ec...59e638`; ethereum `0xb89873...ae3f78`; ethereum `0xde8d0c...3dd35b`; ethereum `0xe79097...f9ef2c`; ethereum `0xf28f38...885028`; bsc `0x2543df...ea89d6`; bsc `0x3a7506...a399a7`; bsc `0x46b20f...fc6379`; bsc `0x4a1a70...6a5f7f`; bsc `0x82d25b...4b2aab`; bsc `0x99b034...34a2c3`; bsc `0xb75231...316a15`; bsc `0xc355e2...3a1334`; base `0x10eecc...aee32e`; base `0x144b42...432318`; base `0x916e5d...ed21cb`; base `0xa6420e...3531bb`; base `0xd15b99...81520d`; base `0xd89940...bef1ad`; base `0xe80e0c...f13e7e`; arbitrum `0x0d3c78...a6cf07`; arbitrum `0x31761a...233b0b`; arbitrum `0x430637...6cd41e`; arbitrum `0x4a5ccd...07340a`; arbitrum `0x73f0f5...217138`; arbitrum `0x916e5d...ed21cb`; arbitrum `0x9df50c...5a8522`; arbitrum `0xa18d96...b2aac9`; arbitrum `0xce83dd...0970cb`; linea `0x10eecc...aee32e`; linea `0x144b42...432318`; linea `0x4869f4...2f480c`; linea `0x87e352...e78fe5`; linea `0xa5171f...6f1c9e`; linea `0xd491f2...7bcac9`; linea `0xf4a617...273730` | ⚠️ Unaudited |
| BridgeEndpointWithSwap | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231247 | `0x7a5912...3a5baf` | ⚠️ Unaudited |
| BridgeEndpointWithSwap | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-231278 | `0x0f38ed...80ce03` | ⚠️ Unaudited |
| BridgeRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231130 | `0x13b72a...626673` | ⚠️ Unaudited |
| BridgeRegistry | unknown | project_anchor | own_supporting | 0 | bsc | unit-231277 | `0xffda60...61e7f5` | ⚠️ Unaudited |
| BridgeRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-231293 | `0x88af5f...20d66c` | ⚠️ Unaudited |
| BridgeRegistry | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231248 | `0x88af5f...20d66c` | ⚠️ Unaudited |
| BridgeRegistry | unknown | project_anchor | own_supporting | 0 | linea | unit-231283 | `0x88af5f...20d66c` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231142 | `0x2aed35...938430` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231146 | `0x31761a...233b0b` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231153 | `0x51cda8...992d94` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231167 | `0x73f0f5...217138` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231174 | `0x7d4de6...dd1d9d` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231175 | `0x80074f...dfb7cd` | ⚠️ Unaudited |
| BridgeToken | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-231187 | `0xa5171f...6f1c9e` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231189 | `0xa831a4...703f37` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-231261 | `0x0f38ed...80ce03` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-231262 | `0x18c05e...438fa7` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-231265 | `0x2e512b...02cbc8` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-231266 | `0x305a85...9a6ee9` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-231270 | `0x5879cd...11b231` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-231273 | `0x916a82...39c81d` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-231276 | `0xdfd066...8caf71` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | base | unit-231291 | `0x707272...b257e2` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | base | unit-231292 | `0x7a087e...5eafe0` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | base | unit-231294 | `0x9e801c...914072` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | base | unit-231295 | `0xa831a4...703f37` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | base | unit-231296 | `0xcd5ed0...fba378` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | base | unit-231297 | `0xdfd066...8caf71` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | mode | unit-231233 | `0x0d3c78...a6cf07` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-231234 | `0x707272...b257e2` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-231235 | `0x7a087e...5eafe0` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | mode | unit-231238 | `0xa831a4...703f37` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | mode | unit-231239 | `0xcd5ed0...fba378` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-231240 | `0xd0d1b5...7b192a` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | mode | unit-231241 | `0xd15b99...81520d` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-231242 | `0xdfd066...8caf71` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231245 | `0x707272...b257e2` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231246 | `0x7a087e...5eafe0` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231249 | `0xa831a4...703f37` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231250 | `0xab01bb...b560c5` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231251 | `0xcd5ed0...fba378` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231252 | `0xdfd066...8caf71` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-231254 | `0x152b9d...943e50` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 24 deployments: bsc `0x858d1d...07d38b`; bsc `0xcd5ed0...fba378`; base `0xc13a12...edcacb`; base `0xce83dd...0970cb`; base `0xe67640...33291d`; arbitrum `0x7baa28...d07113`; arbitrum `0xe67d6d...351bb0`; avalanche `0x19860c...8dde98`; avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-231255 | `0x49d5c2...c10bab` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | linea | unit-231279 | `0x24a44c...aa29a7` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | linea | unit-231281 | `0x707272...b257e2` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-231282 | `0x7a087e...5eafe0` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | linea | unit-231284 | `0x9e801c...914072` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | linea | unit-231285 | `0xa831a4...703f37` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | linea | unit-231286 | `0xcd5ed0...fba378` | ⚠️ Unaudited |
| BridgeToken | unknown | project_anchor | own_supporting | 0 | linea | unit-231287 | `0xce83dd...0970cb` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-231288 | `0xdfd066...8caf71` | ⚠️ Unaudited |
| ERC20BridgeToken | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-231256 | `0x5e0e90...21fb59` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | project_anchor | own_supporting | 1 | base | unit-231304 | `0xcbb7c0...ed33bf` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3fa3d...314890` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | base | unit-231303 | `0x833589...a02913` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | arbitrum | unit-231300 | `0xaf88d0...8e5831` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | avalanche | unit-231302 | `0xb97ef9...c48a6e` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x223039...ed52e1`; avalanche `0xb7887f...82341a` | ⚠️ Unaudited |
| MigrateToken | token | project_anchor | own_supporting | 0 | ethereum | unit-231150 | `0x430637...6cd41e` | ⚠️ Unaudited |
| MigrateToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-231275 | `0xd15b99...81520d` | ⚠️ Unaudited |
| MigrateTokenBOBFusionS1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231188 | `0xa6420e...3531bb` | ⚠️ Unaudited |
| MultisigWallet | governance | project_anchor | own_supporting | 0 | ethereum | unit-231161 | `0x65dfac...394090` | ⚠️ Unaudited |
| MultisigWallet | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-231222 | `0xffda60...61e7f5` | ⚠️ Unaudited |
| MultisigWallet | governance | project_anchor | own_supporting | 0 | bsc | unit-231267 | `0x430637...6cd41e` | ⚠️ Unaudited |
| MultisigWallet | governance | project_anchor | own_supporting | 0 | base | unit-231298 | `0xf162b6...facf44` | ⚠️ Unaudited |
| MultisigWallet | governance | project_anchor | own_supporting | 0 | mode | unit-231243 | `0xf162b6...facf44` | ⚠️ Unaudited |
| MultisigWallet | governance | project_anchor | own_supporting | 0 | arbitrum | unit-231253 | `0xf162b6...facf44` | ⚠️ Unaudited |
| MultisigWallet | governance | project_anchor | own_supporting | 0 | avalanche | unit-231257 | `0x62f7d5...81e79c` | ⚠️ Unaudited |
| MultisigWallet | governance | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 23 deployments: bsc `0x79d1c9...b38e8a`; mode `0x4869f4...2f480c`; mode `0x658064...32960e`; mode `0x65dfac...394090`; mode `0x916e5d...ed21cb`; mode `0x9883fa...1ca925`; mode `0xa6420e...3531bb`; mode `0xd491f2...7bcac9`; mode `0xedd6a2...1e3abb`; mode `0xeebb83...6c9051`; mode `0xf5866c...f05c3a`; arbitrum `0x46b20f...fc6379`; arbitrum `0xe9915e...fe7423`; linea `0x1a86ff...c56ce5`; linea `0x2aed35...938430`; linea `0x305a85...9a6ee9`; linea `0x46b20f...fc6379`; linea `0x7a5912...3a5baf`; linea `0x7d4de6...dd1d9d`; linea `0x80a33f...19b69f`; linea `0xec72d4...9ffcbc`; linea `0xf162b6...facf44`; linea `0xfc57d3...5dec8c` | ⚠️ Unaudited |
| MultisigWallet | governance | project_anchor | own_supporting | 0 | linea | unit-231280 | `0x3280a4...649f37` | ⚠️ Unaudited |
| PepeToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-231244 | `0x25d887...aebb00` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 2 | arbitrum | unit-231299 (2 proxies) | 2 deployments: arbitrum `0x2f2a25...fc5b0f`; arbitrum `0xf97f4d...539fb4` | ⚠️ Unaudited |
| TBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231132 | `0x18084f...d93a88` | ⚠️ Unaudited |
| TeamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55acc8...74940d` | ⚠️ Unaudited |
| TeamToken | token | project_anchor | own_supporting | 0 | bsc | unit-231274 | `0x9bf543...defe3c` | ⚠️ Unaudited |
| TimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x858d1d...07d38b`; bsc `0x7a087e...5eafe0`; base `0x1dcae9...759ab3`; mode `0x1dcae9...759ab3`; arbitrum `0x1dcae9...759ab3`; linea `0x1dcae9...759ab3` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | bsc | unit-231272 | `0x795d27...6703f3` | ⚠️ Unaudited |
| WAVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-231259 | `0xb31f66...fd66c7` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | base | unit-231290 | `0x420000...000006` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231137 | `0x2260fa...c2c599` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-231139 | `0x25d887...aebb00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231152 | `0x514910...f986ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231162 | `0x698250...311933` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231198 | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-231200 | `0xcbb7c0...ed33bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231205 | `0xd31a59...71b89c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231208 | `0xdac17f...831ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231210 | `0xe0f63a...b2c56c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231263 | `0x2170ed...f933f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231264 | `0x25d887...aebb00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | merlin | n/a | 6 deployments: merlin `0x7a087e...5eafe0`; merlin `0x858d1d...07d38b`; merlin `0x88af5f...20d66c`; merlin `0xa831a4...703f37`; merlin `0xc13a12...edcacb`; merlin `0xf162b6...facf44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5171f...6f1c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x02111c...dc84f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x03c69e...a61154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x108d36...93835c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x19e64a...d82c2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x521064...9d88f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x57b9b4...03fe4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x715f26...5bf829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x950cfb...a2c1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa1c1f6...b40bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe1a512...ade33b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf4a617...273730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1dcae9...759ab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fe74c...6d20e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d3f8f...66c6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c90c8...38f4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79d1c9...b38e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f2239...cd51c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-231258 | `0x88af5f...20d66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5dc66...67311a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-231260 | `0xd96f5d...26a060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe67640...33291d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xecc6ad...ae08d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf162b6...facf44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf99f62...88fc24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdd7124...9769bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231223 | `0x02111c...dc84f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231224 | `0x03c69e...a61154` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231225 | `0x108d36...93835c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231226 | `0x19e64a...d82c2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231227 | `0x521064...9d88f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231228 | `0x57b9b4...03fe4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231229 | `0x715f26...5bf829` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231230 | `0x950cfb...a2c1dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231231 | `0xa1c1f6...b40bd6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231232 | `0xe1a512...ade33b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ALEX_Audit_bridge_coinfabrik_202212.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_bridge_coinfabrik_202212.pdf) | CoinFabrik | Audit | 2022-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [ALEX_Audit_Bridge_2023-04.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_Bridge_2023-04.pdf) | CoinFabrik | Audit | 2023-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 6 | n/a |
| [ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf) | CoinFabrik | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [XLink_Bridge_Endpoint_Audit_2024-06.pdf](https://cdn.xlink.network/pdf/XLink_Bridge_Endpoint_Audit_2024-06.pdf) | CoinFabrik | Audit | 2024-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 1 | high |
| [XLink_MultisigWallet_BridgeToken_2024-06.pdf](https://cdn.xlink.network/pdf/XLink_MultisigWallet_BridgeToken_2024-06.pdf) | CoinFabrik | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [XLINK_Staking_Audit_2024_11_final.pdf](https://cdn.xlink.network/pdf/XLINK_Staking_Audit_2024_11_final.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [XLINK_Peg-out_Endpoints_Audit 11-2024.pdf](https://cdn.xlink.network/pdf/XLINK_Peg-out_Endpoints_Audit%2011-2024.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [XLINK_Peg-in_Endpoints_Audit_11-2024.pdf](https://cdn.xlink.network/pdf/XLINK_Peg-in_Endpoints_Audit_11-2024.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [XLink_Endpoits_Update_Audit_2025-03.pdf](https://cdn.brotocol.xyz/pdf/XLink_Endpoits_Update_Audit_2025-03.pdf) | CoinFabrik | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [XLink_EVM_Endpoint_Audit_2025-04.pdf](https://cdn.brotocol.xyz/pdf/XLink_EVM_Endpoint_Audit_2025-04.pdf) | CoinFabrik | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [XLINK_Solana_Endpoint_Audit_2025-05.pdf](https://cdn.brotocol.xyz/pdf/XLINK_Solana_Endpoint_Audit_2025-05.pdf) | CoinFabrik | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf](https://cdn.brotocol.xyz/pdf/250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf) | Defence (Thesis) | Audit | 2025-08 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [www.coinfabrik.com](https://www.coinfabrik.com/) | CoinFabrik | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [thesis.co/defense](https://thesis.co/defense) | Defence | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11552] ALEX_Audit_bridge_coinfabrik_202212.pdf — matched: No reason recorded
- [11553] ALEX_Audit_Bridge_2023-04.pdf — matched: No reason recorded
- [11554] ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf — no match: Four contracts explicitly listed in scope section. Audit date from changelog: initial report 2023-10-30.
- [11555] XLink_Bridge_Endpoint_Audit_2024-06.pdf — matched: Three contracts in scope: BridgeEndpoint, BridgeEndpointWithAxelar, BridgeRegistry. Audit date from changelog final report date.
- [11556] XLink_MultisigWallet_BridgeToken_2024-06.pdf — no match: Two contracts in scope: MultisigWallet and BridgeToken. Audit date inferred from 'June2024' in title and changelog date 2024-06-10.
- [11557] XLINK_Staking_Audit_2024_11_final.pdf — no match: Two contracts in scope: xlink-staking and liabtc-mint-endpoint. Audit date is the latest changelog entry (2024-11-26).
- [11558] XLINK_Peg-out_Endpoints_Audit 11-2024.pdf — no match: Extracted 5 contract names from the scope section. Audit date from changelog final report date.
- [11559] XLINK_Peg-in_Endpoints_Audit_11-2024.pdf — no match: Three contracts in scope from the repository. Audit date from changelog final report date.
- [11560] XLink_Endpoits_Update_Audit_2025-03.pdf — no match: Extracted 3 main scope contracts and 4 additional contracts referenced in findings. Audit date taken from final report date in changelog.
- [11561] XLink_EVM_Endpoint_Audit_2025-04.pdf — no match: Two contracts in scope: BridgeEndpointWithSwap and SwapExecutor. Audit date from changelog: final report date 2025-04-16.
- [11562] XLINK_Solana_Endpoint_Audit_2025-05.pdf — no match: Two Solana programs (bridge-registry and bridge-endpoint) are in scope. Audit date is the reaudit date (2025-05-27) from the changelog.
- [11563] 250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf — matched: No reason recorded
- [11564] www.coinfabrik.com — no match: The provided text is a company website homepage, not an audit report. No contracts or audit date are present.
- [11565] thesis.co/defense — no match: The provided text is a marketing page for an auditing firm, not an actual audit report. No contracts, files, or audit date are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ALEX_Audit_bridge_coinfabrik_202212.pdf | BridgeEndpoint.sol | own contract | BridgeEndpoint (selected) `0xa18d96...b2aac9` — deployed 2024-10-29 06:03:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ALEX_Audit_bridge_coinfabrik_202212.pdf | ERC20Fixed.sol | unmatched — not counted | — | — | no |
| ALEX_Audit_bridge_coinfabrik_202212.pdf | bridge-endpoint.clar | unmatched — not counted | — | — | no |
| ALEX_Audit_Bridge_2023-04.pdf | Allowlistable | unmatched — not counted | — | — | no |
| ALEX_Audit_Bridge_2023-04.pdf | BridgeEndpoint | own contract | BridgeEndpoint (selected) `0xa18d96...b2aac9` — deployed 2024-10-29 06:03:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ALEX_Audit_Bridge_2023-04.pdf | ERC20Fixed | unmatched — not counted | — | — | no |
| ALEX_Audit_Bridge_2023-04.pdf | Errors | unmatched — not counted | — | — | no |
| ALEX_Audit_Bridge_2023-04.pdf | FixedPoint | unmatched — not counted | — | — | no |
| ALEX_Audit_Bridge_2023-04.pdf | LogExpMath | unmatched — not counted | — | — | no |
| ALEX_Audit_Bridge_2023-04.pdf | bridge-endpoint | unmatched — not counted | — | — | no |
| ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf | indexer | unmatched — not counted | — | listed in scope | no |
| ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf | indexer-registry | unmatched — not counted | — | listed in scope | no |
| ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf | btc-bridge-endpoint | unmatched — not counted | — | listed in scope | no |
| ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf | btc-bridge-registry | unmatched — not counted | — | listed in scope | no |
| XLink_Bridge_Endpoint_Audit_2024-06.pdf | BridgeEndpoint | own contract | BridgeEndpoint (selected) `0xa18d96...b2aac9` — deployed 2024-10-29 06:03:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| XLink_Bridge_Endpoint_Audit_2024-06.pdf | BridgeEndpointWithAxelar | unmatched — not counted | — | listed in scope | no |
| XLink_Bridge_Endpoint_Audit_2024-06.pdf | BridgeRegistry | own contract | BridgeRegistry (alternative) `0x88af5f...20d66c` — deployed 2024-10-21 11:29:17+03 — liveness: live (code_present_context)<br>BridgeRegistry (alternative) `0x88af5f...20d66c` — deployed 2024-08-21 15:02:47+03 — liveness: live (code_present_context)<br>BridgeRegistry (selected) `0x88af5f...20d66c` — deployed 2024-07-24 01:38:55+03 — liveness: live (code_present_context)<br>BridgeRegistry (alternative) `0x13b72a...626673` — deployed 2024-06-01 16:11:59+03 — liveness: live (code_present_context)<br>BridgeRegistry (alternative) `0x88af5f...20d66c` — deployed 2024-11-25 08:03:33+03 — liveness: live (code_present_context)<br>BridgeRegistry (alternative) `0xffda60...61e7f5` — deployed 2024-06-01 15:26:02+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-07-24 was 16d from audit; next candidate 37d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| XLink_MultisigWallet_BridgeToken_2024-06.pdf | MultisigWallet | ambiguous — not counted | MultisigWallet (alternative) `0x430637...6cd41e` — deployed 2024-06-09 09:40:05+03 — liveness: live (current_address_book_code)<br>MultisigWallet (alternative) `0xf162b6...facf44` — deployed 2024-08-21 15:02:24+03 — liveness: live (current_address_book_code)<br>MultisigWallet (alternative) `0x65dfac...394090` — deployed 2024-06-09 16:13:35+03 — liveness: live (current_address_book_code)<br>MultisigWallet (alternative) `0x62f7d5...81e79c` — deployed 2025-09-07 17:51:51+03 — liveness: live (current_address_book_code)<br>MultisigWallet (alternative) `0xf162b6...facf44` — deployed 2024-07-24 01:38:27+03 — liveness: live (code_present_context)<br>MultisigWallet (alternative) `0x3280a4...649f37` — deployed 2025-09-07 17:07:24+03 — liveness: live (current_address_book_code)<br>MultisigWallet (alternative) `0xf162b6...facf44` — deployed 2024-11-25 08:02:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| XLink_MultisigWallet_BridgeToken_2024-06.pdf | BridgeToken | ambiguous — not counted | BridgeToken (alternative) `0xdfd066...8caf71` — deployed 2024-10-21 11:30:55+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xab01bb...b560c5` — deployed 2024-09-14 05:54:36+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xa831a4...703f37` — deployed 2024-06-01 16:21:47+03 — liveness: live (code_present_context)<br>BridgeToken (alternative) `0x916a82...39c81d` — deployed 2024-11-18 06:20:31+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x152b9d...943e50` — deployed 2022-05-19 20:47:03+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xa831a4...703f37` — deployed 2024-08-21 15:07:51+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xd0d1b5...7b192a` — deployed 2024-09-12 03:41:49+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x707272...b257e2` — deployed 2024-07-24 01:41:21+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x2e512b...02cbc8` — deployed 2024-09-14 05:36:13+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xdfd066...8caf71` — deployed 2024-11-25 08:06:23+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xcd5ed0...fba378` — deployed 2024-11-25 08:07:07+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x7a087e...5eafe0` — deployed 2024-08-21 15:06:43+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xcd5ed0...fba378` — deployed 2024-10-21 11:31:05+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x707272...b257e2` — deployed 2024-10-21 11:31:15+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x24a44c...aa29a7` — deployed 2024-11-14 18:20:24+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x7a087e...5eafe0` — deployed 2024-11-25 08:05:49+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x0f38ed...80ce03` — deployed 2024-09-14 05:35:25+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x9e801c...914072` — deployed 2024-10-21 11:31:37+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xa831a4...703f37` — deployed 2024-10-21 11:31:27+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x707272...b257e2` — deployed 2024-11-25 08:07:51+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x9e801c...914072` — deployed 2024-11-25 08:09:21+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xce83dd...0970cb` — deployed 2024-11-14 18:20:36+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xa831a4...703f37` — deployed 2024-07-24 01:41:43+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x18c05e...438fa7` — deployed 2024-09-14 05:35:52+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xdfd066...8caf71` — deployed 2024-06-01 15:27:20+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x51cda8...992d94` — deployed 2025-01-28 17:51:35+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x80074f...dfb7cd` — deployed 2025-01-21 09:28:11+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x7a087e...5eafe0` — deployed 2024-07-24 01:40:11+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x707272...b257e2` — deployed 2024-08-21 15:07:44+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xa831a4...703f37` — deployed 2024-11-25 08:08:39+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x31761a...233b0b` — deployed 2024-10-29 05:48:47+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x73f0f5...217138` — deployed 2024-09-14 05:01:11+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x7a087e...5eafe0` — deployed 2024-10-21 11:30:33+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x49d5c2...c10bab` — deployed 2021-07-23 17:59:37+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xdfd066...8caf71` — deployed 2024-08-21 15:07:08+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xcd5ed0...fba378` — deployed 2024-07-24 01:40:55+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x2aed35...938430` — deployed 2024-11-18 06:18:35+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xcd5ed0...fba378` — deployed 2024-08-21 15:07:32+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x0d3c78...a6cf07` — deployed 2024-11-18 06:56:43+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x305a85...9a6ee9` — deployed 2024-11-18 06:19:46+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x5879cd...11b231` — deployed 2025-01-28 17:53:05+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xdfd066...8caf71` — deployed 2024-07-24 01:40:33+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0x7d4de6...dd1d9d` — deployed 2024-11-18 06:18:59+03 — liveness: live (current_address_book_code)<br>BridgeToken (alternative) `0xd15b99...81520d` — deployed 2024-11-18 06:57:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| XLINK_Staking_Audit_2024_11_final.pdf | xlink-staking | unmatched — not counted | — | listed in scope | no |
| XLINK_Staking_Audit_2024_11_final.pdf | liabtc-mint-endpoint | unmatched — not counted | — | listed in scope | no |
| XLINK_Peg-out_Endpoints_Audit 11-2024.pdf | btc-peg-out-endpoint-v2-01 | unmatched — not counted | — | listed in scope | no |
| XLINK_Peg-out_Endpoints_Audit 11-2024.pdf | cross-peg-out-endpoint-v2-01 | unmatched — not counted | — | listed in scope | no |
| XLINK_Peg-out_Endpoints_Audit 11-2024.pdf | meta-peg-out-endpoint-v2-03 | unmatched — not counted | — | listed in scope | no |
| XLINK_Peg-out_Endpoints_Audit 11-2024.pdf | cross-router-v2-02 | unmatched — not counted | — | listed in scope | no |
| XLINK_Peg-out_Endpoints_Audit 11-2024.pdf | bridge-common-v2-02 | unmatched — not counted | — | listed in scope | no |
| XLINK_Peg-in_Endpoints_Audit_11-2024.pdf | btc-peg-in-endpoint-v2-03 | unmatched — not counted | — | listed in scope section | no |
| XLINK_Peg-in_Endpoints_Audit_11-2024.pdf | meta-peg-in-endpoint-v2-02 | unmatched — not counted | — | listed in scope section | no |
| XLINK_Peg-in_Endpoints_Audit_11-2024.pdf | cross-peg-in-endpoint-v2-03 | unmatched — not counted | — | listed in scope section | no |
| XLink_Endpoits_Update_Audit_2025-03.pdf | btc-peg-in-v2-07e-agg | unmatched — not counted | — | listed in scope | no |
| XLink_Endpoits_Update_Audit_2025-03.pdf | cross-peg-out-v2-01b-agg | unmatched — not counted | — | listed in scope | no |
| XLink_Endpoits_Update_Audit_2025-03.pdf | meta-peg-in-v2-06e-agg | unmatched — not counted | — | listed in scope | no |
| XLink_Endpoits_Update_Audit_2025-03.pdf | meta-peg-in-v2-06h-agg | unmatched — not counted | — | mentioned as fix file | no |
| XLink_Endpoits_Update_Audit_2025-03.pdf | btc-peg-in-v2-07g-agg | unmatched — not counted | — | mentioned as fix file | no |
| XLink_Endpoits_Update_Audit_2025-03.pdf | meta-peg-out-endpoint-v2-04 | unmatched — not counted | — | mentioned in finding ME-03 | no |
| XLink_Endpoits_Update_Audit_2025-03.pdf | cross-router-v2-03 | unmatched — not counted | — | mentioned in finding CR-01 | no |
| XLink_EVM_Endpoint_Audit_2025-04.pdf | BridgeEndpointWithSwap | ambiguous — not counted | BridgeEndpointWithSwap (alternative) `0x529871...840092` — deployed 2025-06-09 17:05:54+03 — liveness: live (current_address_book_code)<br>BridgeEndpointWithSwap (alternative) `0x7a5912...3a5baf` — deployed 2025-06-09 16:43:36+03 — liveness: live (current_address_book_code)<br>BridgeEndpointWithSwap (alternative) `0x18c05e...438fa7` — deployed 2025-06-09 16:31:25+03 — liveness: live (current_address_book_code)<br>BridgeEndpointWithSwap (alternative) `0x0f38ed...80ce03` — deployed 2025-02-24 20:01:39+03 — liveness: live (current_address_book_code)<br>BridgeEndpointWithSwap (alternative) `0xb1c34a...31c94d` — deployed 2025-06-09 16:25:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| XLink_EVM_Endpoint_Audit_2025-04.pdf | SwapExecutor | unmatched — not counted | — | listed in scope | no |
| XLINK_Solana_Endpoint_Audit_2025-05.pdf | bridge-registry | unmatched — not counted | — | listed in scope | no |
| XLINK_Solana_Endpoint_Audit_2025-05.pdf | bridge-endpoint | unmatched — not counted | — | listed in scope | no |
| 250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf | BridgeEndPoint | own contract | BridgeEndpoint (selected) `0xa18d96...b2aac9` — deployed 2024-10-29 06:03:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x82af49...3fbab1` | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7130d2...3ead9c` | BEP20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x55d398...197955` | BEP20USDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb1c34a...31c94d` | BridgeEndpointWithSwap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x529871...840092` | BridgeEndpointWithSwap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x18c05e...438fa7` | BridgeEndpointWithSwap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7a5912...3a5baf` | BridgeEndpointWithSwap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x0f38ed...80ce03` | BridgeEndpointWithSwap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x13b72a...626673` | BridgeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xffda60...61e7f5` | BridgeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x88af5f...20d66c` | BridgeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x88af5f...20d66c` | BridgeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x88af5f...20d66c` | BridgeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2aed35...938430` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31761a...233b0b` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x51cda8...992d94` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x73f0f5...217138` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7d4de6...dd1d9d` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x80074f...dfb7cd` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa831a4...703f37` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0f38ed...80ce03` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x18c05e...438fa7` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2e512b...02cbc8` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x305a85...9a6ee9` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5879cd...11b231` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x916a82...39c81d` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xdfd066...8caf71` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x707272...b257e2` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7a087e...5eafe0` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9e801c...914072` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa831a4...703f37` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcd5ed0...fba378` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdfd066...8caf71` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x0d3c78...a6cf07` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x707272...b257e2` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x7a087e...5eafe0` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xa831a4...703f37` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xcd5ed0...fba378` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd0d1b5...7b192a` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd15b99...81520d` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xdfd066...8caf71` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x707272...b257e2` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7a087e...5eafe0` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa831a4...703f37` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xab01bb...b560c5` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcd5ed0...fba378` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdfd066...8caf71` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x152b9d...943e50` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x49d5c2...c10bab` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x24a44c...aa29a7` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x707272...b257e2` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x7a087e...5eafe0` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9e801c...914072` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xa831a4...703f37` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xcd5ed0...fba378` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xce83dd...0970cb` | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xdfd066...8caf71` | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5e0e90...21fb59` | ERC20BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcbb7c0...ed33bf` | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x833589...a02913` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xaf88d0...8e5831` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb97ef9...c48a6e` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x430637...6cd41e` | MigrateToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd15b99...81520d` | MigrateToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa6420e...3531bb` | MigrateTokenBOBFusionS1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x65dfac...394090` | MultisigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x430637...6cd41e` | MultisigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf162b6...facf44` | MultisigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xf162b6...facf44` | MultisigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf162b6...facf44` | MultisigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x62f7d5...81e79c` | MultisigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x3280a4...649f37` | MultisigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x25d887...aebb00` | PepeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2f2a25...fc5b0f` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18084f...d93a88` | TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9bf543...defe3c` | TeamToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x795d27...6703f3` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb31f66...fd66c7` | WAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x420000...000006` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 97 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 33 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=2
- Match method counts: temporal_name=1, unique_name=4

Zero-match audit list:

- [11554] ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf
- [11556] XLink_MultisigWallet_BridgeToken_2024-06.pdf
- [11557] XLINK_Staking_Audit_2024_11_final.pdf
- [11558] XLINK_Peg-out_Endpoints_Audit 11-2024.pdf
- [11559] XLINK_Peg-in_Endpoints_Audit_11-2024.pdf
- [11560] XLink_Endpoits_Update_Audit_2025-03.pdf
- [11561] XLink_EVM_Endpoint_Audit_2025-04.pdf
- [11562] XLINK_Solana_Endpoint_Audit_2025-05.pdf
- [11564] www.coinfabrik.com
- [11565] thesis.co/defense

Fork inheritance lineage and inherited audits are included when available.
