# Agentic Audit Brief: Alpaca Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 19 across 6 audit(s)
- Eligible audit results: 19 (6 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 9.7% over 90 days

## Project Overview

- Project: Alpaca Finance (`alpaca-finance`)
- Website: [https://www.alpacafinance.org/](https://www.alpacafinance.org/)
- Lifecycle: declining (Tier 0, 97.9% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, fantom
- Contract surface: 196 unique implementations (553 raw deployments)
- Coverage basis: 12/25 confirmed own live verified implementations (48.0%); conservative 48.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $39,030,090.00
- On-chain TVL (included contracts): $8,635,247.86
- TVL by chain: Bsc $8,635,247.86

## Project Description

This brief describes the observed EVM deployment and audit surface for Alpaca Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across bsc. Structural roles: 23 unclassified, 10 core, 7 supporting. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: unclassified (23), core (10), supporting (7)
- Contract kinds: contract (40)
- Detected standards: erc1967proxy (9), ownable (4), erc20 (1)
- Frameworks: openzeppelin (15), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 39 contracts are derived from known codebases. 39 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd3bb23...4be6c8`, chain 56)
- AdminUpgradeabilityProxy (`0x02da70...aa7442`, chain 56)
- AdminUpgradeabilityProxy (`0x08fc9b...1c24e7`, chain 56)
- AdminUpgradeabilityProxy (`0x11362e...a9db40`, chain 56)
- AdminUpgradeabilityProxy (`0x158da8...951e59`, chain 56)
- AdminUpgradeabilityProxy (`0x262de1...1b59b2`, chain 56)
- AdminUpgradeabilityProxy (`0x3282d2...8cd3cd`, chain 56)
- AdminUpgradeabilityProxy (`0x3b4fbb...0fa4dc`, chain 56)
- AdminUpgradeabilityProxy (`0x6a3487...2a55f9`, chain 56)
- AdminUpgradeabilityProxy (`0x7c9e73...87592f`, chain 56)
- AdminUpgradeabilityProxy (`0x92110a...258fe6`, chain 56)
- AdminUpgradeabilityProxy (`0xb76ed4...aeaf84`, chain 56)
- AdminUpgradeabilityProxy (`0xbff4a3...723afe`, chain 56)
- AdminUpgradeabilityProxy (`0xd7d069...fc0063`, chain 56)
- AdminUpgradeabilityProxy (`0xf1be8e...16d421`, chain 56)
- DebtToken (`0x036664...7dbf57`, chain 56)
- DebtToken (`0x513813...e22cec`, chain 56)
- DebtToken (`0xd19d62...029ebd`, chain 56)
- EmissionForwarder (`0x7e6f68...7227f7`, chain 56)
- FairLaunch (`0xa625ab...489a8f`, chain 56)
- GnosisSafeProxy (`0x18f59e...475d01`, chain 56)
- MerkleDistributor (`0x083c02...e58de7`, chain 56)
- MerkleDistributor (`0x60bc40...514105`, chain 56)
- MerkleDistributor (`0x63c60b...dc4412`, chain 56)
- MerkleDistributor (`0xa33ff7...50ce58`, chain 56)
- MerkleDistributor (`0xd193b3...21c4bf`, chain 56)
- Multicall (`0x41263c...90e76c`, chain 56)
- ProxyAdmin (`0x5379f3...94f452`, chain 56)
- ProxyToken (`0x783495...a01e4f`, chain 56)
- Shield (`0x1963f8...1b4656`, chain 56)
- StronkAlpaca (`0x6f695b...6ce7a7`, chain 56)
- Timelock (`0x2d5408...1d0a59`, chain 56)
- TransparentUpgradeableProxy (`0x08b5a9...5afc7e`, chain 56)
- TransparentUpgradeableProxy (`0x426bdf...c361f3`, chain 56)
- TransparentUpgradeableProxy (`0x4f4054...c1cf43`, chain 56)
- TransparentUpgradeableProxy (`0x50e574...1ddab7`, chain 56)
- TransparentUpgradeableProxy (`0x800933...1e26d7`, chain 56)
- TransparentUpgradeableProxy (`0xc4ed26...5d938b`, chain 56)
- TransparentUpgradeableProxy (`0xff6934...b147eb`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 40; live-surface rows included: 40 (40 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 12/25 (48.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 171 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 13 standard proxy/library)
- Proxy deployments represented within implementation groups: 315
- Confirmed-live implementations: 25 of 196 unique; 171 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 12/177
- Verified + Unaudited implementations: 165
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 196
- Raw deployments: 553
- Audits discovered: 19 (19 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $8,544,244.14
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 19 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 8.0% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $8,544,244.14 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 8 | 4.5% | 2022-03 |
| CertiK | Tier 2 | 6 | 3.4% | 2021-05 |
| SlowMist | Tier 1 | 2 | 1.1% | 2021-11 |
| unknown | Tier 2 | 1 | 0.6% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | project_anchor | own_supporting | 2 | bsc | unit-226236 (2 proxies) | 2 deployments: bsc `0x3282d2...8cd3cd`; bsc `0xf1be8e...16d421` | ✅ Audited |
| AdminUpgradeabilityProxy | proxy | project_anchor | own_supporting | 3 | bsc | unit-226237 (3 proxies) | 3 deployments: bsc `0x158da8...951e59`; bsc `0xd7d069...fc0063`; bsc `0xff6934...b147eb` | ✅ Audited |
| AdminUpgradeabilityProxy | proxy | project_anchor | own_supporting | 1 | bsc | unit-226244 | `0x7c9e73...87592f` | ✅ Audited |
| DebtToken | unknown | project_anchor | own_supporting | 8 | bsc | unit-226233 (8 proxies) | 9 deployments: bsc `0x02da70...aa7442`; bsc `0x036664...7dbf57`; bsc `0x11362e...a9db40`; bsc `0x262de1...1b59b2`; bsc `0x3b4fbb...0fa4dc`; bsc `0x426bdf...c361f3`; bsc `0x6a3487...2a55f9`; bsc `0x92110a...258fe6`; bsc `0xb76ed4...aeaf84` | ✅ Audited |
| DebtToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-226224 | `0x513813...e22cec` | ✅ Audited |
| DebtToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-226232 | `0xd19d62...029ebd` | ✅ Audited |
| FairLaunch | unknown | project_anchor | own_supporting | 0 | bsc | unit-226230 | `0xa625ab...489a8f` | ✅ Audited |
| GrazingRange | unknown | project_anchor | own_supporting | 1 | bsc | unit-226241 | 2 deployments: bsc `0x6bf5b3...feb343`; bsc `0x815c54...83b77f` | ✅ Audited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | bsc | unit-226225 | `0x5379f3...94f452` | ✅ Audited |
| Shield | unknown | project_anchor | own_supporting | 0 | bsc | unit-226221 | `0x1963f8...1b4656` | ✅ Audited |
| StronkAlpaca | unknown | project_anchor | own_supporting | 0 | bsc | unit-226228 | `0x6f695b...6ce7a7` | ✅ Audited |
| Timelock | governance | project_anchor | own_supporting | 0 | bsc | unit-226222 | `0x2d5408...1d0a59` | ✅ Audited |

### ⚠️ Verified + Unaudited (165)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VaultAip25 | core_logic | project_anchor | own_supporting | 2 | bsc | unit-226239 (2 proxies) | 2 deployments: bsc `0x08fc9b...1c24e7`; bsc `0xbff4a3...723afe` | ⚠️ Unaudited |
| AlpacaToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f0528...091d2f` | ⚠️ Unaudited |
| AccessControlConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0780d4...3a181a`; bsc `0x6b6997...6e3e5f` | ⚠️ Unaudited |
| AdminFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x18a15b...0fdc4e` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 25 | bsc | n/a | 25 deployments: bsc `0x0159f4...31fe53`; bsc `0x20e5d4...365e82`; bsc `0x224563...2f4c46`; bsc `0x2c4a24...3bfd8c`; bsc `0x4bfe94...bc1b5a`; bsc `0x51782e...a5a695`; bsc `0x58a3ad...123c93`; bsc `0x693430...8ea482`; bsc `0x844766...203f06`; bsc `0x8b4520...b4c349`; bsc `0x9140ab...c9ca0a`; bsc `0x93cf6e...6a4fdf`; bsc `0x98b7e1...bb13a0`; bsc `0x9f6125...22da8e`; bsc `0xaa5c95...e14124`; bsc `0xb82b93...017a14`; bsc `0xc5954c...66492b`; bsc `0xc979ca...ec49ac`; bsc `0xd6260d...39627f`; bsc `0xe632ac...82b1fb`; bsc `0xe93f5d...8b510b`; bsc `0xebdecf...7073e7`; bsc `0xec4709...d48505`; bsc `0xef1c5d...7d1bad`; bsc `0xfac289...bb9303` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 45 deployments: bsc `0x05f34e...d85fb4`; bsc `0x091765...a2bb3a`; bsc `0x104c62...61545d`; bsc `0x10e691...594236`; bsc `0x174e30...71f192`; bsc `0x1a174d...5f4db8`; bsc `0x226bcb...a4c81f`; bsc `0x2ec106...52296b`; bsc `0x30a937...c0724e`; bsc `0x3be235...4c56eb`; bsc `0x3e0c8a...120934`; bsc `0x462bc5...207aaa`; bsc `0x50380a...0e6c90`; bsc `0x596958...e212c3`; bsc `0x5e2911...58f2e6`; bsc `0x61e58d...283c81`; bsc `0x6389ee...954962`; bsc `0x74eec5...e68b1b`; bsc `0x7f8be6...de0900`; bsc `0x86547e...2de1cc`; bsc `0x8ce75f...0dfeaa`; bsc `0x8e90eb...834a46`; bsc `0x90c9f3...28bb5e`; bsc `0x9328df...64b5f4`; bsc `0x958bcc...240c15`; bsc `0xa09e12...78765f`; bsc `0xa8f37d...a82d51`; bsc `0xa964fc...9679a8`; bsc `0xac712f...aa6682`; bsc `0xb222b4...54e1ee`; bsc `0xb2a587...24b891`; bsc `0xb63a71...887db2`; bsc `0xbde156...24a07c`; bsc `0xc40158...f1107a`; bsc `0xc5c5e6...cbf936`; bsc `0xcec250...e6780e`; bsc `0xd12b15...83353a`; bsc `0xd431e0...d60253`; bsc `0xd4bc4c...702285`; bsc `0xd80783...f86f68`; bsc `0xd8bfe8...ee89cd`; bsc `0xddcf0f...f5f95e`; bsc `0xe36154...b01792`; bsc `0xe862d4...057130`; bsc `0xeb6e0b...7b7480` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x41c1d9...83c46f` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x6d203f...35378c` | ⚠️ Unaudited |
| AlpacaFeeder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25be5d...3f6fad` | ⚠️ Unaudited |
| AlpacaOraclePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x333db3...a1c52b`; bsc `0x8cc012...b44a8a` | ⚠️ Unaudited |
| AlpacaStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x561b8c...a1a0b4`; bsc `0xdcecf0...d28a3f` | ⚠️ Unaudited |
| AlpacaStablecoinProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1391fb...bf1481`; bsc `0x9d9507...681c0a` | ⚠️ Unaudited |
| AusdPriceFeedKeepers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4acb44...7f303f` | ⚠️ Unaudited |
| AuthTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb689c0...a951d5` | ⚠️ Unaudited |
| BandPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x08fa2e...ca52bd`; bsc `0x29d36f...8ec82a` | ⚠️ Unaudited |
| BookKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc7d037...fb0e49`; bsc `0xd0aece...fd6e6c` | ⚠️ Unaudited |
| CakeMaxiWorker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x025ba0...8199c2` | ⚠️ Unaudited |
| CakeMaxiWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0455ce...d8275d`; bsc `0xa14c9e...13a4d9` | ⚠️ Unaudited |
| CakeMaxiWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x9cbc68...c959c9`; bsc `0xc82aca...f6c8e3`; bsc `0xcdd640...dd2379` | ⚠️ Unaudited |
| CakeMaxiWorker02MCV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0xe8084d...e36d88`; bsc `0xecfb6e...4a14c9` | ⚠️ Unaudited |
| ChainLinkPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x634902...40fc71` | ⚠️ Unaudited |
| CollateralPoolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x064bb6...6bdac1` | ⚠️ Unaudited |
| CollateralPoolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x06d280...e87162` | ⚠️ Unaudited |
| ConfigurableInterestVaultConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 8 deployments: bsc `0x01cf56...55fcbc`; bsc `0x0c1f04...bf83b3`; bsc `0x53dbb7...b5dc01`; bsc `0x6cc80d...549fb8`; bsc `0x709b10...ce065b`; bsc `0x724e67...59c038`; bsc `0x8f8ed5...091284`; bsc `0xd7b805...2dbed4` | ⚠️ Unaudited |
| ConfigurableInterestVaultConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x09fd93...cbe57b`; bsc `0x146135...b67bec`; bsc `0x238b84...ee3221`; bsc `0x570222...00613f`; bsc `0x5fa7cb...fdca8c`; bsc `0xaf8db8...64c8bd`; bsc `0xc2f7c6...994ed3`; bsc `0xc60e83...7baaa3`; bsc `0xfe1699...2a05c4` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x205ec0...9f6fc6` | ⚠️ Unaudited |
| DeltaNeutralOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x08ea5f...35787f`; bsc `0x5f4ea2...00e0a1` | ⚠️ Unaudited |
| DeltaNeutralPancakeMCV2Worker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 8 deployments: bsc `0x07767d...62f3ae`; bsc `0x0d9faf...32efd9`; bsc `0x42da67...fb2b64`; bsc `0x4b70c4...7a4162`; bsc `0x54d321...ef4db5`; bsc `0x83a5d5...e52723`; bsc `0x8ef56e...2cb067`; bsc `0xfa4b1e...4fa832` | ⚠️ Unaudited |
| DeltaNeutralPancakeWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 5 deployments: bsc `0x41d2e4...fa1123`; bsc `0x5124ba...eb4f04`; bsc `0x539fc3...9e8dbd`; bsc `0x6e3314...463cef`; bsc `0xf9e292...3eeb70` | ⚠️ Unaudited |
| DeltaNeutralPancakeWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d5fc3...b8fe27` | ⚠️ Unaudited |
| DeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd22d90...ecbf99` | ⚠️ Unaudited |
| DeltaNeutralVaultConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30275f...fe700f` | ⚠️ Unaudited |
| DeltaNeutralVaultConfig02 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 4 deployments: bsc `0x0ff370...2a91b3`; bsc `0x1cdea8...71c754`; bsc `0x31e461...b72967`; bsc `0x5640ce...e56cf2` | ⚠️ Unaudited |
| DeltaNeutralVaultGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 4 deployments: bsc `0x1d2416...7c01b4`; bsc `0x595f76...796e2e`; bsc `0x933db5...ab9c6b`; bsc `0xd3f82e...ba413a` | ⚠️ Unaudited |
| DeltaNeutralVaultGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd0106...faf1c7` | ⚠️ Unaudited |
| EmissionBridgeKeepers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64fe10...5284ae` | ⚠️ Unaudited |
| EmissionForwarder | unknown | project_anchor | own_supporting | 1 | bsc | unit-226240 | 2 deployments: bsc `0x4f4054...c1cf43`; bsc `0x7e6f68...7227f7` | ⚠️ Unaudited |
| FixedSpreadLiquidationStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x52d62b...50dbc1`; bsc `0x9fa028...10d6d1` | ⚠️ Unaudited |
| FixedSpreadLiquidationStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5af5c2...f8f6b7` | ⚠️ Unaudited |
| FlashMintModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0a7233...96fbd6`; bsc `0xe7a49a...f75de3` | ⚠️ Unaudited |
| GetPositions | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x878ef0...d26618`; bsc `0x9f481c...17af03` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | bsc | unit-226235 | `0x18f59e...475d01` | ⚠️ Unaudited |
| GrassHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x16716e...5981d7`; bsc `0x58bd8f...f0c52a`; bsc `0x6efa50...1cdd16` | ⚠️ Unaudited |
| GrassHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | bsc | n/a | 7 deployments: bsc `0x35cba4...3e2ae5`; bsc `0x3fd102...fdc4b4`; bsc `0x4c8f95...9f4c8a`; bsc `0x5876be...54dd6e`; bsc `0x980bfd...147379`; bsc `0xdf4445...14a963`; bsc `0xf4d66c...f0d109` | ⚠️ Unaudited |
| GrassHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x3a7023...292e6a`; bsc `0x66877f...3c5ec7`; bsc `0xd31628...e444b4`; bsc `0xdd97a1...aafb2c` | ⚠️ Unaudited |
| GrassHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x760455...132cd5` | ⚠️ Unaudited |
| GrassHouseGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x503093...026ee5` | ⚠️ Unaudited |
| GrazingRange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd50a06...9bb869` | ⚠️ Unaudited |
| IbTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x2b356b...e9778d`; bsc `0x425b07...7dec64`; bsc `0x4bf047...1f6d39`; bsc `0x4f56a9...080e36` | ⚠️ Unaudited |
| IbTokenPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x44b930...93c617`; bsc `0x4a89f8...96f8ae`; bsc `0xbb403a...973d7d`; bsc `0xfb6a37...a00fd1` | ⚠️ Unaudited |
| IbTokenPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbac9d8...d9df49` | ⚠️ Unaudited |
| LiquidationEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5aa539...9a7026` | ⚠️ Unaudited |
| MdexRestrictedStrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x632e03...d5517a`; bsc `0xeac60e...ff0548` | ⚠️ Unaudited |
| MdexRestrictedStrategyAddTwoSidesOptimal | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 9 deployments: bsc `0x0768ef...fc6bee`; bsc `0x090ff5...066137`; bsc `0x34cce2...77415a`; bsc `0x632188...a40214`; bsc `0xaa8f19...b710b4`; bsc `0xb16912...5833f9`; bsc `0xc9b12a...c8e7ad`; bsc `0xd8a128...599b7a`; bsc `0xf4c6b5...860593` | ⚠️ Unaudited |
| MdexRestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x812298...5ae475`; bsc `0xbd2c6b...166f1d` | ⚠️ Unaudited |
| MdexRestrictedStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd7103a...df68b4`; bsc `0xdaf720...cf373e` | ⚠️ Unaudited |
| MdexRestrictedStrategyPartialCloseMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x665a8e...816ce2`; bsc `0x889346...5e5b29` | ⚠️ Unaudited |
| MdexRestrictedStrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x47f1c5...239b72`; bsc `0xa5e98c...2a3463` | ⚠️ Unaudited |
| MdexWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9005e...e515b7` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226220 | `0x083c02...e58de7` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226226 | `0x60bc40...514105` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226227 | `0x63c60b...dc4412` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226229 | `0xa33ff7...50ce58` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-226231 | `0xd193b3...21c4bf` | ⚠️ Unaudited |
| Multicall | periphery | project_anchor | own_supporting | 0 | bsc | unit-226223 | `0x41263c...90e76c` | ⚠️ Unaudited |
| OracleMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x329796...738303`; bsc `0x553b8a...2b880c` | ⚠️ Unaudited |
| PancakeswapV2MCV2Worker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 20 | bsc | n/a | 20 deployments: bsc `0x05bdf3...def62d`; bsc `0x0ad12b...116089`; bsc `0x1eaaf5...aa4ee3`; bsc `0x32951e...82ac6c`; bsc `0x41867c...d2a94c`; bsc `0x4add84...56b5c3`; bsc `0x5c8035...0c5cb5`; bsc `0x7af938...6e16c4`; bsc `0x81b653...fc81cd`; bsc `0x831332...34b25a`; bsc `0x9b07de...57f7bf`; bsc `0x9b1398...e4d8bd`; bsc `0xa16441...052c5e`; bsc `0xa71381...272880`; bsc `0xbb77f1...e9e4c6`; bsc `0xbba4c9...3b1adf`; bsc `0xd62f15...371af6`; bsc `0xdcd9f0...795f80`; bsc `0xe90c44...f67273`; bsc `0xecb008...423f33` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5cb454...011f2b`; bsc `0x9a5105...334d96` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyAddBaseWithFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 5 deployments: bsc `0x389126...5a4833`; bsc `0x67a2cd...3f50f0`; bsc `0x69b501...6ed0e1`; bsc `0x9a0bee...459b21`; bsc `0xb0951e...2ba029` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x67420c...e3053f`; bsc `0x6c0105...75d150` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75a6b8...565e83` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x23850a...7cc61c`; bsc `0xa6b2a3...960843` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyPartialCloseMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd1b41e...d7c547`; bsc `0xdd8a43...d98495` | ⚠️ Unaudited |
| PancakeswapV2RestrictedSingleAssetStrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x94f5e8...dbe242`; bsc `0xb7025d...91df77` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4c7a42...0743bf`; bsc `0xb7da04...877009` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyAddTwoSidesOptimal | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 6 deployments: bsc `0x3fc149...952bf0`; bsc `0x4a9675...392cda`; bsc `0x5f94f6...1f4001`; bsc `0x66c717...6f5242`; bsc `0xb9b876...91c610`; bsc `0xcb459b...15d7a5` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x20ebee...108684`; bsc `0x9da5d5...84d438` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93e802...358796` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1313c5...e3ae55`; bsc `0x436263...f45316` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyPartialCloseMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1fa4d6...87b464`; bsc `0x8dcec5...d286c2` | ⚠️ Unaudited |
| PancakeswapV2RestrictedStrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x32b02e...86e946`; bsc `0x55fcc2...7a9419` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x77d23a...bfb40e`; bsc `0xe38ebf...bed0be` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddTwoSidesOptimal | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0xa48fea...4c0f21`; bsc `0xe3cbb6...79eef3`; bsc `0xf02be2...7f3a97`; bsc `0xf25034...121c45` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddTwoSidesOptimal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbf2a7...1d8f06` | ⚠️ Unaudited |
| PancakeswapV2StrategyAddTwoSidesOptimalMigrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02728b...f7bdd0` | ⚠️ Unaudited |
| PancakeswapV2StrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4f3451...36f1df`; bsc `0xe574dc...874599` | ⚠️ Unaudited |
| PancakeswapV2StrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x811938...c1dcb3`; bsc `0x95ff13...f5401e` | ⚠️ Unaudited |
| PancakeswapV2Worker | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x10af39...06eeed`; bsc `0x462c2d...8f4e14`; bsc `0x7d0ea8...45b0d2` | ⚠️ Unaudited |
| PancakeswapV2Worker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x7880fd...c2c8a3`; bsc `0x9e698f...b8d471`; bsc `0xad4e7e...e6b305`; bsc `0xcac73a...66b430` | ⚠️ Unaudited |
| PancakeswapV2Worker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 29 | bsc | n/a | 30 deployments: bsc `0x03462f...7b0d9b`; bsc `0x0e7b1e...119e2f`; bsc `0x1d0edc...985f42`; bsc `0x1dbdc3...0bdded`; bsc `0x255f31...907fdb`; bsc `0x2e7f32...176b1e`; bsc `0x315f5f...8fc726`; bsc `0x39bbc1...0258ca`; bsc `0x4193d3...ca015c`; bsc `0x4d3952...26991e`; bsc `0x532358...f36dca`; bsc `0x560173...316f0b`; bsc `0x651ebb...f5bfde`; bsc `0x68f131...1a5c34`; bsc `0x72bbcf...84b2a2`; bsc `0x730bce...26e472`; bsc `0x7be8f8...0063bd`; bsc `0x7d306d...804939`; bsc `0x807554...a73db2`; bsc `0x867d16...5e19c4`; bsc `0xa504af...e5d116`; bsc `0xa573ff...7c2ec8`; bsc `0xa726e9...6da393`; bsc `0xb800a8...3f5bcf`; bsc `0xb8e0b4...7a5eda`; bsc `0xbd861f...22f373`; bsc `0xc796e4...c0878d`; bsc `0xcfe0fa...eff11f`; bsc `0xd890f5...fc9e11`; bsc `0xf80c39...4cbe62` | ⚠️ Unaudited |
| PancakeswapV2Worker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb6960f...ff521f`; bsc `0xc69c8c...c3708b` | ⚠️ Unaudited |
| PancakeswapV2Worker02Migrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc13df...444d06` | ⚠️ Unaudited |
| PancakeswapWorker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb63acd...fb93f3`; bsc `0xd06d9b...62c0a0` | ⚠️ Unaudited |
| PCSFlashLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0d487b...941159`; bsc `0x514635...bb3398` | ⚠️ Unaudited |
| PCSFlashLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x152461...48bf70` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xaba0b0...41ee19` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbedf10...d461b6` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1afadb...3831af`; bsc `0x4c7fb2...6ca367` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfca12e...edef72` | ⚠️ Unaudited |
| ProxyToken | unknown | project_anchor | own_supporting | 1 | bsc | unit-226238 | 2 deployments: bsc `0x50e574...1ddab7`; bsc `0x783495...a01e4f` | ⚠️ Unaudited |
| ProxyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xc04096...aaff05` | ⚠️ Unaudited |
| ProxyWalletFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56f2d6...f4a116` | ⚠️ Unaudited |
| ProxyWalletRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x13e3bc...d30aea`; bsc `0x951eb3...3e320f` | ⚠️ Unaudited |
| RevenueTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x891100...8763cd` | ⚠️ Unaudited |
| RevenueTreasury02 | operational_periphery | project_anchor | own_supporting | 1 | bsc | unit-226234 | `0x08b5a9...5afc7e` | ⚠️ Unaudited |
| RevenueTreasuryKeepers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee6d18...553d7e` | ⚠️ Unaudited |
| ScientixFeeder | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x8269bc...cca036`; bsc `0xd2a63d...c92def`; bsc `0xf64c61...aeeffd` | ⚠️ Unaudited |
| ShowStopper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc19c71...798558` | ⚠️ Unaudited |
| SimplePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x166f56...a17ec7`; bsc `0x588c58...40f3c7` | ⚠️ Unaudited |
| SingleAssetWorkerConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0a3617...b1f8aa`; bsc `0x9b659a...034d34`; bsc `0xfbefff...01bc27` | ⚠️ Unaudited |
| StabilityFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x45040e...1129e6`; bsc `0xe35e00...c00aa0` | ⚠️ Unaudited |
| StablecoinAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x713130...cacce3`; bsc `0xd409da...ce4749` | ⚠️ Unaudited |
| StableSwapModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd16004...513fac`; bsc `0xfbd7b6...cfb4f6` | ⚠️ Unaudited |
| StaticPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8ef228...0c50dc`; bsc `0xd67286...a9eb45` | ⚠️ Unaudited |
| StrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x13c052...df99a7`; bsc `0xbbd346...269314` | ⚠️ Unaudited |
| StrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1dba79...bef2b5`; bsc `0x88d518...1d8550` | ⚠️ Unaudited |
| StrategyAddTwoSidesOptimal | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0xabe593...1075a6`; bsc `0xb2de0a...9a8498`; bsc `0xd408e1...c590ed` | ⚠️ Unaudited |
| StrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3af78a...cd2dc5`; bsc `0xe28808...2243f1` | ⚠️ Unaudited |
| StrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc1203f...93b465`; bsc `0xc7c025...1c86bb` | ⚠️ Unaudited |
| StrategyOracleMinimize | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x45ce92...455451`; bsc `0x55be65...8071be`; bsc `0x82573b...02df68` | ⚠️ Unaudited |
| StrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7f711...765013` | ⚠️ Unaudited |
| StrictAlpacaOraclePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | bsc | n/a | 7 deployments: bsc `0x2b9c18...f89559`; bsc `0x9cbb0e...0a93f1`; bsc `0x9f748f...9c0568`; bsc `0xde375d...4a0b61`; bsc `0xea4e46...d72ac7`; bsc `0xee1d99...190731`; bsc `0xf7e3b6...5cd534` | ⚠️ Unaudited |
| SystemDebtEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4c98c7...df1cb8`; bsc `0xe09e20...501b0e` | ⚠️ Unaudited |
| TerminateAV02 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 4 deployments: bsc `0x8e5cfa...af6f16`; bsc `0x9fe961...a99aa1`; bsc `0xc57876...92cc94`; bsc `0xe9bd0b...b711ab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 18 | bsc | n/a | 18 deployments: bsc `0x044420...3be745`; bsc `0x0ec1b4...b7d413`; bsc `0x121752...42a608`; bsc `0x165102...099c25`; bsc `0x2ef53b...a185a3`; bsc `0x4d2285...293851`; bsc `0x594076...3c51d5`; bsc `0x5979ce...e71df9`; bsc `0x5effbf...9e6a7e`; bsc `0x8a426a...659aec`; bsc `0x94bd7c...1a425f`; bsc `0xa7837a...785ffc`; bsc `0xb995c6...d350f7`; bsc `0xbeb7c0...31f6cd`; bsc `0xc25f74...eccb54`; bsc `0xc42023...926584`; bsc `0xc836c3...ae546a`; bsc `0xcaac62...405ccc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x14b3ca...1fee97`; bsc `0x73c46d...fbfbd0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x14ddb0...28a08a`; bsc `0x2728ea...6b5252`; bsc `0x6c8964...2c33f9`; bsc `0xa745bb...4764d8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x1c6231...dc082b`; bsc `0x7a81cd...8b5ca6`; bsc `0x9aaad0...23e00c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x28a717...1798df`; bsc `0x452fc4...65e252`; bsc `0xcfbcb9...10cf84` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x301897...1bdd60`; bsc `0x4b8378...b5a3ab`; bsc `0x535991...57d9d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3da8c3...67ebbc`; bsc `0x799cb5...f2a55e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x44b386...06b3b4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x4633a1...852ee9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x51b893...dd353c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 3 | bsc | n/a | 3 deployments: bsc `0x5342fb...3b6a58`; bsc `0x946eb7...2581f7`; bsc `0x9ed2ee...2f8f5a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x6fee87...1ddc3c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 1 | bsc | unit-226242 | `0x800933...1e26d7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8064f7...ebefeb`; bsc `0xd88579...feda39` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8fff07...09a9e9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x9b601f...513318` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb4529a...bf220f`; bsc `0xe62d49...d7d9da` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xc2f8cc...e59e23` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-226243 | 2 deployments: bsc `0xc4ed26...5d938b`; bsc `0xd3bb23...4be6c8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc870e0...1e245d`; bsc `0xec135a...b757f9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xdb4a41...3f7968` | ⚠️ Unaudited |
| TripleSlopeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x375d32...d52b30`; bsc `0x4ed10e...bdab05`; bsc `0x607ed4...5f5d9f`; bsc `0xadcfbf...028e9c`; bsc `0xae9ee5...73f1ee`; bsc `0xb17e30...c31725` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x0e98f0...aae694`; bsc `0x15bc06...a63853`; bsc `0x7eeaa9...b12da1`; bsc `0xac85fa...322c31`; bsc `0xcc7830...0e3a20`; bsc `0xce8ecb...b212fc`; bsc `0xd50aab...99ab8e`; bsc `0xf097fc...3180d6` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5353c5...835f06`; bsc `0xcf33d2...6ce88b` | ⚠️ Unaudited |
| VaultAip42 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fd571...e67c26` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyAddBaseTokenOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x744bb9...fc21d3`; bsc `0xebb8ba...94970d` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyAddTwoSidesOptimal | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0xa7559b...748439`; bsc `0xce37fd...0ec585`; bsc `0xd58b96...32ced3`; bsc `0xda5c06...e98586` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x64e7de...9935f7`; bsc `0xcae15b...085c28` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7f9d5...0601e1` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyPartialCloseLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x91c1f2...df2d24`; bsc `0xfe49af...fdf073` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyPartialCloseMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3ffa4c...2e61b0`; bsc `0x83d6f3...26ad03` | ⚠️ Unaudited |
| WaultSwapRestrictedStrategyWithdrawMinimizeTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x853dcb...43dcb3`; bsc `0xbf4c99...0f23eb` | ⚠️ Unaudited |
| WaultSwapWorker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d97ba...d307de` | ⚠️ Unaudited |
| WaultSwapWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 26 | bsc | n/a | 27 deployments: bsc `0x040a65...425da4`; bsc `0x0541c5...222b1d`; bsc `0x0c5ed4...94b9c2`; bsc `0x0e0806...1b281c`; bsc `0x184962...87e3ca`; bsc `0x195f4c...7cac7f`; bsc `0x20064f...50caf9`; bsc `0x3483f1...48423f`; bsc `0x50441d...43fee9`; bsc `0x5894ac...b62355`; bsc `0x6169a9...7a51a7`; bsc `0x63dd2d...78c435`; bsc `0x684e33...f57dd8`; bsc `0x74c979...70e5f7`; bsc `0x774d12...2ad294`; bsc `0x813a9a...c3a7f4`; bsc `0xb01a5f...5f6469`; bsc `0xb3e13a...75fa66`; bsc `0xb5000c...b9deda`; bsc `0xb5c425...3a00bb`; bsc `0xbe6bde...8babed`; bsc `0xcd4b63...29e88d`; bsc `0xe0d623...3c1581`; bsc `0xe29fd3...d36655`; bsc `0xf4b424...9a7f57`; bsc `0xfa4a3f...47ea66`; bsc `0xfaa8eb...0b8013` | ⚠️ Unaudited |
| WaultSwapWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x29a08f...31c88a`; bsc `0xf9bda2...e04246` | ⚠️ Unaudited |
| WaultSwapWorker02 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x85fb19...46b0bf`; bsc `0x97d328...0a20f4`; bsc `0xe8323f...b46df4` | ⚠️ Unaudited |
| WNativeRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1d2ca...af0d3d` | ⚠️ Unaudited |
| WorkerConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3175ec...884a11`; bsc `0x3dfc43...5b16b5`; bsc `0xc2d5cf...425857`; bsc `0xcbbc7f...fc429c` | ⚠️ Unaudited |
| WorkerConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xadabc5...51a8f8` | ⚠️ Unaudited |
| xALPACA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6510b1...8d760a` | ⚠️ Unaudited |
| xALPACAMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xb7d85a...ad24a9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eeca1...28561c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e66af...e5ea84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x274dd0...338bb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x284e25...6ad406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33c66c...bf1753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x349dbc...ec5b80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4eca08...0d30b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x564c51...20400a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61d5e9...b081c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a31f3...5094a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e1a28...afd0ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83df8e...02353f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8511e6...bcfbee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d6576...233a2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabc591...7b6274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb1bf5...7f6b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe87822...f7372c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7524a...a61f44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe6586...9a578c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/add-collateral-routine/PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | n/a | matched | 1 | 1 | 0 | 3 | n/a |
| [Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/delta-neutral/PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [alpaca_v1.0-signed.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/delta-neutral/alpaca_v1.0-signed.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/grazing-range/Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/grazing-range/Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/mdex-integration/Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/optimized-worker/Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/oracle/Smart%20Contract%20Security%20Audit%20Report%20-%20Alpaca%20Finance%20Oracle.pdf) | yAudit | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/partial-close/PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [CertiK Security Assessment for Alpaca Finance 1.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/protocol/CertiK%20Security%20Assessment%20for%20Alpaca%20Finance%201.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | matched | 6 | 2 | 0 | 19 | n/a |
| [PeckShield-Audit-Report-Alpaca-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/protocol/PeckShield-Audit-Report-Alpaca-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | address | matched | 10 | 5 | 0 | 26 | high |
| [Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/spooky-minifl/Inspex_AUDIT2022008_Alpaca%20Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 31 | high |
| [PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [SlowMist_Audit_Report_-_AlpacaStablecoin.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/SlowMist_Audit_Report_-_AlpacaStablecoin.pdf) | SlowMist | Audit | 2021-11 | stale | Direct | n/a | matched | 2 | 0 | 0 | 44 | n/a |
| [PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf](https://github.com/alpaca-finance/alpies-contract/blob/main/audits/PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5761] PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf — matched: No reason recorded
- [5762] Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf — no match: Extracted 7 contracts from scope tables in sections 2.2 (pages 3-5). Date from cover page: Jun 14, 2021.
- [5763] PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf — no match: Audit report for Alpaca Finance's CakeMaxiWorker and strategies. Scope explicitly mentions 'CakeMaxi Worker and its associated strategies'. Two contracts identified from findings: CakeMaxiWorker and CakeMaxiWorkerConfig.
- [5764] Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf — no match: Scope explicitly lists CakeMaxiWorker.sol, SingleAssetWorkerConfig.sol, and all strategies under a folder. The audit date is given as 2021.06.11 in the audit result table.
- [5765] PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf — no match: Contracts extracted from scope description and findings targets. Audit date from cover page and version history.
- [5766] alpaca_v1.0-signed.pdf — no match: Extracted from report title page and scope section. Contracts explicitly mentioned in scope and findings.
- [5767] Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf — matched: Only one contract in scope: GrazingRange.sol. Date from cover page: '5 May 2021'.
- [5768] Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf — matched: Only one contract, GrazingRange, is in scope. Audit date from 'Audit Date' column in Audit Result table: 2021.05.04 - 2021.05.06, using end date.
- [5769] Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf — no match: All 7 contracts listed in the scope section (Section 2.2) were extracted. The audit date is from the cover page: 'Date Issued: Sep 24, 2021'.
- [5770] Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf — no match: Three contracts explicitly listed in scope table. Audit date from cover page.
- [5771] Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf — no match: Two contracts explicitly listed in scope: OracleMedianizer and ChainLinkPriceOracle. Audit date from audit result table: 2021.07.08 - 2021.07.12, using end date.
- [5772] PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf — no match: No explicit scope section; contracts extracted from findings and report description.
- [5773] CertiK Security Assessment for Alpaca Finance 1.pdf — matched: No reason recorded
- [5774] PeckShield-Audit-Report-Alpaca-v1.0.pdf — matched: The report does not have a dedicated scope section; contract names were extracted from findings targets and the deployment table.
- [5775] Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf — no match: All 9 contracts explicitly listed in scope table on page 3-4. Audit date from cover page: Feb 8, 2022.
- [5776] Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf — no match: All contracts listed in the Scope section (2.2) of the audit report, both initial audit and reassessment, were extracted. The audit date is from the cover page: 'Date Issued: Nov 15, 2021'.
- [5777] PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf — no match: Extracted contract names from findings targets and scope description. Audit date from cover page.
- [5778] SlowMist_Audit_Report_-_AlpacaStablecoin.pdf — matched: No reason recorded
- [5779] PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf — no match: Audit report for Alpies NFT collection. Scope includes Alpies, AscendingStepModel, and DescendingStepModel contracts. Audit date is October 18, 2021.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf | ConfigurableInterestVaultConfig | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf | SingleAssetWorkerConfig | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf | Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x3282d2...8cd3cd` — deployed 2021-06-21 19:25:14+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xf1be8e...16d421` — deployed 2021-04-25 09:45:01+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-06-21 was 41d from audit; next candidate 98d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf | WorkerConfig | unmatched — not counted | — | — | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | CakeMaxiWorker | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | CakeMaxiWorkerConfig | unmatched — not counted | — | Listed in scope table for Round 1 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | PancakeswapV2RestrictedCakeMaxiStrategyAddBaseTokenOnly | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | PancakeswapV2RestrictedCakeMaxiStrategyAddBaseWithFarm | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | PancakeswapV2RestrictedCakeMaxiStrategyLiquidate | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | PancakeswapV2RestrictedCakeMaxiStrategyWithdrawMinimizeTrading | unmatched — not counted | — | Listed in scope tables for Round 1 and Round 2 | no |
| Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf | SingleAssetWorkerConfig | unmatched — not counted | — | Listed in scope table for Round 2 | no |
| PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf | CakeMaxiWorker | unmatched — not counted | — | Listed as target in findings (PVE-001) and mentioned in scope description. | no |
| PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf | CakeMaxiWorkerConfig | unmatched — not counted | — | Listed as target in findings (PVE-002) and mentioned in scope description. | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | CakeMaxiWorker | unmatched — not counted | — | listed in scope and analyzed in report | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | SingleAssetWorkerConfig | unmatched — not counted | — | listed in scope and analyzed in report | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | PancakeswapV2RestrictedSingleAssetStrategyAddBaseTokenOnly | unmatched — not counted | — | all strategies under folder listed in scope | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | PancakeswapV2RestrictedSingleAssetStrategyAddBaseWithFarm | unmatched — not counted | — | all strategies under folder listed in scope | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | PancakeswapV2RestrictedSingleAssetStrategyLiquidate | unmatched — not counted | — | all strategies under folder listed in scope | no |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf | PancakeswapV2RestrictedSingleAssetStrategyWithdrawMinimizeTrading | unmatched — not counted | — | all strategies under folder listed in scope | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralVault | unmatched — not counted | — | mentioned as target in scope and findings | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralPancakeWorker02 | unmatched — not counted | — | listed as associated worker in Section 1.1 | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralMdexWorker02 | unmatched — not counted | — | listed as associated worker in Section 1.1 | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralVaultConfig | unmatched — not counted | — | mentioned in finding PVE-001 as target | no |
| PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf | DeltaNeutralVaultGateway | unmatched — not counted | — | mentioned in finding PVE-002 as target | no |
| alpaca_v1.0-signed.pdf | DeltaNeutralVault | unmatched — not counted | — | listed in scope and findings | no |
| alpaca_v1.0-signed.pdf | PriceHelper | unmatched — not counted | — | mentioned in finding 2.2.3 | no |
| alpaca_v1.0-signed.pdf | DeltaNeutralPancakeWorker02 | unmatched — not counted | — | mentioned in finding 2.3.2 | no |
| alpaca_v1.0-signed.pdf | DeltaNeutralMdexWorker02 | unmatched — not counted | — | mentioned in finding 2.3.2 | no |
| Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf | GrazingRange | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x6bf5b3...feb343` — deployed 2021-05-05 14:15:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf | GrazingRange | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x6bf5b3...feb343` — deployed 2021-05-05 14:15:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexWorker02 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyAddBaseTokenOnly | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyWithdrawMinimizeTrading | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyAddTwosidesOptimal | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyLiquidate | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyPartialCloseLiquidate | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf | MdexRestrictedStrategyPartialCloseMinimizeTrading | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf | PCSV2Worker02 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf | WaultSwapWorker02 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf | CakeMaxiWorker02 | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf | OracleMedianizer | unmatched — not counted | — | listed in scope section with commit hash | no |
| Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf | ChainLinkPriceOracle | unmatched — not counted | — | listed in scope section with commit hash | no |
| PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf | PancakeswapV2RestrictedSingleAssetStrategyPartialCloseLiquidate | unmatched — not counted | — | Mentioned in findings as target contract | no |
| PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf | PancakeswapV2RestrictedStrategyPartialCloseLiquidate | unmatched — not counted | — | Mentioned in findings as target contract | no |
| PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf | WaultSwapRestrictedStrategyPartialCloseLiquidate | unmatched — not counted | — | Mentioned in findings as target contract | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | AlpacaMath | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | AlpacaToken | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | ConfigurableInterestVaultConfig | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | DebtToken | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x6a3487...2a55f9` — deployed 2021-03-23 10:16:31+03 — liveness: live (current_address_book_code)<br>DebtToken (alternative) `0xd19d62...029ebd` — deployed 2021-02-26 14:28:40+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x3b4fbb...0fa4dc` — deployed 2021-05-26 04:58:02+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x426bdf...c361f3` — deployed 2022-01-07 10:45:00+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x92110a...258fe6` — deployed 2021-04-06 08:36:01+03 — liveness: live (current_address_book_code)<br>DebtToken (alternative) `0x513813...e22cec` — deployed 2021-02-26 14:20:37+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x262de1...1b59b2` — deployed 2021-05-27 13:41:54+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x02da70...aa7442` — deployed 2021-03-23 10:20:46+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xb76ed4...aeaf84` — deployed 2021-06-21 19:24:47+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (selected) `0x11362e...a9db40` — deployed 2021-04-25 09:44:37+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-04-25 was 6d from audit; next candidate 25d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | FairLaunch | own contract | FairLaunch (selected) `0xa625ab...489a8f` — deployed 2021-02-26 13:57:43+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | FairLaunchV2 | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | IbTokenRouter | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | LinearRelease | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | PancakeswapWorker | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | PriceOracle | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | SafeToken | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | Shield | own contract | Shield (selected) `0x1963f8...1b4656` — deployed 2021-03-29 12:09:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | SimplePriceOracle | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | SimpleVaultConfig | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StrategyAddBaseTokenOnly | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StrategyAddTwoSidesOptimal | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StrategyLiquidate | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StrategyWithdrawMinimizeTrading | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StronkAlpaca | own contract | StronkAlpaca (selected) `0x6f695b...6ce7a7` — deployed 2021-03-12 18:49:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | StronkAlpacaRelayer | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | Timelock | own contract | Timelock (selected) `0x2d5408...1d0a59` — deployed 2021-02-26 13:52:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | TripleSlopeModel | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x3282d2...8cd3cd` — deployed 2021-06-21 19:25:14+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (selected) `0xf1be8e...16d421` — deployed 2021-04-25 09:45:01+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-04-25 was 6d from audit; next candidate 51d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK Security Assessment for Alpaca Finance 1.pdf | WNativeRelayer | unmatched — not counted | — | — | no |
| CertiK Security Assessment for Alpaca Finance 1.pdf | WorkerConfig | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x3282d2...8cd3cd` — deployed 2021-06-21 19:25:14+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (selected) `0xf1be8e...16d421` — deployed 2021-04-25 09:45:01+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-04-25 was 36d from audit; next candidate 93d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | CollateralLocker | unmatched — not counted | — | Mentioned in finding PVE-003 as containing the issue | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | LiquidityLocker | unmatched — not counted | — | Mentioned in finding PVE-003 as containing the issue | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | LoanLib | unmatched — not counted | — | Mentioned in finding PVE-003 as containing the issue | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAddBaseTokenOnly | unmatched — not counted | — | Listed as target in findings PVE-005, PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAddTwoSidesOptimal | unmatched — not counted | — | Mentioned in findings PVE-005, PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyWithdrawMinimizeTrading | unmatched — not counted | — | Mentioned in finding PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAllBNBOnly | unmatched — not counted | — | Mentioned in finding PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyLiquidate | unmatched — not counted | — | Mentioned in finding PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | PancakeswapWorker | unmatched — not counted | — | Listed as target in findings PVE-005, PVE-006, PVE-010 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ibTokenRouter | unmatched — not counted | — | Listed as target in findings PVE-006, PVE-007, PVE-008 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | FairLaunch | own contract | FairLaunch (selected) `0xa625ab...489a8f` — deployed 2021-02-26 13:57:43+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | FairLaunchV2 | unmatched — not counted | — | Mentioned in findings PVE-012, PVE-013 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | AlpacaToken | unmatched — not counted | — | Listed as target in finding PVE-011 | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | SimplePriceOracle | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | Timelock | own contract | Timelock (selected) `0x2d5408...1d0a59` — deployed 2021-02-26 13:52:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ProxyAdmin | own contract | ProxyAdmin (selected) `0x5379f3...94f452` — deployed 2021-02-26 14:00:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BUSD Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x7c9e73...87592f` — deployed 2021-02-26 14:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BUSD Vault Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BUSD Vault Config | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BUSD Vault Config Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BNB Vault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0xd7d069...fc0063` — deployed 2021-02-26 14:20:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BNB Vault Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BNB Vault Config | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | BNB Vault Config Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ALPACA | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ALPACA-WBNB LP | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | WBNB | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ibBNB | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0xd7d069...fc0063` — deployed 2021-02-26 14:20:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | debtibBNB | own contract | DebtToken (selected) `0x513813...e22cec` — deployed 2021-02-26 14:20:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | ibBUSD | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x7c9e73...87592f` — deployed 2021-02-26 14:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | debtibBUSD | own contract | DebtToken (selected) `0xd19d62...029ebd` — deployed 2021-02-26 14:28:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | SimplePriceOracle Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAddBaseOnly | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyAddBaseOnly Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| PeckShield-Audit-Report-Alpaca-v1.0.pdf | StrategyLiquidate Impl | unmatched — not counted | — | Listed in deployment table (Table 3.1) | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | MiniFL | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | Rewarder1 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookyWorker03 | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyAddBaseTokenOnly | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyAddTwoSidesOptimal | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyLiquidate | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyPartialCloseLiquidate | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyPartialCloseMinimizeTrading | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf | SpookySwapStrategyWithdrawMinimizeTrading | unmatched — not counted | — | listed in scope table | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | FlashMintModule | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | GetPositions | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | PositionHandler | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaOraclePriceFeed | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | IbTokenPriceFeed | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | SimplePriceFeed | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | StrictAlpacaOraclePriceFeed | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | DexPriceOracle | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaStablecoinProxyActions | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaAuth | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaNote | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ProxyWallet | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ProxyWalletCache | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ProxyWalletFactory | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ProxyWalletRegistry | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | IbTokenAdapter | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AuthTokenAdapter | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | StablecoinAdapter | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | TokenAdapter | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AccessControlConfig | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | CollateralPoolConfig | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | FixedSpreadLiquidationStrategy | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | AlpacaStablecoin | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | BookKeeper | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | LiquidationEngine | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | PriceOracle | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | ShowStopper | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | StabilityFeeCollector | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | StableSwapModule | unmatched — not counted | — | listed in scope | no |
| Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf | SystemDebtEngine | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | BookKeeper | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | AlpacaStableCoin | unmatched — not counted | — | Target in findings PVE-002, PVE-009 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | TokenAdapter | unmatched — not counted | — | Target in findings PVE-003, PVE-005 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | FixedSpreadLiquidationStrategy | unmatched — not counted | — | Target in findings PVE-004, PVE-005 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | IbTokenAdapter | unmatched — not counted | — | Target in findings PVE-005, PVE-006, PVE-010, PVE-011 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | LiquidationEngine | unmatched — not counted | — | Target in findings PVE-005, PVE-011 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | ShowStopper | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | AuthTokenAdapter | unmatched — not counted | — | Target in finding PVE-008 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | AccessControlConfig | unmatched — not counted | — | Mentioned in findings PVE-001, PVE-007 | no |
| PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf | SystemDebtEngine | unmatched — not counted | — | Target in finding PVE-011 | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AccessControlConfig | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AccessControlUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaAuth | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaAuthEvents | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaNote | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaOraclePriceFeed | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaStablecoin | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaStablecoinProxyActions | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AlpacaToken | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | AuthTokenAdapter | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | BookKeeper | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | CollateralPoolConfig | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | Context | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ContextUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | DexPriceOracle | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ERC20 | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | FairLaunch | own contract | FairLaunch (selected) `0xa625ab...489a8f` — deployed 2021-02-26 13:57:43+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | FixedSpreadLiquidationStrategy | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | FlashLoanReceiverBase | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | FlashMintModule | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | GetPositions | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | IbTokenAdapter | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | IbTokenPriceFeed | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | Initializable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | LiquidationEngine | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | Ownable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | OwnableUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | PausableUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | PositionHandler | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | PositionManager | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | PriceOracle | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ProxyWallet | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ProxyWalletCache | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ProxyWalletFactory | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ProxyWalletRegistry | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ReentrancyGuard | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ReentrancyGuardUpgradeable | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | Shield | own contract | Shield (selected) `0x1963f8...1b4656` — deployed 2021-03-29 12:09:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | ShowStopper | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | SimplePriceFeed | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | StabilityFeeCollector | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | StableSwapModule | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | StablecoinAdapter | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | StrictAlpacaOraclePriceFeed | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | SystemDebtEngine | unmatched — not counted | — | — | no |
| SlowMist_Audit_Report_-_AlpacaStablecoin.pdf | TokenAdapter | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf | Alpies | unmatched — not counted | — | Target of finding PVE-002; main contract of the protocol | no |
| PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf | AscendingStepModel | unmatched — not counted | — | Target of finding PVE-001; mentioned in code listing | no |
| PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf | DescendingStepModel | unmatched — not counted | — | Mentioned as sharing the same issue as AscendingStepModel in PVE-001 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x4f4054...c1cf43` | EmissionForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x083c02...e58de7` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x60bc40...514105` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x63c60b...dc4412` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa33ff7...50ce58` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd193b3...21c4bf` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x50e574...1ddab7` | ProxyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 139 |
| upstream | 1 |
| standard_library | 31 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Address-book scope dispositions: 21 own (10 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 184 unmatched
- Matched-own operational status: 21 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=15, medium=1
- Match method counts: address=6, temporal_name=4, unique_name=9

Zero-match audit list:

- [5762] Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf
- [5763] PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf
- [5764] Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf
- [5765] PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf
- [5766] alpaca_v1.0-signed.pdf
- [5769] Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf
- [5770] Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf
- [5771] Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf
- [5772] PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf
- [5775] Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf
- [5776] Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf
- [5777] PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf
- [5779] PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
