# Agentic Audit Brief: Equilibria

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Equilibria (`equilibria`)
- Website: [https://equilibria.fi/home](https://equilibria.fi/home)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, mantle, optimism, plasma, sonic
- Contract surface: 266 unique implementations (591 raw deployments)
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

- UnnamedContract (`0x22fc5a29bd3d6cce19a06f844019fd506fce4455`, chain 1)
- UnnamedContract (`0x357f55b46821a6c6e476cc32ebb2674cd125e849`, chain 1)
- UnnamedContract (`0x4f1cdf43f5e407abd569878976960d4d0a3d3452`, chain 1)
- UnnamedContract (`0x52f0bbe0325097ac93e1ec85c32a950e47789ca5`, chain 1)
- UnnamedContract (`0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f`, chain 1)
- UnnamedContract (`0xd8967b2b15b3cdf96039b7407813b4037f73ec27`, chain 1)
- UnnamedContract (`0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b`, chain 1)
- UnnamedContract (`0x02c033574b6ca02ddae8e0b4070d551149d981e4`, chain 9745)
- UnnamedContract (`0x70f61901658aafb7ae57da0c30695ce4417e72b9`, chain 9745)
- UnnamedContract (`0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf`, chain 9745)
- UnnamedContract (`0x741620136cf08a782c1df1fc9e3caa760cc4fecc`, chain 9745)
- UnnamedContract (`0x77b777d21408c0094414835b2ae71d0850d65973`, chain 9745)
- UnnamedContract (`0x9f14535a90bc7ca72739a73c1d382bd272ca341a`, chain 9745)
- UnnamedContract (`0xad29951cda3dcd0e570e65a6ee34aa455c53421c`, chain 9745)
- UnnamedContract (`0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8`, chain 9745)
- UnnamedContract (`0xd51d2517d11bfd7017c162a219d5e026f886aef1`, chain 9745)
- UnnamedContract (`0xd8d51c42557343f8f1696eb63d9c3c96a2aae903`, chain 9745)
- UnnamedContract (`0xf7498deabbae0e8d5673336a8fb348ef95052981`, chain 9745)
- UnnamedContract (`0x1ef5e2153c3e6533af716d057a90b71b8621fa39`, chain 42161)
- UnnamedContract (`0x741620136cf08a782c1df1fc9e3caa760cc4fecc`, chain 80094)
- BribeManager (`0xe5b4b7c575a6ccedc072622b9dcbc11552baef8e`, chain 42161)
- BridgeToken (`0x374ca32fd7934c5d43240e1e73fa9b2283468609`, chain 56)
- BridgeToken (`0x5fec857958fbde28e45f779daf5aba8fdd5bd6bc`, chain 56)
- ClonableBeaconProxy (`0xbfbcfe8873fe28dfa25f1099282b088d52bbad9c`, chain 42161)
- ClonableBeaconProxy (`0xd4848211b699503c772aa1bc7d33b433c4242ac3`, chain 42161)
- ePendleOFT (`0x6408d91e853bfa11caa719a4578fe659dbd16005`, chain 999)
- EPendleOFT (`0x8a5a4348f5cfe9da08b0f3d9ae76bef6e8bbd36c`, chain 10)
- EPendleOFT (`0x06fd8e5dae63afcbfdf10604efca3143df534f37`, chain 56)
- EPendleOFT (`0x7700eb46bb40163985c5337de39704482aed33b1`, chain 146)
- EPendleOFT (`0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8`, chain 999)
- EPendleOFT (`0x7700eb46bb40163985c5337de39704482aed33b1`, chain 5000)
- EPendleOFT (`0x2350ea954113b1a1eebaaccc47f3a4985f709913`, chain 8453)
- EPendleOFT (`0x8c9b5b2e6e136b6ee66fca6229191e749c0029f5`, chain 42161)
- EPendleProxyOFT (`0x6ae382814e24b6ddf588901c597f26a9e945c577`, chain 1)
- EQBOFT (`0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50`, chain 999)
- EqbZap (`0x41f5e9895c293fcbab3ca33bede1299b7045b8ed`, chain 10)
- EqbZap (`0x03e2bc724bb0caeb6c1bbd043b0424b310634513`, chain 56)
- EqbZap (`0x22fc5a29bd3d6cce19a06f844019fd506fce4455`, chain 146)
- EqbZap (`0xc7517f481cc0a645e63f870830a4b2e580421e32`, chain 999)
- EqbZap (`0x22fc5a29bd3d6cce19a06f844019fd506fce4455`, chain 5000)
- EqbZap (`0x357f55b46821a6c6e476cc32ebb2674cd125e849`, chain 8453)
- EqbZap (`0x39f4789bdc5560ade254fce8b7f221205df6993d`, chain 42161)
- EqbZap (`0xf8aa1d80692f72614bfb5e96ae3f92f47b920332`, chain 80094)
- ERC1967Proxy (`0x48540d1140331277b9157a096e40e6f5506fc335`, chain 146)
- ERC1967Proxy (`0x9cacb579227d10a9fbe0951861b9fcb4847e8c6b`, chain 146)
- GnosisSafeProxy (`0x397aa01343b89f18934979824c3ad227f251afa0`, chain 1)
- GnosisSafeProxy (`0x29828f442c98aaa71a853594fec7c0c3806f0444`, chain 42161)
- GnosisSafeProxy (`0xfda441270c1166d80f68aa6b5396e56b732724e4`, chain 42161)
- L2StandardERC20 (`0x3e7ef8f50246f725885102e8238cbba33f276747`, chain 5000)
- L2StandardERC20 (`0x9e1028f5f1d5ede59748ffcee5532509976840e0`, chain 5000)
- OptimismMintableERC20 (`0x76c37f9949e05b37c8373d155c1fef46a6858481`, chain 10)
- OptimismMintableERC20 (`0xaf3a6f67af1624d3878a8d30b09fae7915dca2a0`, chain 10)
- OptimismMintableERC20 (`0x010cd9b9be7e416e07793dc6ce2f45868a80a50a`, chain 8453)
- OptimismMintableERC20 (`0xc6e669606b28f4e8ba3ec3fef20d8f651bf239f0`, chain 8453)
- TransparentUpgradeableProxy (`0x0140de476f49b6b42f7b73612b6dc317ab91d3bc`, chain 1)
- TransparentUpgradeableProxy (`0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf`, chain 1)
- TransparentUpgradeableProxy (`0x64627901dadb46ed7f275fd4fc87d086cff1e6e3`, chain 1)
- TransparentUpgradeableProxy (`0xd30d6fd662c0d92b49f3c3e478e125ba1d968059`, chain 1)
- TransparentUpgradeableProxy (`0x18c61629e6cbadb85c29ba7993f251b3ebe2b356`, chain 10)
- TransparentUpgradeableProxy (`0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf`, chain 10)
- TransparentUpgradeableProxy (`0xf19fbc1d3693ecca9979ea31272e422903e94cec`, chain 10)
- TransparentUpgradeableProxy (`0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf`, chain 56)
- TransparentUpgradeableProxy (`0x64627901dadb46ed7f275fd4fc87d086cff1e6e3`, chain 56)
- TransparentUpgradeableProxy (`0x89a4e4044bdb53e00e40c1b2e1005bd61663186b`, chain 56)
- TransparentUpgradeableProxy (`0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d`, chain 146)
- TransparentUpgradeableProxy (`0x920873e5b302a619c54c908adfb77a1c4256a3b8`, chain 146)
- TransparentUpgradeableProxy (`0x9f14535a90bc7ca72739a73c1d382bd272ca341a`, chain 146)
- TransparentUpgradeableProxy (`0x18c61629e6cbadb85c29ba7993f251b3ebe2b356`, chain 999)
- TransparentUpgradeableProxy (`0x5e73e741b0b15e10789a30a91953794e44ea4531`, chain 999)
- TransparentUpgradeableProxy (`0x7700eb46bb40163985c5337de39704482aed33b1`, chain 999)
- TransparentUpgradeableProxy (`0xad29951cda3dcd0e570e65a6ee34aa455c53421c`, chain 999)
- TransparentUpgradeableProxy (`0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d`, chain 5000)
- TransparentUpgradeableProxy (`0x920873e5b302a619c54c908adfb77a1c4256a3b8`, chain 5000)
- TransparentUpgradeableProxy (`0x9f14535a90bc7ca72739a73c1d382bd272ca341a`, chain 5000)
- TransparentUpgradeableProxy (`0x2583a2538272f31e9a15dd12a432b8c96ab4821d`, chain 8453)
- TransparentUpgradeableProxy (`0x6ee066b813cd8c2586d86f79ed0025e81801b923`, chain 8453)
- TransparentUpgradeableProxy (`0x920873e5b302a619c54c908adfb77a1c4256a3b8`, chain 8453)
- TransparentUpgradeableProxy (`0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f`, chain 9745)
- TransparentUpgradeableProxy (`0x37227785a1f4545ed914690e395e4cfe96b8319f`, chain 42161)
- TransparentUpgradeableProxy (`0x4250ea96f880c5725931a72a87dcbe01fc654a92`, chain 42161)
- TransparentUpgradeableProxy (`0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf`, chain 42161)
- TransparentUpgradeableProxy (`0x64627901dadb46ed7f275fd4fc87d086cff1e6e3`, chain 42161)
- TransparentUpgradeableProxy (`0x18c61629e6cbadb85c29ba7993f251b3ebe2b356`, chain 80094)
- TransparentUpgradeableProxy (`0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf`, chain 80094)
- TransparentUpgradeableProxy (`0x5e73e741b0b15e10789a30a91953794e44ea4531`, chain 80094)
- WOFT (`0x88bb2bf040fa5bf2bd3b79ff9dfa035ed1289032`, chain 80094)
- WOFT (`0xf9ee98099f5078078bb8e17e6b4a4f95137e2037`, chain 80094)
- XEqbToken (`0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e`, chain 10)
- XEqbToken (`0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139`, chain 56)
- XEqbToken (`0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b`, chain 146)
- XEqbToken (`0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d`, chain 999)
- XEqbToken (`0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b`, chain 5000)
- XEqbToken (`0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f`, chain 8453)
- XEqbToken (`0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b`, chain 42161)
- XEqbToken (`0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e`, chain 80094)

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
- Outside the address book: 136 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 278
- Confirmed-live implementations: 130 of 266 unique; 136 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 8/225
- Verified + Unaudited implementations: 217
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 266
- Raw deployments: 591
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
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | optimism | unit-384879 (2 proxies) | 3 deployments: optimism `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc`; optimism `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9`; optimism `0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3` | ✅ Audited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | bsc | unit-384919 (2 proxies) | 3 deployments: bsc `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d`; bsc `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5`; bsc `0xe2db20ce7d845f99338bba4bdff00e733801dde7` | ✅ Audited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | base | unit-384943 | `0x6ee066b813cd8c2586d86f79ed0025e81801b923` | ✅ Audited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384903 | 2 deployments: arbitrum `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d`; arbitrum `0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | ✅ Audited |
| PendleProxyMainchain | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-384871 | `0x64627901dadb46ed7f275fd4fc87d086cff1e6e3` | ✅ Audited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-384894 | `0x64627901dadb46ed7f275fd4fc87d086cff1e6e3` | ✅ Audited |
| VaultEPendle | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-384869 | `0xd30d6fd662c0d92b49f3c3e478e125ba1d968059` | ✅ Audited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384895 | 2 deployments: arbitrum `0x22fc5a29bd3d6cce19a06f844019fd506fce4455`; arbitrum `0x70f61901658aafb7ae57da0c30695ce4417e72b9` | ✅ Audited |

### ⚠️ Verified + Unaudited (217)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x02e666f32979c973a0978d04a1c8fe33a35f25b6`; arbitrum `0x3c949d3f1c6d603e063d66b7e8da203716340c85` | ⚠️ Unaudited |
| ArbVester | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x3138de0703a6e7da0a84c8849b7ae9bc45996d7c`; arbitrum `0x4e7322911261afe0b9e89d47fc249c148330c2af`; arbitrum `0xd40ccc072defc24652809fe026bf2813d3842bea`; arbitrum `0xecc88a195a9693f97eb5be15c8fceb800e718219` | ⚠️ Unaudited |
| ArbVester | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xaff75fc541211977df0efbb3427afe15078bc5fe`; arbitrum `0xf857c938829c2a53557fb3fbb1c85d10a5227e03` | ⚠️ Unaudited |
| ArbVester | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xdc947a371d46356859860451198cb3450086c88c`; arbitrum `0xf0b66fbb7793213261bd0027d72bfac6b31d00d9` | ⚠️ Unaudited |
| BaseRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | optimism | n/a | 2 deployments: optimism `0x1679fe95b11959c694af8627e5360267e146723b`; optimism `0x9cb59c379fab6e2a0b6312eb2b0cc40008cc7353` | ⚠️ Unaudited |
| BaseRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 3 deployments: bsc `0x1679fe95b11959c694af8627e5360267e146723b`; bsc `0x26ae167bca873fd11de43691c6215b48f0186f5c`; bsc `0xd8d51c42557343f8f1696eb63d9c3c96a2aae903` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | sonic | unit-384886 (2 proxies) | 3 deployments: sonic `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5`; sonic `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9`; sonic `0x741620136cf08a782c1df1fc9e3caa760cc4fecc` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | hyperliquid | unit-384964 (2 proxies) | 3 deployments: hyperliquid `0x22fc5a29bd3d6cce19a06f844019fd506fce4455`; hyperliquid `0x500d5e0d9d7337963ed6449e81cb52928184d3d6`; hyperliquid `0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | mantle | unit-384911 (2 proxies) | 3 deployments: mantle `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5`; mantle `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9`; mantle `0x741620136cf08a782c1df1fc9e3caa760cc4fecc` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | base | unit-384938 (2 proxies) | 3 deployments: base `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc`; base `0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf`; base `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | plasma | unit-384956 (2 proxies) | 3 deployments: plasma `0x55f140abbf87ef957263f04ed75d1691980433a8`; plasma `0xc7517f481cc0a645e63f870830a4b2e580421e32`; plasma `0xd8967b2b15b3cdf96039b7407813b4037f73ec27` | ⚠️ Unaudited |
| BaseRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 31 | arbitrum | n/a | 32 deployments: arbitrum `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc`; arbitrum `0x03b86b5b4f49fd2059c813b3f928c0b276c88e4e`; arbitrum `0x03e2bc724bb0caeb6c1bbd043b0424b310634513`; arbitrum `0x06fd8e5dae63afcbfdf10604efca3143df534f37`; arbitrum `0x1147652b42c7e1018f40f40200fa7fc77c87c9a7`; arbitrum `0x16f46012db0f308373fa783a9f52655152d01594`; arbitrum `0x245f1d70acaacd219564fccb75f108917037a960`; arbitrum `0x261341d7b6320aa4840639960c78d5fff296f574`; arbitrum `0x2e18b7f6fdcff5177937387a21f0bda54b77ff78`; arbitrum `0x5017d294d5c354cf12d2a11f004aeed21d3f9003`; arbitrum `0x507fdbebdb11c71e7c7565177d0942a6fd466ced`; arbitrum `0x5511c99a22b5e53b913c3f06e4b63e001e62d83b`; arbitrum `0x55f140abbf87ef957263f04ed75d1691980433a8`; arbitrum `0x643df8deef4ef24b2e5a487ed395b3102428fee1`; arbitrum `0x6668f019cc82c80b601c28b1249725f764e84431`; arbitrum `0x6e6bf77d70b79413e8e13f3de6d50dadb22adf77`; arbitrum `0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf`; arbitrum `0x74ddfb121ae1da2dff17f7e53d5021c5e52d0c34`; arbitrum `0x8181c89fe053b344b95e03014cee39a30e07a6b2`; arbitrum `0x968e4a4e4b80e7dd258e2d7e3be7467c2432b49b`; arbitrum `0x96edd4f528cd1cd61f411658c64ddd590b67c10b`; arbitrum `0x972eb68b0a9cf05a72ae48dc9d086230304b0bee`; arbitrum `0xabe22384b67db5e9acb04061d3f8599232ca0944`; arbitrum `0xb45271bc4689a2c4013b8fb9dfb08cfedbafc033`; arbitrum `0xb9ee335f5ba3bf088c6ad40dcc725889a2930718`; arbitrum `0xc72d632fd0ae7b54509995d067b7a3e7c95976ea`; arbitrum `0xcd7246a16edba911c3e21c4ce5331df3159e2d65`; arbitrum `0xce3fe51756d8f070c48e1393781d76aba244b596`; arbitrum `0xf306bd31b06d85b834124cb88d2efe840de7d4e2`; arbitrum `0xf8aa1d80692f72614bfb5e96ae3f92f47b920332`; arbitrum `0xfaaec6bb2d8cb33825ec4f077d71089f3a2a7f7a`; arbitrum `0xfc5d0f0bf89e2a76102b4dbf7c83d5041bd3bd10` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384901 | 2 deployments: arbitrum `0x901e8fd1e2d6d1788e5288e967034761ce0e1a88`; arbitrum `0x9739d1e515c5291faa26d92a5d02761b6bbb4d6f` | ⚠️ Unaudited |
| BaseRewardPool | unknown | project_anchor | own_supporting | 2 | berachain | unit-384931 (2 proxies) | 3 deployments: berachain `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc`; berachain `0x2350ea954113b1a1eebaaccc47f3a4985f709913`; berachain `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` | ⚠️ Unaudited |
| BaseRewardPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x44d051a51ebb561149983fefb929f36790b714a9`; bsc `0xbc292e84b1e97e74f49b365a02665463566ebaca`; bsc `0xd308abaa7922c63301077e7aa0bbe2d2ea223fd1`; sonic `0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3`; hyperliquid `0x9cb59c379fab6e2a0b6312eb2b0cc40008cc7353`; mantle `0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3`; base `0x55f140abbf87ef957263f04ed75d1691980433a8`; arbitrum `0xc602bd92915eb53dc15f09b3dc00663440d837d1`; berachain `0xf7498deabbae0e8d5673336a8fb348ef95052981` | ⚠️ Unaudited |
| BaseRewardPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x02414e51d06535fa85b738297a3947fd339d05bf`; arbitrum `0x91b4ce1025417f05d60412240b722aef77d0319f` | ⚠️ Unaudited |
| BaseRewardPoolV2_1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 9 deployments: optimism `0xd8a365049bb55917b471f7046bcde37eb72f39b2`; bsc `0x8793828112c4b5404d5f2affdccd9991411e942b`; bsc `0x972eb68b0a9cf05a72ae48dc9d086230304b0bee`; sonic `0x1f441781f95aa89001e7b8c4e8c2971a5da9217b`; hyperliquid `0x1679fe95b11959c694af8627e5360267e146723b`; mantle `0xb213f29fbcfa2a71a871011ace811ddd9d1247b5`; base `0x9be3931817b25ab5f0269867b054762a7f68b88c`; arbitrum `0x387aa20d53ac8e806eef0e8528a9cb88f2100f6c`; berachain `0x811d9872788cc7f85602ea08108f689f406e3e8a` | ⚠️ Unaudited |
| BribeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1f3ef2d1d16422e2be357f2f7ca538077f562b40`; bsc `0xb9ee335f5ba3bf088c6ad40dcc725889a2930718` | ⚠️ Unaudited |
| BribeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x1d0e04dd2788f0b58a43957c4dc29b9d8783c477` | ⚠️ Unaudited |
| BribeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x38622b0155a45138f487e86175c11e3ec006f4b2`; arbitrum `0x576ab25b7ad987ba2841dacff3727411dc2f748d`; arbitrum `0x608205f3ede191ac7e09852aeef91c52575d2237`; arbitrum `0x8dbb5ac4325f545e55b55db3724ab626b712125c`; arbitrum `0xd518db14241b6b6432b5ca69d2ba617760077b7a`; arbitrum `0xe584ccd8811e7f98aee0905a1b14cbbd97396b67` | ⚠️ Unaudited |
| BribeManager | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384905 | 2 deployments: arbitrum `0xb3c40b02f38f61f3d141c325c19f35b1f9df99ca`; arbitrum `0xe5b4b7c575a6ccedc072622b9dcbc11552baef8e` | ⚠️ Unaudited |
| ChainlinkOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x8035511ed38a2213370deeb22887e3deefaef1d7` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | optimism | n/a | 3 deployments: optimism `0x00807f12343a039acce6c9446696c818b53966f5`; optimism `0x26ae167bca873fd11de43691c6215b48f0186f5c`; optimism `0x55f140abbf87ef957263f04ed75d1691980433a8` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x00807f12343a039acce6c9446696c818b53966f5`; bsc `0x500d5e0d9d7337963ed6449e81cb52928184d3d6`; bsc `0x55f140abbf87ef957263f04ed75d1691980433a8`; bsc `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 34 | arbitrum | n/a | 35 deployments: arbitrum `0x07255095a86566576aef769d61566ed0627aff61`; arbitrum `0x0c873efcce540b323aa194d63423581929ba7f9f`; arbitrum `0x0d7fd234d543a04cadeda3fc58df524656707fac`; arbitrum `0x180dd2ab94d328f37353ba2d6c4b498a729e2f8e`; arbitrum `0x183b30706ff2655e7ab0ab37867dd7af8cb75e78`; arbitrum `0x1f3ef2d1d16422e2be357f2f7ca538077f562b40`; arbitrum `0x229de5e340990195d9af417a17bd14eec9bc5b4f`; arbitrum `0x3062641fdb5cd18c2914fe6db5d83613badfcb1a`; arbitrum `0x312e2a6c478916430bd102907b92f9200a83a990`; arbitrum `0x3672abd8b9c70e0f2ed8210ce8663d3dbc5e491a`; arbitrum `0x4159ec2ace34df270b627f22a4f45ea8a27a40bd`; arbitrum `0x4732298536084c28beabc8c506f571f38327da5a`; arbitrum `0x5873f82b241996f66dfdc6d64fe7d31066705d5c`; arbitrum `0x6d36ca3b9dba872db13e39bbcd136f92c94ba295`; arbitrum `0x7a2d44931fa2953f812676e05039f488144763f4`; arbitrum `0x8793828112c4b5404d5f2affdccd9991411e942b`; arbitrum `0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3`; arbitrum `0x89f24c141a368d72dafe58784730091b3a69ef10`; arbitrum `0x950904baaf84c5fdf48277f9cd5b637b30df354e`; arbitrum `0x96a3757d9f832b3db174bcc665e7dc6fa5656e98`; arbitrum `0x97c7d97859d9dcfee1cba42c7861c94138265459`; arbitrum `0x9be3931817b25ab5f0269867b054762a7f68b88c`; arbitrum `0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3`; arbitrum `0xaa4a7ac0f9d4fcc55138ad7da4fb2a8dd4790b74`; arbitrum `0xaa4ada3d11c0883b795ce6ad32b57b10505c1204`; arbitrum `0xaab4b380b88f4a08acf8d8f74183a717b552fd6c`; arbitrum `0xb0d7182ba15ed02326590f033f72c393c978eb7a`; arbitrum `0xb9b74818c363109a1b4d8ba50bd3aed8784105a8`; arbitrum `0xbaa2b0aa1def4f278d7d6cd9f7c8483d6e256470`; arbitrum `0xd5d1276b85a51f6d2b5ee26b9d7317bea022ecbf`; arbitrum `0xe86037f4f154944a0b01839afe32adf88d38826a`; arbitrum `0xf10ae0c245328de263f6b5a199a33c70cf9d508f`; arbitrum `0xf19fbc1d3693ecca9979ea31272e422903e94cec`; arbitrum `0xf7498deabbae0e8d5673336a8fb348ef95052981`; arbitrum `0xfc09f3f96912c5cf383edcdee067bccc1a9ff778` | ⚠️ Unaudited |
| DepositTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: optimism `0x370d080f56256d9270e7e38f699600623a0ef7aa`; optimism `0x642c9d741ab3de9a8b43b79f7e5bc8a953e3ec81`; optimism `0xcb2dc3481e7e9dbe3e269c993a431737d1f66ea4`; bsc `0x299c643a5d84c227705efa2eea00c41b6fc748af`; sonic `0x500d5e0d9d7337963ed6449e81cb52928184d3d6`; hyperliquid `0xf7498deabbae0e8d5673336a8fb348ef95052981`; mantle `0x500d5e0d9d7337963ed6449e81cb52928184d3d6`; base `0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3`; arbitrum `0x7368cbcbaecbd7520a3edee99ab418ef7be36ac9`; berachain `0xd8d51c42557343f8f1696eb63d9c3c96a2aae903` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | optimism | unit-384847 | `0x8a5a4348f5cfe9da08b0f3d9ae76bef6e8bbd36c` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | bsc | unit-384855 | `0x06fd8e5dae63afcbfdf10604efca3143df534f37` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | sonic | unit-384849 | `0x7700eb46bb40163985c5337de39704482aed33b1` | ⚠️ Unaudited |
| ePendleOFT | token | project_anchor | own_supporting | 0 | hyperliquid | unit-384866 | `0x6408d91e853bfa11caa719a4578fe659dbd16005` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | hyperliquid | unit-384867 | `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | mantle | unit-384853 | `0x7700eb46bb40163985c5337de39704482aed33b1` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | base | unit-384860 | `0x2350ea954113b1a1eebaaccc47f3a4985f709913` | ⚠️ Unaudited |
| EPendleOFT | token | project_anchor | own_supporting | 0 | arbitrum | unit-384851 | `0x8c9b5b2e6e136b6ee66fca6229191e749c0029f5` | ⚠️ Unaudited |
| EPendleProxyOFT | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-384842 | `0x6ae382814e24b6ddf588901c597f26a9e945c577` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | optimism | unit-384874 | `0x4f1cdf43f5e407abd569878976960d4d0a3d3452` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | bsc | unit-384922 | `0x6668f019cc82c80b601c28b1249725f764e84431` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | sonic | unit-384892 | `0x02c033574b6ca02ddae8e0b4070d551149d981e4` | ⚠️ Unaudited |
| EpendleVault | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-384966 | `0x5e73e741b0b15e10789a30a91953794e44ea4531` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | mantle | unit-384915 | `0x02c033574b6ca02ddae8e0b4070d551149d981e4` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | base | unit-384941 | `0x9f14535a90bc7ca72739a73c1d382bd272ca341a` | ⚠️ Unaudited |
| EpendleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x35fd17966de95870a77653791018026eb2ef2862` | ⚠️ Unaudited |
| EpendleVault | unknown | project_anchor | own_supporting | 1 | berachain | unit-384928 | `0x4f1cdf43f5e407abd569878976960d4d0a3d3452` | ⚠️ Unaudited |
| EPendleVaultSidechain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x261341d7b6320aa4840639960c78d5fff296f574` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | optimism | unit-384876 | `0xf19fbc1d3693ecca9979ea31272e422903e94cec` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | bsc | unit-384918 | `0x89a4e4044bdb53e00e40c1b2e1005bd61663186b` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | sonic | unit-384885 | `0x9f14535a90bc7ca72739a73c1d382bd272ca341a` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-384962 | `0x7700eb46bb40163985c5337de39704482aed33b1` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | mantle | unit-384910 | `0x9f14535a90bc7ca72739a73c1d382bd272ca341a` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-384902 | `0x4250ea96f880c5725931a72a87dcbe01fc654a92` | ⚠️ Unaudited |
| EPendleVaultSidechain | core_logic | project_anchor | own_supporting | 1 | berachain | unit-384935 | `0x5e73e741b0b15e10789a30a91953794e44ea4531` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x92c26ee7fa6483364fa5ce322a153d6d61825299`; optimism `0xcaed9fb3438edc5b30159417383428f9a8b558d2` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x172cdd024403f7cb7168db98df8ddbfe53da9b4f`; bsc `0xe343ed31065cf41f6544a42ad6a015f93831b454` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x2350ea954113b1a1eebaaccc47f3a4985f709913`; sonic `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3`; hyperliquid `0xd8d51c42557343f8f1696eb63d9c3c96a2aae903` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: optimism `0x466732925270c58dfb2f6b7f1100596c3449c918`; optimism `0xa4876900af6b82078e427db752c54b7008d7d023`; bsc `0x324cd3f3a12c44b44269d775b2b75d5d06ccaea6`; mantle `0x2350ea954113b1a1eebaaccc47f3a4985f709913`; base `0x500d5e0d9d7337963ed6449e81cb52928184d3d6`; arbitrum `0x75759aca0f06369d74badcb0b9306ea70723e939` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x28f35f19237dbbb8c4eba29ed6cd0ba9a89f7bd2`; mantle `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x324cd3f3a12c44b44269d775b2b75d5d06ccaea6`; base `0xd8d51c42557343f8f1696eb63d9c3c96a2aae903` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x941acd127578aa1f63089438207abd560b727e0a`; arbitrum `0xef738238976840601276934b5bb2bdd09b44520b` | ⚠️ Unaudited |
| EqbConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x500d5e0d9d7337963ed6449e81cb52928184d3d6`; berachain `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | optimism | unit-384878 | 2 deployments: optimism `0x507fdbebdb11c71e7c7565177d0942a6fd466ced`; optimism `0x86a20111feae36f3511a30c0640d2099b3a818c5` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | bsc | unit-384925 | 2 deployments: bsc `0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3`; bsc `0x8a5a4348f5cfe9da08b0f3d9ae76bef6e8bbd36c` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | sonic | unit-384888 | 2 deployments: sonic `0x5e73e741b0b15e10789a30a91953794e44ea4531`; sonic `0x6ee066b813cd8c2586d86f79ed0025e81801b923` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384965 | 2 deployments: hyperliquid `0x2350ea954113b1a1eebaaccc47f3a4985f709913`; hyperliquid `0x741620136cf08a782c1df1fc9e3caa760cc4fecc` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | mantle | unit-384912 | 2 deployments: mantle `0x5e73e741b0b15e10789a30a91953794e44ea4531`; mantle `0x6ee066b813cd8c2586d86f79ed0025e81801b923` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | base | unit-384944 | 2 deployments: base `0x741620136cf08a782c1df1fc9e3caa760cc4fecc`; base `0x7700eb46bb40163985c5337de39704482aed33b1` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384904 | 2 deployments: arbitrum `0x3eabe18eae267d1b57f917aba085bb5906114600`; arbitrum `0xddf45d7493b796ea031969252c6d03032ca15f2b` | ⚠️ Unaudited |
| EqbExternalToken | unknown | project_anchor | own_supporting | 1 | berachain | unit-384932 | 2 deployments: berachain `0x6ee066b813cd8c2586d86f79ed0025e81801b923`; berachain `0x7700eb46bb40163985c5337de39704482aed33b1` | ⚠️ Unaudited |
| EqbInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xb899db9308c21899a08fa36e805ea7924fd5c640`; arbitrum `0xda2b96fd3ace0b59437d72b60d0991adf0857467` | ⚠️ Unaudited |
| EqbInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xd08511359f0b5ced2046e13cbb08c392310ed544`; arbitrum `0xf29a4f6322f85393bf6ec5a7c11a47d3ac61fbc9` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | optimism | unit-384875 | 2 deployments: optimism `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d`; optimism `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | bsc | unit-384926 | 2 deployments: bsc `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e`; bsc `0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | sonic | unit-384891 | 2 deployments: sonic `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d`; sonic `0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384961 | 2 deployments: hyperliquid `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc`; hyperliquid `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | mantle | unit-384914 | 2 deployments: mantle `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d`; mantle `0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | base | unit-384942 | 2 deployments: base `0x5a27ac1185ddee6a9cd64d8da893cfdbe4dbf821`; base `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` | ⚠️ Unaudited |
| EqbMinterSidechain | unknown | project_anchor | own_supporting | 1 | berachain | unit-384929 | 2 deployments: berachain `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d`; berachain `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139`; bsc `0x2583a2538272f31e9a15dd12a432b8c96ab4821d`; mantle `0xad29951cda3dcd0e570e65a6ee34aa455c53421c`; base `0x245f1d70acaacd219564fccb75f108917037a960`; arbitrum `0x2583a2538272f31e9a15dd12a432b8c96ab4821d` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xfe67c25b5136a4ff8b6eb7187ca3d6f3e25ec9a9`; optimism `0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xad29951cda3dcd0e570e65a6ee34aa455c53421c`; bsc `0xcbad0cade6069514e77369584bc15730662c4779` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139`; sonic `0xad29951cda3dcd0e570e65a6ee34aa455c53421c` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e`; hyperliquid `0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139`; mantle `0xa4876900af6b82078e427db752c54b7008d7d023` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x00807f12343a039acce6c9446696c818b53966f5`; base `0xb3ad8c89ccd87c1f8aa169f9b91120b35532fbb8` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xad29951cda3dcd0e570e65a6ee34aa455c53421c`; arbitrum `0xd2eb8d4b1fe2e6751b979b1fafe39cab7f2f5fd2` | ⚠️ Unaudited |
| EqbMsgReceiveEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139`; berachain `0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xad29951cda3dcd0e570e65a6ee34aa455c53421c`; optimism `0xb1a4bb23b8a400ecd4c05aeebc8787514949a429` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x18c61629e6cbadb85c29ba7993f251b3ebe2b356`; bsc `0xb14f643da5acb498067f3ae00331e5c3486e6453` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x18c61629e6cbadb85c29ba7993f251b3ebe2b356`; sonic `0x2583a2538272f31e9a15dd12a432b8c96ab4821d` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139`; hyperliquid `0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 5 deployments: optimism `0x2583a2538272f31e9a15dd12a432b8c96ab4821d`; bsc `0x920873e5b302a619c54c908adfb77a1c4256a3b8`; mantle `0x18c61629e6cbadb85c29ba7993f251b3ebe2b356`; base `0x9cb59c379fab6e2a0b6312eb2b0cc40008cc7353`; arbitrum `0x920873e5b302a619c54c908adfb77a1c4256a3b8` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x2583a2538272f31e9a15dd12a432b8c96ab4821d`; mantle `0x273e6197d4e0c1b3d8bf73615d0b88834006c399` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x576ab25b7ad987ba2841dacff3727411dc2f748d`; base `0xb0d7182ba15ed02326590f033f72c393c978eb7a` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x18c61629e6cbadb85c29ba7993f251b3ebe2b356`; arbitrum `0x8505b38868442668566eca412bda5d3283ac6b64` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x2583a2538272f31e9a15dd12a432b8c96ab4821d`; berachain `0xad29951cda3dcd0e570e65a6ee34aa455c53421c` | ⚠️ Unaudited |
| EQBOFT | token | project_anchor | own_supporting | 0 | hyperliquid | unit-384865 | `0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50` | ⚠️ Unaudited |
| EQBOFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x73e247faabf71a67afa8f75773139998464cac8c`; hyperliquid `0xb4484a64ad7dccb4e8cc89e84fe02140e42cefd1` | ⚠️ Unaudited |
| EqbRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x64528d6d89c806af6a8df82f9e2f6805b4b5d7ef`; arbitrum `0xa4ffa468b7cf1ae438a399271b2002fe45cc2e88` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | optimism | unit-384877 | 2 deployments: optimism `0x357f55b46821a6c6e476cc32ebb2674cd125e849`; optimism `0x41f5e9895c293fcbab3ca33bede1299b7045b8ed` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | bsc | unit-384917 | 2 deployments: bsc `0x03e2bc724bb0caeb6c1bbd043b0424b310634513`; bsc `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | sonic | unit-384884 | 2 deployments: sonic `0x22fc5a29bd3d6cce19a06f844019fd506fce4455`; sonic `0x70f61901658aafb7ae57da0c30695ce4417e72b9` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384967 | 2 deployments: hyperliquid `0xc7517f481cc0a645e63f870830a4b2e580421e32`; hyperliquid `0xd8967b2b15b3cdf96039b7407813b4037f73ec27` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | mantle | unit-384908 | 2 deployments: mantle `0x22fc5a29bd3d6cce19a06f844019fd506fce4455`; mantle `0x70f61901658aafb7ae57da0c30695ce4417e72b9` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | base | unit-384940 | 2 deployments: base `0x357f55b46821a6c6e476cc32ebb2674cd125e849`; base `0xc7517f481cc0a645e63f870830a4b2e580421e32` | ⚠️ Unaudited |
| EqbZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: optimism `0x70f61901658aafb7ae57da0c30695ce4417e72b9`; bsc `0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf`; bsc `0xcaed9fb3438edc5b30159417383428f9a8b558d2`; arbitrum `0x357f55b46821a6c6e476cc32ebb2674cd125e849`; berachain `0x70f61901658aafb7ae57da0c30695ce4417e72b9` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384896 | 2 deployments: arbitrum `0x39f4789bdc5560ade254fce8b7f221205df6993d`; arbitrum `0xc7517f481cc0a645e63f870830a4b2e580421e32` | ⚠️ Unaudited |
| EqbZap | unknown | project_anchor | own_supporting | 1 | berachain | unit-384937 | 2 deployments: berachain `0x357f55b46821a6c6e476cc32ebb2674cd125e849`; berachain `0xf8aa1d80692f72614bfb5e96ae3f92f47b920332` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xc7517f481cc0a645e63f870830a4b2e580421e32`; optimism `0xd8967b2b15b3cdf96039b7407813b4037f73ec27` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0dc8b9a68785a1168d6a8e2ccbdca41be85279ce`; bsc `0xa929e8b6856c08051818b6e69813335d9fe06599` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x357f55b46821a6c6e476cc32ebb2674cd125e849`; sonic `0xc7517f481cc0a645e63f870830a4b2e580421e32` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x02c033574b6ca02ddae8e0b4070d551149d981e4`; hyperliquid `0x4f1cdf43f5e407abd569878976960d4d0a3d3452` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x357f55b46821a6c6e476cc32ebb2674cd125e849`; mantle `0xc7517f481cc0a645e63f870830a4b2e580421e32` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x02c033574b6ca02ddae8e0b4070d551149d981e4`; base `0xd8967b2b15b3cdf96039b7407813b4037f73ec27` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x03b611858f8e8913f8db7d9fdbf59e352b0c83e8`; arbitrum `0x6cea12df2e4a18a28e90079130dfe7eb5663afb8`; arbitrum `0xbda88ae50b788f99da7d0cb12118e0f645f6035b`; arbitrum `0xf2d03834ecccc9781f71b2b71e8843bc2cf7ca80` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0xc7517f481cc0a645e63f870830a4b2e580421e32`; berachain `0xd8967b2b15b3cdf96039b7407813b4037f73ec27` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-384872 | `0x397aa01343b89f18934979824c3ad227f251afa0` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | arbitrum | unit-384897 (2 proxies) | 2 deployments: arbitrum `0x29828f442c98aaa71a853594fec7c0c3806f0444`; arbitrum `0xfda441270c1166d80f68aa6b5396e56b732724e4` | ⚠️ Unaudited |
| HyperliquidExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4bb13347ce7cbf8884adb137aeda0355ef61b259`; hyperliquid `0xf4d9235269a96aadafc9adae454a0618ebe37949` | ⚠️ Unaudited |
| IrrevocableLockingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x22126a0fb5cfbc327a8e36f141e4712e45c1c3ad`; arbitrum `0x7d058322c244d1f9deade3c10ff75d1e1b68b7c0`; arbitrum `0xed8262c2193c3f2b2dd62689ed920d4d9ab625bd` | ⚠️ Unaudited |
| L2StandardERC20 | token | project_anchor | own_supporting | 0 | mantle | unit-384852 | `0x3e7ef8f50246f725885102e8238cbba33f276747` | ⚠️ Unaudited |
| L2StandardERC20 | token | project_anchor | own_supporting | 0 | mantle | unit-384854 | `0x9e1028f5f1d5ede59748ffcee5532509976840e0` | ⚠️ Unaudited |
| MerkleDistributorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x950904baaf84c5fdf48277f9cd5b637b30df354e`; sonic `0x9be3931817b25ab5f0269867b054762a7f68b88c` | ⚠️ Unaudited |
| MerkleDistributorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x35fd17966de95870a77653791018026eb2ef2862`; hyperliquid `0x4ecf06c21171c3a79834a7f40c33c7a5ff3ad188` | ⚠️ Unaudited |
| MerkleDistributorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2e42452396a8f091703c0ed3c86ef4e3de8264a5`; arbitrum `0xce15338f91a022497f614a37a555c7b6eac49ae3` | ⚠️ Unaudited |
| MerkleDistributorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x64239a6a0661c89f60b56b6971155a78a07ed2ac`; berachain `0xa2cb78076ae515f180421bc7a5fbb2802ae1ea19` | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | arbitrum | n/a | 5 deployments: arbitrum `0x097b765a94847d861defa072997f0d1ea74f9bb5`; arbitrum `0x6e3a28d20cfedfc06bcbe291eef4c39067a7c650`; arbitrum `0x9e2c5aaed535308c10a2c0a63e50dcfa745d1ba1`; arbitrum `0xdcd16f2015c3bde638ef5cac075176f90c5d8b01`; arbitrum `0xff66978bf6f5f995f32069716f24dafcf52da328` | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0x5be392312897c797ba720c5654c05ff1a4254886`; sonic `0x4abc7c5f0445d847e1d4544dd15f049e996eadd2`; hyperliquid `0xbda88ae50b788f99da7d0cb12118e0f645f6035b`; arbitrum `0x2e1ac65a73bfcc857d0161636d551cbf0395968f` | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x0cf4a2c2a57378b8c99a04e3d1b22dc527a5997b`; berachain `0x672618a9a3e542a3ce3b3ff57d948f17ffa73de9` | ⚠️ Unaudited |
| MintedERC20 | token | project_anchor | own_supporting | 2 | sonic | unit-384889 (2 proxies) | 2 deployments: sonic `0x48540d1140331277b9157a096e40e6f5506fc335`; sonic `0x9cacb579227d10a9fbe0951861b9fcb4847e8c6b` | ⚠️ Unaudited |
| MintedERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xf1ef7d2d4c0c881cd634481e0586ed5d2871a74b` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | optimism | unit-384846 | `0x76c37f9949e05b37c8373d155c1fef46a6858481` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | optimism | unit-384848 | `0xaf3a6f67af1624d3878a8d30b09fae7915dca2a0` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-384859 | `0x010cd9b9be7e416e07793dc6ce2f45868a80a50a` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0xbc7b1ff1c6989f006a1185318ed4e7b5796e66e1`; base `0xa99f6e6785da0f5d6fb42495fe424bce029eeb3e` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-384861 | `0xc6e669606b28f4e8ba3ec3fef20d8f651bf239f0` | ⚠️ Unaudited |
| OUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xad11a8beb98bbf61dbb1aa0f6d6f2ecd87b35afa`; hyperliquid `0xcd9a74e5fe451025e92b5b8f74117c6e275aa7c8` | ⚠️ Unaudited |
| PendleBoosterMainchain | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-384870 | `0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | optimism | unit-384873 | `0x18c61629e6cbadb85c29ba7993f251b3ebe2b356` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | bsc | unit-384927 | `0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | sonic | unit-384887 | `0x920873e5b302a619c54c908adfb77a1c4256a3b8` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-384959 | `0xad29951cda3dcd0e570e65a6ee34aa455c53421c` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | mantle | unit-384909 | `0x920873e5b302a619c54c908adfb77a1c4256a3b8` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | base | unit-384946 | `0x2583a2538272f31e9a15dd12a432b8c96ab4821d` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | plasma | unit-384952 | `0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-384899 | `0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf` | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | project_anchor | own_supporting | 1 | berachain | unit-384936 | `0x18c61629e6cbadb85c29ba7993f251b3ebe2b356` | ⚠️ Unaudited |
| PendleCampaigns | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x576ab25b7ad987ba2841dacff3727411dc2f748d` | ⚠️ Unaudited |
| PendleCampaigns | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xb3ad8c89ccd87c1f8aa169f9b91120b35532fbb8` | ⚠️ Unaudited |
| PendleCampaigns | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4c960b0dc60873d7f01bc393ff2d5443285362ef` | ⚠️ Unaudited |
| PendleCampaignSidechainV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x245f1d70acaacd219564fccb75f108917037a960` | ⚠️ Unaudited |
| PendleCampaignSidechainV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xd8d51c42557343f8f1696eb63d9c3c96a2aae903` | ⚠️ Unaudited |
| PendleDepositor | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-384868 | `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | ⚠️ Unaudited |
| PendleOFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x17bac5f906c9a0282ac06a59958d85796c831f24` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | optimism | unit-384880 | `0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | bsc | unit-384923 | `0x64627901dadb46ed7f275fd4fc87d086cff1e6e3` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | sonic | unit-384890 | `0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-384960 | `0x18c61629e6cbadb85c29ba7993f251b3ebe2b356` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | mantle | unit-384913 | `0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | base | unit-384945 | `0x920873e5b302a619c54c908adfb77a1c4256a3b8` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | project_anchor | own_supporting | 1 | berachain | unit-384930 | `0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: optimism `0x96a3757d9f832b3db174bcc665e7dc6fa5656e98`; sonic `0x64627901dadb46ed7f275fd4fc87d086cff1e6e3`; hyperliquid `0x6d205337f45d6850c3c3006e28d5b52c8a432c35`; hyperliquid `0x880f614c729c622c727f3625b263a36c0b89167f`; hyperliquid `0x920873e5b302a619c54c908adfb77a1c4256a3b8`; hyperliquid `0xb1eead6959cb5bb9b20417d6689922523b2b86c3`; hyperliquid `0xd8cf92e9b6fae6b32f795acb11edd50e8dd6ff4d`; mantle `0x64627901dadb46ed7f275fd4fc87d086cff1e6e3`; base `0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf`; arbitrum `0x24188b23541501d084e8e8d71b0d9e74a81f0dbd`; arbitrum `0xd217be359ab3f2e8eed1b6c9ee27b2661a91c8c3`; berachain `0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d` | ⚠️ Unaudited |
| RestakeStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c72bbc1dd1b5ba766c4d2d1466efa2845ae2c6` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | arbitrum | n/a | 8 deployments: arbitrum `0x273e6197d4e0c1b3d8bf73615d0b88834006c399`; arbitrum `0x35e523aecb098f1aa63823a5ec0ce526951f2d2c`; arbitrum `0x4abc7c5f0445d847e1d4544dd15f049e996eadd2`; arbitrum `0x696aa321e07e59afdcd06d9f0d00c79e0a898239`; arbitrum `0x708544d55dcc08d7366d8658475bd87d3cc1ef49`; arbitrum `0x7b121086db8a28412c7574e0688500f5ba8f40ca`; arbitrum `0x87707da1e312d39b89a4eb34a50bac3c13e88046`; arbitrum `0x919cf6ec1224dfa3579ec6b28cb04072c64187c5` | ⚠️ Unaudited |
| SmartConvertorArbi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59fb350446ba1adb733713b0695cbb19a629e295` | ⚠️ Unaudited |
| SmartConvertorArbi | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6a82a15da16ba35692d07c36954b444bea896c60`; arbitrum `0xd72b94fdeb2034583ba1c998c56beffcd394243a` | ⚠️ Unaudited |
| StakingPoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x473e8407f2ad24148ac1fe18873b8a22aa8a713b`; ethereum `0x50c6f7aa9c05b4435a6e4ebb0dfd1eaa38da5e97`; ethereum `0xbf6871fddb01384fc4d8bf4db029c0a1998b372c` | ⚠️ Unaudited |
| StandardArbERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 2 | arbitrum | unit-384898 (2 proxies) | 2 deployments: arbitrum `0xbfbcfe8873fe28dfa25f1099282b088d52bbad9c`; arbitrum `0xd4848211b699503c772aa1bc7d33b433c4242ac3` | ⚠️ Unaudited |
| TetherTokenOFTExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf`; hyperliquid `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7` | ⚠️ Unaudited |
| TetherTokenOFTExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xd9492653457a69e9f4987db43d7fa0112e620cb4`; hyperliquid `0xe1ad845d93853fff44990ae0dcecd8575293681e` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xe2a63438747d2c71e14bdc2cc222be89b1c11d03`; arbitrum `0x5c249a5f396638253470c4eae7bc5092dde21886` | ⚠️ Unaudited |
| TokenImplementation | token | project_anchor | own_supporting | 2 | bsc | unit-384924 (2 proxies) | 2 deployments: bsc `0x374ca32fd7934c5d43240e1e73fa9b2283468609`; bsc `0x5fec857958fbde28e45f779daf5aba8fdd5bd6bc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x86a20111feae36f3511a30c0640d2099b3a818c5`; bsc `0xc00371c83c0f943ab0deeff02288ac939a9ef9dc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139`; base `0xad29951cda3dcd0e570e65a6ee34aa455c53421c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e`; base `0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc`; plasma `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384948 | 2 deployments: plasma `0x02c033574b6ca02ddae8e0b4070d551149d981e4`; plasma `0x4f1cdf43f5e407abd569878976960d4d0a3d3452` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d`; plasma `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384950 | 2 deployments: plasma `0x22fc5a29bd3d6cce19a06f844019fd506fce4455`; plasma `0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384951 | 2 deployments: plasma `0x2350ea954113b1a1eebaaccc47f3a4985f709913`; plasma `0x741620136cf08a782c1df1fc9e3caa760cc4fecc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x26ae167bca873fd11de43691c6215b48f0186f5c`; plasma `0x9cb59c379fab6e2a0b6312eb2b0cc40008cc7353` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384949 | 2 deployments: plasma `0x357f55b46821a6c6e476cc32ebb2674cd125e849`; plasma `0x70f61901658aafb7ae57da0c30695ce4417e72b9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384955 | 2 deployments: plasma `0x500d5e0d9d7337963ed6449e81cb52928184d3d6`; plasma `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384953 | 2 deployments: plasma `0x5e73e741b0b15e10789a30a91953794e44ea4531`; plasma `0x9f14535a90bc7ca72739a73c1d382bd272ca341a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x6ee066b813cd8c2586d86f79ed0025e81801b923`; plasma `0x7700eb46bb40163985c5337de39704482aed33b1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384957 | 2 deployments: plasma `0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3`; plasma `0xd8d51c42557343f8f1696eb63d9c3c96a2aae903` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | plasma | unit-384954 | 2 deployments: plasma `0xad29951cda3dcd0e570e65a6ee34aa455c53421c`; plasma `0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x18752094e78e1ba4f58a573472f72721d184b0ab`; berachain `0x950904baaf84c5fdf48277f9cd5b637b30df354e` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 36 deployments: ethereum `0xca5d2cb9b2ee660c8f476537025cba17bec60968`; ethereum `0xccf94993a9f163b380b0a6ff73c1c8d3855dc593`; optimism `0x07dc38e365ed8af93cceb30d73349fb8a683de3c`; optimism `0x6661365c53c8053a7dda36419298429f7f64f340`; optimism `0xf303f75cce2ac8d8d5d5bf956558dbdd827c812b`; bsc `0x6f61633a71da13126274ab340cc7fe0a916d8ca8`; bsc `0xbdd61ed487c3eb041deeee5d565299cd580af179`; bsc `0xca93b47a4a834b0573fba7531275eff422a3b91b`; bsc `0xd804ab068b2b8d4db19e97c79ee2ab8ecb9087ed`; sonic `0x18752094e78e1ba4f58a573472f72721d184b0ab`; sonic `0x672618a9a3e542a3ce3b3ff57d948f17ffa73de9`; sonic `0xd8d51c42557343f8f1696eb63d9c3c96a2aae903`; sonic `0xf7498deabbae0e8d5673336a8fb348ef95052981`; hyperliquid `0x00807f12343a039acce6c9446696c818b53966f5`; hyperliquid `0x183b30706ff2655e7ab0ab37867dd7af8cb75e78`; hyperliquid `0x2386f0a8ca167015a8e95617680a648047a56cdf`; hyperliquid `0x245f1d70acaacd219564fccb75f108917037a960`; hyperliquid `0x26ae167bca873fd11de43691c6215b48f0186f5c`; hyperliquid `0x55f140abbf87ef957263f04ed75d1691980433a8`; hyperliquid `0xb0d7182ba15ed02326590f033f72c393c978eb7a`; hyperliquid `0xf2d03834ecccc9781f71b2b71e8843bc2cf7ca80`; mantle `0xa2cb78076ae515f180421bc7a5fbb2802ae1ea19`; mantle `0xd8d51c42557343f8f1696eb63d9c3c96a2aae903`; mantle `0xf7498deabbae0e8d5673336a8fb348ef95052981`; base `0x26ae167bca873fd11de43691c6215b48f0186f5c`; base `0x950904baaf84c5fdf48277f9cd5b637b30df354e`; base `0xf7498deabbae0e8d5673336a8fb348ef95052981`; arbitrum `0x421c2ce637e06cb6ff9c07d8beec040153c47ff0`; arbitrum `0x43a5bfe6dd1cb4d2c73e70a117d27c38e8bd8c5f`; arbitrum `0x4b4f09778abc71360ef535e10fe9f7a74e769db8`; arbitrum `0xd1705b91300c85732a92e9ea91da79e91daeba15`; berachain `0x3a4db3d715aea70178077012864bcd16d110d4b3`; berachain `0x55f140abbf87ef957263f04ed75d1691980433a8`; berachain `0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3`; berachain `0xb213f29fbcfa2a71a871011ace811ddd9d1247b5`; berachain `0xc3aa0683ab33eb7e1ceafbd04907530ea6b451db` | ⚠️ Unaudited |
| VaultDepositToken | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x03b86b5b4f49fd2059c813b3f928c0b276c88e4e` | ⚠️ Unaudited |
| VaultDepositTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05eaaa615f01ab1b8a0bd1e6a487d80c8910f7a0` | ⚠️ Unaudited |
| VaultEPendleArbi | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-384900 | `0x37227785a1f4545ed914690e395e4cfe96b8319f` | ⚠️ Unaudited |
| VestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x1e82489bc071953ec95de7416d76424a43eedf5e`; arbitrum `0x299c643a5d84c227705efa2eea00c41b6fc748af`; arbitrum `0x6f61633a71da13126274ab340cc7fe0a916d8ca8`; arbitrum `0xc3aa0683ab33eb7e1ceafbd04907530ea6b451db` | ⚠️ Unaudited |
| VestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7aecd33036394015c5d0cdc05d7b21822bb17be9` | ⚠️ Unaudited |
| VestedEscrowFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x54d715a1c5a95fa44efb4465f70ca6de96eb13ec`; arbitrum `0x74138a3be00373fbc0a71676494e2807b48d7ba8` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | optimism | unit-384881 | 2 deployments: optimism `0x22fc5a29bd3d6cce19a06f844019fd506fce4455`; optimism `0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | bsc | unit-384921 | 2 deployments: bsc `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc`; bsc `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | sonic | unit-384883 | 2 deployments: sonic `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc`; sonic `0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384963 | 2 deployments: hyperliquid `0x357f55b46821a6c6e476cc32ebb2674cd125e849`; hyperliquid `0x70f61901658aafb7ae57da0c30695ce4417e72b9` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | mantle | unit-384907 | 2 deployments: mantle `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc`; mantle `0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | base | unit-384939 | 2 deployments: base `0x22fc5a29bd3d6cce19a06f844019fd506fce4455`; base `0x70f61901658aafb7ae57da0c30695ce4417e72b9` | ⚠️ Unaudited |
| VlEqb | unknown | project_anchor | own_supporting | 1 | berachain | unit-384933 | 2 deployments: berachain `0x22fc5a29bd3d6cce19a06f844019fd506fce4455`; berachain `0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` | ⚠️ Unaudited |
| VoEqb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x172cdd024403f7cb7168db98df8ddbfe53da9b4f`; arbitrum `0xac1f84500facaff7423752a8f344d04b7c305ab1` | ⚠️ Unaudited |
| VotingEscrowPendleMainchain | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f30a9d41b80ecc5b94306ab4364951ae3170210` | ⚠️ Unaudited |
| WOFT | token | project_anchor | own_supporting | 0 | berachain | unit-384857 | `0x88bb2bf040fa5bf2bd3b79ff9dfa035ed1289032` | ⚠️ Unaudited |
| WOFT | token | project_anchor | own_supporting | 0 | berachain | unit-384858 | `0xf9ee98099f5078078bb8e17e6b4a4f95137e2037` | ⚠️ Unaudited |
| WOFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xff9c599d51c407a45d631c6e89cb047efb88aef6` | ⚠️ Unaudited |
| XEPendleVester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0f9492931cdd612ece9f7bbbe786490238ac45e6` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | optimism | unit-384882 | 2 deployments: optimism `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e`; optimism `0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | bsc | unit-384920 | 2 deployments: bsc `0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139`; bsc `0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | sonic | unit-384893 | 2 deployments: sonic `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e`; sonic `0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-384958 | 2 deployments: hyperliquid `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d`; hyperliquid `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | mantle | unit-384916 | 2 deployments: mantle `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e`; mantle `0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | base | unit-384947 | 2 deployments: base `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d`; base `0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-384906 | 2 deployments: arbitrum `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e`; arbitrum `0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | ⚠️ Unaudited |
| XEqbToken | unknown | project_anchor | own_supporting | 1 | berachain | unit-384934 | 2 deployments: berachain `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e`; berachain `0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e511a9450900013bb9519a5451c2f6aa8f0f6e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384838 | `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384839 | `0x357f55b46821a6c6e476cc32ebb2674cd125e849` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384840 | `0x4f1cdf43f5e407abd569878976960d4d0a3d3452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384841 | `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384843 | `0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384844 | `0xd8967b2b15b3cdf96039b7407813b4037f73ec27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5fa7e40aff6c7712c47431a75e48c6690bdfeed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384845 | `0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x686fede4a274dcce7db296220453f4b951faafbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd308abaa7922c63301077e7aa0bbe2d2ea223fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf857c938829c2a53557fb3fbb1c85d10a5227e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13e029b6631c0540126c2cdf1675316c971beb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3521b75aa910ff93f05354f1235f1f1e8c1eb705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x893bb3e40fa40194e22ac3e581897ead96219cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab5542a49a1650507bbad697380f14403fa106bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe0e1c30f70e0f19807a0a8c6343189b5c083f343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x00807f12343a039acce6c9446696c818b53966f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x017778cacc60560f7eb48ef68680f8dd6d29cd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x03b86b5b4f49fd2059c813b3f928c0b276c88e4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1679fe95b11959c694af8627e5360267e146723b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x183b30706ff2655e7ab0ab37867dd7af8cb75e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x245f1d70acaacd219564fccb75f108917037a960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x36ff28444f16b029dbfb5c17db7d05cf55c3d32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x647316ad62d70ca948436c369669493ff2482ee9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384862 | `0x77b777d21408c0094414835b2ae71d0850d65973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8d94675a6b0e64cb6a7ee7e4d19a5793bba50ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb0d7182ba15ed02326590f033f72c393c978eb7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384863 | `0xd51d2517d11bfd7017c162a219d5e026f886aef1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384864 | `0xf7498deabbae0e8d5673336a8fb348ef95052981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b60412431d5824532e3a89e41638724c6e31739` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-384850 | `0x1ef5e2153c3e6533af716d057a90b71b8621fa39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x210c35a1729af9edae594f565da40fe1c8262c64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x266d467d77710f9662c9f42ac7d2461cffb5074f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1b1af1800de769a5429cedce6825ec4f7d04e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd76ca18bccc42f54300702d85997cd317728567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfff4b05a10c5df1382272e554254ea8b097ec03e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4abc7c5f0445d847e1d4544dd15f049e996eadd2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-384856 | `0x741620136cf08a782c1df1fc9e3caa760cc4fecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xce740fcabb63e129d98717eea5450e4a53e7b76a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 465
- Live contracts: 130
- Unknown liveness contracts: 335
- Source-verified contracts: 437
- Currently scope-matched contracts retained as-is: 4
- Classification counts: currently scope matched=4, candidate review=316, candidate hard block=8, source verified unclassified=109, unverified unclassified=28

Showing first 200 of 465 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | TransparentUpgradeableProxy<br>`0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x70f61901658aafb7ae57da0c30695ce4417e72b9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | BaseRewardPool<br>`0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | DepositToken<br>`0x55f140abbf87ef957263f04ed75d1691980433a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbExternalToken<br>`0x507fdbebdb11c71e7c7565177d0942a6fd466ced` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMinterSidechain<br>`0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMsgReceiveEndpoint<br>`0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMsgReceiveEndpoint<br>`0xfe67c25b5136a4ff8b6eb7187ca3d6f3e25ec9a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | ProxyAdmin<br>`0x96a3757d9f832b3db174bcc665e7dc6fa5656e98` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x00807f12343a039acce6c9446696c818b53966f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x1679fe95b11959c694af8627e5360267e146723b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x22fc5a29bd3d6cce19a06f844019fd506fce4455` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x261341d7b6320aa4840639960c78d5fff296f574` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x26ae167bca873fd11de43691c6215b48f0186f5c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x357f55b46821a6c6e476cc32ebb2674cd125e849` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x4f1cdf43f5e407abd569878976960d4d0a3d3452` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x576ab25b7ad987ba2841dacff3727411dc2f748d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x86a20111feae36f3511a30c0640d2099b3a818c5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x9cb59c379fab6e2a0b6312eb2b0cc40008cc7353` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xad29951cda3dcd0e570e65a6ee34aa455c53421c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xb3ad8c89ccd87c1f8aa169f9b91120b35532fbb8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xcaed9fb3438edc5b30159417383428f9a8b558d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xd8967b2b15b3cdf96039b7407813b4037f73ec27` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0x07dc38e365ed8af93cceb30d73349fb8a683de3c` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0x6661365c53c8053a7dda36419298429f7f64f340` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0xf303f75cce2ac8d8d5d5bf956558dbdd827c812b` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | VlEqb<br>`0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | BaseRewardPool<br>`0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | DepositToken<br>`0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbExternalToken<br>`0x8a5a4348f5cfe9da08b0f3d9ae76bef6e8bbd36c` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMinterSidechain<br>`0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMsgReceiveEndpoint<br>`0x2583a2538272f31e9a15dd12a432b8c96ab4821d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMsgReceiveEndpoint<br>`0xcbad0cade6069514e77369584bc15730662c4779` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x00807f12343a039acce6c9446696c818b53966f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x0dc8b9a68785a1168d6a8e2ccbdca41be85279ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x1679fe95b11959c694af8627e5360267e146723b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x18c61629e6cbadb85c29ba7993f251b3ebe2b356` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x22fc5a29bd3d6cce19a06f844019fd506fce4455` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x245f1d70acaacd219564fccb75f108917037a960` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x26ae167bca873fd11de43691c6215b48f0186f5c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x500d5e0d9d7337963ed6449e81cb52928184d3d6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x55f140abbf87ef957263f04ed75d1691980433a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x6668f019cc82c80b601c28b1249725f764e84431` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x86a20111feae36f3511a30c0640d2099b3a818c5` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xad29951cda3dcd0e570e65a6ee34aa455c53421c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xb9ee335f5ba3bf088c6ad40dcc725889a2930718` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xc00371c83c0f943ab0deeff02288ac939a9ef9dc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xd8d51c42557343f8f1696eb63d9c3c96a2aae903` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xe2db20ce7d845f99338bba4bdff00e733801dde7` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xe343ed31065cf41f6544a42ad6a015f93831b454` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0x6f61633a71da13126274ab340cc7fe0a916d8ca8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0xbdd61ed487c3eb041deeee5d565299cd580af179` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0xca93b47a4a834b0573fba7531275eff422a3b91b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0xd804ab068b2b8d4db19e97c79ee2ab8ecb9087ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | VlEqb<br>`0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | BaseRewardPool<br>`0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbExternalToken<br>`0x5e73e741b0b15e10789a30a91953794e44ea4531` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMinterSidechain<br>`0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMsgReceiveEndpoint<br>`0xad29951cda3dcd0e570e65a6ee34aa455c53421c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | MerkleDistributorFactory<br>`0x9be3931817b25ab5f0269867b054762a7f68b88c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x02c033574b6ca02ddae8e0b4070d551149d981e4` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x2583a2538272f31e9a15dd12a432b8c96ab4821d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x6ee066b813cd8c2586d86f79ed0025e81801b923` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x70f61901658aafb7ae57da0c30695ce4417e72b9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x741620136cf08a782c1df1fc9e3caa760cc4fecc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x950904baaf84c5fdf48277f9cd5b637b30df354e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xc7517f481cc0a645e63f870830a4b2e580421e32` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0x672618a9a3e542a3ce3b3ff57d948f17ffa73de9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0xd8d51c42557343f8f1696eb63d9c3c96a2aae903` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0xf7498deabbae0e8d5673336a8fb348ef95052981` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | VlEqb<br>`0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | BaseRewardPool<br>`0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbExternalToken<br>`0x741620136cf08a782c1df1fc9e3caa760cc4fecc` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMinterSidechain<br>`0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMsgReceiveEndpoint<br>`0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | MerkleDistributorFactory<br>`0x4ecf06c21171c3a79834a7f40c33c7a5ff3ad188` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x22fc5a29bd3d6cce19a06f844019fd506fce4455` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x2350ea954113b1a1eebaaccc47f3a4985f709913` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x357f55b46821a6c6e476cc32ebb2674cd125e849` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x35fd17966de95870a77653791018026eb2ef2862` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x4f1cdf43f5e407abd569878976960d4d0a3d3452` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x500d5e0d9d7337963ed6449e81cb52928184d3d6` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xd8967b2b15b3cdf96039b7407813b4037f73ec27` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | VlEqb<br>`0x70f61901658aafb7ae57da0c30695ce4417e72b9` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | BaseRewardPool<br>`0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbExternalToken<br>`0x5e73e741b0b15e10789a30a91953794e44ea4531` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMinterSidechain<br>`0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMsgReceiveEndpoint<br>`0xa4876900af6b82078e427db752c54b7008d7d023` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMsgReceiveEndpoint<br>`0xad29951cda3dcd0e570e65a6ee34aa455c53421c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x02c033574b6ca02ddae8e0b4070d551149d981e4` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x2583a2538272f31e9a15dd12a432b8c96ab4821d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x6ee066b813cd8c2586d86f79ed0025e81801b923` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x70f61901658aafb7ae57da0c30695ce4417e72b9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x741620136cf08a782c1df1fc9e3caa760cc4fecc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xc7517f481cc0a645e63f870830a4b2e580421e32` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0xa2cb78076ae515f180421bc7a5fbb2802ae1ea19` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0xd8d51c42557343f8f1696eb63d9c3c96a2aae903` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0xf7498deabbae0e8d5673336a8fb348ef95052981` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | VlEqb<br>`0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | BaseRewardPool<br>`0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbExternalToken<br>`0x7700eb46bb40163985c5337de39704482aed33b1` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMinterSidechain<br>`0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMinterSidechain<br>`0x5a27ac1185ddee6a9cd64d8da893cfdbe4dbf821` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMsgReceiveEndpoint<br>`0x245f1d70acaacd219564fccb75f108917037a960` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMsgReceiveEndpoint<br>`0xb3ad8c89ccd87c1f8aa169f9b91120b35532fbb8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x00807f12343a039acce6c9446696c818b53966f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x02c033574b6ca02ddae8e0b4070d551149d981e4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x70f61901658aafb7ae57da0c30695ce4417e72b9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x741620136cf08a782c1df1fc9e3caa760cc4fecc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x9f14535a90bc7ca72739a73c1d382bd272ca341a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xb0d7182ba15ed02326590f033f72c393c978eb7a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xc7517f481cc0a645e63f870830a4b2e580421e32` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xd8d51c42557343f8f1696eb63d9c3c96a2aae903` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0x26ae167bca873fd11de43691c6215b48f0186f5c` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0x950904baaf84c5fdf48277f9cd5b637b30df354e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | UpgradeableBeacon<br>`0xf7498deabbae0e8d5673336a8fb348ef95052981` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | VlEqb<br>`0x22fc5a29bd3d6cce19a06f844019fd506fce4455` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | BaseRewardPool<br>`0xc7517f481cc0a645e63f870830a4b2e580421e32` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x22fc5a29bd3d6cce19a06f844019fd506fce4455` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x2350ea954113b1a1eebaaccc47f3a4985f709913` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x357f55b46821a6c6e476cc32ebb2674cd125e849` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x4f1cdf43f5e407abd569878976960d4d0a3d3452` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x500d5e0d9d7337963ed6449e81cb52928184d3d6` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x55f140abbf87ef957263f04ed75d1691980433a8` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x5e73e741b0b15e10789a30a91953794e44ea4531` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x7700eb46bb40163985c5337de39704482aed33b1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x9cb59c379fab6e2a0b6312eb2b0cc40008cc7353` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xd8967b2b15b3cdf96039b7407813b4037f73ec27` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | BaseRewardPool<br>`0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | BaseRewardPool<br>`0x901e8fd1e2d6d1788e5288e967034761ce0e1a88` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | DepositToken<br>`0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbExternalToken<br>`0xddf45d7493b796ea031969252c6d03032ca15f2b` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMinterSidechain<br>`0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMsgReceiveEndpoint<br>`0x2583a2538272f31e9a15dd12a432b8c96ab4821d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | EqbMsgReceiveEndpoint<br>`0xd2eb8d4b1fe2e6751b979b1fafe39cab7f2f5fd2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | MerkleDistributorFactory<br>`0x2e42452396a8f091703c0ed3c86ef4e3de8264a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | MerkleDistributorV2<br>`0x2e1ac65a73bfcc857d0161636d551cbf0395968f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | MerkleDistributorV2<br>`0xff66978bf6f5f995f32069716f24dafcf52da328` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | ProxyAdmin<br>`0x24188b23541501d084e8e8d71b0d9e74a81f0dbd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | ProxyAdmin<br>`0xd217be359ab3f2e8eed1b6c9ee27b2661a91c8c3` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x03b611858f8e8913f8db7d9fdbf59e352b0c83e8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x03b86b5b4f49fd2059c813b3f928c0b276c88e4e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x03e2bc724bb0caeb6c1bbd043b0424b310634513` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x06fd8e5dae63afcbfdf10604efca3143df534f37` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x07255095a86566576aef769d61566ed0627aff61` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x097b765a94847d861defa072997f0d1ea74f9bb5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x0c873efcce540b323aa194d63423581929ba7f9f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x0d7fd234d543a04cadeda3fc58df524656707fac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x1147652b42c7e1018f40f40200fa7fc77c87c9a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x16f46012db0f308373fa783a9f52655152d01594` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x172cdd024403f7cb7168db98df8ddbfe53da9b4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x180dd2ab94d328f37353ba2d6c4b498a729e2f8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x183b30706ff2655e7ab0ab37867dd7af8cb75e78` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x18c61629e6cbadb85c29ba7993f251b3ebe2b356` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x1d0e04dd2788f0b58a43957c4dc29b9d8783c477` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x1e82489bc071953ec95de7416d76424a43eedf5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x1f3ef2d1d16422e2be357f2f7ca538077f562b40` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x22126a0fb5cfbc327a8e36f141e4712e45c1c3ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x229de5e340990195d9af417a17bd14eec9bc5b4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x245f1d70acaacd219564fccb75f108917037a960` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x261341d7b6320aa4840639960c78d5fff296f574` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x273e6197d4e0c1b3d8bf73615d0b88834006c399` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |
| candidate review | TransparentUpgradeableProxy<br>`0x299c643a5d84c227705efa2eea00c41b6fc748af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc493bd1d8d794357e79da84613b67533afc4d337` |

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
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf | EqbZap | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xc7517f481cc0a645e63f870830a4b2e580421e32` — deployed 2023-06-02 10:06:48+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x357f55b46821a6c6e476cc32ebb2674cd125e849` — deployed 2023-08-18 13:13:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x357f55b46821a6c6e476cc32ebb2674cd125e849` — deployed 2025-03-28 10:37:44+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` — deployed 2023-07-05 07:07:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x70f61901658aafb7ae57da0c30695ce4417e72b9` — deployed 2024-09-03 13:55:08+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x70f61901658aafb7ae57da0c30695ce4417e72b9` — deployed 2025-03-10 12:33:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8967b2b15b3cdf96039b7407813b4037f73ec27` — deployed 2025-08-09 09:48:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc7517f481cc0a645e63f870830a4b2e580421e32` — deployed 2024-12-04 12:30:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf | EpendleVaultSidechain | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x89a4e4044bdb53e00e40c1b2e1005bd61663186b` — deployed 2024-02-28 13:30:06+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9f14535a90bc7ca72739a73c1d382bd272ca341a` — deployed 2025-03-10 12:34:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7700eb46bb40163985c5337de39704482aed33b1` — deployed 2025-08-09 09:54:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9f14535a90bc7ca72739a73c1d382bd272ca341a` — deployed 2024-09-03 13:56:42+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4250ea96f880c5725931a72a87dcbe01fc654a92` — deployed 2024-01-23 13:52:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x6ee066b813cd8c2586d86f79ed0025e81801b923` — deployed 2024-12-04 12:33:15+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5e73e741b0b15e10789a30a91953794e44ea4531` — deployed 2025-03-28 10:38:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf19fbc1d3693ecca9979ea31272e422903e94cec` — deployed 2024-01-29 08:52:07+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-12-04 was 28d from audit; next candidate 64d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf | EqbRewardDistributor | unmatched — not counted | — | listed in finding WP-L6 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf | BaseRewardPool | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` — deployed 2025-03-28 10:36:57+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3` — deployed 2024-01-29 08:56:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` — deployed 2024-12-04 12:29:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620136cf08a782c1df1fc9e3caa760cc4fecc` — deployed 2025-03-10 12:35:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2350ea954113b1a1eebaaccc47f3a4985f709913` — deployed 2025-03-28 10:39:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` — deployed 2025-03-10 12:33:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` — deployed 2023-07-05 07:06:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9739d1e515c5291faa26d92a5d02761b6bbb4d6f` — deployed 2024-01-23 13:53:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` — deployed 2024-09-03 13:54:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x500d5e0d9d7337963ed6449e81cb52928184d3d6` — deployed 2025-08-09 09:58:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` — deployed 2023-08-18 13:12:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` — deployed 2024-12-04 12:34:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe2db20ce7d845f99338bba4bdff00e733801dde7` — deployed 2024-02-28 13:33:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x55f140abbf87ef957263f04ed75d1691980433a8` — deployed 2025-10-05 07:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` — deployed 2025-08-09 09:44:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620136cf08a782c1df1fc9e3caa760cc4fecc` — deployed 2024-09-03 13:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8967b2b15b3cdf96039b7407813b4037f73ec27` — deployed 2025-10-05 07:55:12+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-08-18 was 44d from audit; next candidate 88d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf | SmartConvertor | unmatched — not counted | — | — | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf | VaultEPendle | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd30d6fd662c0d92b49f3c3e478e125ba1d968059` — deployed 2023-10-13 09:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbMsgReceiveEndpoint | unmatched — not counted | — | mentioned in finding WP-C1 and WP-N5 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbMinterSidechain | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` — deployed 2025-08-09 09:42:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` — deployed 2023-06-02 10:05:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` — deployed 2024-09-03 13:52:18+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` — deployed 2025-03-28 10:36:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f` — deployed 2023-07-05 07:06:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` — deployed 2025-03-10 12:33:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` — deployed 2024-12-04 12:29:05+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` — deployed 2023-08-18 13:11:39+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-06-02 was 3d from audit; next candidate 30d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbMinterBaseUpg | unmatched — not counted | — | mentioned in findings WP-C1, WP-I8, WP-I10 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleProxy | unmatched — not counted | — | mentioned in finding WP-M2 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleProxyBaseUpg | unmatched — not counted | — | mentioned in finding WP-H6 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleBoosterBaseUpg | unmatched — not counted | — | mentioned in findings WP-H6, WP-I8 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbExternalToken | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x6ee066b813cd8c2586d86f79ed0025e81801b923` — deployed 2024-09-03 13:56:58+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6ee066b813cd8c2586d86f79ed0025e81801b923` — deployed 2025-03-10 12:34:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x86a20111feae36f3511a30c0640d2099b3a818c5` — deployed 2024-01-29 08:52:29+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7700eb46bb40163985c5337de39704482aed33b1` — deployed 2025-03-28 10:39:14+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2350ea954113b1a1eebaaccc47f3a4985f709913` — deployed 2025-08-09 09:56:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620136cf08a782c1df1fc9e3caa760cc4fecc` — deployed 2024-12-04 12:33:49+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3eabe18eae267d1b57f917aba085bb5906114600` — deployed 2024-01-23 13:53:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3` — deployed 2024-02-28 13:30:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbToken | unmatched — not counted | — | mentioned in finding WP-L3 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | DepositToken | unmatched — not counted | — | mentioned in finding WP-L3 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | VlEqb | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x70f61901658aafb7ae57da0c30695ce4417e72b9` — deployed 2024-12-04 12:29:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` — deployed 2023-08-18 13:12:53+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` — deployed 2023-07-05 07:06:48+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` — deployed 2025-03-28 10:37:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x70f61901658aafb7ae57da0c30695ce4417e72b9` — deployed 2023-06-02 10:06:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` — deployed 2025-03-10 12:33:41+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x357f55b46821a6c6e476cc32ebb2674cd125e849` — deployed 2025-08-09 09:46:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` — deployed 2024-09-03 13:54:48+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-06-02 was 3d from audit; next candidate 30d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | BaseRewardPool | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` — deployed 2025-03-28 10:36:57+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3` — deployed 2024-01-29 08:56:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` — deployed 2024-12-04 12:29:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620136cf08a782c1df1fc9e3caa760cc4fecc` — deployed 2025-03-10 12:35:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2350ea954113b1a1eebaaccc47f3a4985f709913` — deployed 2025-03-28 10:39:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` — deployed 2025-03-10 12:33:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` — deployed 2023-07-05 07:06:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9739d1e515c5291faa26d92a5d02761b6bbb4d6f` — deployed 2024-01-23 13:53:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` — deployed 2024-09-03 13:54:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x500d5e0d9d7337963ed6449e81cb52928184d3d6` — deployed 2025-08-09 09:58:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` — deployed 2023-08-18 13:12:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` — deployed 2024-12-04 12:34:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe2db20ce7d845f99338bba4bdff00e733801dde7` — deployed 2024-02-28 13:33:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x55f140abbf87ef957263f04ed75d1691980433a8` — deployed 2025-10-05 07:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` — deployed 2025-08-09 09:44:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620136cf08a782c1df1fc9e3caa760cc4fecc` — deployed 2024-09-03 13:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8967b2b15b3cdf96039b7407813b4037f73ec27` — deployed 2025-10-05 07:55:12+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-07-05 was 30d from audit; next candidate 74d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleProxySidechain | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf` — deployed 2023-08-18 13:07:37+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x18c61629e6cbadb85c29ba7993f251b3ebe2b356` — deployed 2025-08-09 09:32:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf` — deployed 2025-03-28 10:34:38+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d` — deployed 2025-03-10 12:32:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x920873e5b302a619c54c908adfb77a1c4256a3b8` — deployed 2024-12-04 12:26:37+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d` — deployed 2024-09-03 13:25:42+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x64627901dadb46ed7f275fd4fc87d086cff1e6e3` — deployed 2023-07-05 07:04:26+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x64627901dadb46ed7f275fd4fc87d086cff1e6e3` — deployed 2023-06-01 18:59:30+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-06-01 was 4d from audit; next candidate 30d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | PendleProxyMainchain | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x64627901dadb46ed7f275fd4fc87d086cff1e6e3` — deployed 2023-06-01 18:57:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf | EqbMinterMainchain | unmatched — not counted | — | mentioned in finding WP-I10 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf | BaseRewardPool | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` — deployed 2025-03-28 10:36:57+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3` — deployed 2024-01-29 08:56:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf` — deployed 2024-12-04 12:29:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620136cf08a782c1df1fc9e3caa760cc4fecc` — deployed 2025-03-10 12:35:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2350ea954113b1a1eebaaccc47f3a4985f709913` — deployed 2025-03-28 10:39:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` — deployed 2025-03-10 12:33:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` — deployed 2023-07-05 07:06:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9739d1e515c5291faa26d92a5d02761b6bbb4d6f` — deployed 2024-01-23 13:53:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x660e0d05bfbc46c6644af7e06de202762dcc9fa9` — deployed 2024-09-03 13:54:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x500d5e0d9d7337963ed6449e81cb52928184d3d6` — deployed 2025-08-09 09:58:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` — deployed 2023-08-18 13:12:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` — deployed 2024-12-04 12:34:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe2db20ce7d845f99338bba4bdff00e733801dde7` — deployed 2024-02-28 13:33:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x55f140abbf87ef957263f04ed75d1691980433a8` — deployed 2025-10-05 07:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` — deployed 2025-08-09 09:44:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x741620136cf08a782c1df1fc9e3caa760cc4fecc` — deployed 2024-09-03 13:57:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd8967b2b15b3cdf96039b7407813b4037f73ec27` — deployed 2025-10-05 07:55:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf | PendleCampaign | unmatched — not counted | — | Mentioned in finding PVE-001 as sharing same issue | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf | EqbMasterChef | unmatched — not counted | — | Target in findings PVE-002, PVE-004 | no |
| spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf | PendleBoosterBaseUpg | unmatched — not counted | — | Target in finding PVE-003 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x52f0bbe0325097ac93e1ec85c32a950e47789ca5` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x55f140abbf87ef957263f04ed75d1691980433a8` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x901e8fd1e2d6d1788e5288e967034761ce0e1a88` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb3c40b02f38f61f3d141c325c19f35b1f9df99ca` | BribeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8a5a4348f5cfe9da08b0f3d9ae76bef6e8bbd36c` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x06fd8e5dae63afcbfdf10604efca3143df534f37` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x7700eb46bb40163985c5337de39704482aed33b1` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x6408d91e853bfa11caa719a4578fe659dbd16005` | ePendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x7700eb46bb40163985c5337de39704482aed33b1` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2350ea954113b1a1eebaaccc47f3a4985f709913` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8c9b5b2e6e136b6ee66fca6229191e749c0029f5` | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ae382814e24b6ddf588901c597f26a9e945c577` | EPendleProxyOFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4f1cdf43f5e407abd569878976960d4d0a3d3452` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6668f019cc82c80b601c28b1249725f764e84431` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x02c033574b6ca02ddae8e0b4070d551149d981e4` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x5e73e741b0b15e10789a30a91953794e44ea4531` | EpendleVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x02c033574b6ca02ddae8e0b4070d551149d981e4` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9f14535a90bc7ca72739a73c1d382bd272ca341a` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x4f1cdf43f5e407abd569878976960d4d0a3d3452` | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf19fbc1d3693ecca9979ea31272e422903e94cec` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x89a4e4044bdb53e00e40c1b2e1005bd61663186b` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x9f14535a90bc7ca72739a73c1d382bd272ca341a` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x7700eb46bb40163985c5337de39704482aed33b1` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x9f14535a90bc7ca72739a73c1d382bd272ca341a` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4250ea96f880c5725931a72a87dcbe01fc654a92` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x5e73e741b0b15e10789a30a91953794e44ea4531` | EPendleVaultSidechain | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x507fdbebdb11c71e7c7565177d0942a6fd466ced` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5e73e741b0b15e10789a30a91953794e44ea4531` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x2350ea954113b1a1eebaaccc47f3a4985f709913` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x5e73e741b0b15e10789a30a91953794e44ea4531` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x741620136cf08a782c1df1fc9e3caa760cc4fecc` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3eabe18eae267d1b57f917aba085bb5906114600` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x6ee066b813cd8c2586d86f79ed0025e81801b923` | EqbExternalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5a27ac1185ddee6a9cd64d8da893cfdbe4dbf821` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` | EqbMinterSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50` | EQBOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x357f55b46821a6c6e476cc32ebb2674cd125e849` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x03e2bc724bb0caeb6c1bbd043b0424b310634513` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xc7517f481cc0a645e63f870830a4b2e580421e32` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x357f55b46821a6c6e476cc32ebb2674cd125e849` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x39f4789bdc5560ade254fce8b7f221205df6993d` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x357f55b46821a6c6e476cc32ebb2674cd125e849` | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x3e7ef8f50246f725885102e8238cbba33f276747` | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x9e1028f5f1d5ede59748ffcee5532509976840e0` | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x48540d1140331277b9157a096e40e6f5506fc335` | MintedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x76c37f9949e05b37c8373d155c1fef46a6858481` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xaf3a6f67af1624d3878a8d30b09fae7915dca2a0` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x010cd9b9be7e416e07793dc6ce2f45868a80a50a` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc6e669606b28f4e8ba3ec3fef20d8f651bf239f0` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbfbcfe8873fe28dfa25f1099282b088d52bbad9c` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x374ca32fd7934c5d43240e1e73fa9b2283468609` | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x37227785a1f4545ed914690e395e4cfe96b8319f` | VaultEPendleArbi | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x357f55b46821a6c6e476cc32ebb2674cd125e849` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x0140de476f49b6b42f7b73612b6dc317ab91d3bc` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x22fc5a29bd3d6cce19a06f844019fd506fce4455` | VlEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x88bb2bf040fa5bf2bd3b79ff9dfa035ed1289032` | WOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xf9ee98099f5078078bb8e17e6b4a4f95137e2037` | WOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e` | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 177 |
| upstream | 27 |
| standard_library | 16 |
| needs_review | 46 |

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
