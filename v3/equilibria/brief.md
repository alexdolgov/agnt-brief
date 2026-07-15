# Agentic Audit Brief: Equilibria

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Equilibria (`equilibria`)
- Website: [https://equilibria.fi/home](https://equilibria.fi/home)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, mantle, optimism, plasma, sonic
- Contract surface: 262 unique implementations (587 raw deployments)
- Coverage basis: 8/118 confirmed own live verified implementations (6.8%); conservative 6.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $12,942,083.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Equilibria. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 180 contract row(s) across arbitrum, base, berachain, bsc, ethereum, hyperliquid, mantle, optimism, plasma, sonic. Structural roles: 121 unclassified, 53 core, 6 supporting. 41 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 180
- Structural roles: unclassified (121), core (53), supporting (6)
- Contract kinds: contract (180)
- Detected standards: erc1967proxy (33), erc20 (18), erc165 (14), ownable (14)
- Frameworks: openzeppelin (57), layerzero (11), openzeppelin-upgradeable (9), solmate (2)
- Upgradeable-pattern rows: 41

## Fork Analysis

0 of 95 contracts are derived from known codebases. 95 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x22fc5a...ce4455`, chain 1)
- UnnamedContract (`0x357f55...25e849`, chain 1)
- UnnamedContract (`0x4f1cdf...3d3452`, chain 1)
- UnnamedContract (`0x52f0bb...789ca5`, chain 1)
- UnnamedContract (`0xd6ecfd...4fd54f`, chain 1)
- UnnamedContract (`0xd8967b...73ec27`, chain 1)
- UnnamedContract (`0xfe80d6...740b2b`, chain 1)
- UnnamedContract (`0x02c033...d981e4`, chain 9745)
- UnnamedContract (`0x70f619...7e72b9`, chain 9745)
- UnnamedContract (`0x71e0ce...401ebf`, chain 9745)
- UnnamedContract (`0x741620...c4fecc`, chain 9745)
- UnnamedContract (`0x77b777...d65973`, chain 9745)
- UnnamedContract (`0x9f1453...ca341a`, chain 9745)
- UnnamedContract (`0xad2995...53421c`, chain 9745)
- UnnamedContract (`0xb2d167...4264c8`, chain 9745)
- UnnamedContract (`0xd51d25...86aef1`, chain 9745)
- UnnamedContract (`0xd8d51c...aae903`, chain 9745)
- UnnamedContract (`0xf7498d...052981`, chain 9745)
- UnnamedContract (`0x1ef5e2...21fa39`, chain 42161)
- UnnamedContract (`0x741620...c4fecc`, chain 80094)
- BribeManager (`0xe5b4b7...baef8e`, chain 42161)
- BridgeToken (`0x374ca3...468609`, chain 56)
- BridgeToken (`0x5fec85...5bd6bc`, chain 56)
- ClonableBeaconProxy (`0xbfbcfe...bbad9c`, chain 42161)
- ClonableBeaconProxy (`0xd48482...242ac3`, chain 42161)
- ePendleOFT (`0x6408d9...d16005`, chain 999)
- EPendleOFT (`0x8a5a43...bbd36c`, chain 10)
- EPendleOFT (`0x06fd8e...534f37`, chain 56)
- EPendleOFT (`0x7700eb...ed33b1`, chain 146)
- EPendleOFT (`0xb2d167...4264c8`, chain 999)
- EPendleOFT (`0x7700eb...ed33b1`, chain 5000)
- EPendleOFT (`0x2350ea...709913`, chain 8453)
- EPendleOFT (`0x8c9b5b...0029f5`, chain 42161)
- EPendleProxyOFT (`0x6ae382...45c577`, chain 1)
- EQBOFT (`0x3ce842...ad4e50`, chain 999)
- EqbZap (`0x41f5e9...45b8ed`, chain 10)
- EqbZap (`0x03e2bc...634513`, chain 56)
- EqbZap (`0x22fc5a...ce4455`, chain 146)
- EqbZap (`0xc7517f...421e32`, chain 999)
- EqbZap (`0x22fc5a...ce4455`, chain 5000)
- EqbZap (`0x357f55...25e849`, chain 8453)
- EqbZap (`0x39f478...f6993d`, chain 42161)
- EqbZap (`0xf8aa1d...920332`, chain 80094)
- ERC1967Proxy (`0x48540d...6fc335`, chain 146)
- ERC1967Proxy (`0x9cacb5...7e8c6b`, chain 146)
- GnosisSafeProxy (`0x397aa0...51afa0`, chain 1)
- GnosisSafeProxy (`0x29828f...6f0444`, chain 42161)
- GnosisSafeProxy (`0xfda441...2724e4`, chain 42161)
- L2StandardERC20 (`0x3e7ef8...276747`, chain 5000)
- L2StandardERC20 (`0x9e1028...6840e0`, chain 5000)
- OptimismMintableERC20 (`0x76c37f...858481`, chain 10)
- OptimismMintableERC20 (`0xaf3a6f...dca2a0`, chain 10)
- OptimismMintableERC20 (`0x010cd9...80a50a`, chain 8453)
- OptimismMintableERC20 (`0xc6e669...f239f0`, chain 8453)
- TransparentUpgradeableProxy (`0x0140de...91d3bc`, chain 1)
- TransparentUpgradeableProxy (`0x4d32c8...0c26bf`, chain 1)
- TransparentUpgradeableProxy (`0x646279...f1e6e3`, chain 1)
- TransparentUpgradeableProxy (`0xd30d6f...968059`, chain 1)
- TransparentUpgradeableProxy (`0x18c616...e2b356`, chain 10)
- TransparentUpgradeableProxy (`0x4d32c8...0c26bf`, chain 10)
- TransparentUpgradeableProxy (`0xf19fbc...e94cec`, chain 10)
- TransparentUpgradeableProxy (`0x4d32c8...0c26bf`, chain 56)
- TransparentUpgradeableProxy (`0x646279...f1e6e3`, chain 56)
- TransparentUpgradeableProxy (`0x89a4e4...63186b`, chain 56)
- TransparentUpgradeableProxy (`0x479603...9e218d`, chain 146)
- TransparentUpgradeableProxy (`0x920873...56a3b8`, chain 146)
- TransparentUpgradeableProxy (`0x9f1453...ca341a`, chain 146)
- TransparentUpgradeableProxy (`0x18c616...e2b356`, chain 999)
- TransparentUpgradeableProxy (`0x5e73e7...ea4531`, chain 999)
- TransparentUpgradeableProxy (`0x7700eb...ed33b1`, chain 999)
- TransparentUpgradeableProxy (`0xad2995...53421c`, chain 999)
- TransparentUpgradeableProxy (`0x479603...9e218d`, chain 5000)
- TransparentUpgradeableProxy (`0x920873...56a3b8`, chain 5000)
- TransparentUpgradeableProxy (`0x9f1453...ca341a`, chain 5000)
- TransparentUpgradeableProxy (`0x2583a2...b4821d`, chain 8453)
- TransparentUpgradeableProxy (`0x6ee066...01b923`, chain 8453)
- TransparentUpgradeableProxy (`0x920873...56a3b8`, chain 8453)
- TransparentUpgradeableProxy (`0xd6ecfd...4fd54f`, chain 9745)
- TransparentUpgradeableProxy (`0x372277...b8319f`, chain 42161)
- TransparentUpgradeableProxy (`0x4250ea...654a92`, chain 42161)
- TransparentUpgradeableProxy (`0x4d32c8...0c26bf`, chain 42161)
- TransparentUpgradeableProxy (`0x646279...f1e6e3`, chain 42161)
- TransparentUpgradeableProxy (`0x18c616...e2b356`, chain 80094)
- TransparentUpgradeableProxy (`0x4d32c8...0c26bf`, chain 80094)
- TransparentUpgradeableProxy (`0x5e73e7...ea4531`, chain 80094)
- WOFT (`0x88bb2b...289032`, chain 80094)
- WOFT (`0xf9ee98...7e2037`, chain 80094)
- XEqbToken (`0x96c4a4...19ad8e`, chain 10)
- XEqbToken (`0x0cf6ab...80e139`, chain 56)
- XEqbToken (`0xfe80d6...740b2b`, chain 146)
- XEqbToken (`0x09bae4...c8e94d`, chain 999)
- XEqbToken (`0xfe80d6...740b2b`, chain 5000)
- XEqbToken (`0xd6ecfd...4fd54f`, chain 8453)
- XEqbToken (`0xfe80d6...740b2b`, chain 42161)
- XEqbToken (`0x96c4a4...19ad8e`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 180; live-surface rows included: 180 (180 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 130/130 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/118 (6.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 130 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 132 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 278
- Confirmed-live implementations: 130 of 262 unique; 132 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 8/225
- Verified + Unaudited implementations: 217
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 262
- Raw deployments: 587
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 8 | 3.6% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | optimism | unit-384879 (2 proxies) | 3 deployments: optimism `0x0140de...91d3bc`; optimism `0x660e0d...cc9fa9`; optimism `0x898ca9...3602b3` | ✅ Audited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | bsc | unit-384919 (2 proxies) | 3 deployments: bsc `0x09bae4...c8e94d`; bsc `0x52f0bb...789ca5`; bsc `0xe2db20...01dde7` | ✅ Audited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | base | unit-384943 | `0x6ee066...01b923` | ✅ Audited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384903 | 2 deployments: arbitrum `0x09bae4...c8e94d`; arbitrum `0xd6ecfd...4fd54f` | ✅ Audited |
| PendleProxyMainchain | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-384871 | `0x646279...f1e6e3` | ✅ Audited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-384894 | `0x646279...f1e6e3` | ✅ Audited |
| VaultEPendle | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-384869 | `0xd30d6f...968059` | ✅ Audited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384895 | 2 deployments: arbitrum `0x22fc5a...ce4455`; arbitrum `0x70f619...7e72b9` | ✅ Audited |

### ⚠️ Verified + Unaudited (217)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x02e666...5f25b6`; arbitrum `0x3c949d...340c85` | ⚠️ Unaudited |
| ArbVester | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x3138de...996d7c`; arbitrum `0x4e7322...30c2af`; arbitrum `0xd40ccc...842bea`; arbitrum `0xecc88a...718219` | ⚠️ Unaudited |
| ArbVester | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xaff75f...8bc5fe`; arbitrum `0xf857c9...227e03` | ⚠️ Unaudited |
| ArbVester | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xdc947a...86c88c`; arbitrum `0xf0b66f...1d00d9` | ⚠️ Unaudited |
| BaseRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | optimism | n/a | 2 deployments: optimism `0x1679fe...46723b`; optimism `0x9cb59c...cc7353` | ⚠️ Unaudited |
| BaseRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 3 deployments: bsc `0x1679fe...46723b`; bsc `0x26ae16...186f5c`; bsc `0xd8d51c...aae903` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | sonic | unit-384886 (2 proxies) | 3 deployments: sonic `0x52f0bb...789ca5`; sonic `0x660e0d...cc9fa9`; sonic `0x741620...c4fecc` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | hyperliquid | unit-384964 (2 proxies) | 3 deployments: hyperliquid `0x22fc5a...ce4455`; hyperliquid `0x500d5e...84d3d6`; hyperliquid `0x71e0ce...401ebf` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | mantle | unit-384911 (2 proxies) | 3 deployments: mantle `0x52f0bb...789ca5`; mantle `0x660e0d...cc9fa9`; mantle `0x741620...c4fecc` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | base | unit-384938 (2 proxies) | 3 deployments: base `0x0140de...91d3bc`; base `0x71e0ce...401ebf`; base `0xb2d167...4264c8` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | plasma | unit-384956 (2 proxies) | 3 deployments: plasma `0x55f140...0433a8`; plasma `0xc7517f...421e32`; plasma `0xd8967b...73ec27` | ⚠️ Unaudited |
| BaseRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 31 | arbitrum | n/a | 32 deployments: arbitrum `0x0140de...91d3bc`; arbitrum `0x03b86b...c88e4e`; arbitrum `0x03e2bc...634513`; arbitrum `0x06fd8e...534f37`; arbitrum `0x114765...87c9a7`; arbitrum `0x16f460...d01594`; arbitrum `0x245f1d...37a960`; arbitrum `0x261341...96f574`; arbitrum `0x2e18b7...77ff78`; arbitrum `0x5017d2...3f9003`; arbitrum `0x507fdb...466ced`; arbitrum `0x5511c9...62d83b`; arbitrum `0x55f140...0433a8`; arbitrum `0x643df8...28fee1`; arbitrum `0x6668f0...e84431`; arbitrum `0x6e6bf7...2adf77`; arbitrum `0x71e0ce...401ebf`; arbitrum `0x74ddfb...2d0c34`; arbitrum `0x8181c8...07a6b2`; arbitrum `0x968e4a...32b49b`; arbitrum `0x96edd4...67c10b`; arbitrum `0x972eb6...4b0bee`; arbitrum `0xabe223...ca0944`; arbitrum `0xb45271...afc033`; arbitrum `0xb9ee33...930718`; arbitrum `0xc72d63...5976ea`; arbitrum `0xcd7246...9e2d65`; arbitrum `0xce3fe5...44b596`; arbitrum `0xf306bd...e7d4e2`; arbitrum `0xf8aa1d...920332`; arbitrum `0xfaaec6...2a7f7a`; arbitrum `0xfc5d0f...d3bd10` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384901 | 2 deployments: arbitrum `0x901e8f...0e1a88`; arbitrum `0x9739d1...bb4d6f` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | berachain | unit-384931 (2 proxies) | 3 deployments: berachain `0x0140de...91d3bc`; berachain `0x2350ea...709913`; berachain `0x660e0d...cc9fa9` | ⚠️ Unaudited |
| BaseRewardPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x44d051...b714a9`; bsc `0xbc292e...6ebaca`; bsc `0xd308ab...223fd1`; sonic `0xa6ec3c...9f05c3`; hyperliquid `0x9cb59c...cc7353`; mantle `0xa6ec3c...9f05c3`; base `0x55f140...0433a8`; arbitrum `0xc602bd...d837d1`; berachain `0xf7498d...052981` | ⚠️ Unaudited |
| BaseRewardPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x02414e...9d05bf`; arbitrum `0x91b4ce...d0319f` | ⚠️ Unaudited |
| BaseRewardPoolV2_1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 9 deployments: optimism `0xd8a365...2f39b2`; bsc `0x879382...1e942b`; bsc `0x972eb6...4b0bee`; sonic `0x1f4417...a9217b`; hyperliquid `0x1679fe...46723b`; mantle `0xb213f2...1247b5`; base `0x9be393...68b88c`; arbitrum `0x387aa2...100f6c`; berachain `0x811d98...6e3e8a` | ⚠️ Unaudited |
| BribeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1f3ef2...562b40`; bsc `0xb9ee33...930718` | ⚠️ Unaudited |
| BribeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x1d0e04...83c477` | ⚠️ Unaudited |
| BribeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x38622b...06f4b2`; arbitrum `0x576ab2...2f748d`; arbitrum `0x608205...5d2237`; arbitrum `0x8dbb5a...12125c`; arbitrum `0xd518db...077b7a`; arbitrum `0xe584cc...396b67` | ⚠️ Unaudited |
| BribeManager | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384905 | 2 deployments: arbitrum `0xb3c40b...df99ca`; arbitrum `0xe5b4b7...baef8e` | ⚠️ Unaudited |
| ChainlinkOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x803551...aef1d7` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | optimism | n/a | 3 deployments: optimism `0x00807f...3966f5`; optimism `0x26ae16...186f5c`; optimism `0x55f140...0433a8` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x00807f...3966f5`; bsc `0x500d5e...84d3d6`; bsc `0x55f140...0433a8`; bsc `0xb2d167...4264c8` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 34 | arbitrum | n/a | 35 deployments: arbitrum `0x072550...7aff61`; arbitrum `0x0c873e...ba7f9f`; arbitrum `0x0d7fd2...707fac`; arbitrum `0x180dd2...9e2f8e`; arbitrum `0x183b30...b75e78`; arbitrum `0x1f3ef2...562b40`; arbitrum `0x229de5...bc5b4f`; arbitrum `0x306264...dfcb1a`; arbitrum `0x312e2a...83a990`; arbitrum `0x3672ab...5e491a`; arbitrum `0x4159ec...7a40bd`; arbitrum `0x473229...27da5a`; arbitrum `0x5873f8...705d5c`; arbitrum `0x6d36ca...4ba295`; arbitrum `0x7a2d44...4763f4`; arbitrum `0x879382...1e942b`; arbitrum `0x898ca9...3602b3`; arbitrum `0x89f24c...69ef10`; arbitrum `0x950904...df354e`; arbitrum `0x96a375...656e98`; arbitrum `0x97c7d9...265459`; arbitrum `0x9be393...68b88c`; arbitrum `0xa6ec3c...9f05c3`; arbitrum `0xaa4a7a...790b74`; arbitrum `0xaa4ada...5c1204`; arbitrum `0xaab4b3...52fd6c`; arbitrum `0xb0d718...78eb7a`; arbitrum `0xb9b748...4105a8`; arbitrum `0xbaa2b0...256470`; arbitrum `0xd5d127...22ecbf`; arbitrum `0xe86037...38826a`; arbitrum `0xf10ae0...9d508f`; arbitrum `0xf19fbc...e94cec`; arbitrum `0xf7498d...052981`; arbitrum `0xfc09f3...9ff778` | ⚠️ Unaudited |
| DepositTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: optimism `0x370d08...0ef7aa`; optimism `0x642c9d...e3ec81`; optimism `0xcb2dc3...f66ea4`; bsc `0x299c64...c748af`; sonic `0x500d5e...84d3d6`; hyperliquid `0xf7498d...052981`; mantle `0x500d5e...84d3d6`; base `0xa6ec3c...9f05c3`; arbitrum `0x7368cb...e36ac9`; berachain `0xd8d51c...aae903` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | optimism | unit-384847 | `0x8a5a43...bbd36c` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | bsc | unit-384855 | `0x06fd8e...534f37` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | sonic | unit-384849 | `0x7700eb...ed33b1` | ⚠️ Unaudited |
| ePendleOFT | token | project_anchor | own_supporting | 0 | hyperliquid | unit-384866 | `0x6408d9...d16005` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | hyperliquid | unit-384867 | `0xb2d167...4264c8` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | mantle | unit-384853 | `0x7700eb...ed33b1` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | base | unit-384860 | `0x2350ea...709913` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | arbitrum | unit-384851 | `0x8c9b5b...0029f5` | ⚠️ Unaudited |
| EPendleProxyOFT | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-384842 | `0x6ae382...45c577` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | optimism | unit-384874 | `0x4f1cdf...3d3452` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | bsc | unit-384922 | `0x6668f0...e84431` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | sonic | unit-384892 | `0x02c033...d981e4` | ⚠️ Unaudited |
| EpendleVault | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-384966 | `0x5e73e7...ea4531` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | mantle | unit-384915 | `0x02c033...d981e4` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | base | unit-384941 | `0x9f1453...ca341a` | ⚠️ Unaudited |
| EpendleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x35fd17...ef2862` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | berachain | unit-384928 | `0x4f1cdf...3d3452` | ⚠️ Unaudited |
| EPendleVaultSidechain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x261341...96f574` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | optimism | unit-384876 | `0xf19fbc...e94cec` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | bsc | unit-384918 | `0x89a4e4...63186b` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | sonic | unit-384885 | `0x9f1453...ca341a` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-384962 | `0x7700eb...ed33b1` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | mantle | unit-384910 | `0x9f1453...ca341a` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-384902 | `0x4250ea...654a92` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | berachain | unit-384935 | `0x5e73e7...ea4531` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x92c26e...825299`; optimism `0xcaed9f...b558d2` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x172cdd...da9b4f`; bsc `0xe343ed...31b454` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x2350ea...709913`; sonic `0xb2d167...4264c8` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xa6ec3c...9f05c3`; hyperliquid `0xd8d51c...aae903` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: optimism `0x466732...49c918`; optimism `0xa48769...d7d023`; bsc `0x324cd3...ccaea6`; mantle `0x2350ea...709913`; base `0x500d5e...84d3d6`; arbitrum `0x75759a...23e939` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x28f35f...9f7bd2`; mantle `0xb2d167...4264c8` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x324cd3...ccaea6`; base `0xd8d51c...aae903` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x941acd...727e0a`; arbitrum `0xef7382...44520b` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x500d5e...84d3d6`; berachain `0xb2d167...4264c8` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | optimism | unit-384878 | 2 deployments: optimism `0x507fdb...466ced`; optimism `0x86a201...a818c5` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | bsc | unit-384925 | 2 deployments: bsc `0x898ca9...3602b3`; bsc `0x8a5a43...bbd36c` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | sonic | unit-384888 | 2 deployments: sonic `0x5e73e7...ea4531`; sonic `0x6ee066...01b923` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384965 | 2 deployments: hyperliquid `0x2350ea...709913`; hyperliquid `0x741620...c4fecc` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | mantle | unit-384912 | 2 deployments: mantle `0x5e73e7...ea4531`; mantle `0x6ee066...01b923` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | base | unit-384944 | 2 deployments: base `0x741620...c4fecc`; base `0x7700eb...ed33b1` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384904 | 2 deployments: arbitrum `0x3eabe1...114600`; arbitrum `0xddf45d...a15f2b` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | berachain | unit-384932 | 2 deployments: berachain `0x6ee066...01b923`; berachain `0x7700eb...ed33b1` | ⚠️ Unaudited |
| EqbInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xb899db...d5c640`; arbitrum `0xda2b96...857467` | ⚠️ Unaudited |
| EqbInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xd08511...0ed544`; arbitrum `0xf29a4f...61fbc9` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | optimism | unit-384875 | 2 deployments: optimism `0x09bae4...c8e94d`; optimism `0x52f0bb...789ca5` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | bsc | unit-384926 | 2 deployments: bsc `0x96c4a4...19ad8e`; bsc `0xd6ecfd...4fd54f` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | sonic | unit-384891 | 2 deployments: sonic `0x09bae4...c8e94d`; sonic `0xd6ecfd...4fd54f` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384961 | 2 deployments: hyperliquid `0x0140de...91d3bc`; hyperliquid `0x660e0d...cc9fa9` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | mantle | unit-384914 | 2 deployments: mantle `0x09bae4...c8e94d`; mantle `0xd6ecfd...4fd54f` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52f0bb...789ca5` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | base | unit-384942 | 2 deployments: base `0x5a27ac...dbf821`; base `0x660e0d...cc9fa9` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | berachain | unit-384929 | 2 deployments: berachain `0x09bae4...c8e94d`; berachain `0x52f0bb...789ca5` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x0cf6ab...80e139`; bsc `0x2583a2...b4821d`; mantle `0xad2995...53421c`; base `0x245f1d...37a960`; arbitrum `0x2583a2...b4821d` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xfe67c2...5ec9a9`; optimism `0xfe80d6...740b2b` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xad2995...53421c`; bsc `0xcbad0c...2c4779` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x0cf6ab...80e139`; sonic `0xad2995...53421c` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x96c4a4...19ad8e`; hyperliquid `0xd6ecfd...4fd54f` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x0cf6ab...80e139`; mantle `0xa48769...d7d023` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x00807f...3966f5`; base `0xb3ad8c...32fbb8` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xad2995...53421c`; arbitrum `0xd2eb8d...2f5fd2` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x0cf6ab...80e139`; berachain `0xfe80d6...740b2b` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xad2995...53421c`; optimism `0xb1a4bb...49a429` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x18c616...e2b356`; bsc `0xb14f64...6e6453` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x18c616...e2b356`; sonic `0x2583a2...b4821d` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x0cf6ab...80e139`; hyperliquid `0xfe80d6...740b2b` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 5 deployments: optimism `0x2583a2...b4821d`; bsc `0x920873...56a3b8`; mantle `0x18c616...e2b356`; base `0x9cb59c...cc7353`; arbitrum `0x920873...56a3b8` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x2583a2...b4821d`; mantle `0x273e61...06c399` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x576ab2...2f748d`; base `0xb0d718...78eb7a` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x18c616...e2b356`; arbitrum `0x8505b3...ac6b64` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x2583a2...b4821d`; berachain `0xad2995...53421c` | ⚠️ Unaudited |
| EQBOFT | token | project_anchor | own_supporting | 0 | hyperliquid | unit-384865 | `0x3ce842...ad4e50` | ⚠️ Unaudited |
| EQBOFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x73e247...4cac8c`; hyperliquid `0xb4484a...2cefd1` | ⚠️ Unaudited |
| EqbRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x64528d...b5d7ef`; arbitrum `0xa4ffa4...cc2e88` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | optimism | unit-384877 | 2 deployments: optimism `0x357f55...25e849`; optimism `0x41f5e9...45b8ed` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | bsc | unit-384917 | 2 deployments: bsc `0x03e2bc...634513`; bsc `0x22fc5a...ce4455` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | sonic | unit-384884 | 2 deployments: sonic `0x22fc5a...ce4455`; sonic `0x70f619...7e72b9` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384967 | 2 deployments: hyperliquid `0xc7517f...421e32`; hyperliquid `0xd8967b...73ec27` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | mantle | unit-384908 | 2 deployments: mantle `0x22fc5a...ce4455`; mantle `0x70f619...7e72b9` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | base | unit-384940 | 2 deployments: base `0x357f55...25e849`; base `0xc7517f...421e32` | ⚠️ Unaudited |
| EqbZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: optimism `0x70f619...7e72b9`; bsc `0x71e0ce...401ebf`; bsc `0xcaed9f...b558d2`; arbitrum `0x357f55...25e849`; berachain `0x70f619...7e72b9` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384896 | 2 deployments: arbitrum `0x39f478...f6993d`; arbitrum `0xc7517f...421e32` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | berachain | unit-384937 | 2 deployments: berachain `0x357f55...25e849`; berachain `0xf8aa1d...920332` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xc7517f...421e32`; optimism `0xd8967b...73ec27` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0dc8b9...5279ce`; bsc `0xa929e8...e06599` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x357f55...25e849`; sonic `0xc7517f...421e32` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x02c033...d981e4`; hyperliquid `0x4f1cdf...3d3452` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x357f55...25e849`; mantle `0xc7517f...421e32` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x02c033...d981e4`; base `0xd8967b...73ec27` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x03b611...0c83e8`; arbitrum `0x6cea12...63afb8`; arbitrum `0xbda88a...f6035b`; arbitrum `0xf2d038...f7ca80` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0xc7517f...421e32`; berachain `0xd8967b...73ec27` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-384872 | `0x397aa0...51afa0` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | arbitrum | unit-384897 (2 proxies) | 2 deployments: arbitrum `0x29828f...6f0444`; arbitrum `0xfda441...2724e4` | ⚠️ Unaudited |
| HyperliquidExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4bb133...61b259`; hyperliquid `0xf4d923...e37949` | ⚠️ Unaudited |
| IrrevocableLockingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x22126a...c1c3ad`; arbitrum `0x7d0583...68b7c0`; arbitrum `0xed8262...b625bd` | ⚠️ Unaudited |
| L2StandardERC20 | token | project_anchor | own_supporting | 0 | mantle | unit-384852 | `0x3e7ef8...276747` | ⚠️ Unaudited |
| L2StandardERC20 | token | project_anchor | own_supporting | 0 | mantle | unit-384854 | `0x9e1028...6840e0` | ⚠️ Unaudited |
| MerkleDistributorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x950904...df354e`; sonic `0x9be393...68b88c` | ⚠️ Unaudited |
| MerkleDistributorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x35fd17...ef2862`; hyperliquid `0x4ecf06...3ad188` | ⚠️ Unaudited |
| MerkleDistributorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2e4245...8264a5`; arbitrum `0xce1533...c49ae3` | ⚠️ Unaudited |
| MerkleDistributorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x64239a...7ed2ac`; berachain `0xa2cb78...e1ea19` | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | arbitrum | n/a | 5 deployments: arbitrum `0x097b76...4f9bb5`; arbitrum `0x6e3a28...a7c650`; arbitrum `0x9e2c5a...5d1ba1`; arbitrum `0xdcd16f...5d8b01`; arbitrum `0xff6697...2da328` | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0x5be392...254886`; sonic `0x4abc7c...6eadd2`; hyperliquid `0xbda88a...f6035b`; arbitrum `0x2e1ac6...95968f` | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x0cf4a2...a5997b`; berachain `0x672618...a73de9` | ⚠️ Unaudited |
| MintedERC20 | token | project_anchor | own_supporting | 2 | sonic | unit-384889 (2 proxies) | 2 deployments: sonic `0x48540d...6fc335`; sonic `0x9cacb5...7e8c6b` | ⚠️ Unaudited |
| MintedERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xf1ef7d...71a74b` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | optimism | unit-384846 | `0x76c37f...858481` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | optimism | unit-384848 | `0xaf3a6f...dca2a0` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-384859 | `0x010cd9...80a50a` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0xbc7b1f...6e66e1`; base `0xa99f6e...9eeb3e` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-384861 | `0xc6e669...f239f0` | ⚠️ Unaudited |
| OUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xad11a8...b35afa`; hyperliquid `0xcd9a74...5aa7c8` | ⚠️ Unaudited |
| PendleBoosterMainchain | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-384870 | `0x4d32c8...0c26bf` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | optimism | unit-384873 | `0x18c616...e2b356` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | bsc | unit-384927 | `0x4d32c8...0c26bf` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | sonic | unit-384887 | `0x920873...56a3b8` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-384959 | `0xad2995...53421c` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | mantle | unit-384909 | `0x920873...56a3b8` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | base | unit-384946 | `0x2583a2...b4821d` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | plasma | unit-384952 | `0xd6ecfd...4fd54f` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-384899 | `0x4d32c8...0c26bf` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | berachain | unit-384936 | `0x18c616...e2b356` | ⚠️ Unaudited |
| PendleCampaigns | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x576ab2...2f748d` | ⚠️ Unaudited |
| PendleCampaigns | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xb3ad8c...32fbb8` | ⚠️ Unaudited |
| PendleCampaigns | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4c960b...5362ef` | ⚠️ Unaudited |
| PendleCampaignSidechainV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x245f1d...37a960` | ⚠️ Unaudited |
| PendleCampaignSidechainV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xd8d51c...aae903` | ⚠️ Unaudited |
| PendleDepositor | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-384868 | `0x0140de...91d3bc` | ⚠️ Unaudited |
| PendleOFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x17bac5...831f24` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | optimism | unit-384880 | `0x4d32c8...0c26bf` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | bsc | unit-384923 | `0x646279...f1e6e3` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | sonic | unit-384890 | `0x479603...9e218d` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-384960 | `0x18c616...e2b356` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | mantle | unit-384913 | `0x479603...9e218d` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | base | unit-384945 | `0x920873...56a3b8` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | berachain | unit-384930 | `0x4d32c8...0c26bf` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: optimism `0x96a375...656e98`; sonic `0x646279...f1e6e3`; hyperliquid `0x6d2053...432c35`; hyperliquid `0x880f61...89167f`; hyperliquid `0x920873...56a3b8`; hyperliquid `0xb1eead...2b86c3`; hyperliquid `0xd8cf92...d6ff4d`; mantle `0x646279...f1e6e3`; base `0x4d32c8...0c26bf`; arbitrum `0x24188b...1f0dbd`; arbitrum `0xd217be...91c8c3`; berachain `0x479603...9e218d` | ⚠️ Unaudited |
| RestakeStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c72b...5ae2c6` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | arbitrum | n/a | 8 deployments: arbitrum `0x273e61...06c399`; arbitrum `0x35e523...1f2d2c`; arbitrum `0x4abc7c...6eadd2`; arbitrum `0x696aa3...898239`; arbitrum `0x708544...c1ef49`; arbitrum `0x7b1210...8f40ca`; arbitrum `0x87707d...e88046`; arbitrum `0x919cf6...4187c5` | ⚠️ Unaudited |
| SmartConvertorArbi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59fb35...29e295` | ⚠️ Unaudited |
| SmartConvertorArbi | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6a82a1...896c60`; arbitrum `0xd72b94...94243a` | ⚠️ Unaudited |
| StakingPoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x473e84...8a713b`; ethereum `0x50c6f7...da5e97`; ethereum `0xbf6871...8b372c` | ⚠️ Unaudited |
| StandardArbERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0c880f...a8c9e8` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 2 | arbitrum | unit-384898 (2 proxies) | 2 deployments: arbitrum `0xbfbcfe...bbad9c`; arbitrum `0xd48482...242ac3` | ⚠️ Unaudited |
| TetherTokenOFTExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xaf368c...bcbebf`; hyperliquid `0xe9aba8...0f7de7` | ⚠️ Unaudited |
| TetherTokenOFTExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xd94926...620cb4`; hyperliquid `0xe1ad84...93681e` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xe2a634...c11d03`; arbitrum `0x5c249a...e21886` | ⚠️ Unaudited |
| TokenImplementation | token | project_anchor | own_supporting | 2 | bsc | unit-384924 (2 proxies) | 2 deployments: bsc `0x374ca3...468609`; bsc `0x5fec85...5bd6bc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x86a201...a818c5`; bsc `0xc00371...9ef9dc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0cf6ab...80e139`; base `0xad2995...53421c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x96c4a4...19ad8e`; base `0xfe80d6...740b2b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x0140de...91d3bc`; plasma `0x660e0d...cc9fa9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384948 | 2 deployments: plasma `0x02c033...d981e4`; plasma `0x4f1cdf...3d3452` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x09bae4...c8e94d`; plasma `0x52f0bb...789ca5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384950 | 2 deployments: plasma `0x22fc5a...ce4455`; plasma `0x71e0ce...401ebf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384951 | 2 deployments: plasma `0x2350ea...709913`; plasma `0x741620...c4fecc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x26ae16...186f5c`; plasma `0x9cb59c...cc7353` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384949 | 2 deployments: plasma `0x357f55...25e849`; plasma `0x70f619...7e72b9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384955 | 2 deployments: plasma `0x500d5e...84d3d6`; plasma `0xb2d167...4264c8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384953 | 2 deployments: plasma `0x5e73e7...ea4531`; plasma `0x9f1453...ca341a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x6ee066...01b923`; plasma `0x7700eb...ed33b1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384957 | 2 deployments: plasma `0xa6ec3c...9f05c3`; plasma `0xd8d51c...aae903` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384954 | 2 deployments: plasma `0xad2995...53421c`; plasma `0xfe80d6...740b2b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x187520...84b0ab`; berachain `0x950904...df354e` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 36 deployments: ethereum `0xca5d2c...c60968`; ethereum `0xccf949...5dc593`; optimism `0x07dc38...83de3c`; optimism `0x666136...64f340`; optimism `0xf303f7...7c812b`; bsc `0x6f6163...6d8ca8`; bsc `0xbdd61e...0af179`; bsc `0xca93b4...a3b91b`; bsc `0xd804ab...9087ed`; sonic `0x187520...84b0ab`; sonic `0x672618...a73de9`; sonic `0xd8d51c...aae903`; sonic `0xf7498d...052981`; hyperliquid `0x00807f...3966f5`; hyperliquid `0x183b30...b75e78`; hyperliquid `0x2386f0...a56cdf`; hyperliquid `0x245f1d...37a960`; hyperliquid `0x26ae16...186f5c`; hyperliquid `0x55f140...0433a8`; hyperliquid `0xb0d718...78eb7a`; hyperliquid `0xf2d038...f7ca80`; mantle `0xa2cb78...e1ea19`; mantle `0xd8d51c...aae903`; mantle `0xf7498d...052981`; base `0x26ae16...186f5c`; base `0x950904...df354e`; base `0xf7498d...052981`; arbitrum `0x421c2c...c47ff0`; arbitrum `0x43a5bf...bd8c5f`; arbitrum `0x4b4f09...769db8`; arbitrum `0xd1705b...aeba15`; berachain `0x3a4db3...10d4b3`; berachain `0x55f140...0433a8`; berachain `0xa6ec3c...9f05c3`; berachain `0xb213f2...1247b5`; berachain `0xc3aa06...b451db` | ⚠️ Unaudited |
| VaultDepositToken | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x03b86b...c88e4e` | ⚠️ Unaudited |
| VaultDepositTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05eaaa...10f7a0` | ⚠️ Unaudited |
| VaultEPendleArbi | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-384900 | `0x372277...b8319f` | ⚠️ Unaudited |
| VestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x1e8248...eedf5e`; arbitrum `0x299c64...c748af`; arbitrum `0x6f6163...6d8ca8`; arbitrum `0xc3aa06...b451db` | ⚠️ Unaudited |
| VestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7aecd3...b17be9` | ⚠️ Unaudited |
| VestedEscrowFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x54d715...eb13ec`; arbitrum `0x74138a...8d7ba8` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | optimism | unit-384881 | 2 deployments: optimism `0x22fc5a...ce4455`; optimism `0x71e0ce...401ebf` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | bsc | unit-384921 | 2 deployments: bsc `0x0140de...91d3bc`; bsc `0x660e0d...cc9fa9` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | sonic | unit-384883 | 2 deployments: sonic `0x0140de...91d3bc`; sonic `0x71e0ce...401ebf` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384963 | 2 deployments: hyperliquid `0x357f55...25e849`; hyperliquid `0x70f619...7e72b9` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | mantle | unit-384907 | 2 deployments: mantle `0x0140de...91d3bc`; mantle `0x71e0ce...401ebf` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | base | unit-384939 | 2 deployments: base `0x22fc5a...ce4455`; base `0x70f619...7e72b9` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | berachain | unit-384933 | 2 deployments: berachain `0x22fc5a...ce4455`; berachain `0x71e0ce...401ebf` | ⚠️ Unaudited |
| VoEqb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x172cdd...da9b4f`; arbitrum `0xac1f84...305ab1` | ⚠️ Unaudited |
| VotingEscrowPendleMainchain | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f30a9...170210` | ⚠️ Unaudited |
| WOFT | token | project_anchor | own_supporting | 0 | berachain | unit-384857 | `0x88bb2b...289032` | ⚠️ Unaudited |
| WOFT | token | project_anchor | own_supporting | 0 | berachain | unit-384858 | `0xf9ee98...7e2037` | ⚠️ Unaudited |
| WOFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xff9c59...88aef6` | ⚠️ Unaudited |
| XEPendleVester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0f9492...ac45e6` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | optimism | unit-384882 | 2 deployments: optimism `0x96c4a4...19ad8e`; optimism `0xd6ecfd...4fd54f` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | bsc | unit-384920 | 2 deployments: bsc `0x0cf6ab...80e139`; bsc `0xfe80d6...740b2b` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | sonic | unit-384893 | 2 deployments: sonic `0x96c4a4...19ad8e`; sonic `0xfe80d6...740b2b` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384958 | 2 deployments: hyperliquid `0x09bae4...c8e94d`; hyperliquid `0x52f0bb...789ca5` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | mantle | unit-384916 | 2 deployments: mantle `0x96c4a4...19ad8e`; mantle `0xfe80d6...740b2b` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | base | unit-384947 | 2 deployments: base `0x09bae4...c8e94d`; base `0xd6ecfd...4fd54f` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384906 | 2 deployments: arbitrum `0x96c4a4...19ad8e`; arbitrum `0xfe80d6...740b2b` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | berachain | unit-384934 | 2 deployments: berachain `0x96c4a4...19ad8e`; berachain `0xd6ecfd...4fd54f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e511a...f0f6e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384838 | `0x22fc5a...ce4455` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384839 | `0x357f55...25e849` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384840 | `0x4f1cdf...3d3452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384841 | `0x52f0bb...789ca5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384843 | `0xd6ecfd...4fd54f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384844 | `0xd8967b...73ec27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5fa7e...bdfeed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384845 | `0xfe80d6...740b2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x686fed...faafbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd308ab...223fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf857c9...227e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13e029...1beb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3521b7...1eb705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x893bb3...219cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab5542...a106bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe0e1c3...83f343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x00807f...3966f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x017778...29cd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x03b86b...c88e4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0cf6ab...80e139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1679fe...46723b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x183b30...b75e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x245f1d...37a960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x36ff28...c3d32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x647316...482ee9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384862 | `0x77b777...d65973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8d9467...a50ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb0d718...78eb7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384863 | `0xd51d25...86aef1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384864 | `0xf7498d...052981` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-384850 | `0x1ef5e2...21fa39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1b1af...d04e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd76ca...728567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4abc7c...6eadd2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-384856 | `0x741620...c4fecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xce740f...e7b76a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FQKP8F3G6lbidKTu8nkEc%2FEquilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf) | WatchPug | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/b8B3TscrPCJ1YmEeCb4Q/Equilibria_Continuous_Audit_May_21,_25_Audit_Report_by_WatchPug.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2Fb8B3TscrPCJ1YmEeCb4Q%2FEquilibria_Continuous_Audit_May_21%2C_25_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FmmHtThc39pihExxQM3Jx%2FEquilibria_%232__Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FT7caQbKvLq6KPy2IRcuY%2FEquilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-10 | stale | Direct | n/a | matched | 2 | 2 | 0 | 1 | n/a |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2F5r1RtgYBP522L4FGQ3lx%2FEquilibria_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-06 | stale | Direct | contract_name | matched | 5 | 5 | 0 | 9 | high |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FFHRXG7oZJB5z0Ir5Ybpa%2FPeckShield-Audit-Report-Equilibria-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3549] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf — no match: Extracted contract names from findings and code snippets. The report does not have a formal scope table but lists the codebase URL and commit. All contracts referenced in findings are considered in scope.
- [3550] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/b8B3TscrPCJ1YmEeCb4Q/Equilibria_Continuous_Audit_May_21,_25_Audit_Report_by_WatchPug.pdf — no match: No explicit scope section or contract names listed; only a code snippet referencing a reentrancy guard slot is shown.
- [3551] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf — matched: Contracts extracted from findings sections; no explicit scope table but contracts are clearly audited targets.
- [3552] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf — matched: No reason recorded
- [3553] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf — matched: Extracted contract names from findings and file paths. Audit date from delivery date on page 3.
- [3554] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf — no match: Extracted contract names from findings targets. No explicit scope table listing all contracts, but the report mentions the repository and commit hash. The audit date is from the cover page and version history.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | VaultDepositToken | unmatched — not counted | — | mentioned in findings and code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | VaultDepositTokenFactory | unmatched — not counted | — | mentioned in findings and code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | EqbZap | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xc7517f...421e32` — deployed 2023-06-02 10:06:48+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x357f55...25e849` — deployed 2023-08-18 13:13:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x357f55...25e849` — deployed 2025-03-28 10:37:44+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a...ce4455` — deployed 2023-07-05 07:07:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x70f619...7e72b9` — deployed 2024-09-03 13:55:08+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x70f619...7e72b9` — deployed 2025-03-10 12:33:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8967b...73ec27` — deployed 2025-08-09 09:48:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc7517f...421e32` — deployed 2024-12-04 12:30:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | EqbConstants | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | EqbConfig | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | Booster | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | IBaseRewardPool | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | IPendleRouterV3 | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | ISwapRouter | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | IERC20 | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | IERC20Upgradeable | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | IVaultDepositToken | unmatched — not counted | — | referenced in code snippets | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | AccessControlUpgradeable | unmatched — not counted | — | inherited by VaultDepositTokenFactory | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | BeaconProxy | unmatched — not counted | — | used in createVault | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | SafeERC20 | unmatched — not counted | — | referenced in findings | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | IPSwapAggregator | unmatched — not counted | — | unused import mentioned in WP-N12 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | IStandardizedYield | unmatched — not counted | — | unused import mentioned in WP-N12 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf | SmartConvertor | unmatched — not counted | — | listed in finding WP-M1 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf | ChainlinkOracle | unmatched — not counted | — | listed in findings WP-L2 and WP-L3 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf | EpendleVaultSidechain | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x89a4e4...63186b` — deployed 2024-02-28 13:30:06+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9f1453...ca341a` — deployed 2025-03-10 12:34:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7700eb...ed33b1` — deployed 2025-08-09 09:54:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9f1453...ca341a` — deployed 2024-09-03 13:56:42+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4250ea...654a92` — deployed 2024-01-23 13:52:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x6ee066...01b923` — deployed 2024-12-04 12:33:15+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5e73e7...ea4531` — deployed 2025-03-28 10:38:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf19fbc...e94cec` — deployed 2024-01-29 08:52:07+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-12-04 was 28d from audit; next candidate 64d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf | EqbRewardDistributor | unmatched — not counted | — | listed in finding WP-L6 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf | BaseRewardPool | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x0140de...91d3bc` — deployed 2025-03-28 10:36:57+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x898ca9...3602b3` — deployed 2024-01-29 08:56:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce...401ebf` — deployed 2024-12-04 12:29:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620...c4fecc` — deployed 2025-03-10 12:35:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2350ea...709913` — deployed 2025-03-28 10:39:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d...cc9fa9` — deployed 2025-03-10 12:33:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x52f0bb...789ca5` — deployed 2023-07-05 07:06:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9739d1...bb4d6f` — deployed 2024-01-23 13:53:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d...cc9fa9` — deployed 2024-09-03 13:54:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x500d5e...84d3d6` — deployed 2025-08-09 09:58:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x0140de...91d3bc` — deployed 2023-08-18 13:12:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb2d167...4264c8` — deployed 2024-12-04 12:34:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe2db20...01dde7` — deployed 2024-02-28 13:33:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x55f140...0433a8` — deployed 2025-10-05 07:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a...ce4455` — deployed 2025-08-09 09:44:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620...c4fecc` — deployed 2024-09-03 13:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8967b...73ec27` — deployed 2025-10-05 07:55:12+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-08-18 was 44d from audit; next candidate 88d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf | SmartConvertor | unmatched — not counted | — | — | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf | VaultEPendle | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd30d6f...968059` — deployed 2023-10-13 09:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbMsgReceiveEndpoint | unmatched — not counted | — | mentioned in finding WP-C1 and WP-N5 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbMinterSidechain | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x0140de...91d3bc` — deployed 2025-08-09 09:42:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x09bae4...c8e94d` — deployed 2023-06-02 10:05:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x09bae4...c8e94d` — deployed 2024-09-03 13:52:18+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x52f0bb...789ca5` — deployed 2025-03-28 10:36:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd6ecfd...4fd54f` — deployed 2023-07-05 07:06:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x09bae4...c8e94d` — deployed 2025-03-10 12:33:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d...cc9fa9` — deployed 2024-12-04 12:29:05+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x52f0bb...789ca5` — deployed 2023-08-18 13:11:39+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-06-02 was 3d from audit; next candidate 30d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbMinterBaseUpg | unmatched — not counted | — | mentioned in findings WP-C1, WP-I8, WP-I10 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleProxy | unmatched — not counted | — | mentioned in finding WP-M2 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleProxyBaseUpg | unmatched — not counted | — | mentioned in finding WP-H6 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleBoosterBaseUpg | unmatched — not counted | — | mentioned in findings WP-H6, WP-I8 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbExternalToken | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x6ee066...01b923` — deployed 2024-09-03 13:56:58+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6ee066...01b923` — deployed 2025-03-10 12:34:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x86a201...a818c5` — deployed 2024-01-29 08:52:29+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7700eb...ed33b1` — deployed 2025-03-28 10:39:14+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2350ea...709913` — deployed 2025-08-09 09:56:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620...c4fecc` — deployed 2024-12-04 12:33:49+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3eabe1...114600` — deployed 2024-01-23 13:53:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x898ca9...3602b3` — deployed 2024-02-28 13:30:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbToken | unmatched — not counted | — | mentioned in finding WP-L3 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | DepositToken | unmatched — not counted | — | mentioned in finding WP-L3 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | VlEqb | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x70f619...7e72b9` — deployed 2024-12-04 12:29:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a...ce4455` — deployed 2023-08-18 13:12:53+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0140de...91d3bc` — deployed 2023-07-05 07:06:48+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a...ce4455` — deployed 2025-03-28 10:37:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x70f619...7e72b9` — deployed 2023-06-02 10:06:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce...401ebf` — deployed 2025-03-10 12:33:41+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x357f55...25e849` — deployed 2025-08-09 09:46:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce...401ebf` — deployed 2024-09-03 13:54:48+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-06-02 was 3d from audit; next candidate 30d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | BaseRewardPool | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x0140de...91d3bc` — deployed 2025-03-28 10:36:57+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x898ca9...3602b3` — deployed 2024-01-29 08:56:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce...401ebf` — deployed 2024-12-04 12:29:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620...c4fecc` — deployed 2025-03-10 12:35:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2350ea...709913` — deployed 2025-03-28 10:39:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d...cc9fa9` — deployed 2025-03-10 12:33:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x52f0bb...789ca5` — deployed 2023-07-05 07:06:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9739d1...bb4d6f` — deployed 2024-01-23 13:53:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d...cc9fa9` — deployed 2024-09-03 13:54:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x500d5e...84d3d6` — deployed 2025-08-09 09:58:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0140de...91d3bc` — deployed 2023-08-18 13:12:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb2d167...4264c8` — deployed 2024-12-04 12:34:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe2db20...01dde7` — deployed 2024-02-28 13:33:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x55f140...0433a8` — deployed 2025-10-05 07:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a...ce4455` — deployed 2025-08-09 09:44:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620...c4fecc` — deployed 2024-09-03 13:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8967b...73ec27` — deployed 2025-10-05 07:55:12+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-07-05 was 30d from audit; next candidate 74d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleProxySidechain | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x4d32c8...0c26bf` — deployed 2023-08-18 13:07:37+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x18c616...e2b356` — deployed 2025-08-09 09:32:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4d32c8...0c26bf` — deployed 2025-03-28 10:34:38+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x479603...9e218d` — deployed 2025-03-10 12:32:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x920873...56a3b8` — deployed 2024-12-04 12:26:37+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x479603...9e218d` — deployed 2024-09-03 13:25:42+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x646279...f1e6e3` — deployed 2023-07-05 07:04:26+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x646279...f1e6e3` — deployed 2023-06-01 18:59:30+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-06-01 was 4d from audit; next candidate 30d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleProxyMainchain | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x646279...f1e6e3` — deployed 2023-06-01 18:57:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbMinterMainchain | unmatched — not counted | — | mentioned in finding WP-I10 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf | BaseRewardPool | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x0140de...91d3bc` — deployed 2025-03-28 10:36:57+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x898ca9...3602b3` — deployed 2024-01-29 08:56:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce...401ebf` — deployed 2024-12-04 12:29:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620...c4fecc` — deployed 2025-03-10 12:35:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2350ea...709913` — deployed 2025-03-28 10:39:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d...cc9fa9` — deployed 2025-03-10 12:33:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x52f0bb...789ca5` — deployed 2023-07-05 07:06:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9739d1...bb4d6f` — deployed 2024-01-23 13:53:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d...cc9fa9` — deployed 2024-09-03 13:54:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x500d5e...84d3d6` — deployed 2025-08-09 09:58:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0140de...91d3bc` — deployed 2023-08-18 13:12:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb2d167...4264c8` — deployed 2024-12-04 12:34:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe2db20...01dde7` — deployed 2024-02-28 13:33:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x55f140...0433a8` — deployed 2025-10-05 07:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a...ce4455` — deployed 2025-08-09 09:44:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620...c4fecc` — deployed 2024-09-03 13:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8967b...73ec27` — deployed 2025-10-05 07:55:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf | PendleCampaign | unmatched — not counted | — | Mentioned in finding PVE-001 as sharing same issue | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf | EqbMasterChef | unmatched — not counted | — | Target in findings PVE-002, PVE-004 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf | PendleBoosterBaseUpg | unmatched — not counted | — | Target in finding PVE-003 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x52f0bb...789ca5` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x22fc5a...ce4455` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x52f0bb...789ca5` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0140de...91d3bc` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x55f140...0433a8` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x901e8f...0e1a88` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x0140de...91d3bc` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb3c40b...df99ca` | BribeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8a5a43...bbd36c` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x06fd8e...534f37` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x7700eb...ed33b1` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x6408d9...d16005` | ePendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xb2d167...4264c8` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x7700eb...ed33b1` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2350ea...709913` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8c9b5b...0029f5` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ae382...45c577` | EPendleProxyOFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4f1cdf...3d3452` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6668f0...e84431` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x02c033...d981e4` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x5e73e7...ea4531` | EpendleVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x02c033...d981e4` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9f1453...ca341a` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x4f1cdf...3d3452` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf19fbc...e94cec` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x89a4e4...63186b` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x9f1453...ca341a` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x7700eb...ed33b1` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x9f1453...ca341a` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4250ea...654a92` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x5e73e7...ea4531` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x507fdb...466ced` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x898ca9...3602b3` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5e73e7...ea4531` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x2350ea...709913` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x5e73e7...ea4531` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x741620...c4fecc` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3eabe1...114600` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x6ee066...01b923` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x09bae4...c8e94d` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x96c4a4...19ad8e` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x09bae4...c8e94d` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x0140de...91d3bc` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x09bae4...c8e94d` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5a27ac...dbf821` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x09bae4...c8e94d` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x3ce842...ad4e50` | EQBOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x357f55...25e849` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x03e2bc...634513` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x22fc5a...ce4455` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xc7517f...421e32` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x22fc5a...ce4455` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x357f55...25e849` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x39f478...f6993d` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x357f55...25e849` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x3e7ef8...276747` | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x9e1028...6840e0` | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x48540d...6fc335` | MintedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x76c37f...858481` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xaf3a6f...dca2a0` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x010cd9...80a50a` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc6e669...f239f0` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbfbcfe...bbad9c` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x374ca3...468609` | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x372277...b8319f` | VaultEPendleArbi | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x22fc5a...ce4455` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0140de...91d3bc` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0140de...91d3bc` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x357f55...25e849` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x0140de...91d3bc` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x22fc5a...ce4455` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x22fc5a...ce4455` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x88bb2b...289032` | WOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xf9ee98...7e2037` | WOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x96c4a4...19ad8e` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0cf6ab...80e139` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x96c4a4...19ad8e` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x09bae4...c8e94d` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x96c4a4...19ad8e` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x09bae4...c8e94d` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x96c4a4...19ad8e` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x96c4a4...19ad8e` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 177 |
| upstream | 27 |
| standard_library | 16 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 31 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: temporal_name=6, unique_name=2

Zero-match audit list:

- [3549] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf
- [3550] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/b8B3TscrPCJ1YmEeCb4Q/Equilibria_Continuous_Audit_May_21,_25_Audit_Report_by_WatchPug.pdf
- [3554] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
