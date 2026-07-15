# Agentic Audit Brief: WAGMI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 12 (0 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: WAGMI (`wagmi`)
- Website: [https://wagmi.com/](https://wagmi.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, fantom, kava, metis, polygon, sonic, zksync-era
- Contract surface: 303 unique implementations (526 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $972,965.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for WAGMI. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, fantom, kava, metis, polygon, sonic, zksync-era. Structural roles: 5 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (5), supporting (1)
- Contract kinds: contract (6)
- Detected standards: erc165 (5), erc20 (5), ownable (5)
- Frameworks: openzeppelin (5), layerzero (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3613ad...c2dc9e`, chain 324)
- OFT (`0xaf20f5...0de7d7`, chain 56)
- OFT (`0x07ed33...5024da`, chain 137)
- OFT (`0x0e0ce4...87d16b`, chain 146)
- OFT (`0xaf20f5...0de7d7`, chain 8453)
- UniswapV3Factory (`0x8112e1...fe5b8a`, chain 1088)
- UnnamedContract (`0xb1f795...d48297`, chain 250)
- WagmiToken (`0x92cc36...b83a67`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 295 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 8 of 303 unique; 295 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/43
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 260
- Unique implementations: 303
- Raw deployments: 526
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BellaDiceGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 10 deployments: metis `0x08abfb...a33e2f`; metis `0x163b40...f97d2d`; metis `0x49a7a8...37c7ca`; metis `0x4a7d1b...24107b`; metis `0x6d5146...886aef`; metis `0x7bcaae...a7d67c`; metis `0x820663...372bc6`; metis `0x86aaec...5e12ee`; metis `0x9867c5...f2575b`; metis `0xab4bc4...85fda9` | ⚠️ Unaudited |
| FactoryLC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: sonic `0x127d30...8107a9`; metis `0x07e1cf...89da57` | ⚠️ Unaudited |
| FlashLoanAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 4 deployments: sonic `0x259308...896442`; metis `0x056df3...6c8828`; metis `0x071805...59e971`; metis `0xcc096c...850e1d` | ⚠️ Unaudited |
| InterfaceMulticallV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 6 deployments: bsc `0xee69c5...f133cf`; polygon `0x9ab6e6...c9c6d7`; sonic `0x6df85f...14ca2c`; metis `0x16b413...e418fd`; base `0xe88b19...c9b6e2`; arbitrum `0x834ddb...570b87` | ⚠️ Unaudited |
| LightQuoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 5 deployments: sonic `0xc49c17...5b1ec3`; metis `0x16cad8...b5788e`; metis `0x396379...e4ce98`; metis `0x5a9fd9...cabfe5`; metis `0xf3a538...825fdd` | ⚠️ Unaudited |
| LiquidityBorrowingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 13 deployments: sonic `0x78b796...05d5d9`; metis `0x05d73f...3c4d2b`; metis `0x07614a...b2e985`; metis `0x1bbce9...b3edf1`; metis `0x1eb13f...32efa1`; metis `0x20fa27...b6eabd`; metis `0x25a31a...aeb54e`; metis `0x3c4229...318104`; metis `0x3de5e3...4a4a2c`; metis `0x9ac33e...c6125c`; metis `0xadbc0c...1c7002`; metis `0xc33e12...832053`; metis `0xccf08f...d0c334` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: ethereum `0x8b741b...41f015`; bsc `0xd7d753...eb2d16`; polygon `0x037f7b...74e473`; sonic `0x828825...308292`; metis `0x576a13...418fd4`; base `0xf914e1...97f966`; arbitrum `0x16b413...e418fd` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: bsc `0xd8759f...a566e6`; polygon `0xfe9409...8abc52`; sonic `0x2da5dd...a5ae41`; base `0x730135...61ca48`; arbitrum `0xd5b59c...b26544` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: bsc `0x95976e...faf5cb`; polygon `0x806408...deeaf9`; sonic `0x5db68a...c4d14e`; metis `0x6372f4...2d8dd8`; base `0x1e6ef5...f59e8a`; arbitrum `0x66034b...9590f0` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: bsc `0xa98109...4b75b2`; polygon `0x67b319...7fd6bd`; sonic `0x77dcc9...18d690`; metis `0xa7e119...cb1b02`; base `0x818780...ac1f72`; arbitrum `0x4b5d9d...fa28aa` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: ethereum `0xab719a...f1bb51`; bsc `0x6eebcd...c1e7a7`; polygon `0x381289...762f0f`; sonic `0x0834cf...089485`; metis `0x1e6ef5...f59e8a`; base `0xa9af50...84d12c`; arbitrum `0xd8ac77...d65293` | ⚠️ Unaudited |
| OFT | unknown | project_anchor | own_supporting | 0 | bsc | unit-396405 | `0xaf20f5...0de7d7` | ⚠️ Unaudited |
| OFT | unknown | project_anchor | own_supporting | 0 | polygon | unit-396401 | `0x07ed33...5024da` | ⚠️ Unaudited |
| OFT | unknown | project_anchor | own_supporting | 0 | sonic | unit-396402 | `0x0e0ce4...87d16b` | ⚠️ Unaudited |
| OFT | unknown | project_anchor | own_supporting | 0 | base | unit-396406 | `0xaf20f5...0de7d7` | ⚠️ Unaudited |
| OFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xaf20f5...0de7d7`; avalanche `0xaf20f5...0de7d7` | ⚠️ Unaudited |
| OptimizerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x14addc...87fee5`; ethereum `0x2036d2...768844`; ethereum `0x223721...3e0f83`; ethereum `0x7f6541...7ed06e`; ethereum `0x90e4f7...f894f6`; ethereum `0x9362ae...b74720`; ethereum `0xbb2ccc...6cf782`; ethereum `0xc49e86...99181a`; ethereum `0xd1c2bd...4782ec`; ethereum `0xe1ef48...c64949`; ethereum `0xe22b58...88b4ab` | ⚠️ Unaudited |
| OptimizerZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x29d14c...eca32c`; ethereum `0x34e9e8...cbd3f5` | ⚠️ Unaudited |
| OptimizerZapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1b220...3e50a9` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: bsc `0x678f6b...17a650`; bsc `0xb33fc0...595ecd`; bsc `0xbf4b53...a37feb`; polygon `0x5c811c...b59495`; sonic `0x7ac9e3...b22948`; metis `0xb1f795...d48297`; base `0x16b413...e418fd`; arbitrum `0xd6ea74...28dc55` | ⚠️ Unaudited |
| PopsicleV3Optimizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 32 deployments: ethereum `0x0807b2...fbf87a`; ethereum `0x212aa0...81740b`; ethereum `0x36e9b6...a3d7d9`; ethereum `0x3cd02f...997d1e`; ethereum `0x4703e6...6d5c9d`; ethereum `0x495410...6b8ea7`; ethereum `0x4a6084...ab8edc`; ethereum `0x4b5e4e...ebad7b`; ethereum `0x5c08a6...97218d`; ethereum `0x6033a9...8eb5a3`; ethereum `0x71fd40...e06051`; ethereum `0x74450a...f69f3c`; ethereum `0x7be70d...b441ad`; ethereum `0x8d8b49...eb7ee2`; ethereum `0x949fdf...f81e4e`; ethereum `0x9683d4...317f55`; ethereum `0x989442...ef9bc3`; ethereum `0xa0273c...9527b8`; ethereum `0xa1be64...943d0e`; ethereum `0xa6b993...bffb69`; ethereum `0xa70537...47b97f`; ethereum `0xae7b92...89add9`; ethereum `0xb7be78...aee566`; ethereum `0xba3802...a8e62f`; ethereum `0xbe5d1d...be3c61`; ethereum `0xcebab8...6862b3`; ethereum `0xd2c5a7...496ccf`; ethereum `0xd2ef15...5e5a06`; ethereum `0xdb4f34...2fae91`; ethereum `0xe2f04b...b20623`; ethereum `0xf4f542...c5c8f4`; ethereum `0xff338d...22ef2f` | ⚠️ Unaudited |
| PositionEffectivityChart | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 7 deployments: metis `0x242c5f...f3cf17`; metis `0x2c8004...1a11cd`; metis `0x48cc6c...8dcee7`; metis `0x80f432...2020c3`; metis `0x846e4e...6c0ae0`; metis `0x896c78...29a7ca`; metis `0xbbf979...4a9bf9` | ⚠️ Unaudited |
| PredictionOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x6b9aeb...468ab6`; sonic `0xf3a538...825fdd`; sonic `0xf7384f...f0778e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0xb5fa77...5bcd0e`; bsc `0xc5eda8...0335af`; polygon `0x7f4f24...e53986`; sonic `0xcb5cbc...7c9753`; metis `0xf914e1...97f966`; base `0x428065...fdd649`; arbitrum `0xab719a...f1bb51` | ⚠️ Unaudited |
| Quoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 7 deployments: ethereum `0xe88b19...c9b6e2`; bsc `0x7fc284...92050e`; polygon `0x78e7c9...3af78f`; sonic `0x5973c9...b5a2fe`; metis `0x2dc123...710cea`; base `0x8fb7a8...7cfedc`; arbitrum `0xd74c1d...07fedb` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0x66034b...9590f0`; bsc `0x367af5...2462ff`; polygon `0x86fd61...4038fa`; sonic `0xdb51cf...2d0d24`; metis `0xb9a14e...abde24`; base `0x8b741b...41f015`; arbitrum `0x4e537a...6888cc` | ⚠️ Unaudited |
| Sorbettiere | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x86fd61...4038fa`; avalanche `0x9ab6e6...c9c6d7` | ⚠️ Unaudited |
| sWagmi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4b5d9d...fa28aa` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: ethereum `0x730135...61ca48`; bsc `0x7b2f96...f8fb44`; polygon `0x4acc23...d2f6c9`; sonic `0x9282a6...4cfd49`; metis `0x8fb7a8...7cfedc`; base `0x6372f4...2d8dd8`; arbitrum `0x6e892a...30ab29` | ⚠️ Unaudited |
| SwapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x1ac569...ccded5` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: ethereum `0xd8ac77...d65293`; bsc `0x83a98d...74b8a9`; polygon `0x53dca7...d7f800`; metis `0x8b741b...41f015`; base `0xb5fa77...5bcd0e`; arbitrum `0x491d19...a1ab51` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0xb1f795...d48297`; bsc `0x67241f...12298f`; polygon `0xa6d200...bcfc0d`; sonic `0x877cda...341b83`; metis `0x428065...fdd649`; base `0x2dc123...710cea`; arbitrum `0x08d6e1...d79ce8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: ethereum `0x08d6e1...d79ce8`; bsc `0x3d079b...007484`; polygon `0x11cd3b...8ce66c`; sonic `0x07ed33...5024da`; metis `0xa9af50...84d12c`; base `0xa7e119...cb1b02`; arbitrum `0x4389ee...e4955b` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: polygon `0xdf351e...d1afe5`; metis `0xb5fa77...5bcd0e` | ⚠️ Unaudited |
| UniswapV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8bb1be...472bac` | ⚠️ Unaudited |
| UniswapV3Factory | registry | project_anchor | own_supporting | 0 | metis | unit-396400 | `0x8112e1...fe5b8a` | ⚠️ Unaudited |
| UniversalRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: bsc `0x1ca13e...11314a`; polygon `0xca6564...588f64`; sonic `0xc81dae...626d19`; metis `0x730135...61ca48`; base `0x08d6e1...d79ce8`; arbitrum `0x8bb1be...472bac` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x03f876...16ce5b`; bsc `0x2d1e74...347efe`; bsc `0xa68afd...874e53`; bsc `0xcd2774...4fc355`; polygon `0x30623f...032d9c`; sonic `0xa1be64...943d0e`; metis `0xe88b19...c9b6e2`; base `0xab719a...f1bb51`; arbitrum `0x721655...965c3c` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0x6e892a...30ab29`; bsc `0xc3af02...2a6b15`; polygon `0x5ff8cc...febefa`; sonic `0x660fc6...d0ed6e`; metis `0x818780...ac1f72`; base `0xb9a14e...abde24`; arbitrum `0x394d34...22dd17` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: sonic `0xfb3efa...764132`; metis `0x9cb36c...9e3630`; base `0xb75c17...0c003f` | ⚠️ Unaudited |
| WagmiOFTV2Adapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5ec00...22b4e4` | ⚠️ Unaudited |
| WagmiPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0x818780...ac1f72`; bsc `0x1e6ef5...f59e8a`; bsc `0x428065...fdd649`; bsc `0x9cc313...629194`; polygon `0x730135...61ca48`; arbitrum `0xf914e1...97f966`; avalanche `0x428065...fdd649` | ⚠️ Unaudited |
| WagmiToken | token | project_anchor | own_supporting | 0 | ethereum | unit-396399 | `0x92cc36...b83a67` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (260)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x058716...bd466f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c0ecf...6933f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13704d...4eb703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b413...e418fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc26a...a5322f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e6ef5...f59e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x216961...3b7287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x216d15...73609d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22be52...ab191d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23a14a...5c5c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26f5fd...d213b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2eb4b9...f8f015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33810f...96ccbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ea70...877044` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x394d34...22dd17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c3dcf...d02682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d3047...e2ec1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x462e21...c0a40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b5d9d...fa28aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cae7c...049df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e537a...6888cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f1bd9...388320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x519921...13081f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67cd21...49ccfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680a41...0619ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6874e9...97149e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x726f7a...ba5ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72b01c...4ff431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d6e19...d279be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88e4aa...8b48ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d819e...8be64f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fce34...dc32fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x942dd0...98ecf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x970b92...df384e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98fe50...6532ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a9c79...8fb481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c90c4...0e6270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1fdc2...7929c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9af50...84d12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad1724...59577e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad3d12...f3fa30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xada293...94b162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb22cd4...a0e9f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb52c49...65a607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6c97f...1cd75b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9a14e...abde24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc099a6...71931d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca6564...588f64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce7734...4c3804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcef328...a40264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd06235...593324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd68573...11d4ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd74c1d...07fedb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe98e23...f37c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea34e6...f8013c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4b95c...e8579f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa2651...f8a2ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3d90...2b0cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d288b...422deb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e0ce4...87d16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fc61b...d5cd61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x576a13...418fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58a3d3...5e1e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6372f4...2d8dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70eddf...c038b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7191dc...fef023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f8bb8...35539a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8112e1...fe5b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92c9fa...58190f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92cc36...b83a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb01510...260d8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe56f52...a3aea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x209050...e7ac6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77dcc9...18d690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x877cda...341b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b741b...41f015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98fe50...6532ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf20f5...0de7d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1f795...d48297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5fa77...5bcd0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x001530...5b5ecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x017277...a2a317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x037f7b...74e473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09dae4...d9c79f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0ead6d...f18fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0fa78a...23346e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x11cd3b...8ce66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1bbce9...b3edf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ed205...5b6f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f1e91...12b61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x227e1a...b4b874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x242965...17c790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2fc61b...d5cd61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2ff4a8...fdb7fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x303115...861444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x314b72...8decf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x37f0ad...03a3da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x38df1d...35f534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x394048...972529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x441047...573d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x495b37...f3bdfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4acc23...d2f6c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4b388c...48258e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4e537a...6888cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x568abf...a12ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x569e81...26a062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x58a3d3...5e1e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5ab34b...d387c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5ff8cc...febefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x67b319...7fd6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6c9946...89bf3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6ea38b...3dc7df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7189d6...06afa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x721655...965c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x783295...fad285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x78e7c9...3af78f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7dd9b4...b79c40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x806408...deeaf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x86fd61...4038fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8a5fcc...6d8e62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8bf365...2b2d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8f3ff8...e99c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x91d0ef...051711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9492a0...3cb298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x98174d...adb2e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa0f185...799ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa46901...c98628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xabc40e...f873c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xadb036...468839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaf20f5...0de7d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb738da...4d3581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb825fb...4a841f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb9235a...4adeae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb992e2...a51d23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb9d99d...4cf554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xba2848...3f507c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xba99f0...6c5aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc52fc7...f9a3f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc56c21...cdd0cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc6020e...101d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc8dbba...8ad9dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc9a2e7...85c3eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xca420d...29d8eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd26fbd...27f150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd6ea74...28dc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd7910d...dad2e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd80a12...823ee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd878cc...28b217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd8aa17...eccc8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdf351e...d1afe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdfc299...4eed3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe07cdd...7ef4b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe56f52...a3aea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf0ce72...c961da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf81e0d...e62f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf8ff94...81494c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfa2144...93ee1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfaed58...55a22f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfce985...b024ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 36 deployments: fantom `0x07ed33...5024da`; fantom `0x0834cf...089485`; fantom `0x209050...e7ac6c`; fantom `0x45c16c...cbe29a`; fantom `0x56cfc7...079aef`; fantom `0x5973c9...b5a2fe`; fantom `0x5db68a...c4d14e`; fantom `0x660fc6...d0ed6e`; fantom `0x77dcc9...18d690`; fantom `0x828825...308292`; fantom `0x877cda...341b83`; fantom `0x9282a6...4cfd49`; fantom `0x92cc36...b83a67`; fantom `0x98fe50...6532ed`; fantom `0xaf20f5...0de7d7`; fantom `0xcb5cbc...7c9753`; fantom `0xdb51cf...2d0d24`; kava `0x0e0ce4...87d16b`; kava `0x1e6ef5...f59e8a`; kava `0x2dc123...710cea`; kava `0x3690d1...c9630f`; kava `0x428065...fdd649`; kava `0x576a13...418fd4`; kava `0x6372f4...2d8dd8`; kava `0x8112e1...fe5b8a`; kava `0x818780...ac1f72`; kava `0x8b741b...41f015`; kava `0x8fb7a8...7cfedc`; kava `0xa7e119...cb1b02`; kava `0xa9af50...84d12c`; kava `0xaf20f5...0de7d7`; kava `0xb1f795...d48297`; kava `0xb5fa77...5bcd0e`; kava `0xb9a14e...abde24`; kava `0xe88b19...c9b6e2`; kava `0xf914e1...97f966` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-396403 | `0xb1f795...d48297` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-396404 | `0x3613ad...c2dc9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x01bd51...bee2ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x03d1ef...e27cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0ae94f...503cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0d4e84...43738f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0e6a9c...cde12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x18213a...b8100e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x19eab1...740776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1d8571...d416f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2120eb...844e9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x215c0e...4aec27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x24a2cb...54a0c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x259308...896442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2668f4...545bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2931c9...77a732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2c3918...8b4410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2d1496...6c61b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x30623f...032d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x348a1b...a2f301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x400fe1...64bfa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4948f0...2da2d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x546d87...4fce31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5873c1...7710ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5cb58c...7fa3d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5f171e...71d54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5fb398...352558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5ff8cc...febefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6175b6...0585e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6648ae...6b373e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x677290...7493ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x67b319...7fd6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x72e9b5...f07788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x73e721...6d51d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x836017...52aa67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x83f7e7...b2e0d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x86fd61...4038fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x92170f...618619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x92ed88...84eb0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9490a6...e9d026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9adcae...ccb5e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9cc313...629194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa0f185...799ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa6e02c...9f4904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xab120f...cd8d0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xab719a...f1bb51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xaf20f5...0de7d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb33fc0...595ecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb9ba23...617b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xba99f0...6c5aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbd3c28...36692b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbf4b53...a37feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc49c17...5b1ec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc78a18...fb2bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd55b48...ee709f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdb459e...87814b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdd9c5c...cbd1cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xde5803...dabf3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xded75f...716e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe4d69a...74949c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe673a6...2ace5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe67920...97a82f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xebdaf1...a098a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xec3739...c4e17a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf411fd...419ff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfa26c7...70eb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d3047...e2ec1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5ff8cc...febefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x67b319...7fd6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86fd61...4038fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1fdc2...7929c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd8bf6f...9558ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e0ce4...87d16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2da5dd...a5ae41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8112e1...fe5b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x037f7b...74e473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x089e07...debf6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08d6e1...d79ce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e0ce4...87d16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16b413...e418fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x394d34...22dd17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4389ee...e4955b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x491d19...a1ab51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b5d9d...fa28aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e537a...6888cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x576a13...418fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66034b...9590f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e892a...30ab29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x721655...965c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f4f24...e53986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8112e1...fe5b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x834ddb...570b87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8bb1be...472bac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92cc36...b83a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa6d200...bcfc0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab719a...f1bb51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5b59c...b26544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6ea74...28dc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd74c1d...07fedb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8ac77...d65293` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/f5b20449ff1a769af108c2b2fa6ee928a0c77232/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Hacken | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Wagmi-security-review.pdf](https://raw.githubusercontent.com/pashov/audits/bed0a845f5af0047206ce423d111673183dba1e9/team/pdf/Wagmi-security-review.pdf) | Hacken | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Wagmi-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Wagmi-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.0%200-V2.0%20AstraSec.pdf) | AstraSec | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [Wagmi Leverage V1.0 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.0%20Sherlock.pdf) | Sherlock | Contest | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [Wagmi Leverage V1.1 Hacken.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.1%20Hacken.pdf) | Hacken | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [Wagmi Leverage V1.5 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.5%20Sherlock.pdf) | Sherlock | Contest | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Wagmi Leverage V2.0 Pashov.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V2.0%20Pashov.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [Wagmi Leverage V2.0 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V2.0%20Sherlock.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Wagmi-security-review.pdf](https://raw.githubusercontent.com/pashov/audits/b60fc16f80b1291d36bd09a443e90f39bcb5d660/team/pdf/Wagmi-security-review.pdf) | Hacken | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/a58894ebc05005a80e945a2558d583b8e0e05ef2/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Hacken | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11719] 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf — no match: No reason recorded
- [11720] Wagmi-security-review.pdf — no match: No reason recorded
- [11721] 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf — no match: No reason recorded
- [11722] Wagmi-security-review.pdf — no match: No reason recorded
- [11723] Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf — no match: No reason recorded
- [11724] Wagmi Leverage V1.0 Sherlock.pdf — no match: No reason recorded
- [11725] Wagmi Leverage V1.1 Hacken.pdf — no match: No reason recorded
- [11726] Wagmi Leverage V1.5 Sherlock.pdf — no match: No reason recorded
- [11727] Wagmi Leverage V2.0 Pashov.pdf — no match: No reason recorded
- [11728] Wagmi Leverage V2.0 Sherlock.pdf — no match: No reason recorded
- [14576] Wagmi-security-review.pdf — no match: No reason recorded
- [14577] 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | AmountsLiquidity | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ApproveSwapAndPay | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Constants | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | DailyRateAndCollateral | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ErrLib | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ExternalCall | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Keys | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LightQuoterV3 | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | OwnerSettings | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | TransferHelper | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Vault | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | AmountsLiquidity | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ApproveSwapAndPay | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Constants | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | DailyRateAndCollateral | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ErrLib | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ExternalCall | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Keys | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LightQuoterV3 | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | OwnerSettings | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | TransferHelper | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Vault | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf | UniswapV3SwapExactAmountOut | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 Sherlock.pdf | ApproveSwapAndPay | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 Sherlock.pdf | Constants | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 Sherlock.pdf | ExternalCall | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 Sherlock.pdf | Keys | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 Sherlock.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 Sherlock.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.0 Sherlock.pdf | Vault | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | ApproveSwapAndPay | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | Constants | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | DailyRateAndCollateral | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | ErrLib | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | ExternalCall | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | Keys | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | LiquidityAmounts | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | OwnerSettings | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | TransferHelper | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.1 Hacken.pdf | Vault | unmatched — not counted | — | — | no |
| Wagmi Leverage V1.5 Sherlock.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | AmountsLiquidity | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | ApproveSwapAndPay | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | Constants | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | DailyRateAndCollateral | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | ErrLib | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | ExternalCall | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | Keys | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | LightQuoterV3 | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | OwnerSettings | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | TransferHelper | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Pashov.pdf | Vault | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Sherlock.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Sherlock.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi Leverage V2.0 Sherlock.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | AmountsLiquidity | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ApproveSwapAndPay | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Constants | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | DailyRateAndCollateral | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ErrLib | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | ExternalCall | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Keys | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LightQuoterV3 | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | OwnerSettings | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | TransferHelper | unmatched — not counted | — | — | no |
| Wagmi-security-review.pdf | Vault | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | FlashLoanAggregator | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | LiquidityBorrowingManager | unmatched — not counted | — | — | no |
| 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf | LiquidityManager | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xaf20f5...0de7d7` | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x07ed33...5024da` | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0e0ce4...87d16b` | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xaf20f5...0de7d7` | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x92cc36...b83a67` | WagmiToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 3 |
| standard_library | 5 |
| needs_review | 260 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 92 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11719] 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf
- [11720] Wagmi-security-review.pdf
- [11721] 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf
- [11722] Wagmi-security-review.pdf
- [11723] Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf
- [11724] Wagmi Leverage V1.0 Sherlock.pdf
- [11725] Wagmi Leverage V1.1 Hacken.pdf
- [11726] Wagmi Leverage V1.5 Sherlock.pdf
- [11727] Wagmi Leverage V2.0 Pashov.pdf
- [11728] Wagmi Leverage V2.0 Sherlock.pdf
- [14576] Wagmi-security-review.pdf
- [14577] 2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
