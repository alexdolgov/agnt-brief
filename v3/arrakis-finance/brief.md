# Agentic Audit Brief: Arrakis Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Arrakis Finance (`arrakis-finance`)
- Website: [https://www.arrakis.finance](https://www.arrakis.finance)
- Lifecycle: active (Tier 0, 96.4% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, ink, optimism, plasma, polygon, sepolia, unichain
- Contract surface: 250 unique implementations (606 raw deployments)
- Coverage basis: 0/31 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $65,967,661.00
- On-chain TVL (included contracts): $68,860.65
- TVL by chain: Ethereum $68,860.65

## Project Description

This brief describes the observed EVM deployment and audit surface for Arrakis Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across arbitrum, base, bsc, ethereum, ink, optimism, plasma, polygon, sepolia, unichain. Structural roles: 29 supporting, 11 core. 29 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: supporting (29), core (11)
- Contract kinds: contract (39), abstract (1)
- Detected standards: ownable (23), erc1967proxy (16), pausable (11), erc165 (2), accesscontrol (1), erc721 (1)
- Frameworks: openzeppelin (34), openzeppelin-upgradeable (29), uniswap-v3 (9), solady (8), permit2 (3)
- Upgradeable-pattern rows: 29

## Fork Analysis

3 of 51 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

**CLFactory** (`0x5e7bb1...06809a`, chain 8453)
Origin: hybra (`0x32b9da...1324c2`)
Containment: 65.6% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- factoryRegistry()
- voter()

Removals (removed from original):
- collectAllProtocolFees()
- collectProtocolFees(address)
- defaultProtocolFee()
- gaugeManager()
- getProtocolFee(address)
- protocolFeeManager()
- protocolFeeModule()
- setGaugeManager(address)
- setMaxFee(uint24)
- setProtocolFeeManager(address)
- setProtocolFeeModule(address)

**CLFactory** (`0xade65c...89716a`, chain 8453)
Origin: arrakis-finance (`0xec2ffc...9cd4d1`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CLFactory** (`0xf8f2eb...c061ef`, chain 8453)
Origin: arrakis-finance (`0xec2ffc...9cd4d1`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x022a0c...62f556`, chain 1)
- UnnamedContract (`0x1cc0ad...84149d`, chain 1)
- UnnamedContract (`0x413fc8...ed01ab`, chain 10)
- UnnamedContract (`0xcc8989...6006e3`, chain 130)
- UnnamedContract (`0xfb4e25...97f408`, chain 137)
- UnnamedContract (`0x8dd906...d4ea6e`, chain 8453)
- UnnamedContract (`0x97d42d...f6e5fb`, chain 8453)
- UnnamedContract (`0xa8098d...150785`, chain 8453)
- UnnamedContract (`0x9a4935...293345`, chain 9745)
- UnnamedContract (`0xe1a764...3deef4`, chain 42161)
- AerodromeStandardModulePrivate (`0x0e4afb...7d417e`, chain 8453)
- AerodromeStandardModulePrivate (`0xd9e51f...adefd1`, chain 8453)
- AerodromeStandardModulePrivateFees (`0x06baae...7434ee`, chain 8453)
- AerodromeStandardModulePrivateFees (`0x1a5273...0c33aa`, chain 8453)
- AerodromeStandardModulePrivateFees (`0xe7d57e...2b2f43`, chain 8453)
- ArrakisMetaVaultFactory (`0x820fb8...123982`, chain 1)
- ArrakisPublicVaultRouter (`0x72aa2c...a66041`, chain 1)
- Guardian (`0x6f4411...7ab981`, chain 1)
- MigrationHelper (`0xd61407...f9b962`, chain 1)
- ModulePrivateRegistry (`0xe278c1...27a265`, chain 1)
- ModulePublicRegistry (`0x791d75...779603`, chain 1)
- PancakeSwapV3StandardModulePrivate (`0x49083c...3d4b11`, chain 1)
- PancakeSwapV4StandardModulePrivate (`0x3da003...c53c39`, chain 56)
- Pauser (`0x700a1c...aac03a`, chain 1)
- PrivateVaultNFT (`0x44a801...56b762`, chain 1)
- RouterSwapExecutor (`0x194886...ceb1b6`, chain 1)
- RouterSwapResolver (`0xc6c533...9fb265`, chain 1)
- TimelockController (`0xaf6f96...c40b7f`, chain 1)
- TransparentUpgradeableProxy (`0x2e6e87...733bda`, chain 1)
- UniswapV3StandardModulePrivate (`0x8c0283...ace35e`, chain 1)
- UniV4StandardModulePrivate (`0x04ead2...b337dc`, chain 1)
- UnnamedContract (`0xcc8989...6006e3`, chain 57073)
- UpgradeableBeacon (`0x143687...627255`, chain 1)
- UpgradeableBeacon (`0xdf4975...4b6a38`, chain 1)
- UpgradeableBeacon (`0x205e64...796199`, chain 56)
- UpgradeableBeacon (`0x68c0d8...20f07a`, chain 56)
- UpgradeableBeacon (`0x741d42...87e639`, chain 56)
- UpgradeableBeacon (`0xc0b7fa...b987f0`, chain 56)
- UpgradeableBeacon (`0x243727...fa6f9b`, chain 8453)
- UpgradeableBeacon (`0x568336...25ac6f`, chain 8453)
- UpgradeableBeacon (`0x618e7d...e59778`, chain 8453)
- UpgradeableBeacon (`0x6b81f1...78df08`, chain 8453)
- UpgradeableBeacon (`0x82c0a1...75067f`, chain 8453)
- UpgradeableBeacon (`0x8b5c39...1cb82f`, chain 8453)
- UpgradeableBeacon (`0xa8c0b4...45342f`, chain 8453)
- UpgradeableBeacon (`0x1ec500...bd7327`, chain 42161)
- UpgradeableBeacon (`0x28a9a4...3cf6cb`, chain 42161)
- WithdrawHelper (`0x3a2e9c...6f46d3`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 40; live-surface rows included: 40 (40 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 51/53 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/31 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 41 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 208 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 113
- Confirmed-live implementations: 41 of 250 unique; 209 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/145
- Verified + Unaudited implementations: 144
- Verified by bytecode match: 1
- Unverified implementations: 105
- Unique implementations: 250
- Raw deployments: 606
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (144)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GUniPoolStatic | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x288a17...3da13a`; ethereum `0xa64269...6b1bcc` | ⚠️ Unaudited |
| GUniPoolStatic | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x67092a...87b691`; ethereum `0xefe047...263b25` | ⚠️ Unaudited |
| SovereignPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9a406...e68202` | ⚠️ Unaudited |
| ArrakisMetaVaultPublic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf79087...a6ad83` | ⚠️ Unaudited |
| GUniPoolStatic | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x584bd5...d95382`; ethereum `0xe98c7c...074a3d` | ⚠️ Unaudited |
| AerodromeStandardModulePrivate | unknown | project_anchor | own_supporting | 0 | base | unit-379804 | `0x0e4afb...7d417e` | ⚠️ Unaudited |
| AerodromeStandardModulePrivate | unknown | project_anchor | own_supporting | 0 | base | unit-379818 | `0xd9e51f...adefd1` | ⚠️ Unaudited |
| AerodromeStandardModulePrivateFees | unknown | project_anchor | own_supporting | 0 | base | unit-379803 | `0x06baae...7434ee` | ⚠️ Unaudited |
| AerodromeStandardModulePrivateFees | unknown | project_anchor | own_supporting | 0 | base | unit-379805 | `0x1a5273...0c33aa` | ⚠️ Unaudited |
| AerodromeStandardModulePrivateFees | unknown | project_anchor | own_supporting | 0 | base | unit-379819 | `0xe7d57e...2b2f43` | ⚠️ Unaudited |
| ArrakisFactoryV1 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xea1aff...2db7d9` | ⚠️ Unaudited |
| ArrakisFactoryV1 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x2845c6...616f09` | ⚠️ Unaudited |
| ArrakisFactoryV1 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x37265a...dc342a` | ⚠️ Unaudited |
| ArrakisMetaVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-379783 | 5 deployments: ethereum `0x820fb8...123982`; bsc `0x820fb8...123982`; base `0x820fb8...123982`; plasma `0x820fb8...123982`; arbitrum `0x820fb8...123982` | ⚠️ Unaudited |
| ArrakisPublicVaultRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379781 | `0x72aa2c...a66041` | ⚠️ Unaudited |
| ArrakisPublicVaultRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9e890d...a073b0`; ethereum `0xdfe90e...bea1ff` | ⚠️ Unaudited |
| ArrakisStandardManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-379822 | `0x2e6e87...733bda` | ⚠️ Unaudited |
| ArrakisV1RouterStaking | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xdd9206...424a74`; ethereum `0xe9bf34...66b472` | ⚠️ Unaudited |
| ArrakisV1RouterStaking | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x9ce88a...0094d5`; optimism `0xc248d6...5b05c2` | ⚠️ Unaudited |
| ArrakisV1RouterStaking | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xc73fb1...06df66`; polygon `0xe92501...0b7472` | ⚠️ Unaudited |
| ArrakisV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0x1d91f6...8759b6`; ethereum `0x7f346f...e6df38`; optimism `0x1d91f6...8759b6`; optimism `0x7f346f...e6df38`; polygon `0x1d91f6...8759b6`; polygon `0x7f346f...e6df38`; arbitrum `0x1d91f6...8759b6`; arbitrum `0x7f346f...e6df38` | ⚠️ Unaudited |
| ArrakisV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x2f389e...d5cf00`; ethereum `0xaf0f96...7b134d`; ethereum `0xb5c3b2...6b09ba`; optimism `0xaf0f96...7b134d`; optimism `0xb5c3b2...6b09ba`; polygon `0x399e3b...cbbd5e`; polygon `0xaf0f96...7b134d`; polygon `0xb5c3b2...6b09ba`; arbitrum `0xaf0f96...7b134d`; arbitrum `0xb5c3b2...6b09ba` | ⚠️ Unaudited |
| ArrakisV2Beacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x891e7e...63b8b3`; optimism `0x891e7e...63b8b3`; polygon `0x891e7e...63b8b3`; arbitrum `0x891e7e...63b8b3` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0x055b6d...273a88`; ethereum `0x453f7d...53857c`; optimism `0x055b6d...273a88`; optimism `0x453f7d...53857c`; polygon `0x055b6d...273a88`; polygon `0x453f7d...53857c`; arbitrum `0x055b6d...273a88`; arbitrum `0x453f7d...53857c` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 8 deployments: ethereum `0x0ffa13...2465e0`; ethereum `0x26673a...b3b775`; optimism `0x26673a...b3b775`; polygon `0x26673a...b3b775`; polygon `0x68f51d...a4c58b`; polygon `0x8d1c48...c513f1`; polygon `0xb9e521...ce8aaf`; arbitrum `0x26673a...b3b775` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0xecb8ff...6c8288`; ethereum `0xf90aaf...be865d`; optimism `0xecb8ff...6c8288`; optimism `0xf90aaf...be865d`; polygon `0xecb8ff...6c8288`; polygon `0xf90aaf...be865d`; arbitrum `0xecb8ff...6c8288`; arbitrum `0xf90aaf...be865d` | ⚠️ Unaudited |
| ArrakisV2Helper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x07d2ce...64449f`; ethereum `0x89e4be...7f07d6`; ethereum `0xbaffbf...bba929`; ethereum `0xccee73...5c8d9c`; optimism `0x07d2ce...64449f`; optimism `0x89e4be...7f07d6`; optimism `0xccee73...5c8d9c`; polygon `0x07d2ce...64449f`; polygon `0x7843ea...0749d6`; polygon `0x89e4be...7f07d6`; polygon `0xccee73...5c8d9c`; arbitrum `0x07d2ce...64449f`; arbitrum `0x89e4be...7f07d6`; arbitrum `0xccee73...5c8d9c` | ⚠️ Unaudited |
| ArrakisV2Resolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x4bc385...f905f5`; ethereum `0x535c5f...1cc7b8`; ethereum `0x767902...8339c7`; ethereum `0xb11bb8...c1f193`; optimism `0x4bc385...f905f5`; optimism `0x535c5f...1cc7b8`; optimism `0xb11bb8...c1f193`; polygon `0x4bc385...f905f5`; polygon `0x535c5f...1cc7b8`; polygon `0xb11bb8...c1f193`; arbitrum `0x4bc385...f905f5`; arbitrum `0x535c5f...1cc7b8`; arbitrum `0xb11bb8...c1f193` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6ac8ba...f61b94`; ethereum `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x6ac8ba...f61b94`; optimism `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6ac8ba...f61b94`; polygon `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6ac8ba...f61b94`; arbitrum `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| AssetListingGUni | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e4ed...507d2d` | ⚠️ Unaudited |
| CErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x41346d...eee23b`; ethereum `0x7e232a...65df00`; ethereum `0xc36681...4b6292` | ⚠️ Unaudited |
| CErc20Delegator | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0f2ab0...ded9b0`; ethereum `0x60c4a1...109014`; ethereum `0xc50811...957358`; ethereum `0xccd64b...93c7d2`; ethereum `0xea3112...483044` | ⚠️ Unaudited |
| CLFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x342576...38a617`; base `0xc6403d...1cd165`; base `0xec2ffc...9cd4d1` | ⚠️ Unaudited |
| CLFactory | registry | project_anchor | own_supporting | 0 | base | unit-379808 | `0x5e7bb1...06809a` | ⚠️ Unaudited |
| CLFactory | registry | project_anchor | own_supporting | 0 | base | unit-379817 | `0xade65c...89716a` | ⚠️ Unaudited |
| CLFactory | registry | project_anchor | own_supporting | 0 | base | unit-379820 | `0xf8f2eb...c061ef` | ⚠️ Unaudited |
| CLGauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x11909e...7daf22`; base `0x1296a1...6025b5`; base `0x434bcc...790f7b`; base `0x7dccb0...204b3e`; base `0xc0d208...cfa0c8` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x385293...f56abb`; base `0x3be76d...998529`; base `0xb63022...dfcbb3`; base `0xd63e85...948adc`; base `0xff8f90...8898c2` | ⚠️ Unaudited |
| CLPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x88e336...a0471f`; base `0x941b5f...514306`; base `0x942e97...8e5a16`; base `0xad95bd...894b48`; base `0xc77089...05b665`; base `0xec8e53...315831` | ⚠️ Unaudited |
| CLQuoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a46cc...7d59e5` | ⚠️ Unaudited |
| CreationCodePrivateVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd10ee...27923f` | ⚠️ Unaudited |
| CreationCodePublicVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9fbe9...419ef1` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5264ee...2a2223`; base `0xe945ab...2a5684` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x0ad083...38ee68`; base `0x57bffd...b1b058`; base `0xc2cc32...0a1a0b`; base `0xccc21f...2ccd35` | ⚠️ Unaudited |
| DynamicSwapFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87d8f9...38e8cb` | ⚠️ Unaudited |
| EIP173Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x75830b...116540` | ⚠️ Unaudited |
| GelatoUniV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x810f9c...c33c69`; ethereum `0xdcdccb...3f7b56` | ⚠️ Unaudited |
| GelatoUniV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xaf0c7d...bd928c`; ethereum `0xc2d819...129057` | ⚠️ Unaudited |
| GelatoUniV3Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dacf7...a1e82b` | ⚠️ Unaudited |
| Guardian | governance | project_anchor | own_supporting | 0 | ethereum | unit-379779 | `0x6f4411...7ab981` | ⚠️ Unaudited |
| Guardian | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb4e25...97f408` | ⚠️ Unaudited |
| GUniFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x034a66...158f9c`; ethereum `0x075d37...de7051` | ⚠️ Unaudited |
| GUniFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: ethereum `0x9a999c...c58f40`; ethereum `0xc97476...065eaf`; ethereum `0xf51726...5772ce`; optimism `0xb9bfd9...195b5d`; polygon `0x33f054...c15e86` | ⚠️ Unaudited |
| GUniOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0719b2...90cc96`; ethereum `0x399e3b...cbbd5e`; ethereum `0x50f614...069f6b`; ethereum `0x7843ea...0749d6` | ⚠️ Unaudited |
| GUniPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x454bb7...49665b`; ethereum `0x68c68f...9f94cf`; ethereum `0x6dfc8b...e1b48b`; ethereum `0xb542d5...797369`; ethereum `0xb54613...597d82`; optimism `0x8582bf...d7c216`; polygon `0xd2bb19...672f40` | ⚠️ Unaudited |
| GUniPoolStatic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0a64a9...e7c2a7`; ethereum `0x5780bb...9e04a0`; ethereum `0x9db7be...a590d5` | ⚠️ Unaudited |
| GUniResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0x3b01f3...ede976`; ethereum `0xc8b920...b3dc89`; optimism `0xd2bb19...672f40`; polygon `0x3638fc...04c7b2` | ⚠️ Unaudited |
| GUniResolver02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x031765...db214a`; ethereum `0x72c321...e39ee5` | ⚠️ Unaudited |
| GUniRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x513e0a...a2a03d`; ethereum `0x9de3f4...927f6a` | ⚠️ Unaudited |
| GUniRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ca6fa...5007a7` | ⚠️ Unaudited |
| GUniRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x97551a...110fc1`; optimism `0xc56f04...5142ba` | ⚠️ Unaudited |
| GUniRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x477e50...3efca0`; polygon `0xb42de7...fa7811` | ⚠️ Unaudited |
| GUniRouterStaking | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6be877...7fac63`; polygon `0x9c3c16...87ca7f` | ⚠️ Unaudited |
| HOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x326999...62132a`; ethereum `0xf23785...c20cde` | ⚠️ Unaudited |
| HOTExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5a947...d10183` | ⚠️ Unaudited |
| HOTOracleWrapper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xf12679...9356dd`; ethereum `0xf23d83...c4ee80` | ⚠️ Unaudited |
| Liquidity Gauge v4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 8 deployments: ethereum `0x18d1bc...3c7994`; ethereum `0xb378c8...91a2f1`; ethereum `0xc2b92c...9a7174`; ethereum `0xddda52...4dfed0`; optimism `0x232ea1...9aea2e`; optimism `0x6aaee1...285b37`; optimism `0x8c99b6...afc501`; optimism `0xd9723f...6e281c` | ⚠️ Unaudited |
| MetaPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8582bf...d7c216` | ⚠️ Unaudited |
| MigrationHelper | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-379787 | `0xd61407...f9b962` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x0a5aa5...07d5c6`; base `0x393550...5d81ad`; base `0x9574e3...3ada30`; base `0x9951ff...1f0b5a` | ⚠️ Unaudited |
| MixedRouteQuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x495406...5b4f4f`; base `0xb4a9e5...cf09eb` | ⚠️ Unaudited |
| MixedRouteQuoterV3 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd2a7d...65b555` | ⚠️ Unaudited |
| MockCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ca8bc...14534f` | ⚠️ Unaudited |
| MockWMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe292ef...97ebd4` | ⚠️ Unaudited |
| ModulePrivateRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-379789 | `0xe278c1...27a265` | ⚠️ Unaudited |
| ModulePrivateRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf95e09...b2bb0c` | ⚠️ Unaudited |
| ModulePublicRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-379782 | `0x791d75...779603` | ⚠️ Unaudited |
| ModulePublicRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x87d101...461f6b`; ethereum `0xd2307b...a89317` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0c3141...5bbde3`; base `0x7dd33b...6238d8`; base `0xe702fc...928ad0` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x827922...485b72` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xa990c6...b9d55f` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xc741be...6a1178` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x11b5f9...953814`; base `0x3b1ebc...a579f8`; base `0x48fa02...642f34`; base `0xc85c12...c8e3fe`; base `0xf63203...41337f` | ⚠️ Unaudited |
| PALMfeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | optimism | n/a | 4 deployments: optimism `0x187dbd...0dede5`; optimism `0x89cfc2...b51a4c`; polygon `0x46736d...3ae104`; polygon `0x72a6b6...2edbd2` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0x0a7d53...b3013e`; ethereum `0xecf6a0...69c38f`; optimism `0x0a7d53...b3013e`; optimism `0xecf6a0...69c38f`; polygon `0x0a7d53...b3013e`; polygon `0xecf6a0...69c38f`; arbitrum `0x0a7d53...b3013e`; arbitrum `0xecf6a0...69c38f` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5b5157...2c8449`; ethereum `0xf13be5...f1f74c` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 5 | ethereum | n/a | 10 deployments: ethereum `0x880d0a...b1c4e8`; ethereum `0x8eebba...92856e`; ethereum `0xf82069...862a89`; ethereum `0xf90ec8...b8877e`; optimism `0x8eebba...92856e`; optimism `0xf90ec8...b8877e`; polygon `0x8eebba...92856e`; polygon `0xf90ec8...b8877e`; arbitrum `0x8eebba...92856e`; arbitrum `0xf90ec8...b8877e` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x8e0cfa...b3d511`; ethereum `0xa39b17...41aeab`; ethereum `0xf4dc9d...0405dd`; optimism `0x8e0cfa...b3d511`; polygon `0x8e0cfa...b3d511`; polygon `0xf4c590...a4f14e`; arbitrum `0x8e0cfa...b3d511` | ⚠️ Unaudited |
| PALMTerms | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x38e6d8...c9f005`; ethereum `0xb78b61...1c4585` | ⚠️ Unaudited |
| PALMTerms | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0x50763a...2d2890`; ethereum `0xbd39e8...7ce78e`; optimism `0x50763a...2d2890`; optimism `0xbd39e8...7ce78e`; polygon `0x50763a...2d2890`; polygon `0xbd39e8...7ce78e`; arbitrum `0x50763a...2d2890`; arbitrum `0xbd39e8...7ce78e` | ⚠️ Unaudited |
| PALMTerms | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0x65b87a...95c515`; ethereum `0xb041f6...fad3ee`; optimism `0x65b87a...95c515`; optimism `0xb041f6...fad3ee`; polygon `0x65b87a...95c515`; polygon `0xb041f6...fad3ee`; arbitrum `0x65b87a...95c515`; arbitrum `0xb041f6...fad3ee` | ⚠️ Unaudited |
| PALMTerms | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0x536efd...d14716`; ethereum `0xc73fb1...06df66`; polygon `0x2e7c05...30cefc`; polygon `0xbee2b7...2c071e` | ⚠️ Unaudited |
| PancakeSwapV3MulticallHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf02961...dbd2ea` | ⚠️ Unaudited |
| PancakeSwapV3StandardModulePrivate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379778 | `0x49083c...3d4b11` | ⚠️ Unaudited |
| PancakeSwapV3StandardModulePrivate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49083c...3d4b11` | ⚠️ Unaudited |
| PancakeSwapV4StandardModulePrivate | unknown | project_anchor | own_supporting | 0 | bsc | unit-379798 | `0x3da003...c53c39` | ⚠️ Unaudited |
| PancakeV4Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x04ef5d...5f4efb`; bsc `0x0748dd...7ebb35`; bsc `0x30c552...634a98`; bsc `0x31d00e...cd360d`; bsc `0x81d442...e16bb8`; bsc `0xda26e9...958abf`; bsc `0xf4e067...9e3340` | ⚠️ Unaudited |
| Pauser | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379780 | `0x700a1c...aac03a` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x4cd412...cfab84`; ethereum `0xca0e1b...e96a25`; optimism `0x4cd412...cfab84`; optimism `0xca0e1b...e96a25`; polygon `0x4cd412...cfab84`; polygon `0xca0e1b...e96a25`; arbitrum `0x4cd412...cfab84`; arbitrum `0xca0e1b...e96a25` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x8638fb...e49642`; ethereum `0xf7cb77...1faf44`; optimism `0x8638fb...e49642`; optimism `0xf7cb77...1faf44`; polygon `0x8638fb...e49642`; polygon `0xf7cb77...1faf44`; arbitrum `0x8638fb...e49642`; arbitrum `0xf7cb77...1faf44` | ⚠️ Unaudited |
| PrivateVaultNFT | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379777 | `0x44a801...56b762` | ⚠️ Unaudited |
| ProtocolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf09171...4cd72f` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 29 deployments: ethereum `0x7d996d...a01daf`; ethereum `0x89dc63...2c9ca0`; ethereum `0xc00e8a...9b7b19`; ethereum `0xd0db41...9c0d8a`; ethereum `0xdd8f35...1518e7`; ethereum `0xdf4433...d8d8dd`; ethereum `0xe1de7b...5b4baf`; ethereum `0xe92501...0b7472`; ethereum `0xec0634...8a6fa7`; optimism `0x89dc63...2c9ca0`; optimism `0xc00e8a...9b7b19`; optimism `0xd0db41...9c0d8a`; optimism `0xdf4433...d8d8dd`; optimism `0xe1de7b...5b4baf`; optimism `0xec0634...8a6fa7`; optimism `0xf48362...2b47b8`; polygon `0x89dc63...2c9ca0`; polygon `0x8ce752...670720`; polygon `0xc00e8a...9b7b19`; polygon `0xd0db41...9c0d8a`; polygon `0xdf4433...d8d8dd`; polygon `0xe1de7b...5b4baf`; polygon `0xec0634...8a6fa7`; arbitrum `0x89dc63...2c9ca0`; arbitrum `0xc00e8a...9b7b19`; arbitrum `0xd0db41...9c0d8a`; arbitrum `0xdf4433...d8d8dd`; arbitrum `0xe1de7b...5b4baf`; arbitrum `0xec0634...8a6fa7` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x254cf9...ae15b0`; base `0x3d4c22...271c6c`; base `0x514c8b...089259`; base `0x919e53...4601fc` | ⚠️ Unaudited |
| RangeOrderResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0b057c...1af51f`; polygon `0xffb6a1...dc0bcd` | ⚠️ Unaudited |
| Redistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x9e494d...c87329`; base `0xd61368...9a9e80`; base `0xee5b3c...e55e15` | ⚠️ Unaudited |
| ReserveMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc5e67...4e057e` | ⚠️ Unaudited |
| RouterSwapExecutor | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379773 | `0x194886...ceb1b6` | ⚠️ Unaudited |
| RouterSwapExecutor | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x25e9b0...dd7b96`; ethereum `0x8ef4d0...2dd04d`; ethereum `0xa552df...473398`; optimism `0x25e9b0...dd7b96`; polygon `0x25e9b0...dd7b96`; arbitrum `0x25e9b0...dd7b96` | ⚠️ Unaudited |
| RouterSwapResolver | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2ce9e8...9fda51`; optimism `0x2ce9e8...9fda51`; polygon `0x2ce9e8...9fda51`; arbitrum `0x2ce9e8...9fda51` | ⚠️ Unaudited |
| RouterSwapResolver | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379786 | `0xc6c533...9fb265` | ⚠️ Unaudited |
| SimpleManager | governance | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0x3522df...c811e1`; ethereum `0x64ab6c...d9a9fa`; optimism `0x3522df...c811e1`; optimism `0x64ab6c...d9a9fa`; polygon `0x3522df...c811e1`; polygon `0x64ab6c...d9a9fa`; arbitrum `0x3522df...c811e1`; arbitrum `0x64ab6c...d9a9fa` | ⚠️ Unaudited |
| SimpleTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x026012...fc6a40`; ethereum `0x579e01...5d1806` | ⚠️ Unaudited |
| SimpleTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 4 deployments: polygon `0x1d512b...e53d74`; polygon `0xa6e769...0c013c`; polygon `0xd39977...24bb01`; polygon `0xe81e18...e12181` | ⚠️ Unaudited |
| SovereignPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x56f0e2...5c17b6`; ethereum `0xa68d6c...6f9617`; ethereum `0xf57b45...cdaf2f` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91616a...bcb916` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x698cb2...63a92f`; base `0xcbbb80...15ce0d` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xbe6d8f...6d18a5` | ⚠️ Unaudited |
| TempProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x880d0a...b1c4e8` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x741d42...87e639`; ethereum `0xd3e822...23a60c` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-379785 | `0xaf6f96...c40b7f` | ⚠️ Unaudited |
| Underlying | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x39b989...3b780a`; ethereum `0x3b8d59...bc0988`; ethereum `0x4f3f69...563021`; ethereum `0x92cb4f...7c2bd2`; optimism `0x39b989...3b780a`; optimism `0x3b8d59...bc0988`; optimism `0x92cb4f...7c2bd2`; polygon `0x39b989...3b780a`; polygon `0x3b8d59...bc0988`; polygon `0x92cb4f...7c2bd2`; polygon `0xfa8726...9bc5cd`; arbitrum `0x39b989...3b780a`; arbitrum `0x3b8d59...bc0988`; arbitrum `0x92cb4f...7c2bd2` | ⚠️ Unaudited |
| UniswapV3StandardModulePrivate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379784 | `0x8c0283...ace35e` | ⚠️ Unaudited |
| UniV4Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xe1ef0c...434f32`; arbitrum `0x173229...c19ff9` | ⚠️ Unaudited |
| UniV4StandardModulePrivate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379771 | `0x04ead2...b337dc` | ⚠️ Unaudited |
| UniversalRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cb442...00be3e` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | ethereum | unit-379772 | 4 deployments: ethereum `0x143687...627255`; bsc `0x205e64...796199`; base `0x618e7d...e59778`; arbitrum `0x1ec500...bd7327` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | bsc | unit-379800 | `0x741d42...87e639` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | bsc | unit-379801 | `0xc0b7fa...b987f0` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | base | unit-379806 | 4 deployments: base `0x243727...fa6f9b`; base `0x568336...25ac6f`; base `0x6b81f1...78df08`; base `0x8b5c39...1cb82f` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | base | unit-379816 | `0xa8c0b4...45342f` | ⚠️ Unaudited |
| ValantisModulePrivate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e2fc9...9e55bc` | ⚠️ Unaudited |
| ValantisModulePublic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdef855...0252f1` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x4974a4...92824f`; ethereum `0x83c1ae...f93608` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 13 | optimism | n/a | 14 deployments: optimism `0x1535ec...846479`; optimism `0x212f71...a48741`; optimism `0x24c95f...6e9d0d`; optimism `0x436675...05a210`; optimism `0x499b7c...500ab3`; optimism `0x68f51d...a4c58b`; optimism `0x7e232a...65df00`; optimism `0x8b24d4...bbb0f1`; optimism `0x8d1c48...c513f1`; optimism `0xaf9707...14b847`; optimism `0xbee2b7...2c071e`; optimism `0xc36681...4b6292`; optimism `0xdedd02...e80aa5`; optimism `0xf78daf...43ee6c` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 20 | optimism | n/a | 20 deployments: optimism `0x15a065...94fe3f`; optimism `0x1b6a53...e0a8e6`; optimism `0x2b65ed...d84dfb`; optimism `0x310b18...06b4c3`; optimism `0x367f2d...dea853`; optimism `0x48a151...5189b0`; optimism `0x57a2b0...535b48`; optimism `0x62bdb9...36c2a6`; optimism `0x7f3013...1b76be`; optimism `0x8044de...b1569f`; optimism `0x87c7c8...86f0f5`; optimism `0xb556f4...feb971`; optimism `0xb8888e...12a00d`; optimism `0xccd64b...93c7d2`; optimism `0xcd0923...095c91`; optimism `0xd3a3fb...9b2402`; optimism `0xdf50c6...7ce65d`; optimism `0xe140e5...c25196`; optimism `0xe49d19...979c34`; optimism `0xff949c...8b698a` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | polygon | n/a | 4 deployments: polygon `0x56c5b0...c40275`; polygon `0x5aabe8...a64e98`; polygon `0xb76359...f604ba`; polygon `0xe54e04...a5d270` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x5780bb...9e04a0`; polygon `0x67092a...87b691` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x969681...d4813f` | ⚠️ Unaudited |
| WithdrawHelper | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-379776 | `0x3a2e9c...6f46d3` | ⚠️ Unaudited |
| WrappedFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8b4f2f...cf74c2`; ethereum `0x99997f...93d662` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | bsc | n/a | 27 deployments: ethereum `0x4cc1bb...5b9468`; ethereum `0x98e373...687bc5`; ethereum `0xdf4975...4b6a38`; ethereum `0xe42a4b...909b72`; ethereum `0xe973cf...b0351b`; ethereum `0xff0474...f47bd9`; optimism `0xf6b2a7...c83dd7`; bsc `0x00057d...cf6c04`; bsc `0x6028dc...7090c7`; bsc `0x68c0d8...20f07a`; bsc `0x6aba59...8501b7`; bsc `0x902912...8d2c75`; bsc `0xb4da34...05bb5f`; bsc `0xb6f7f6...4fb3ca`; bsc `0xe137ae...68ce58`; bsc `0xef770d...c2037f`; unichain `0xc16489...a740cc`; base `0x82c0a1...75067f`; base `0x998a52...6a0a55`; base `0xd7b402...d6b283`; base `0xdf4975...4b6a38`; base `0xe2641d...733bb2`; plasma `0x9a4935...293345`; arbitrum `0x28a9a4...3cf6cb`; arbitrum `0x75dd57...8534e6`; arbitrum `0x9fe203...78ab6f`; arbitrum `0xf8bf2c...b22a7e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (105)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379770 | `0x022a0c...62f556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0432cd...66f4d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13fcef...f54662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14e6d6...94e4bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x196e74...fd1c6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379774 | `0x1cc0ad...84149d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cf456...6f4406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2482db...3cc924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29939b...c4a603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x304962...c588ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb789c1...409de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4ae05...a8f3eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf093f5...496ae5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-379790 | `0x413fc8...ed01ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x79fc92...c52168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x586eb5...9d8a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe2881...0f2a1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc16489...a740cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc8989...6006e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x4b6fee...6e6f73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-379792 | `0xcc8989...6006e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x15ef18...acb4e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4d6827...5d54a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72155b...36a6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7d4a02...688107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x800c00...6740a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b24d4...bbb0f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce3be9...4a7296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe9c810...979f83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379793 | `0xfb4e25...97f408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x022a0c...62f556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06419f...66f7e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x122c7c...f25fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d0c44...5c6916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1dddec...be0da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b1ff6...b9e3dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3025b4...2c3abb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32c75a...02d4d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6aba59...8501b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x741d42...87e639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ca74d...70dd5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x836553...d7091a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379813 | `0x8dd906...d4ea6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fdbe9...1f539d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379814 | `0x97d42d...f6e5fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2ecda...b99f26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379815 | `0xa8098d...150785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb789c1...409de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc13a67...25bb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc8989...6006e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd8f35...1518e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4db6e...d507f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf23d83...c4ee80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9b9563...621e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x010e08...c7dde9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01e595...e104cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04da2c...301355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e4697...b37ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f62fc...657e09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x154878...04ec38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21e7bd...2b70b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x248d28...3dbe11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x312c5b...5106a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x379db4...ab2390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38b413...9101f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4294bb...093cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x450489...54c6e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ab3e1...318e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b4b51...9b7af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b6fee...6e6f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52637f...e4ca9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6028dc...7090c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60d5d3...c24f71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64865e...1479ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x649055...532842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fea64...600030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7285b2...6d27fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89255b...9825dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b4f2f...cf74c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ef4d0...2dd04d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x902912...8d2c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a4935...293345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b9563...621e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0e897...7baef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb259bc...19c565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbeb59f...5add2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0b7fa...b987f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5a947...d10183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc8989...6006e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3db92...6df9fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd668a6...410637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda4d62...261459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdce48a...00819f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xddfdfd...dae0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde6b49...66766c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe19ae7...ce72ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379796 | `0xe1a764...3deef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe25f76...17e885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4db6e...d507f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe891b9...3aff82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4e067...9e3340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf54882...4e1151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb8c9a...36b8d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-379802 | `0xcc8989...6006e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379791 | `0xc0b7fa...b987f0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Arrakis_Audit_Report_Sherlock.pdf](https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_Audit_Report_Sherlock.pdf) | Sherlock | Contest | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 19 | n/a |
| [Arrakis_Finance_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/Arrakis_Finance_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [REP-Gelato-UNI-2021-07-22.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/REP-Gelato-UNI-2021-07-22.pdf) | unknown | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [WatchPug Audit Report for Gelato G-UNI.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/WatchPug%20Audit%20Report%20for%20Gelato%20G-UNI.pdf) | WatchPug | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/v2-palm/blob/main/audit/Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [Arrakis_Audit_Report.pdf](https://github.com/ArrakisFinance/v2-manager-templates/blob/main/audit/Arrakis_Audit_Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Chainsecurity Audit Report December 21.pdf](https://github.com/ArrakisFinance/staking-contracts/blob/main/audits/Chainsecurity%20Audit%20Report%20December%2021.pdf) | yAudit | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5488] Arrakis_Audit_Report_Sherlock.pdf — no match: No reason recorded
- [5489] Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf — no match: No reason recorded
- [5492] Arrakis_Finance_Audit_Report_by_WatchPug.pdf — no match: Extracted contract names from findings and file paths. Audit date from delivery date.
- [5493] REP-Gelato-UNI-2021-07-22.pdf — no match: No reason recorded
- [5494] WatchPug Audit Report for Gelato G-UNI.pdf — no match: No reason recorded
- [5495] Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf — no match: No reason recorded
- [5497] Arrakis_Audit_Report.pdf — no match: No reason recorded
- [5500] Chainsecurity Audit Report December 21.pdf — no match: Extracted 7 contracts from the scope table in section 2.1. Audit date from cover page and final version date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Arrakis_Audit_Report_Sherlock.pdf | ArrakisV2 | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | ArrakisV2Router | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | ArrakisV2Storage | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | ChainlinkOraclePivot | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | SimpleManager | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | Underlying | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2 | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2FactoryStorage | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2Resolver | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2Router | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2Storage | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | FullMath | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | IArrakisV2 | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | IManagerProxyV2 | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ITransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | IUniswapV3Factory | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | IUniswapV3Pool | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | LiquidityAmounts | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | Position | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | PositionHelper | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | SafeCast | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | TickMath | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | Underlying | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | UnderlyingHelper | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | UniswapV3Amounts | unmatched — not counted | — | — | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | IArrakisVaultV1 | unmatched — not counted | — | mentioned as unused import in AR-N1 | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | IUniswapV3Pool | unmatched — not counted | — | mentioned as unused import in AR-N1 | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | IArrakisV1RouterStaking | unmatched — not counted | — | mentioned as unused import in AR-N1 | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | ArrakisVaultV1 | unmatched — not counted | — | mentioned in AR-N1, AR-N2 | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | ArrakisVaultV1Storage | unmatched — not counted | — | mentioned in AR-N3, AR-N4 | no |
| REP-Gelato-UNI-2021-07-22.pdf | EIP173Proxy | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | EIP173ProxyWithReceive | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | FullMath | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | GUniFactory | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | GUniFactoryStorage | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | GUniPool | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | GUniPoolStorage | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | Gelatofied | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | IEIP173Proxy | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | IGUniFactory | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | IGUniPoolStorage | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | IUniswapV3Factory | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | LiquidityAmounts | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | OwnableUninitialized | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | Proxied | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | Proxy | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | TickMath | unmatched — not counted | — | — | no |
| WatchPug Audit Report for Gelato G-UNI.pdf | GUniFactory | unmatched — not counted | — | — | no |
| WatchPug Audit Report for Gelato G-UNI.pdf | GUniPool | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | FTerms | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | IPALMManager | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | IPALMTerms | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | PALMManager | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | PALMManagerStorage | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | PALMTerms | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | PALMTermsStorage | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | ArrakisV2 | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | ArrakisV2Router | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | ArrakisV2Storage | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | ChainlinkOraclePivot | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | SimpleManager | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | Underlying | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report December 21.pdf | BaseSurplusConverter | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterSanTokens | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterUniV2Sushi | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterUniV3 | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | PoolManager | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | AngleDistributor | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | LiquidityGaugeV4 | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x0e4afb...7d417e` | AerodromeStandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd9e51f...adefd1` | AerodromeStandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x06baae...7434ee` | AerodromeStandardModulePrivateFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1a5273...0c33aa` | AerodromeStandardModulePrivateFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe7d57e...2b2f43` | AerodromeStandardModulePrivateFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x820fb8...123982` | ArrakisMetaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x72aa2c...a66041` | ArrakisPublicVaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5e7bb1...06809a` | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xade65c...89716a` | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf8f2eb...c061ef` | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6f4411...7ab981` | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd61407...f9b962` | MigrationHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe278c1...27a265` | ModulePrivateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x791d75...779603` | ModulePublicRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49083c...3d4b11` | PancakeSwapV3StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x700a1c...aac03a` | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x44a801...56b762` | PrivateVaultNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x194886...ceb1b6` | RouterSwapExecutor | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc6c533...9fb265` | RouterSwapResolver | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x04ead2...b337dc` | UniV4StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a2e9c...6f46d3` | WithdrawHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 88 |
| upstream | 18 |
| standard_library | 30 |
| needs_review | 114 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 69 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [5488] Arrakis_Audit_Report_Sherlock.pdf
- [5489] Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf
- [5492] Arrakis_Finance_Audit_Report_by_WatchPug.pdf
- [5493] REP-Gelato-UNI-2021-07-22.pdf
- [5494] WatchPug Audit Report for Gelato G-UNI.pdf
- [5495] Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf
- [5497] Arrakis_Audit_Report.pdf
- [5500] Chainsecurity Audit Report December 21.pdf

Fork inheritance lineage and inherited audits are included when available.
