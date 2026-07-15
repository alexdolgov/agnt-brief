# Agentic Audit Brief: Yearn

## Export Authority

- Production state: **published scope**
- Raw selected rows: 25 across 12 audit(s)
- Eligible audit results: 89 (12 matched; 77 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Yearn (`yearn`)
- Website: [https://yearn.fi/](https://yearn.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, fantom, optimism, polygon
- Contract surface: 823 unique implementations (823 raw deployments)
- Coverage basis: 9/97 confirmed own live verified implementations (9.3%); conservative 9.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $202,148,460.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Yearn. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 97 contract row(s) across arbitrum, base, ethereum, fantom, optimism, polygon, x-layer. Structural roles: 60 core, 27 unclassified, 10 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 97
- Structural roles: core (60), unclassified (27), supporting (10)
- Contract kinds: contract (70), unclassified (27)
- Detected standards: erc20 (7), erc165 (3), ownable (3), accesscontrol (2), erc4626 (2), erc1967proxy (1), erc20permit (1), multicall (1)
- Frameworks: openzeppelin (32), openzeppelin-upgradeable (3), solmate (2)
- Upgradeable-pattern rows: 4

## Fork Analysis

3 of 245 contracts are derived from known codebases. 242 contracts have no detected origin.

### Forked Contracts

**RoleManager** (`0x3bf720...6685b1`, chain 42161)
Origin: lido (`0x1bb44f...975bf3`)
Containment: 100.0% - 37 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**YBSUtilities** (`0x265c8d...619569`, chain 1)
Origin: stake-dao (`0x499099...c505c3`)
Containment: 91.3% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- getUserActiveAprWithFee(address,uint256,uint256)
- getUserProjectedAprWithFee(address,uint256,uint256)

**Yearn4626Router** (`0x1112db...4fd8de`, chain 1)
Origin: cove-finance (`0x15633d...ce53e3`)
Containment: 69.4% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- previewDeposits(address[],uint256)
- previewMints(address[],uint256)
- previewRedeems(address[],uint256)
- previewWithdraws(address[],uint256)
- pullTokenWithPermit2(ISignatureTransfer.PermitTransferFrom,ISignatureTransfer.SignatureTransferDetails,bytes)
- redeemFromRouter(IERC4626,uint256,address,uint256)
- redeemStakeDaoGauge(IStakeDaoGauge,uint256,address)
- redeemVaultV2(IYearnVaultV2,uint256,address,uint256)
- serializedDeposits(address[],uint256,address,uint256)
- serializedRedeems(address[],bool[],uint256,address,uint256)
- withdrawFromRouter(IERC4626,uint256,address,uint256)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0844c2...316c2d`, chain 1)
- UnnamedContract (`0x1ab624...e14467`, chain 1)
- UnnamedContract (`0x1f6f16...15b648`, chain 1)
- UnnamedContract (`0x254a93...e8ab19`, chain 1)
- UnnamedContract (`0x27b573...60349d`, chain 1)
- UnnamedContract (`0x28da6d...d0b4dc`, chain 1)
- UnnamedContract (`0x310f5d...791e76`, chain 1)
- UnnamedContract (`0x333333...2797ae`, chain 1)
- UnnamedContract (`0x38e3d8...b38bf4`, chain 1)
- UnnamedContract (`0x41b994...85c6bf`, chain 1)
- UnnamedContract (`0x4218e2...1a20ab`, chain 1)
- UnnamedContract (`0x444045...250ab0`, chain 1)
- UnnamedContract (`0x46b385...028d5b`, chain 1)
- UnnamedContract (`0x4707c8...f53b6e`, chain 1)
- UnnamedContract (`0x50397c...213da3`, chain 1)
- UnnamedContract (`0x50c1a2...053804`, chain 1)
- UnnamedContract (`0x52aa16...0135c9`, chain 1)
- UnnamedContract (`0x5577ed...38eb5f`, chain 1)
- UnnamedContract (`0x5943f7...a7ce4d`, chain 1)
- UnnamedContract (`0x5a74cb...2cde69`, chain 1)
- UnnamedContract (`0x5a7cbc...6208ae`, chain 1)
- UnnamedContract (`0x622fa4...2cfee3`, chain 1)
- UnnamedContract (`0x696d02...506987`, chain 1)
- UnnamedContract (`0x6e9455...e160f3`, chain 1)
- UnnamedContract (`0x71c322...1a9f3b`, chain 1)
- UnnamedContract (`0x770d0d...7d812f`, chain 1)
- UnnamedContract (`0x78ada3...c69e3c`, chain 1)
- UnnamedContract (`0x7cb5ab...47f1e2`, chain 1)
- UnnamedContract (`0x7cf484...36d491`, chain 1)
- UnnamedContract (`0x7fd8af...4c56a3`, chain 1)
- UnnamedContract (`0x81d935...c24e59`, chain 1)
- UnnamedContract (`0x846e21...061cc9`, chain 1)
- UnnamedContract (`0x855ffe...41c402`, chain 1)
- UnnamedContract (`0x88de7d...34f334`, chain 1)
- UnnamedContract (`0x8e2485...f79859`, chain 1)
- UnnamedContract (`0x90c1f9...588ad5`, chain 1)
- UnnamedContract (`0x957e3a...be26e4`, chain 1)
- UnnamedContract (`0x979832...c52e37`, chain 1)
- UnnamedContract (`0x97a597...aa3624`, chain 1)
- UnnamedContract (`0xa0b576...0a9d46`, chain 1)
- UnnamedContract (`0xa16f6f...58143b`, chain 1)
- UnnamedContract (`0xaaafea...6f9040`, chain 1)
- UnnamedContract (`0xae8138...4cb789`, chain 1)
- UnnamedContract (`0xaf1f5e...863319`, chain 1)
- UnnamedContract (`0xb226c5...f16d3d`, chain 1)
- UnnamedContract (`0xb287a1...1412fa`, chain 1)
- UnnamedContract (`0xb3bd6b...6d9a41`, chain 1)
- UnnamedContract (`0xb61f8f...28f660`, chain 1)
- UnnamedContract (`0xb70e1c...66ad55`, chain 1)
- UnnamedContract (`0xbb5127...70fed0`, chain 1)
- UnnamedContract (`0xbbbbbb...8c784d`, chain 1)
- UnnamedContract (`0xbe53a1...bf6204`, chain 1)
- UnnamedContract (`0xbf319d...c8805f`, chain 1)
- UnnamedContract (`0xc32bd1...04c020`, chain 1)
- UnnamedContract (`0xca78af...3cdf3f`, chain 1)
- UnnamedContract (`0xccd040...65bf81`, chain 1)
- UnnamedContract (`0xd192e7...49d6ce`, chain 1)
- UnnamedContract (`0xd37791...5a139c`, chain 1)
- UnnamedContract (`0xd533a9...34cd52`, chain 1)
- UnnamedContract (`0xd57aea...ac7b15`, chain 1)
- UnnamedContract (`0xd80631...84b00d`, chain 1)
- UnnamedContract (`0xdc775e...018efa`, chain 1)
- UnnamedContract (`0xdd3fa8...557824`, chain 1)
- UnnamedContract (`0xddcea7...7df012`, chain 1)
- UnnamedContract (`0xde992c...ee6145`, chain 1)
- UnnamedContract (`0xdfc8cd...4f4ff2`, chain 1)
- UnnamedContract (`0xe0514d...d437c3`, chain 1)
- UnnamedContract (`0xe28fcc...15614d`, chain 1)
- UnnamedContract (`0xe5e2ba...e989c0`, chain 1)
- UnnamedContract (`0xe9a115...fb873f`, chain 1)
- UnnamedContract (`0xe9cff1...372207`, chain 1)
- UnnamedContract (`0xe9e8c8...1178e5`, chain 1)
- UnnamedContract (`0xf64e58...385674`, chain 1)
- UnnamedContract (`0xf719b2...24fa11`, chain 1)
- UnnamedContract (`0xfcc5c4...9ff65b`, chain 1)
- UnnamedContract (`0xfeb4ac...faff52`, chain 1)
- UnnamedContract (`0xff0bd2...1a793d`, chain 1)
- UnnamedContract (`0x3d8f58...c45296`, chain 10)
- UnnamedContract (`0x776c1e...6ac602`, chain 10)
- UnnamedContract (`0x79286d...c5c128`, chain 10)
- UnnamedContract (`0x81291c...f005bf`, chain 10)
- UnnamedContract (`0x827321...326fa2`, chain 10)
- UnnamedContract (`0x84654e...cbf954`, chain 10)
- UnnamedContract (`0x88ba03...67bf73`, chain 10)
- UnnamedContract (`0x8eb53a...9bff86`, chain 10)
- UnnamedContract (`0x94141d...e08f18`, chain 10)
- UnnamedContract (`0xd3a93c...aa0074`, chain 10)
- UnnamedContract (`0xd63ab0...d0e032`, chain 10)
- UnnamedContract (`0xea3a15...148b26`, chain 10)
- UnnamedContract (`0xf5d9d6...04b3a7`, chain 10)
- UnnamedContract (`0xf8f60b...a5779b`, chain 10)
- UnnamedContract (`0x88ba03...67bf73`, chain 137)
- UnnamedContract (`0x9bcd66...1061e2`, chain 137)
- UnnamedContract (`0xc4ad00...70b626`, chain 137)
- UnnamedContract (`0xda5371...5260b6`, chain 137)
- UnnamedContract (`0xf8f60b...a5779b`, chain 137)
- UnnamedContract (`0x001d0a...984518`, chain 250)
- UnnamedContract (`0x0b53e9...a37128`, chain 250)
- UnnamedContract (`0x116458...b34986`, chain 250)
- UnnamedContract (`0x14785e...713914`, chain 250)
- UnnamedContract (`0x29b0da...c0ec69`, chain 250)
- UnnamedContract (`0x44536d...8e9ee4`, chain 250)
- UnnamedContract (`0x560144...a850e5`, chain 250)
- UnnamedContract (`0x57aa88...56c46a`, chain 250)
- UnnamedContract (`0x5ea7e5...a1dd25`, chain 250)
- UnnamedContract (`0x6b8de0...ba7f0e`, chain 250)
- UnnamedContract (`0x727fe1...929b04`, chain 250)
- UnnamedContract (`0x72a34a...7c4a16`, chain 250)
- UnnamedContract (`0x7f462b...b77d73`, chain 250)
- UnnamedContract (`0x89716a...deb12a`, chain 250)
- UnnamedContract (`0x8cc45f...17ccc1`, chain 250)
- UnnamedContract (`0x97d0be...8f6938`, chain 250)
- UnnamedContract (`0xac5a9e...592b61`, chain 250)
- UnnamedContract (`0xc0e283...8f6767`, chain 250)
- UnnamedContract (`0xe55dd5...657d74`, chain 250)
- UnnamedContract (`0xebaa0b...80d9ba`, chain 250)
- UnnamedContract (`0xf13cd6...627fe0`, chain 250)
- UnnamedContract (`0xf628fb...2e3cd1`, chain 250)
- UnnamedContract (`0x1e9eb0...6b8671`, chain 8453)
- UnnamedContract (`0x697bc6...eaccd3`, chain 8453)
- UnnamedContract (`0x827321...326fa2`, chain 8453)
- UnnamedContract (`0x88ba03...67bf73`, chain 8453)
- UnnamedContract (`0x9eaf8c...3cb239`, chain 8453)
- UnnamedContract (`0xbfaaba...06b02e`, chain 8453)
- UnnamedContract (`0xea3481...1fd456`, chain 8453)
- UnnamedContract (`0xf3885e...a78ec5`, chain 8453)
- UnnamedContract (`0xf8f60b...a5779b`, chain 8453)
- UnnamedContract (`0xfeae2f...1fe36f`, chain 8453)
- UnnamedContract (`0x1deb47...2c08c1`, chain 42161)
- UnnamedContract (`0x1e9eb0...6b8671`, chain 42161)
- UnnamedContract (`0x2a139a...4e9449`, chain 42161)
- UnnamedContract (`0x319943...00eb1f`, chain 42161)
- UnnamedContract (`0x634628...655c0d`, chain 42161)
- UnnamedContract (`0x66a1a2...d35e0f`, chain 42161)
- UnnamedContract (`0x697bc6...eaccd3`, chain 42161)
- UnnamedContract (`0x7aad41...e9d25b`, chain 42161)
- UnnamedContract (`0x84654e...cbf954`, chain 42161)
- UnnamedContract (`0x88ba03...67bf73`, chain 42161)
- UnnamedContract (`0x8a5f08...d353bc`, chain 42161)
- UnnamedContract (`0x94734b...02efd7`, chain 42161)
- UnnamedContract (`0x9ab47b...27f366`, chain 42161)
- UnnamedContract (`0xb6bc03...8e56ad`, chain 42161)
- UnnamedContract (`0xcad100...558e9f`, chain 42161)
- UnnamedContract (`0xdf4326...495ccd`, chain 42161)
- UnnamedContract (`0xe55dd5...657d74`, chain 42161)
- UnnamedContract (`0xf5875d...acf44d`, chain 42161)
- UnnamedContract (`0xf8f60b...a5779b`, chain 42161)
- UnnamedContract (`0xfd99a1...056885`, chain 42161)
- Accountant (`0x1f3998...b27c8a`, chain 8453)
- AccountantFactory (`0xf728f8...1c32d1`, chain 1)
- AddressesGenerator_VAULT_V2 (`0x437758...c375f0`, chain 1)
- AddressesGeneratorEarn (`0xf53639...539344`, chain 1)
- AddressesGeneratorV1Vaults (`0xce29d3...9fc041`, chain 1)
- AddressesGeneratorV2Vaults (`0x3a8efa...c0f094`, chain 42161)
- AddressMergeHelper (`0x156bab...a12529`, chain 10)
- AprOracle (`0x1981ad...70af92`, chain 1)
- AuctionFactory (`0xba7fcb...d52f8e`, chain 1)
- AuctionRegistry (`0x94f447...e48d12`, chain 1)
- BalancesHelper (`0x167aa4...4e5186`, chain 10)
- CalculationsChainlinkRegistry (`0x5fd381...a55b4d`, chain 10)
- CalculationsCurve (`0x0ffe84...aa7227`, chain 10)
- CalculationsIronBank (`0x55e9b1...de8ea4`, chain 1)
- CalculationsSushiswap (`0x5ea7e5...a1dd25`, chain 42161)
- CalculationsYearnVaults (`0x38477f...b9aa3c`, chain 1)
- CommonHealthCheck (`0x32059c...c470bc`, chain 42161)
- CommonTrigger (`0xf8df17...b9d52d`, chain 1)
- CoveYFI (`0xff7184...65c248`, chain 1)
- Curve LP Module (`0xce62d9...7d2022`, chain 1)
- CurveGlobal (`0x21b1fc...c2a17a`, chain 1)
- DebtAllocator (`0x1e9eb0...6b8671`, chain 1)
- DebtAllocatorFactory (`0x03d43d...9a4c18`, chain 1)
- Delegated Staked YFI (`0x9c4246...149d79`, chain 1)
- Delegated Staking Reward Distributor (`0x952b31...5e3d6e`, chain 1)
- DelegatedBalanceMapping (`0xc01a52...e5b142`, chain 1)
- Dumper (`0x590dd9...c1c4cf`, chain 1)
- dYFI (`0x41252e...97a275`, chain 1)
- dYFI Reward Pool (`0x2391fc...6d894e`, chain 1)
- EarnRegistry (`0x62a4e0...6eb04b`, chain 1)
- Executor (`0x71258e...8c2bf1`, chain 1)
- Gauge (`0x107717...f3a27c`, chain 1)
- Gauge registry (`0x1d0fdc...936f8b`, chain 1)
- GaugeV2 (`0x128e72...3ddfc9`, chain 1)
- Generic governor (`0xb7a528...3e5ba5`, chain 1)
- GnosisSafe (`0x163884...790ff7`, chain 1)
- GnosisSafeProxy (`0x163880...125bc1`, chain 137)
- GnosisSafeProxy (`0x01fe33...348e93`, chain 8453)
- Helper (`0x5aacd0...c34a6f`, chain 1)
- Incentives for Snapshot votes (`0xae9de8...0a5179`, chain 1)
- Keeper (`0x52605b...7db2f8`, chain 1)
- Liquid Locker Depositor (`0x3d4ced...26bc8f`, chain 1)
- Liquid Locker Redemption (`0xba18d0...0e681d`, chain 1)
- Liquid Locker Reward Distributor (`0x7efc39...72a000`, chain 1)
- LockerZapper (`0x7ba61c...062bba`, chain 1)
- ManagementList (`0x7e9756...63d619`, chain 10)
- OptimismMintableERC20 (`0x9046d3...e9107b`, chain 10)
- Oracle (`0x043518...78e9b9`, chain 42161)
- Ownership proxy (`0x56af9c...76fafd`, chain 1)
- PricesHelper (`0x5d63a8...ddc99b`, chain 1)
- Protocol Address Provider (`0x775f09...05653c`, chain 1)
- Protocol Owned Liquidity (`0x929401...b04478`, chain 1)
- RefundAccountant (`0x54483f...1d4cee`, chain 137)
- RegisteryAdapterV2Vaults (`0x240315...2d1271`, chain 1)
- Registry (`0xd40ecf...45b038`, chain 1)
- RegistryAdapterV2Vault (`0xbcfca7...047690`, chain 10)
- RegistryFactory (`0x3a0fa8...8816a1`, chain 1)
- ReleaseRegistry (`0x0377b4...5f7198`, chain 1)
- Reward Claimer (`0xa82454...b05e50`, chain 1)
- Reward Distributor (`0xd31911...ff5934`, chain 1)
- RoleManagerFactory (`0xca1245...e9e5ce`, chain 1)
- SafeProxy (`0x90d0f2...886b51`, chain 1)
- SafeProxy (`0x90d0f2...886b51`, chain 8453)
- SafeProxy (`0x90d0f2...886b51`, chain 42161)
- SharerV3 (`0x2c641e...792f7d`, chain 1)
- Shutdown Module (`0xe94628...5ba5fa`, chain 1)
- SingleTokenRewardDistributor (`0x1d02f6...2ad746`, chain 1)
- Staked YFI (`0x42b252...ecc016`, chain 1)
- Staking (`0xcb7dce...5777ee`, chain 1)
- Staking Module (`0x27a2fc...78ac52`, chain 1)
- Staking Reward Distributor (`0x95547e...da6113`, chain 1)
- TimelockController (`0x88ba03...67bf73`, chain 1)
- TimelockExecutor (`0xf8f60b...a5779b`, chain 1)
- Treasury (`0x02ff74...1d3480`, chain 8453)
- TreasuryVault (`0x93a62d...a0efde`, chain 1)
- TvlAdapterEarn (`0x1007ed...248691`, chain 1)
- TvlAdapterIronBank (`0xec7ac8...097f24`, chain 1)
- TvlAdapterV1Vaults (`0xf4fb89...4c6c78`, chain 1)
- TvlAdapterV2Vaults (`0x14d6e0...da8785`, chain 1)
- TvlAdapterVeCrv (`0x560144...a850e5`, chain 1)
- UniqueAddressesHelper (`0xc3a0be...f9467c`, chain 1)
- Unitroller (`0xab1c34...144cbb`, chain 1)
- V2Keeper (`0x736d7e...6cfccf`, chain 1)
- VelodromeGlobal (`0x2d12ca...3cdff1`, chain 8453)
- Voting Escrow Reward Distributor (`0x2548bf...9ee884`, chain 1)
- Vyper_contract (`0x000000...fc4383`, chain 10)
- YBToken (`0x01791f...c045ff`, chain 1)
- Yearn Vault Factory (`0x310ac2...22bcac`, chain 1)
- YearnBoostedStaker (`0x5d2ea3...0fad91`, chain 1)
- yETH staking contract (`0x583019...04d0b4`, chain 1)
- yETH token (`0x1bed97...6131f7`, chain 1)
- YFI (`0x0bc529...6ad93e`, chain 1)
- YRegistry (`0x3ee41c...9d63a0`, chain 1)
- YToken (`0x222222...9479d6`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 97; live-surface rows included: 97 (97 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 245/257 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/97 (9.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 245 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 570 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 245 of 823 unique; 578 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 9/666
- Verified + Unaudited implementations: 657
- Verified by bytecode match: 0
- Unverified implementations: 157
- Unique implementations: 823
- Raw deployments: 823
- Audits discovered: 89 (89 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 77 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 3.1% (ChainSecurity, MixBytes, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 4 | 0.6% | 2023-07 |
| ChainSecurity | Tier 1 | 2 | 0.3% | 2023-11 |
| MixBytes | Tier 1 | 1 | 0.2% | 2023-10 |
| Quantstamp | Tier 2 | 1 | 0.2% | 2020-07 |
| Trail of Bits | Tier 1 | 1 | 0.2% | 2021-04 |
| yAcademy | Tier 2 | 1 | 0.2% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Executor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263293 | `0x71258e...8c2bf1` | ✅ Audited |
| Gauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263235 | `0x107717...f3a27c` | ✅ Audited |
| Incentives for Snapshot votes | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263326 | `0xae9de8...0a5179` | ✅ Audited |
| Protocol Owned Liquidity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263312 | `0x929401...b04478` | ✅ Audited |
| Staking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263346 | `0xcb7dce...5777ee` | ✅ Audited |
| Staking Module | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263252 | `0x27a2fc...78ac52` | ✅ Audited |
| yETH token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263240 | `0x1bed97...6131f7` | ✅ Audited |
| YFI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263233 | `0x0bc529...6ad93e` | ✅ Audited |
| YToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263246 | `0x222222...9479d6` | ✅ Audited |

### ⚠️ Verified + Unaudited (657)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| 1UP depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x633f18...564690` | ⚠️ Unaudited |
| 1UP Vesting operator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0d222...cccd9d` | ⚠️ Unaudited |
| AbiDecoder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626271...6ac74d` | ⚠️ Unaudited |
| Accountant | unknown | project_anchor | own_supporting | 0 | base | unit-263468 | `0x1f3998...b27c8a` | ⚠️ Unaudited |
| AccountantFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263374 | `0xf728f8...1c32d1` | ⚠️ Unaudited |
| ACL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c719...2f7c90` | ⚠️ Unaudited |
| AddLiquidityChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33163e...5cb074` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed976...ea0aab` | ⚠️ Unaudited |
| AddressesGenerator_VAULT_V2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263268 | `0x437758...c375f0` | ⚠️ Unaudited |
| AddressesGeneratorEarn | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263371 | `0xf53639...539344` | ⚠️ Unaudited |
| AddressesGeneratorIronBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x941f72...891763` | ⚠️ Unaudited |
| AddressesGeneratorV1Vaults | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263348 | `0xce29d3...9fc041` | ⚠️ Unaudited |
| AddressesGeneratorV2Vaults | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263444 | `0x3a8efa...c0f094` | ⚠️ Unaudited |
| AddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d80c2...a55960` | ⚠️ Unaudited |
| AddressGeneratorFactoryVaults | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa654be...70d5be` | ⚠️ Unaudited |
| AddressMergeHelper | unknown | project_anchor | own_supporting | 0 | optimism | unit-263384 | `0x156bab...a12529` | ⚠️ Unaudited |
| AdminVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc53baa...696734` | ⚠️ Unaudited |
| Agent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5835c7...e4ee12` | ⚠️ Unaudited |
| AgoraStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed5d52...b2a7cf` | ⚠️ Unaudited |
| AHv2Repayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141e05...2f629e` | ⚠️ Unaudited |
| AirdropDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bd112...b99c62` | ⚠️ Unaudited |
| AirdropDistributorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c5333...5578af` | ⚠️ Unaudited |
| AjnaRouterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd8d41...189102` | ⚠️ Unaudited |
| Allocatin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x000724...c40917` | ⚠️ Unaudited |
| AllocationVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc72bc1...436a0f` | ⚠️ Unaudited |
| AllowancesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x103df3...9a742c` | ⚠️ Unaudited |
| Allowlist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ed8d...2dcf04` | ⚠️ Unaudited |
| AllowlistFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef01bc...d03440` | ⚠️ Unaudited |
| AllowlistImplementationPartnerTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2367b...5c9b05` | ⚠️ Unaudited |
| AllowlistImplementationVeYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x526bc5...6e4e8e` | ⚠️ Unaudited |
| AlphaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x337531...721fab` | ⚠️ Unaudited |
| AlphaHomo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39bcf3...9fabbf` | ⚠️ Unaudited |
| AngleAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed812...f72d2e` | ⚠️ Unaudited |
| AngleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226354...9d7caf` | ⚠️ Unaudited |
| AngleVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66f3d3...e0b801` | ⚠️ Unaudited |
| AngleVaultGUni | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca321...1f1b02` | ⚠️ Unaudited |
| AngleVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103a24...a3fab8` | ⚠️ Unaudited |
| AngleVoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbabe5d...8cd98b` | ⚠️ Unaudited |
| AngleVoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdde0f1...917efd` | ⚠️ Unaudited |
| AprOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263238 | `0x1981ad...70af92` | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dad...47ca14` | ⚠️ Unaudited |
| ApwineAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29bcfc...3070b2` | ⚠️ Unaudited |
| ApwineDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe928c...cefbcf` | ⚠️ Unaudited |
| ApwineLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe71e28...e5721d` | ⚠️ Unaudited |
| AuctionFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263335 | `0xba7fcb...d52f8e` | ⚠️ Unaudited |
| AuctionKicker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d6e6...1f679e` | ⚠️ Unaudited |
| AuctionRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263314 | `0x94f447...e48d12` | ⚠️ Unaudited |
| AuctionSweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068ad6...19ddf4` | ⚠️ Unaudited |
| BalancesHelper | unknown | project_anchor | own_supporting | 0 | optimism | unit-263385 | `0x167aa4...4e5186` | ⚠️ Unaudited |
| BaseConvertor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6b9ce...8c57f9` | ⚠️ Unaudited |
| BaseConvertor4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa02459...2cbcb2` | ⚠️ Unaudited |
| Basefee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02ff74...1d3480` | ⚠️ Unaudited |
| BaseFeeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7efa...3c868b` | ⚠️ Unaudited |
| Basic redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5dd78...62eb62` | ⚠️ Unaudited |
| BasicRewardsOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x176cff...c56ccc` | ⚠️ Unaudited |
| BasicTradeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a2b58...e42c35` | ⚠️ Unaudited |
| Bits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8558c4...b7b73b` | ⚠️ Unaudited |
| BlackpoolAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfac788...8cbfbc` | ⚠️ Unaudited |
| BlackpoolDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x219f74...279993` | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4fd0...5da3dc` | ⚠️ Unaudited |
| Bonus Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa66002...b13116` | ⚠️ Unaudited |
| Bonus Price Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e417e...0cb416` | ⚠️ Unaudited |
| Boost Delegation V2.1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01fc53...cd9bd4` | ⚠️ Unaudited |
| Boost Delegation V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da9be...efbb78` | ⚠️ Unaudited |
| BoostCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ac44b...9c0ebc` | ⚠️ Unaudited |
| Booster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f7c50...562bd3` | ⚠️ Unaudited |
| BoostViewVoodoo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cddd5...d79586` | ⚠️ Unaudited |
| BoostViewVoodoo2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a3d2...d371b2` | ⚠️ Unaudited |
| BorrowerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72c590...542719` | ⚠️ Unaudited |
| BountyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ced8b...8dc1ed` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcac873...177f40` | ⚠️ Unaudited |
| BytesLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a432a...d72802` | ⚠️ Unaudited |
| CalculationsChainlinkRegistry | unknown | project_anchor | own_supporting | 0 | optimism | unit-263387 | `0x5fd381...a55b4d` | ⚠️ Unaudited |
| CalculationsCurve | unknown | project_anchor | own_supporting | 0 | optimism | unit-263383 | `0x0ffe84...aa7227` | ⚠️ Unaudited |
| CalculationsFixedForex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9956ca...3cb1fd` | ⚠️ Unaudited |
| CalculationsIronBank | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263278 | `0x55e9b1...de8ea4` | ⚠️ Unaudited |
| CalculationsOverrides | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c8282...d5c648` | ⚠️ Unaudited |
| CalculationsSushiswap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263447 | `0x5ea7e5...a1dd25` | ⚠️ Unaudited |
| CalculationsSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0474...43151a` | ⚠️ Unaudited |
| CalculationsYearnVaults | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263259 | `0x38477f...b9aa3c` | ⚠️ Unaudited |
| CalculationsZeroPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8b5ff...b7d8d7` | ⚠️ Unaudited |
| CallComparator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3bfa8...1dec25` | ⚠️ Unaudited |
| CapUSDExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1be70...35fdd4` | ⚠️ Unaudited |
| CCTPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6447b8...7ef295` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6...5dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1...171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c...c77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020...6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ebeac...a93aab` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888f...25b653` | ⚠️ Unaudited |
| Cliff Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ba8df...57e220` | ⚠️ Unaudited |
| CollateralMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494ba8...1b96c1` | ⚠️ Unaudited |
| CometOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02939b...742f76` | ⚠️ Unaudited |
| CommonHealthCheck | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263443 | `0x32059c...c470bc` | ⚠️ Unaudited |
| CommonTrigger | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263375 | `0xf8df17...b9d52d` | ⚠️ Unaudited |
| CompensationEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda7b94...4b64c3` | ⚠️ Unaudited |
| COMPfarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1532eb...6aa870` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e6556...1dc4c8` | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98158e...8039ca` | ⚠️ Unaudited |
| Convertor4626Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a249...449156` | ⚠️ Unaudited |
| ConvertorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa40b4c...854bfd` | ⚠️ Unaudited |
| ConvexDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000ca0...227de9` | ⚠️ Unaudited |
| ConvexFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da992...4bc867` | ⚠️ Unaudited |
| CoveYFI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263381 | `0xff7184...65c248` | ⚠️ Unaudited |
| Create2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e55ae...a4afab` | ⚠️ Unaudited |
| CRON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e14d0...5d322e` | ⚠️ Unaudited |
| CrvStrategyKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ac37...0b589d` | ⚠️ Unaudited |
| CrvStrategyKeep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02027b...5e1af5` | ⚠️ Unaudited |
| CrvStrategyKeep3rJob2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee1501...92aedd` | ⚠️ Unaudited |
| CrvStrategyKeep3rStealthJob2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41edfd...7cd0d8` | ⚠️ Unaudited |
| CrvUsdRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x935bcf...57aae3` | ⚠️ Unaudited |
| CrvVaultSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c022d...25b4a9` | ⚠️ Unaudited |
| CryptopoolLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e469...dc461b` | ⚠️ Unaudited |
| Curve LP Module | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263349 | `0xce62d9...7d2022` | ⚠️ Unaudited |
| CurveDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x572a4a...0c9d2a` | ⚠️ Unaudited |
| CurveDepositZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e659f...80729e` | ⚠️ Unaudited |
| CurveFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2664a7...d1569f` | ⚠️ Unaudited |
| CurveGlobal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263245 | `0x21b1fc...c2a17a` | ⚠️ Unaudited |
| CurveProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x490b8c...5d2f7e` | ⚠️ Unaudited |
| CustomPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0ecd3...b531a0` | ⚠️ Unaudited |
| CustomTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xddb6cd...48a337` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c110...db072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674...69ebbb` | ⚠️ Unaudited |
| DAOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d75ff...39a871` | ⚠️ Unaudited |
| DebtAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263243 | `0x1e9eb0...6b8671` | ⚠️ Unaudited |
| DebtAllocatorFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263231 | `0x03d43d...9a4c18` | ⚠️ Unaudited |
| DebtAllocatorKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d8713...5e1236` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4591db...9fbb28` | ⚠️ Unaudited |
| Delegated Staked YFI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263320 | `0x9c4246...149d79` | ⚠️ Unaudited |
| Delegated Staking Reward Distributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263315 | `0x952b31...5e3d6e` | ⚠️ Unaudited |
| DelegatedBalanceMapping | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263340 | `0xc01a52...e5b142` | ⚠️ Unaudited |
| DelegationFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd39164...137748` | ⚠️ Unaudited |
| Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d85e7...8b0112` | ⚠️ Unaudited |
| DepositModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x793d85...3ff1cb` | ⚠️ Unaudited |
| Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9ec46...4e861f` | ⚠️ Unaudited |
| DepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x941e71...8201e0` | ⚠️ Unaudited |
| DepositorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56d27f...b196ad` | ⚠️ Unaudited |
| DforceStrategyKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x300843...1a3078` | ⚠️ Unaudited |
| DistributeYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ac0...cfa017` | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1b08...368d6d` | ⚠️ Unaudited |
| Donator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc368ed...d28839` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84...057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca0...8f1483` | ⚠️ Unaudited |
| DSSLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050cd4...92640e` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083...cc5523` | ⚠️ Unaudited |
| DummyStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6740bf...9d01ca` | ⚠️ Unaudited |
| Dumper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263282 | `0x590dd9...c1c4cf` | ⚠️ Unaudited |
| dYFI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263264 | `0x41252e...97a275` | ⚠️ Unaudited |
| dYFI Reward Pool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263247 | `0x2391fc...6d894e` | ⚠️ Unaudited |
| DynamicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035fb9...4b5f60` | ⚠️ Unaudited |
| EarnRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263290 | `0x62a4e0...6eb04b` | ⚠️ Unaudited |
| eETHDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa259...9c2603` | ⚠️ Unaudited |
| EminenceCurrency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ccea6...559ad4` | ⚠️ Unaudited |
| EmissionSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906e0d...851f42` | ⚠️ Unaudited |
| EnsAddressResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e89f5...f7f925` | ⚠️ Unaudited |
| EnsHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3311...b864e1` | ⚠️ Unaudited |
| ERC4626Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13100b...2b3054` | ⚠️ Unaudited |
| ERC4626FluidExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b1327...3521f3` | ⚠️ Unaudited |
| EthCream | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea87e0...665cfb` | ⚠️ Unaudited |
| EthereumStateSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa10256...ddd46b` | ⚠️ Unaudited |
| EVMScriptRegistryFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd44d19...8351fd` | ⚠️ Unaudited |
| ExerciseHelperBMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x614760...384cb1` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1043eb...4c421d` | ⚠️ Unaudited |
| FactoryVaultsAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe950...acb773` | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2d0e...c6cc0a` | ⚠️ Unaudited |
| Faketroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6257e3...9fef3f` | ⚠️ Unaudited |
| FeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb911fc...3c1ee8` | ⚠️ Unaudited |
| FeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x726251...804333` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x286af1...39ecc0` | ⚠️ Unaudited |
| FeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdce02...e9cbf8` | ⚠️ Unaudited |
| FeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f1dc3...30d19c` | ⚠️ Unaudited |
| FeeSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d353a...000509` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| Fixed rate oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81d26c...fb3b6e` | ⚠️ Unaudited |
| FixedRateStrategyAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7c33...41c437` | ⚠️ Unaudited |
| FixedTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf414a2...1e1721` | ⚠️ Unaudited |
| fKRW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c08b5...f2893a` | ⚠️ Unaudited |
| FlashSeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002060...cedeee` | ⚠️ Unaudited |
| FluidAprOracleMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031ede...a7cbe2` | ⚠️ Unaudited |
| FluidExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aad75...1bad70` | ⚠️ Unaudited |
| FluidLenderFactoryMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x859df6...a43861` | ⚠️ Unaudited |
| Forwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9a3a8...11d9fa` | ⚠️ Unaudited |
| FpisAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca369...a9f460` | ⚠️ Unaudited |
| Funding Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcc932...f6116b` | ⚠️ Unaudited |
| fUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7f09...6dc10f` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x839725...afa28a` | ⚠️ Unaudited |
| FxsAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca53fe...2b4008` | ⚠️ Unaudited |
| Gas | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0791d0...f2bf0e` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0598d...8cab61` | ⚠️ Unaudited |
| GasPoolReimburser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4165ef...bc1c38` | ⚠️ Unaudited |
| Gauge Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037ee0...0e5af9` | ⚠️ Unaudited |
| Gauge factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43cfc6...2e0b91` | ⚠️ Unaudited |
| Gauge registry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263242 | `0x1d0fdc...936f8b` | ⚠️ Unaudited |
| Gauge rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35440c...f5475f` | ⚠️ Unaudited |
| GaugeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823fd2...61081c` | ⚠️ Unaudited |
| GaugeV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263236 | `0x128e72...3ddfc9` | ⚠️ Unaudited |
| GaugeValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c662c...dc9524` | ⚠️ Unaudited |
| GearboxCrvUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x452cce...2059de` | ⚠️ Unaudited |
| GearboxOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67cfa...06a2ba` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e93...845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e...83c275` | ⚠️ Unaudited |
| Generic governor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263333 | `0xb7a528...3e5ba5` | ⚠️ Unaudited |
| GenericCream | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1baace...472fb3` | ⚠️ Unaudited |
| GenericDyDx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2699...02ae73` | ⚠️ Unaudited |
| GenericV2Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf796c1...277480` | ⚠️ Unaudited |
| Getter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x016aaf...76ab39` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263482 | `0x163884...790ff7` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-263483 | `0x163880...125bc1` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 0 | base | unit-263465 | `0x01fe33...348e93` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7212f...0cb735` | ⚠️ Unaudited |
| GovernanceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x464218...da2c56` | ⚠️ Unaudited |
| GovernanceSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x220c33...447afc` | ⚠️ Unaudited |
| HarvestV2Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da70a...4c6688` | ⚠️ Unaudited |
| HarvestV2Keep3rStealthJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2150b4...b152d6` | ⚠️ Unaudited |
| HarvestV2QueueKeep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a7db...4d118d` | ⚠️ Unaudited |
| HegicERCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7224f2...a1345a` | ⚠️ Unaudited |
| HegicOptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a086...e4ae70` | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061940...082f23` | ⚠️ Unaudited |
| Helper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263286 | `0x5aacd0...c34a6f` | ⚠️ Unaudited |
| HybridFactoryOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f4e1a...3f1048` | ⚠️ Unaudited |
| HybridVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd772ed...fdc3ac` | ⚠️ Unaudited |
| HybridVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdc322...b8dc5b` | ⚠️ Unaudited |
| iCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78705d...f4e025` | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10e11...3b0f69` | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06a8fe...3ddcc1` | ⚠️ Unaudited |
| iDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5f9d...ca35a0` | ⚠️ Unaudited |
| iDAIZapSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260fbb...a867fa` | ⚠️ Unaudited |
| IEarnAPR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cad8a...268eec` | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029fea...44c9bb` | ⚠️ Unaudited |
| IEarnManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318135...50edfb` | ⚠️ Unaudited |
| IEarnProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3680...884bb4` | ⚠️ Unaudited |
| IEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a4d0...cd25eb` | ⚠️ Unaudited |
| Incentives for inclusion vote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x705577...8d1bc2` | ⚠️ Unaudited |
| Incentives for weight vote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x742da6...3c2302` | ⚠️ Unaudited |
| IncentiveVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd8df0...2e850c` | ⚠️ Unaudited |
| Inclusion vote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bc087...0f2c31` | ⚠️ Unaudited |
| InflationaryVest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f5789...31b112` | ⚠️ Unaudited |
| insuredVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53e9e...2863d9` | ⚠️ Unaudited |
| insurerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8813d...457bcf` | ⚠️ Unaudited |
| InterimAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a62a6...9d341e` | ⚠️ Unaudited |
| Introspection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cce08...9cc802` | ⚠️ Unaudited |
| iTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a5ca...104e3e` | ⚠️ Unaudited |
| KatanaStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a090b...600e9c` | ⚠️ Unaudited |
| Keep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f358...2f57f1` | ⚠️ Unaudited |
| Keep3rEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39392a...5a8ed5` | ⚠️ Unaudited |
| Keep3rEscrowJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83a34a...ccd73d` | ⚠️ Unaudited |
| Keep3rHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb41772...af955e` | ⚠️ Unaudited |
| Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68e7d...02d10d` | ⚠️ Unaudited |
| Keep3rLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf14cb1...cdc9ca` | ⚠️ Unaudited |
| Keep3rLiquidityManagerJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e0cc5...c39085` | ⚠️ Unaudited |
| Keep3rProxyJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d5a78...024645` | ⚠️ Unaudited |
| Keep3rSugarMommy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9512...97d321` | ⚠️ Unaudited |
| Keep3rV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ceb5c...185a44` | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1530a2...5a5df9` | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x739689...ab620c` | ⚠️ Unaudited |
| Keep3rV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaef20...924c93` | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x733538...70282c` | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a03b4...f5c080` | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173ed6...132dc9` | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf162...c8f6c0` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2266be...7880cb` | ⚠️ Unaudited |
| Keep3rV2OracleFactoryWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa07662...b5296d` | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1542ec...ba0f82` | ⚠️ Unaudited |
| Keeper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263275 | `0x52605b...7db2f8` | ⚠️ Unaudited |
| KeeperWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9ce011...061482` | ⚠️ Unaudited |
| Kernel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47d62e...59e827` | ⚠️ Unaudited |
| Launch vote weight measure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe931d4...b13b2c` | ⚠️ Unaudited |
| LazyHarvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea775...c5d0f3` | ⚠️ Unaudited |
| LEVAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ceda...ba305e` | ⚠️ Unaudited |
| LftLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd05957...853d37` | ⚠️ Unaudited |
| Liquid locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95710b...76b098` | ⚠️ Unaudited |
| Liquid Locker Depositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263262 | `0x3d4ced...26bc8f` | ⚠️ Unaudited |
| Liquid Locker Middleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58832f...db3748` | ⚠️ Unaudited |
| Liquid Locker Redemption | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263334 | `0xba18d0...0e681d` | ⚠️ Unaudited |
| Liquid Locker Reward Distributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263302 | `0x7efc39...72a000` | ⚠️ Unaudited |
| Liquid Locker Vesting Escrow Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c2f62...a76fe2` | ⚠️ Unaudited |
| LiquidationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5de309...f8e9e2` | ⚠️ Unaudited |
| LiquidationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82f6d...a3e8ce` | ⚠️ Unaudited |
| Liquidity Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x008c2d...d781f7` | ⚠️ Unaudited |
| LiquidityIncome | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288324...5a56cd` | ⚠️ Unaudited |
| LiquidRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02dd79...a9440d` | ⚠️ Unaudited |
| LiquidTransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30285a...d3288f` | ⚠️ Unaudited |
| LitePsmExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x126462...34dc5e` | ⚠️ Unaudited |
| LockedyvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f9aa2...4615c9` | ⚠️ Unaudited |
| LockedyvUSDAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x209ec2...b1a90b` | ⚠️ Unaudited |
| LockerZapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263299 | `0x7ba61c...062bba` | ⚠️ Unaudited |
| LongOTokenPut | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c51d...ce3aa6` | ⚠️ Unaudited |
| LooperKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x706eac...2c80e3` | ⚠️ Unaudited |
| LT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b0d8b...3f1eb4` | ⚠️ Unaudited |
| LTMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cdb9f...37066c` | ⚠️ Unaudited |
| MainnetVeOracleOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x751a72...d437fc` | ⚠️ Unaudited |
| ManagementList | unknown | project_anchor | own_supporting | 0 | optimism | unit-263390 | `0x7e9756...63d619` | ⚠️ Unaudited |
| ManualBorrowRewardAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f7580...ff28ed` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| MaticWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23...b9f619` | ⚠️ Unaudited |
| MechanicsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8d5a8...b499bb` | ⚠️ Unaudited |
| Memory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9db355...f216b2` | ⚠️ Unaudited |
| MetaKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dfa8...0a9372` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68aea7...f845a3` | ⚠️ Unaudited |
| MigrateTroveZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1371c1...4f9047` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708f45...82fb7b` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a20...3669ea` | ⚠️ Unaudited |
| MultiCollateralHintHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5871...47a9cd` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58fa55...a1eb1c` | ⚠️ Unaudited |
| NexusMutualCover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a288...de7a28` | ⚠️ Unaudited |
| Normalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9214a6...f023aa` | ⚠️ Unaudited |
| Null Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1025cf...017214` | ⚠️ Unaudited |
| OneInchSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06a53f...dbf89d` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | project_anchor | own_supporting | 0 | optimism | unit-263396 | `0x9046d3...e9107b` | ⚠️ Unaudited |
| OptimismVeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x32d804...479c41` | ⚠️ Unaudited |
| OptionsV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc6d...76cdd5` | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00fbd1...d86309` | ⚠️ Unaudited |
| OpynBuyVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca4e1...85012c` | ⚠️ Unaudited |
| OpynPerpVaultBtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa25cb...00bcb4` | ⚠️ Unaudited |
| OpynPerpVaultEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc10b7c...dcf4a5` | ⚠️ Unaudited |
| Oracle | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263438 | `0x043518...78e9b9` | ⚠️ Unaudited |
| OracleBondedKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8646c...c63762` | ⚠️ Unaudited |
| OriginMintExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x707e11...c810c0` | ⚠️ Unaudited |
| OSMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf6308...1ed0f1` | ⚠️ Unaudited |
| Ownership proxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263280 | `0x56af9c...76fafd` | ⚠️ Unaudited |
| OYfi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc1ba2...af9c22` | ⚠️ Unaudited |
| PairsHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1153f2...ce26da` | ⚠️ Unaudited |
| PartialKeep3rV1OracleJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5efd85...8ba696` | ⚠️ Unaudited |
| PawnBrokerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb58b3...116969` | ⚠️ Unaudited |
| PawnBrokerLooper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd362ef...db0986` | ⚠️ Unaudited |
| PermastakerOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3419b3...c955bf` | ⚠️ Unaudited |
| Permissionless yETH deposit/withdrawal facility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab7427...64ec9d` | ⚠️ Unaudited |
| PessimisticVelodromeLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x20cd9e...65b694` | ⚠️ Unaudited |
| PlatformFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1abe68...7744d1` | ⚠️ Unaudited |
| Pool governor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafdf1...e86656` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3051cc...603a4a` | ⚠️ Unaudited |
| PreDepositFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a51c...aa25bf` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x543a89...a884ed` | ⚠️ Unaudited |
| PriceFeedNoPrevious | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41e410...1d3e86` | ⚠️ Unaudited |
| PriceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e94fa...3be471` | ⚠️ Unaudited |
| PricesHelper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263288 | `0x5d63a8...ddc99b` | ⚠️ Unaudited |
| PrismaClaimOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2e98...1880ab` | ⚠️ Unaudited |
| PrismaCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d17ea...64ccf8` | ⚠️ Unaudited |
| PrismaPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b434...1fff61` | ⚠️ Unaudited |
| PrismaSnapshotMockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3030...0acc56` | ⚠️ Unaudited |
| PrismaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda4786...afd71c` | ⚠️ Unaudited |
| PrismaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06bdf2...7eb02c` | ⚠️ Unaudited |
| PropertiesAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f870c...55e995` | ⚠️ Unaudited |
| ProposalGuardian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc813f6...002e76` | ⚠️ Unaudited |
| Protocol Address Provider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263297 | `0x775f09...05653c` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242521...8ae64f` | ⚠️ Unaudited |
| PublicAllocatorTendExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb86c97...121d5d` | ⚠️ Unaudited |
| Receiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x642a16...89dc2c` | ⚠️ Unaudited |
| RefundAccountant | unknown | project_anchor | own_supporting | 0 | polygon | unit-263405 | `0x54483f...1d4cee` | ⚠️ Unaudited |
| RegisteryAdapterV2Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x071b84...c57186` | ⚠️ Unaudited |
| RegisteryAdapterV2Vaults | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263248 | `0x240315...2d1271` | ⚠️ Unaudited |
| Registry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263353 | `0xd40ecf...45b038` | ⚠️ Unaudited |
| RegistryAdapterIronBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21670d...b7cc62` | ⚠️ Unaudited |
| RegistryAdapterV2Vault | unknown | project_anchor | own_supporting | 0 | optimism | unit-263399 | `0xbcfca7...047690` | ⚠️ Unaudited |
| RegistryFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263261 | `0x3a0fa8...8816a1` | ⚠️ Unaudited |
| ReleaseRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263230 | `0x0377b4...5f7198` | ⚠️ Unaudited |
| RemappingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x282fb1...dec8aa` | ⚠️ Unaudited |
| Repay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52f28c...5d7117` | ⚠️ Unaudited |
| RescueStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb354d...be9d21` | ⚠️ Unaudited |
| RescueStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ecbb5...26b9a7` | ⚠️ Unaudited |
| ResupplyPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd210bc...e1e42b` | ⚠️ Unaudited |
| rETHDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e38f9...6e2cb2` | ⚠️ Unaudited |
| Revenue Price Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1f9b5...abae2e` | ⚠️ Unaudited |
| Revenue Recipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b5ab5...159587` | ⚠️ Unaudited |
| Reward Claimer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263323 | `0xa82454...b05e50` | ⚠️ Unaudited |
| Reward Distributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263351 | `0xd31911...ff5934` | ⚠️ Unaudited |
| RewardDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x922cf0...6c1096` | ⚠️ Unaudited |
| RewardsPuller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7e60d...6a1503` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073931...e8fe50` | ⚠️ Unaudited |
| RoleManager | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263445 | `0x3bf720...6685b1` | ⚠️ Unaudited |
| RoleManagerFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263344 | `0xca1245...e9e5ce` | ⚠️ Unaudited |
| RouterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7919a3...f2fa2a` | ⚠️ Unaudited |
| RouterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9084b5...906dce` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263480 | `0x90d0f2...886b51` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 1 | base | unit-263484 | `0x90d0f2...886b51` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263455 | `0x90d0f2...886b51` | ⚠️ Unaudited |
| SafetyRedundancy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdfea...fb3c40` | ⚠️ Unaudited |
| sdFPIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x334cb6...dbfac4` | ⚠️ Unaudited |
| SdLiquidityZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a3bd2...d7e24b` | ⚠️ Unaudited |
| SdtDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10a4a0...6cc2b6` | ⚠️ Unaudited |
| sdToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0879c1...122c66` | ⚠️ Unaudited |
| ShadowQueueAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f10af...63db90` | ⚠️ Unaudited |
| Sharer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a65e8...65b6b8` | ⚠️ Unaudited |
| SharerV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263255 | `0x2c641e...792f7d` | ⚠️ Unaudited |
| ShareValueHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0259e6...7671fa` | ⚠️ Unaudited |
| ShortOTokenActionWithSwapBtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a187...a3098d` | ⚠️ Unaudited |
| ShortOTokenActionWithSwapEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7946b9...7417e2` | ⚠️ Unaudited |
| Shutdown Module | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263365 | `0xe94628...5ba5fa` | ⚠️ Unaudited |
| Signer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d7cb...7081fc` | ⚠️ Unaudited |
| SimpleRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x276d33...353465` | ⚠️ Unaudited |
| SimpleTreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a6de4...b6b364` | ⚠️ Unaudited |
| SimpleVaultMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x056b0f...befe7b` | ⚠️ Unaudited |
| SingleSidedAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bfdd...bf4b8a` | ⚠️ Unaudited |
| SingleTokenRewardDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263241 | `0x1d02f6...2ad746` | ⚠️ Unaudited |
| SIUSDAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe51331...7336c3` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173f5f...9f3b27` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5268ba...b120a3` | ⚠️ Unaudited |
| Snapshot measure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d8ab0...ba915f` | ⚠️ Unaudited |
| Snapshot Splitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168b92...ada222` | ⚠️ Unaudited |
| Snapshot vote weight token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ba98...840804` | ⚠️ Unaudited |
| SortedTroves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bab3f...8bbb50` | ⚠️ Unaudited |
| Splitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34a045...76e526` | ⚠️ Unaudited |
| SpotOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eaeca...79fa51` | ⚠️ Unaudited |
| SpotOracleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcdaa...9ba14b` | ⚠️ Unaudited |
| SpotOracleAggregatorUltra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbf40c...eaa071` | ⚠️ Unaudited |
| StabilityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695350...6bb6ed` | ⚠️ Unaudited |
| StableAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0670e2...9eb4cd` | ⚠️ Unaudited |
| StableCreditHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404f9e...ca0acb` | ⚠️ Unaudited |
| StableCreditProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fe17...26f5f9` | ⚠️ Unaudited |
| StableYieldCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11980d...d834e7` | ⚠️ Unaudited |
| Staked YFI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263267 | `0x42b252...ecc016` | ⚠️ Unaudited |
| StakedyBoldOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64a7de...5a849f` | ⚠️ Unaudited |
| StakeNTroveZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x195115...3fdb83` | ⚠️ Unaudited |
| StakeZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f7633...8e2dfd` | ⚠️ Unaudited |
| Staking Middleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24b267...e00a86` | ⚠️ Unaudited |
| Staking Reward Distributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263316 | `0x95547e...da6113` | ⚠️ Unaudited |
| Staking rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe9c8a...e3b0d2` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x009c05...bf8dfe` | ⚠️ Unaudited |
| StakingRewardsMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b3d59...0a6a52` | ⚠️ Unaudited |
| StakingRewardsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8dac...c9d44f` | ⚠️ Unaudited |
| StakingRewardsZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37f350...1accdc` | ⚠️ Unaudited |
| Stash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe376e8...726c2e` | ⚠️ Unaudited |
| StaticCallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7ec4...1a6cb0` | ⚠️ Unaudited |
| StealthRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a61c2...60ee2a` | ⚠️ Unaudited |
| StealthVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc454f4...4ca45e` | ⚠️ Unaudited |
| StrategiesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11bba9...22dd91` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x001f75...0f71a2` | ⚠️ Unaudited |
| Strategy4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05d13f...c2bcb8` | ⚠️ Unaudited |
| StrategyAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d50ca...c4aed4` | ⚠️ Unaudited |
| StrategyAuraFactoryClonable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f00c2...fa18f4` | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5d9...f9e88b` | ⚠️ Unaudited |
| StrategyCreamCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacb5eb...fac2b7` | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40bd98...549afb` | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd643cf...d47ede` | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b354...11ab5c` | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x787c77...a64bd8` | ⚠️ Unaudited |
| StrategyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02754c...bcf6aa` | ⚠️ Unaudited |
| StrategyFedPartner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d110...f8b2dc` | ⚠️ Unaudited |
| StrategyLPConvert | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47499b...c5faf2` | ⚠️ Unaudited |
| StrategyLQTYStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478085...b5d4d6` | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e5a4...e083a5` | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31641a...69156f` | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442510...e0b81c` | ⚠️ Unaudited |
| StrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c20c...597c7a` | ⚠️ Unaudited |
| StrategyRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bd13c...72ad24` | ⚠️ Unaudited |
| StrategyRouterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa74967...4a01e3` | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2288c4...4ec989` | ⚠️ Unaudited |
| StrategystETHAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x740e59...124a97` | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cee4...ba817a` | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faca...20d8d6` | ⚠️ Unaudited |
| StrategyVelodromeFactoryClonable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x031533...c6d19b` | ⚠️ Unaudited |
| StrategyYearnBasic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7811bd...badf5c` | ⚠️ Unaudited |
| StrategyYffi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe197e...da0b73` | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395f93...88797c` | ⚠️ Unaudited |
| StrategyYfii | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de055...edfa70` | ⚠️ Unaudited |
| String | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x02ff74...1d3480` | ⚠️ Unaudited |
| Strings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f80a...3c4a93` | ⚠️ Unaudited |
| StringSplit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c0eee...ec52ff` | ⚠️ Unaudited |
| SturdyUSDCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af63d...c2102c` | ⚠️ Unaudited |
| SupplyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2eb91...41978f` | ⚠️ Unaudited |
| SUSDSExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a3bc2...4fc744` | ⚠️ Unaudited |
| SUSDSUSDTExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x328ee8...31df80` | ⚠️ Unaudited |
| SwapDebtForCollZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x114785...342a1a` | ⚠️ Unaudited |
| SwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d6c97...4e1981` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c73f6...d4695d` | ⚠️ Unaudited |
| SwapperV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e6ae7...6bf694` | ⚠️ Unaudited |
| SwapperV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1b2d...00f853` | ⚠️ Unaudited |
| SwapperV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b7e6f...9330a2` | ⚠️ Unaudited |
| SweeperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b3d9f...40ff26` | ⚠️ Unaudited |
| Synthetic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0485a4...e99b6c` | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa90d9...38ffdc` | ⚠️ Unaudited |
| SynthetixAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed4a4...f8c8be` | ⚠️ Unaudited |
| SynthetixExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0691cf...04c2cf` | ⚠️ Unaudited |
| SyrupDepositExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ac4ae...bcbd4f` | ⚠️ Unaudited |
| SyrupExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9409b...7bd0f0` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c42...51f14f` | ⚠️ Unaudited |
| Team | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa59b34...23bf43` | ⚠️ Unaudited |
| Team Accountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c2219...ffdfd6` | ⚠️ Unaudited |
| Team Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da431...372f29` | ⚠️ Unaudited |
| TendiesFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101dd6...e24a9f` | ⚠️ Unaudited |
| TendV2Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ef780...c57bc3` | ⚠️ Unaudited |
| Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x643a69...901e26` | ⚠️ Unaudited |
| TestGuestList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1403ee...2993ab` | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df934...60da0d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1994b5...929b81` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263308 | `0x88ba03...67bf73` | ⚠️ Unaudited |
| TimelockExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263376 | `0xf8f60b...a5779b` | ⚠️ Unaudited |
| TimelockGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026d4b...1dfb61` | ⚠️ Unaudited |
| TokenLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f7854...22829d` | ⚠️ Unaudited |
| TokenSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x223bb2...2a5d0b` | ⚠️ Unaudited |
| TokenVotingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076e29...fb9e20` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20...733ed4` | ⚠️ Unaudited |
| Treasury | unknown | project_anchor | own_supporting | 0 | base | unit-263466 | `0x02ff74...1d3480` | ⚠️ Unaudited |
| TreasuryVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263313 | `0x93a62d...a0efde` | ⚠️ Unaudited |
| Trigonometry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23e258...b3dae2` | ⚠️ Unaudited |
| TroveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a3b7...05f7a6` | ⚠️ Unaudited |
| TroveManagerGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4404ff...c9ae7a` | ⚠️ Unaudited |
| TrustedVaultMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1824df...72ab90` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b670...d1b987` | ⚠️ Unaudited |
| TvlAdapter_VAULT_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e4c80...0c47dc` | ⚠️ Unaudited |
| TvlAdapterEarn | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263234 | `0x1007ed...248691` | ⚠️ Unaudited |
| TvlAdapterIronBank | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263369 | `0xec7ac8...097f24` | ⚠️ Unaudited |
| TvlAdapterV1Vaults | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263370 | `0xf4fb89...4c6c78` | ⚠️ Unaudited |
| TvlAdapterV2Vaults | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263237 | `0x14d6e0...da8785` | ⚠️ Unaudited |
| TvlAdapterVeCrv | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263279 | `0x560144...a850e5` | ⚠️ Unaudited |
| TwapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aa349...24d013` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e37...7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0735a6...6f0e12` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02daef...057966` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2791bc...a84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2132d...b58e8f` | ⚠️ Unaudited |
| UniOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61da8b...61d136` | ⚠️ Unaudited |
| UniqueAddresses | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07da86...ecfabe` | ⚠️ Unaudited |
| UniqueAddressesHelper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263342 | `0xc3a0be...f9467c` | ⚠️ Unaudited |
| Unitroller | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263481 | `0xab1c34...144cbb` | ⚠️ Unaudited |
| Unwrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13dfeb...cadd85` | ⚠️ Unaudited |
| USDCToUSDS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d961...b71afe` | ⚠️ Unaudited |
| USDCToUSDS | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b88f1...c271ee` | ⚠️ Unaudited |
| USDSFarmerDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78c2c5...c765d1` | ⚠️ Unaudited |
| USDSFarmerUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e95f...230f8b` | ⚠️ Unaudited |
| V2Keeper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263295 | `0x736d7e...6cfccf` | ⚠️ Unaudited |
| V3Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x059b15...7a1ce5` | ⚠️ Unaudited |
| VaultKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x054a87...b03203` | ⚠️ Unaudited |
| VaultKeep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a479e...880c10` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x78f737...ae93e9` | ⚠️ Unaudited |
| VaultRoleManagerHandoff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2045cf...cd7e19` | ⚠️ Unaudited |
| VaultsRegistryHelper2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57ca31...cb70d8` | ⚠️ Unaudited |
| VaultSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf12eea...0e51b6` | ⚠️ Unaudited |
| VaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4c78b...dc4f7a` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626632...0e27de` | ⚠️ Unaudited |
| VelodromeGlobal | unknown | project_anchor | own_supporting | 0 | base | unit-263469 | `0x2d12ca...3cdff1` | ⚠️ Unaudited |
| VeSDTFeeAngleProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x059f78...fcd1ac` | ⚠️ Unaudited |
| Vesting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf5bf...db23ef` | ⚠️ Unaudited |
| Vesting Escrow for veYFI liquid lockers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x212559...fc9942` | ⚠️ Unaudited |
| Vesting Staker (1UP) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x298bc0...e6304f` | ⚠️ Unaudited |
| Vesting Staker (Cove) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc198fc...8fa691` | ⚠️ Unaudited |
| Vesting Staker (StakeDAO) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e3734...123a1d` | ⚠️ Unaudited |
| VestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f5981...a7f03c` | ⚠️ Unaudited |
| VeYfiPositionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a70cd...6ecbe8` | ⚠️ Unaudited |
| VirtualPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x125ca4...2af268` | ⚠️ Unaudited |
| Vote weight measure with delegation and decay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52574a...dba81d` | ⚠️ Unaudited |
| Voting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc55a39...3a3dcd` | ⚠️ Unaudited |
| Voting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13daff...7470a0` | ⚠️ Unaudited |
| Voting Escrow Reward Distributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263249 | `0x2548bf...9ee884` | ⚠️ Unaudited |
| VotingPowerCondition | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2321a7...0591b7` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1d...2499bf` | ⚠️ Unaudited |
| VulnerableTroveRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e07cf...7d0438` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263382 | `0x000000...fc4383` | ⚠️ Unaudited |
| Wallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d851...353d7f` | ⚠️ Unaudited |
| WeETHUnwindAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a0e05...6e9d12` | ⚠️ Unaudited |
| Weight aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6973cf...dfecd7` | ⚠️ Unaudited |
| Weight vote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25aea8...544a18` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f89...c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| WETHWstETHExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x706aa5...940c03` | ⚠️ Unaudited |
| WrappedYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017e71...231981` | ⚠️ Unaudited |
| WstETHUnwindAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33e472...71099b` | ⚠️ Unaudited |
| xVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0205ae...e419c5` | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ff2a...53b367` | ⚠️ Unaudited |
| yBAL Zap v1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccd31d...058bae` | ⚠️ Unaudited |
| YBC Bonus Recipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf03a91...039e4c` | ⚠️ Unaudited |
| YBC Membership Election | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16608...fb206c` | ⚠️ Unaudited |
| YBC Reward Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53100f...c8bbe1` | ⚠️ Unaudited |
| YBC Weight Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadb722...1468d9` | ⚠️ Unaudited |
| yBribe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03dfdb...7d3f6d` | ⚠️ Unaudited |
| YBSFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ea136...65ac4f` | ⚠️ Unaudited |
| YBSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x262be1...e9f738` | ⚠️ Unaudited |
| YBSRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbbf7d...af0bd5` | ⚠️ Unaudited |
| YBSUtilities | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263251 | `0x265c8d...619569` | ⚠️ Unaudited |
| YBSUtilsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210e69...41c6f0` | ⚠️ Unaudited |
| YBToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263228 | `0x01791f...c045ff` | ⚠️ Unaudited |
| yBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bc0a...bca9ae` | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dd02...e82a5d` | ⚠️ Unaudited |
| yCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170411...2a221c` | ⚠️ Unaudited |
| YCRV Zap v3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc899a...35a66a` | ⚠️ Unaudited |
| YCRV Zap v4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ec30e...b23839` | ⚠️ Unaudited |
| YCRVSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05fc81...d5e401` | ⚠️ Unaudited |
| ycUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0597ea...bc0f2c` | ⚠️ Unaudited |
| ycUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631d66...3931a4` | ⚠️ Unaudited |
| yDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16de59...f0bd01` | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ab71...a6bd33` | ⚠️ Unaudited |
| yDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x610258...a05f83` | ⚠️ Unaudited |
| yDelegatedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2088ba...b73d99` | ⚠️ Unaudited |
| yDiscount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11e475...feb958` | ⚠️ Unaudited |
| Yearn Builder Collective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6afd7...dcb315` | ⚠️ Unaudited |
| Yearn Token Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x061ea8...6d79e1` | ⚠️ Unaudited |
| Yearn V3 Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04aebe...48dd13` | ⚠️ Unaudited |
| Yearn Vault Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263256 | `0x310ac2...22bcac` | ⚠️ Unaudited |
| Yearn4626Router | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263479 | `0x1112db...4fd8de` | ⚠️ Unaudited |
| YearnAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b6543...c30ec3` | ⚠️ Unaudited |
| YearnBoostedStaker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263287 | `0x5d2ea3...0fad91` | ⚠️ Unaudited |
| YearnDaiCompStratV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c6e9d...5e2773` | ⚠️ Unaudited |
| YearnFamily2021 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d45da...c918e8` | ⚠️ Unaudited |
| YearnFeeRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb01419...91a701` | ⚠️ Unaudited |
| YearnGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22c582...d6beea` | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41303e...343eeb` | ⚠️ Unaudited |
| YearnOptionsV1Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a993e...d598f0` | ⚠️ Unaudited |
| YearnPartnerTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0f08e...62667c` | ⚠️ Unaudited |
| YearnRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0001fb...695c9f` | ⚠️ Unaudited |
| YearnV1EarnKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f4ab...13ec0c` | ⚠️ Unaudited |
| YearnV1EarnKeep3rV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8106d...faf709` | ⚠️ Unaudited |
| YearnV2Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02f82f...5b704a` | ⚠️ Unaudited |
| YearnWethCreamStratV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97785a...ef24f6` | ⚠️ Unaudited |
| yETH bootstrap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c80cf...b74098` | ⚠️ Unaudited |
| yETH delegated staking contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb5950...81e75c` | ⚠️ Unaudited |
| yETH deposit/withdrawal facility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95be65...a50be6` | ⚠️ Unaudited |
| yETH recovery claim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956485...ff3143` | ⚠️ Unaudited |
| yETH stake zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f052...d2db0e` | ⚠️ Unaudited |
| yETH staking contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263281 | `0x583019...04d0b4` | ⚠️ Unaudited |
| yETH strategy deposit/withdrawal facility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818a8e...7fc5e1` | ⚠️ Unaudited |
| yETH weighted stableswap pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca1bd...ba6822` | ⚠️ Unaudited |
| YFI Buyback Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4349ed...806df3` | ⚠️ Unaudited |
| YFI matching | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x572b06...eaaacc` | ⚠️ Unaudited |
| yInsure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181aea...d98f91` | ⚠️ Unaudited |
| yInsureView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2738...98340b` | ⚠️ Unaudited |
| YLiquidMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28b47d...ea001f` | ⚠️ Unaudited |
| YLiquidMarketAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76a56d...1f1075` | ⚠️ Unaudited |
| YLiquidRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f1c4...7ac258` | ⚠️ Unaudited |
| YLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5ebcc...307d31` | ⚠️ Unaudited |
| YlockerDrops | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8bda...a0215c` | ⚠️ Unaudited |
| YLockerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c992...ab53d9` | ⚠️ Unaudited |
| yLQTYBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c62d0...c18305` | ⚠️ Unaudited |
| yPRISMA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0618a9...c9f508` | ⚠️ Unaudited |
| yPRISMA Airdrop Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7038b...5d86c7` | ⚠️ Unaudited |
| yPRISMA Boost Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x147be7...a7e224` | ⚠️ Unaudited |
| yPRISMA Boost Minter V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bf2be...f166d1` | ⚠️ Unaudited |
| yPRISMA Forwarder Callback Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d0565...b0550f` | ⚠️ Unaudited |
| yPRISMA Legacy Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ecfd...934c28` | ⚠️ Unaudited |
| YPrismaFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d385b...232e4c` | ⚠️ Unaudited |
| YPrismaFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76df88...20ecdc` | ⚠️ Unaudited |
| YPrismaForwarderCallbackMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395749...0cf116` | ⚠️ Unaudited |
| YPrismaForwarderCallbackMinterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0c38...4d0bcd` | ⚠️ Unaudited |
| YRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263263 | `0x3ee41c...9d63a0` | ⚠️ Unaudited |
| ySUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36324b...d41380` | ⚠️ Unaudited |
| yTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5ad9...54203a` | ⚠️ Unaudited |
| yTokenRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b642...e9cc09` | ⚠️ Unaudited |
| yTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a052...a8190f` | ⚠️ Unaudited |
| YUnsafeOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1f5ae...707cbc` | ⚠️ Unaudited |
| yUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c068...af3aff` | ⚠️ Unaudited |
| yUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ea74...b21951` | ⚠️ Unaudited |
| yUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3118ee...b9aade` | ⚠️ Unaudited |
| yVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fcda6...367889` | ⚠️ Unaudited |
| yVaultCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bbe0f...a6d1ad` | ⚠️ Unaudited |
| yVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dea...f677b5` | ⚠️ Unaudited |
| YVEmpire | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8d98...8d2eaa` | ⚠️ Unaudited |
| yWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04aa51...787ec9` | ⚠️ Unaudited |
| yWrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881b06...025298` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x110421...f2a0bc` | ⚠️ Unaudited |
| ZapSteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15e540...257660` | ⚠️ Unaudited |
| ZapYvecrv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x277793...519a2c` | ⚠️ Unaudited |
| ZapYvecrvSusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85db61...f97fef` | ⚠️ Unaudited |
| ZapYvWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0bad...44d540` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (157)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-263229 | `0x01d7f3...c6a6b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263232 | `0x0844c2...316c2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263239 | `0x1ab624...e14467` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263244 | `0x1f6f16...15b648` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263250 | `0x254a93...e8ab19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263253 | `0x27b573...60349d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263254 | `0x28da6d...d0b4dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263257 | `0x310f5d...791e76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263258 | `0x333333...2797ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263260 | `0x38e3d8...b38bf4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263265 | `0x41b994...85c6bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263266 | `0x4218e2...1a20ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263269 | `0x444045...250ab0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-263270 | `0x453d92...2d83a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263271 | `0x46b385...028d5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263272 | `0x4707c8...f53b6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263273 | `0x50397c...213da3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263274 | `0x50c1a2...053804` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263276 | `0x52aa16...0135c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263277 | `0x5577ed...38eb5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263283 | `0x5943f7...a7ce4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263284 | `0x5a74cb...2cde69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263285 | `0x5a7cbc...6208ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263289 | `0x622fa4...2cfee3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263291 | `0x696d02...506987` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263292 | `0x6e9455...e160f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263294 | `0x71c322...1a9f3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263296 | `0x770d0d...7d812f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263298 | `0x78ada3...c69e3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263300 | `0x7cb5ab...47f1e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263301 | `0x7cf484...36d491` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263303 | `0x7fd8af...4c56a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263304 | `0x81d935...c24e59` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263305 | `0x83d95e...24b030` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263306 | `0x846e21...061cc9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263307 | `0x855ffe...41c402` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263309 | `0x88de7d...34f334` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263310 | `0x8e2485...f79859` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263311 | `0x90c1f9...588ad5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263317 | `0x957e3a...be26e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263318 | `0x979832...c52e37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263319 | `0x97a597...aa3624` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263321 | `0xa0b576...0a9d46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263322 | `0xa16f6f...58143b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263324 | `0xaaafea...6f9040` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263325 | `0xae8138...4cb789` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263327 | `0xaf1f5e...863319` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263328 | `0xb226c5...f16d3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263329 | `0xb287a1...1412fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263330 | `0xb3bd6b...6d9a41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263331 | `0xb61f8f...28f660` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263332 | `0xb70e1c...66ad55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263336 | `0xbb5127...70fed0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263337 | `0xbbbbbb...8c784d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263338 | `0xbe53a1...bf6204` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263339 | `0xbf319d...c8805f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263341 | `0xc32bd1...04c020` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-263343 | `0xc97232...a4037e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263345 | `0xca78af...3cdf3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263347 | `0xccd040...65bf81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263350 | `0xd192e7...49d6ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263352 | `0xd37791...5a139c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263354 | `0xd533a9...34cd52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263355 | `0xd57aea...ac7b15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263356 | `0xd80631...84b00d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263357 | `0xdc775e...018efa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263358 | `0xdd3fa8...557824` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263359 | `0xddcea7...7df012` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263360 | `0xde992c...ee6145` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263361 | `0xdfc8cd...4f4ff2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263362 | `0xe0514d...d437c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263363 | `0xe28fcc...15614d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263364 | `0xe5e2ba...e989c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263366 | `0xe9a115...fb873f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263367 | `0xe9cff1...372207` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263368 | `0xe9e8c8...1178e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263372 | `0xf64e58...385674` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263373 | `0xf719b2...24fa11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263377 | `0xfcc5c4...9ff65b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263378 | `0xfeb4ac...faff52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263379 | `0xff0bd2...1a793d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-263380 | `0xff31a1...eca3af` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1e9eb0...6b8671` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263386 | `0x3d8f58...c45296` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263388 | `0x776c1e...6ac602` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263389 | `0x79286d...c5c128` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263391 | `0x81291c...f005bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263392 | `0x827321...326fa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263393 | `0x84654e...cbf954` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263394 | `0x88ba03...67bf73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263395 | `0x8eb53a...9bff86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263397 | `0x94141d...e08f18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-263398 | `0xb082d9...71bf65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263400 | `0xd3a93c...aa0074` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263401 | `0xd63ab0...d0e032` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263402 | `0xea3a15...148b26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263403 | `0xf5d9d6...04b3a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263404 | `0xf8f60b...a5779b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263406 | `0x88ba03...67bf73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263407 | `0x9bcd66...1061e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263408 | `0xc4ad00...70b626` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263409 | `0xda5371...5260b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263410 | `0xf8f60b...a5779b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263415 | `0x001d0a...984518` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263416 | `0x0b53e9...a37128` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263417 | `0x116458...b34986` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263418 | `0x14785e...713914` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263419 | `0x29b0da...c0ec69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263420 | `0x44536d...8e9ee4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263421 | `0x560144...a850e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263422 | `0x57aa88...56c46a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263423 | `0x5ea7e5...a1dd25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263424 | `0x6b8de0...ba7f0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263425 | `0x727fe1...929b04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263426 | `0x72a34a...7c4a16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263428 | `0x7f462b...b77d73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263429 | `0x89716a...deb12a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263430 | `0x8cc45f...17ccc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263431 | `0x97d0be...8f6938` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263432 | `0xac5a9e...592b61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263433 | `0xc0e283...8f6767` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263434 | `0xe55dd5...657d74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263435 | `0xebaa0b...80d9ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263436 | `0xf13cd6...627fe0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263437 | `0xf628fb...2e3cd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263467 | `0x1e9eb0...6b8671` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263470 | `0x697bc6...eaccd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263471 | `0x827321...326fa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263472 | `0x88ba03...67bf73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263473 | `0x9eaf8c...3cb239` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263474 | `0xbfaaba...06b02e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263475 | `0xea3481...1fd456` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263476 | `0xf3885e...a78ec5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263477 | `0xf8f60b...a5779b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263478 | `0xfeae2f...1fe36f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263439 | `0x1deb47...2c08c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263440 | `0x1e9eb0...6b8671` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263441 | `0x2a139a...4e9449` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263442 | `0x319943...00eb1f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263446 | `0x57aa88...56c46a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263448 | `0x634628...655c0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263449 | `0x66a1a2...d35e0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263450 | `0x697bc6...eaccd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263451 | `0x7aad41...e9d25b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263452 | `0x84654e...cbf954` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263453 | `0x88ba03...67bf73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263454 | `0x8a5f08...d353bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263456 | `0x94734b...02efd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263457 | `0x9ab47b...27f366` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263458 | `0xb6bc03...8e56ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263459 | `0xcad100...558e9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263460 | `0xdf4326...495ccd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263461 | `0xe55dd5...657d74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263462 | `0xf5875d...acf44d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263463 | `0xf8f60b...a5779b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263464 | `0xfd99a1...056885` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://www.chainsecurity.com/security-audit/yearn-yeth-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 0 | low |
| [download report](https://reports.chainsecurity.com/Yearn/ChainSecurity_Yearn_YearnYETH_Audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 1 | high |
| [DL audit link](https://www.chainsecurity.com/security-audit/yearn-yeth-periphery) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [download report](https://reports.chainsecurity.com/Yearn/ChainSecurity_Yearn_YDiscount_Audit.pdf) | ChainSecurity | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [DL audit link](https://www.chainsecurity.com/security-audit/yearn-yeth-governance) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [download report](https://reports.chainsecurity.com/Yearn/ChainSecurity_Yearn_YETHGovernance_Audit.pdf) | ChainSecurity | Audit | 2023-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 10 | high |
| [Yearn Finance yETH-bootstrap Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Yearn%20Finance/yETH-bootstrap/Yearn%20Finance%20yETH-bootstrap%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2023-07 | stale | Direct | address | matched | 5 | 0 | 0 | 2 | high |
| [StrategyCurveYCRV.sol - HackMD.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202000_Mixed_yearn-finance/StrategyCurveYCRV.sol%20-%20HackMD.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [YearnV2_ our gotcha notes - HackMD.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202000_Mixed_yearn-finance/YearnV2_%20our%20gotcha%20notes%20-%20HackMD.pdf) | unknown | Audit | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 5 | medium |
| [Certik - itoken-finance-audit-report-1.1.0.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202002_Certik_itoken/Certik%20-%20itoken-finance-audit-report-1.1.0.pdf) | CertiK | Audit | 2020-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Quantstamp - Yearn.Finance Security Review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202007_Quantstamp_yearn-finance/Quantstamp%20-%20Yearn.Finance%20Security%20Review.pdf) | Quantstamp | Audit | 2020-07 | stale | Direct | address | matched | 1 | 0 | 0 | 5 | high |
| [MixBytes - Timeloans.Finance Smart Contract Security Audit Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202011_MixBytes_timeloans-finance/MixBytes%20-%20Timeloans.Finance%20Smart%20Contract%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202011_MixBytes_vaultsv1/MixBytes%20-%20Yearn.Finance%20protocol%20v.1%20Smart%20Contracts%20Audit%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Solidity_part.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yearn-vaults/MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Solidity_part.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yearn-vaults/MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yoracle-link/MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202101_Peckshield_yearn-strategies/PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_coverv2/Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [202102_MixBytes_sushiswap-bentobox.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_sushiswap-bentobox/202102_MixBytes_sushiswap-bentobox.pdf) | MixBytes | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_yearn-generic-lender/MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [PeckShield_Audit_Report_CoverForge_v1.0.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_Peckshield_cover-forge/PeckShield_Audit_Report_CoverForge_v1.0.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202103_MixBytes_yearn-ypool-3pool/MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202103_MixBytes_yearn-ypool-3pool/MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [MixBytes_-_Curve_Voter_Proxy_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210423_MixBytes_yearn_curve_voter_proxy/MixBytes_-_Curve_Voter_Proxy_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210428_MixBytes_yearn_generic_lender_aave/MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202104_MixBytes_yearn-v3-wrapper/MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [MixBytes_-_Yearn_Yvboost_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202104_MixBytes_yearn-yvboost/MixBytes_-_Yearn_Yvboost_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MixBytes_-_Yearn_Strategies_SNX_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210526_MixBytes_yearn_strategies_snx/MixBytes_-_Yearn_Strategies_SNX_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MixBytes_-_Yearn_Liquity_stability_pool_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210616_MixBytes_yearn_liquity_stabily_pool/MixBytes_-_Yearn_Liquity_stability_pool_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210719_ToB_yearn_vaultsv2/ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf) | Trail of Bits | Audit | 2021-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20211019_MixBytes_yearn_maker_dai_delegate/MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220123_ChainSecurity_yearn_partner_tracker/ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf) | ChainSecurity | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Mixbytes_-_Yearn_Strategy_SSB_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220123_Mixbytes_yearn_strategy_ssb/Mixbytes_-_Yearn_Strategy_SSB_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Optimum_-_Yearn_Tokemak_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202202_Optimum_Tokemak/Optimum_-_Yearn_Tokemak_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220409_Mixbytes_Yearn_Joint_Strategy/Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf) | MixBytes | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220409_Mixbytes_Yearn_Yswaps/Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf) | MixBytes | Audit | 2022-02 | stale | Direct | address | no match | 0 | 0 | 0 | 20 | high |
| [Optimum_-_Notional_Finance_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220409_Optimum_Notional_Finance_Strategy/Optimum_-_Notional_Finance_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Dedaub_-_Angle.md](https://github.com/yearn/yearn-security/blob/master/audits/202204_Dedaub_Angle/Dedaub_-_Angle.md) | Dedaub | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Dedaub_-_Stargate.md](https://github.com/yearn/yearn-security/blob/master/audits/202204_Dedaub_Stargate/Dedaub_-_Stargate.md) | Dedaub | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220511_Optimum_Gen_lev_lending_Strategy/Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Optimum_-_Stargate_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220528_Stargate_Strategy/Optimum_-_Stargate_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220528_Stargate_Strategy/Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202206_Decurity_yearn_nohedge_joint/Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf) | Decurity | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202206_Optimum_Notional_LP/Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Optimum_-_Angle_Protocol_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202207_Optimum_Angle/Optimum_-_Angle_Protocol_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Statemind_-_Yearn_veyfi_Audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202207_Statemind_yearn-veyfi/Statemind_-_Yearn_veyfi_Audit.pdf) | Statemind | Audit | 2022-07 | stale | Direct | address | matched | 2 | 0 | 0 | 0 | high |
| [202208_Statemind_Tarot_Impermax.md](https://github.com/yearn/yearn-security/blob/master/audits/202208_Statemind_Tarot_Impermax/202208_Statemind_Tarot_Impermax.md) | Statemind | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [yAcademy_-_LevGeist_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_LevGeist_review.pdf) | yAcademy | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [yAcademy_-_Yearn_BalancerLpFactory_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_Yearn_BalancerLpFactory_review.pdf) | yAcademy | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [yAcademy_-_joint_strategy_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_joint_strategy_review.pdf) | yAcademy | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [yAcademy_-_yearn_veyfi_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_yearn-veyfi/yAcademy_-_yearn_veyfi_review.pdf) | yAcademy | Audit | 2022-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [ChainSecurity_Yearn_Serpentor_audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202209_ChainSecurity_yearn-serpentor/ChainSecurity_Yearn_Serpentor_audit.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202209_ChainSecurity_yearn-yCRV-and-ZapYCRV/ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202211_ChainSecurity_yearn-veYFI_and_RewardPool/ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf) | ChainSecurity | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ChainSecurity_Yearn_Yearn_yETH_audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20230626_ChainSecurity_yeth_core/ChainSecurity_Yearn_Yearn_yETH_audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 1 | high |
| [Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20230711_MixBytes_yeth-bootstrap/Yearn%20Finance%20yETH-bootstrap%20Security%20Audit%20Report%20-%20Mixbytes.pdf) | yAudit | Audit | 2023-07 | stale | Direct | address | matched | 5 | 0 | 0 | 2 | high |
| [ChainSecurity_Yearn_yETH_Periphery_audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20230829_ChainSecurity_yeth_periphery/ChainSecurity_Yearn_yETH_Periphery_audit.pdf) | ChainSecurity | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20231013_Mixbytes_yearn_vesting_escrow/Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf) | MixBytes | Audit | 2023-10 | stale | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [Yearn V3 report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20240502_Statemind_Yearn_V3/Yearn%20V3%20report.pdf) | Statemind | Audit | 2024-03 | stale | Direct | address | matched | 3 | 0 | 0 | 1 | high |
| [Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20240504_ChainSecurity_Yearn_V3/Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf) | ChainSecurity | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20240504_ChainSecurity_Yearn_V3/Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf) | ChainSecurity | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20240601_YAcademy_Yearn_V3/06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf) | YAcademy | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [yearn-vaults-v3](https://github.com/yearn/yearn-vaults-v3) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | low |
| [2020-09-25.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2020-09-25.md) | unknown | Audit | 2020-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2020-10-10.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2020-10-10.md) | unknown | Audit | 2020-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2020-10-30.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2020-10-30.md) | unknown | Audit | 2020-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2021-01-17.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-01-17.md) | unknown | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2021-02-04.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-02-04.md) | unknown | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2021-02-18.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-02-18.md) | unknown | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2021-04-02.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-04-02.md) | unknown | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [2021-05-13.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-05-13.md) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [2021-05-14.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-05-14.md) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [2021-05-20.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-05-20.md) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [2021-06-29.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-06-29.md) | unknown | Audit | 2021-06 | stale | Direct | address | no match | 0 | 0 | 0 | 5 | medium |
| [2021-10-27.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-10-27.md) | unknown | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2022-01-30.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2022-01-30.md) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [2022-09-06.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2022-09-06.md) | unknown | Audit | 2022-09 | stale | Direct | address | no match | 0 | 0 | 0 | 2 | medium |
| [2022-11-01.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2022-11-01.md) | unknown | Audit | 2022-11 | stale | Direct | address | no match | 0 | 0 | 0 | 3 | high |
| [2022-11-07.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2022-11-07.md) | unknown | Audit | 2022-11 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | medium |
| [2023-03-13.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-03-13.md) | unknown | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2023-04-04.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-04-04.md) | unknown | Audit | 2023-04 | stale | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [2023-05-21.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-05-21.md) | unknown | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [2023-06-13.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-06-13.md) | unknown | Audit | 2023-06 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | medium |
| [2023-12-11.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-12-11.md) | unknown | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-01-03.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2024-01-03.md) | unknown | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-05-08.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2025-05-08.md) | unknown | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-08-13.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2025-08-13.md) | unknown | Audit | 2025-08 | fresh | Direct | address | no match | 0 | 0 | 0 | 4 | medium |
| [2025-11-26.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2025-11-26.md) | unknown | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-12-01.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2025-12-01.md) | unknown | Audit | 2025-12 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18629] DL audit link — matched: The report does not contain a clear scope section or file listing. Only one contract name ('Staking') is explicitly mentioned as part of the audited system. The pool token yETH is not a contract name but a token. No date found.
- [18630] download report — matched: Scope explicitly lists Pool.vy and Staking.vy; Token.vy is referenced as the yETH token contract.
- [18631] DL audit link — no match: No contracts in scope were explicitly listed in the provided text.
- [18632] download report — no match: Only one contract in scope: Discount.vy. Audit date from cover page.
- [18633] DL audit link — no match: Only one contract name (InclusionVote) was explicitly mentioned in the context of an issue. No scope section or file listing was found. The report mentions 'yETH governance' and 'st-yETH holders' but these are not contract names.
- [18634] download report — matched: All contracts listed in the scope table under section 2.1 Scope. Audit date from cover page.
- [18635] Yearn Finance yETH-bootstrap Security Audit Report.pdf — matched: Scope table lists 7 Vyper files with mainnet addresses. Audit date from cover page.
- [18636] StrategyCurveYCRV.sol - HackMD.pdf — no match: Only one contract name found in the report text, no explicit scope section or date.
- [18637] YearnV2_ our gotcha notes - HackMD.pdf — no match: The document is an informal analysis, not a formal audit report. No explicit scope section or date found. Contract names extracted from references and discussion.
- [18638] Certik - itoken-finance-audit-report-1.1.0.pdf — no match: Only one contract (yDAI) is explicitly in scope; providers are excluded.
- [18639] Quantstamp - Yearn.Finance Security Review.pdf — matched: Extracted contracts from scope descriptions and findings sections. Multiple instances of YearnRewards with different addresses.
- [18640] MixBytes - Timeloans.Finance Smart Contract Security Audit Report.pdf — no match: Only one contract, TimeLoans, is explicitly in scope. Date from cover page.
- [18641] MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf — no match: Extracted from scope section and findings; includes contracts from yearn-protocol and yinsure gist.
- [18642] MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Solidity_part.pdf — no match: Only one contract in scope: BaseStrategy.sol
- [18643] MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf — no match: Only one contract (Vault.vy) is in scope. The audit date is from the cover page.
- [18644] MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf — no match: Two contracts explicitly listed in FILES LISTING and referenced in all findings.
- [18645] PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf — no match: The audit report explicitly states the target as 'Hegic Strategies' and lists four strategies: StrategyHegicETH, StrategyHegicWBTC, StrategyEthHegicLP, StrategyWbtcHegicLP. Additionally, BaseStrategy and Strategy (from another repo) are referenced in findings. The audit date is clearly stated on the cover page and in the document properties.
- [18646] Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf — no match: All contracts listed in the FILES LISTING section are in scope.
- [18647] 202102_MixBytes_sushiswap-bentobox.pdf — no match: Extracted from the 'FILES LISTING' section and findings references.
- [18648] MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf — no match: All contracts listed in FILES LISTING section and referenced in findings are in scope.
- [18649] PeckShield_Audit_Report_CoverForge_v1.0.pdf — no match: No explicit scope table; contracts inferred from findings targets and protocol description.
- [18650] MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf — no match: Three strategy contracts for DAI, USDC, USDT tokens were audited.
- [18651] MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf — no match: Four strategy contracts for DAI, USDC, USDT, TUSD tokens are in scope.
- [18652] MixBytes_-_Curve_Voter_Proxy_Security_Audit_Report.pdf — no match: Only one contract, Strategy.sol, is in scope. Audit date from title page.
- [18653] MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf — no match: Only one contract in scope: GenericAave.sol. Audit date from cover page.
- [18654] MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf — matched: Contracts in scope: BaseWrapper.sol, Registry.vy, yToken.sol. Audit date from cover page.
- [18655] MixBytes_-_Yearn_Yvboost_Contracts_Audit_Report.pdf — no match: Only one contract, Strategy.sol, is in scope. Audit date from cover page.
- [18656] MixBytes_-_Yearn_Strategies_SNX_Contracts_Audit_Report.pdf — no match: Only one contract file Strategy.sol is in scope.
- [18657] MixBytes_-_Yearn_Liquity_stability_pool_Security_Audit_Report.pdf — no match: Only one contract, Strategy.sol, is in scope. Audit date from cover page.
- [18658] ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf — matched: Extracted from the Coverage section and the report header. The audit date is from the cover page: 'April 30, 2021'.
- [18659] MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf — no match: All contracts listed in the FILES LISTING section are in scope.
- [18660] ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf — no match: The report does not explicitly name the contract file or contract name. The contract is referred to as 'Partner Tracker' throughout. The date is clearly stated on the cover page: '18 January, 2022'.
- [18661] Mixbytes_-_Yearn_Strategy_SSB_Security_Audit_Report.pdf — no match: Only one contract, Strategy.sol, is in scope. Audit date from cover page.
- [18662] Optimum_-_Yearn_Tokemak_Strategy_Security_Assessment.pdf — no match: Only one contract in scope: Strategy.sol. Audit date inferred from 'February, 2022' on cover page.
- [18663] Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf — no match: All five contracts listed in the FILES LISTING section are in scope.
- [18664] Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf — no match: Extracted contract names from scope table and deployed addresses. Audit date from timeline: 10.01.2022-28.02.2022, used end date.
- [18665] Optimum_-_Notional_Finance_Strategy_Security_Assessment.pdf — no match: Only one contract in scope: Strategy.sol. Audit date is March 2022, mapped to last day of month.
- [18666] Dedaub_-_Angle.md — no match: The provided text is a list of findings and observations, not a full audit report. No scope section or contract names are explicitly mentioned.
- [18667] Dedaub_-_Stargate.md — no match: The provided text is a list of findings and questions, not a full audit report. No scope section or contract names are identifiable.
- [18668] Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf — no match: Contracts assessed table lists three contracts with file paths. Audit date is April 2022, interpreted as last day of month.
- [18669] Optimum_-_Stargate_Strategy_Security_Assessment.pdf — no match: Only one contract in scope: Strategy.sol. Audit date inferred from 'May, 2022' on cover page.
- [18670] Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf — no match: Only one contract in scope: StrategyFraxUniswapUSDC. Audit date inferred from 'May, 2022' in header.
- [18671] Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf — no match: Extracted contracts from scope section, role model tables, and findings. Audit period: 07/04/2022 to 07/17/2022, so end date used.
- [18672] Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf — no match: Contracts assessed table lists two contracts: Strategy and NotionalLpLib. Audit date is June 2022, interpreted as last day of month.
- [18673] Optimum_-_Angle_Protocol_Strategy_Security_Assessment.pdf — no match: Only one contract (Strategy.sol) is explicitly listed in the scope table. The report mentions Angle Protocol as a trusted system but not as an audited contract.
- [18674] Statemind_-_Yearn_veyfi_Audit.pdf — matched: Scope explicitly lists VotingYFI.vy and RewardPool.vy. Audit date from title: 04-07-2022 - 08-07-2022, using end date.
- [18675] 202208_Statemind_Tarot_Impermax.md — no match: Only one contract in scope: StrategyImperamaxLender. Audit date inferred from timeline '02-08-2022'.
- [18676] yAcademy_-_LevGeist_review.pdf — no match: Scope mentions 'contracts directory' and findings reference Strategy.sol and BaseStrategy.sol. Audit date inferred from review period ending 6/24.
- [18677] yAcademy_-_Yearn_BalancerLpFactory_review.pdf — no match: Audit report for Yearn BalancerLpFactory. Scope includes BalancerGlobal and StrategyConvexFactoryClonable. VaultRegistry is mentioned in out-of-scope finding but not in scope. Audit date inferred from review period June 29 to July 12, 2021.
- [18678] yAcademy_-_joint_strategy_review.pdf — no match: Extracted contract names from the Scope section and findings. Audit date inferred from 'code review was performed between April 19 and May 23, 2022'.
- [18679] yAcademy_-_yearn_veyfi_review.pdf — matched: Extracted contracts from scope description and findings. Audit date derived from review period end date (April 16, 2022).
- [18680] ChainSecurity_Yearn_Serpentor_audit.pdf — no match: Two contracts in scope: SerpentorBravo and Timelock. Audit date from cover page.
- [18681] ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf — no match: Two contracts in scope: yCRV and ZapYCRV. Audit date from cover page.
- [18682] ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf — no match: Two contracts in scope: VotingYFI.vy and RewardPool.vy. Audit date from cover page: November 22, 2022.
- [18683] ChainSecurity_Yearn_Yearn_yETH_audit.pdf — matched: Scope explicitly lists Pool.vy and Staking.vy. Token.vy is referenced as the yETH token implementation.
- [18684] Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf — matched: Scope table lists 7 Vyper files with mainnet addresses. Audit date from cover page.
- [18685] ChainSecurity_Yearn_yETH_Periphery_audit.pdf — no match: Scope explicitly states 'contracts in the contracts/providers directory' and system overview describes six rate provider contracts for Frax, Lido, Stader, StaFi, Swell, and Tranchess.
- [18686] Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf — no match: Two Vyper contracts in scope: VestingEscrowSimple and VestingEscrowFactory. Audit date from cover page.
- [18687] Yearn V3 report.pdf — matched: Scope section explicitly lists BaseStrategy.sol, TokenizedStrategy.sol, VaultFactory.vy, VaultV3.vy. Audit date range is 05-02-2024 to 01-03-2024, using end date.
- [18688] Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf — no match: Two contracts in scope: BaseTokenizedStrategy and TokenizedStrategy. Audit date from cover page.
- [18689] Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf — no match: Scope explicitly lists two Vyper contracts: VaultFactory.vy and VaultV3.vy. Audit date is May 4, 2023 from the cover page.
- [18690] 06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf — no match: Scope explicitly lists four contracts from two repositories: VaultFactory.vy, VaultV3.vy, BaseTokenizedStrategy.sol, TokenizedStrategy.sol. Audit date is end of review period (July 3-28, 2023).
- [18691] yearn-vaults-v3 — no match: The provided text is a GitHub repository README, not an audit report. No audit scope or date is present. Only two contracts are mentioned in the description.
- [18692] 2020-09-25.md — no match: This is a vulnerability disclosure post, not an audit report. No contracts in scope are listed.
- [18693] 2020-10-10.md — no match: This is a vulnerability disclosure, not a formal audit report. No scope section or list of audited contracts is present. The contracts mentioned (StrategyProxy, CurveYCRVVoter, EvilGauge) are discussed in the context of a vulnerability, not as audited targets.
- [18694] 2020-10-30.md — no match: This is a vulnerability disclosure report, not a formal audit. No explicit scope section or list of audited contracts. Mentioned contracts (TUSD vault, DAI vault, GUSD vault, Curve strategy) are referenced in context of vulnerability, not as audit targets.
- [18695] 2021-01-17.md — no match: This is an incident disclosure, not an audit report. No audit scope is defined.
- [18696] 2021-02-04.md — no match: This is a vulnerability disclosure, not an audit report. No contracts in scope are listed.
- [18697] 2021-02-18.md — no match: This is an incident disclosure report, not an audit report. No audit scope or contracts in scope are defined.
- [18698] 2021-04-02.md — no match: This is an incident disclosure, not a formal audit report. Contract names extracted from the summary and background sections. No explicit scope section.
- [18699] 2021-05-13.md — no match: This is an incident disclosure, not a formal audit report. Extracted contract names from the narrative and references.
- [18700] 2021-05-14.md — no match: This is an incident disclosure, not an audit report. Only one contract name is explicitly mentioned.
- [18701] 2021-05-20.md — no match: This is an incident disclosure, not a formal audit report. Only one contract name is explicitly mentioned as the subject of the incident.
- [18702] 2021-06-29.md — no match: This is a vulnerability disclosure report, not a formal audit. Contracts are identified from the report text and references.
- [18703] 2021-10-27.md — no match: This is an incident disclosure report, not an audit report. No contracts are listed as in scope for an audit.
- [18704] 2022-01-30.md — no match: This is a vulnerability disclosure report, not a formal audit. No explicit scope section or contract file paths are provided. Only the strategy name 'SingleSidedBalancer' is identified as the subject of the disclosure.
- [18705] 2022-09-06.md — no match: The report is a security advisory, not a formal audit. It mentions WOOFY token and Yearn vaults (Vault.vy) as affected. No explicit scope section.
- [18706] 2022-11-01.md — no match: Report is a vulnerability disclosure; scope is BribeV2 and its replacement BribeV3 (yBribe).
- [18707] 2022-11-07.md — no match: This is an incident disclosure, not a formal audit report. Only one contract name is explicitly mentioned as being in scope of the incident.
- [18708] 2023-03-13.md — no match: This is an incident disclosure post-mortem, not an audit report. No contracts are listed as being in scope for an audit.
- [18709] 2023-04-04.md — no match: Report is an incident disclosure, not a formal audit. Contracts mentioned are the two strategies impacted by the bug.
- [18710] 2023-05-21.md — no match: This is an incident disclosure, not an audit report. Only one contract name (StakingRewardsZap) is explicitly mentioned as the affected contract. No audit date or scope section found.
- [18711] 2023-06-13.md — no match: This is an incident disclosure report, not a formal audit. Only one contract (StealthSafeGuard) is explicitly named as the subject of the incident. No scope section or file paths are present.
- [18712] 2023-12-11.md — no match: This is an incident disclosure, not an audit report. No contracts in scope.
- [18713] 2024-01-03.md — no match: This is an incident disclosure report, not an audit report. No contracts in scope are listed.
- [18714] 2025-05-08.md — no match: This is an incident disclosure report, not an audit report. No audit scope or contract names to extract.
- [18715] 2025-08-13.md — no match: Report is an incident post-mortem, not a formal audit. Contracts mentioned as part of the vulnerability and fix are extracted.
- [18716] 2025-11-26.md — no match: The document is an incident post-mortem, not an audit report. No audit scope or contract names to extract.
- [18717] 2025-12-01.md — no match: This is an incident disclosure report, not an audit report. It describes an exploit of the yETH protocol but does not list contracts in scope for an audit. No audit scope section or contract names to extract.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | Staking | own contract | Staking (selected) `0xcb7dce...5777ee` — deployed 2024-04-12 17:58:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| download report | Pool | own contract | 0xccd040… (selected) `0xccd040...65bf81` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| download report | Staking | own contract | Staking (selected) `0xcb7dce...5777ee` — deployed 2024-04-12 17:58:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| download report | Token | unmatched — not counted | — | Mentioned in trust model: 'the LP token in Pool and the asset in Staking is yETH (as implemented in Token.vy)' | no |
| download report | Discount | unmatched — not counted | — | The only file in scope is Discount.vy. | no |
| DL audit link | InclusionVote | unmatched — not counted | — | mentioned as the contract with the critical issue 'Blank Votes Not Counted' | no |
| download report | DelegateMeasure | unmatched — not counted | — | listed in scope table | no |
| download report | Executor | own contract | Executor (selected) `0x71258e...8c2bf1` — deployed 2024-02-14 15:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| download report | GenericGovernor | unmatched — not counted | — | listed in scope table | no |
| download report | InclusionIncentives | unmatched — not counted | — | listed in scope table | no |
| download report | InclusionVote | unmatched — not counted | — | listed in scope table | no |
| download report | LaunchMeasure | unmatched — not counted | — | listed in scope table | no |
| download report | OwnershipProxy | unmatched — not counted | — | listed in scope table | no |
| download report | PoolGovernor | unmatched — not counted | — | listed in scope table | no |
| download report | SnapshotToken | unmatched — not counted | — | listed in scope table | no |
| download report | WeightIncentives | unmatched — not counted | — | listed in scope table | no |
| download report | WeightVote | unmatched — not counted | — | listed in scope table | no |
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | Bootstrap.vy | own contract | 0x41b994… (selected) `0x41b994...85c6bf` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | MerkleIncentives.vy | own contract | Incentives for Snapshot votes (selected) `0xae9de8...0a5179` — deployed 2023-07-06 15:09:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | POL.vy | own contract | Protocol Owned Liquidity (selected) `0x929401...b04478` — deployed 2023-06-30 14:27:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | Token.vy | own contract | yETH token (selected) `0x1bed97...6131f7` — deployed 2023-06-29 11:46:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | CurveLP.vy | unmatched — not counted | — | listed in scope table | no |
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | Shutdown.vy | unmatched — not counted | — | listed in scope table | no |
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | Stake.vy | own contract | Staking Module (selected) `0x27a2fc...78ac52` — deployed 2023-07-06 14:52:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| StrategyCurveYCRV.sol - HackMD.pdf | StrategyCurveYCRV | unmatched — not counted | — | listed in scope | no |
| YearnV2_ our gotcha notes - HackMD.pdf | yVault | unmatched — not counted | — | mentioned as yVault yCRV contract on Etherscan | no |
| YearnV2_ our gotcha notes - HackMD.pdf | Controller | unmatched — not counted | — | mentioned as Controller contract on Etherscan | no |
| YearnV2_ our gotcha notes - HackMD.pdf | Strategy | unmatched — not counted | — | — | no |
| YearnV2_ our gotcha notes - HackMD.pdf | StrategyYfii | unmatched — not counted | — | mentioned as Yfii strategy contract on Etherscan | no |
| YearnV2_ our gotcha notes - HackMD.pdf | StrategyYffi | unmatched — not counted | — | mentioned as Yffi strategy contract on Etherscan | no |
| Certik - itoken-finance-audit-report-1.1.0.pdf | yDAI | unmatched — not counted | — | Scope of work: the contract yDAI with its full Solidity inheritance chain and all libraries. | no |
| Quantstamp - Yearn.Finance Security Review.pdf | YearnRewards | unmatched — not counted | — | listed in scope | no |
| Quantstamp - Yearn.Finance Security Review.pdf | YearnGovernance | unmatched — not counted | — | listed in scope as 3rd pool | no |
| Quantstamp - Yearn.Finance Security Review.pdf | YearnFeeRewards | unmatched — not counted | — | listed in scope as 4th pool | no |
| Quantstamp - Yearn.Finance Security Review.pdf | YFI | own contract | YFI (selected) `0x0bc529...6ad93e` — deployed 2020-07-17 11:01:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp - Yearn.Finance Security Review.pdf | TimelockGovernance | unmatched — not counted | — | listed in scope | no |
| Quantstamp - Yearn.Finance Security Review.pdf | APR oracle | unmatched — not counted | — | listed in scope | no |
| MixBytes - Timeloans.Finance Smart Contract Security Audit Report.pdf | TimeLoans | unmatched — not counted | — | Scope section: 'The scope of the audit includes following smart contract at: from TimeLoans.sol#L547 and TimeLoans.sol#L848.' | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | Controller | unmatched — not counted | — | mentioned in findings and scope | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | Strategy | unmatched — not counted | — | interface referenced in Controller | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | yDelegatedVault | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | StrategyMKRVaultDAIDelegate | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | StrategyDForceUSDC | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | StrategyCreamYFI | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | StrategyCurveSBTC | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | StrategyCurveYBUSD | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | StrategyCurveYCRVVoter | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | StrategyDForceUSDT | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | yVault | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | yWETH | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | Distributor | unmatched — not counted | — | mentioned in appendix as main contract | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | NexusMutualCover | unmatched — not counted | — | mentioned in appendix as library | no |
| MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Solidity_part.pdf | BaseStrategy | unmatched — not counted | — | listed in scope section | no |
| MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf | Vault | unmatched — not counted | — | listed in scope section | no |
| MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf | Keep3rV1Oracle | unmatched — not counted | — | Listed in FILES LISTING and throughout findings | no |
| MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf | Keep3rV1Volatility | unmatched — not counted | — | Listed in FILES LISTING and throughout findings | no |
| PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf | StrategyHegicETH | unmatched — not counted | — | Listed in findings and scope description as one of the four Hegic strategies. | no |
| PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf | StrategyHegicWBTC | unmatched — not counted | — | Listed in findings and scope description as one of the four Hegic strategies. | no |
| PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf | StrategyEthHegicLP | unmatched — not counted | — | Listed in findings and scope description as one of the four Hegic strategies. | no |
| PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf | StrategyWbtcHegicLP | unmatched — not counted | — | Listed in findings and scope description as one of the four Hegic strategies. | no |
| PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf | BaseStrategy | unmatched — not counted | — | Referenced as the base contract inherited by strategies. | no |
| PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf | Strategy | unmatched — not counted | — | Referenced in findings PVE-008 and PVE-009 as a contract in the YearnV2-Generic-Lev-Comp-Farm repository. | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | Cover | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | CoverPool | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | CoverPoolFactory | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | CoverERC20 | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | ClaimManagement | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | ClaimConfig | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | BasicProxyLib | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | StringHelper | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | EIP712 | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | ERC20Permit | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | Address | ambiguous — not counted | 0xe5e2ba… (alternative) `0xe5e2ba...e989c0` — liveness: live (current_address_book_code)<br>0x29b0da… (alternative) `0x29b0da...c0ec69` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | Initializable | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | Create2 | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | BaseUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | BaseAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | InitializableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | BentoBox | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | LendingPair | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | SushiSwapSwapper | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | PeggedOracle | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | CompositeOracle | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | SimpleSLPTWAP0Oracle | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | CompoundOracle | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | SimpleSLPTWAP1Oracle | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | BoringMath | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | BentoHelper | unmatched — not counted | — | mentioned in findings | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | ISwapper | unmatched — not counted | — | mentioned in findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | AlphaHomoLender | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | EthCompound | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | EthCream | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | GenericCompound | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | GenericCream | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | GenericDyDx | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | GenericLenderBase | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | IGenericLender | unmatched — not counted | — | listed in scope and findings | no |
| PeckShield_Audit_Report_CoverForge_v1.0.pdf | CoverFeeReceiver | unmatched — not counted | — | Target in findings PVE-001, PVE-003, PVE-004 | no |
| PeckShield_Audit_Report_CoverForge_v1.0.pdf | CoverForge | unmatched — not counted | — | Target in finding PVE-002; main contract of the protocol | no |
| MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf | StrategyDAI | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf | StrategyUSDC | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf | StrategyUSDT | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf | StrategyDAIypool | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf | StrategyTUSDypool | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf | StrategyUSDCypool | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf | StrategyUSDTypool | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Curve_Voter_Proxy_Security_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf | GenericAave | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf | BaseWrapper | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf | Registry | ambiguous — not counted | Registry (alternative) `0xd40ecf...45b038` — deployed 2024-11-13 09:17:23+03 — liveness: live (current_address_book_code)<br>0x727fe1… (alternative) `0x727fe1...929b04` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf | yToken | own contract | YToken (selected) `0x222222...9479d6` — deployed 2025-12-17 04:31:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| MixBytes_-_Yearn_Yvboost_Contracts_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Strategies_SNX_Contracts_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Liquity_stability_pool_Security_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope and findings | no |
| ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf | yToken | own contract | YToken (selected) `0x222222...9479d6` — deployed 2025-12-17 04:31:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf | AffiliateToken | unmatched — not counted | — | listed in scope | no |
| ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf | BaseWrapper | unmatched — not counted | — | listed in scope | no |
| ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf | Registry | ambiguous — not counted | Registry (alternative) `0xd40ecf...45b038` — deployed 2024-11-13 09:17:23+03 — liveness: live (current_address_book_code)<br>0x727fe1… (alternative) `0x727fe1...929b04` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | MakerDaiDelegateCloner | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | TestStrategy | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | MakerDaiDelegateLib | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | AggregatorInterface | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | IMaker | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | ISwap | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | IOSMedianizer | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf | PartnerTracker | unmatched — not counted | — | The report consistently refers to 'Partner Tracker' as the smart contract being audited. The scope section mentions 'source code files inside the Partner Tracker repository' and the system overview describes 'Yearn Finance implements a partner tracking program in a smart contract.' The contract is not explicitly named in the provided text, but the context implies the contract is called 'PartnerTracker'. | no |
| Mixbytes_-_Yearn_Strategy_SSB_Security_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| Optimum_-_Yearn_Tokemak_Strategy_Security_Assessment.pdf | Strategy | unmatched — not counted | — | listed in Contracts Assessed table | no |
| Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf | HegicJoint | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf | Joint | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf | LPHedgingLib | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf | ProviderStrategy | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf | SushiJoint | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | TradeFactory | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | TradeFactoryAccessManager | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | TradeFactoryExecutor | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | TradeFactoryPositionsHandler | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | TradeFactorySwapperHandler | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | CommonErrors | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | AsyncSwapper | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | BancorSwapper | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | MultiCallOptimizedSwapper | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | OneInchAggregatorSwapper | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | UniswapV2Swapper | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | ZRXSwapper | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | SyncSwapper | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | UniswapV2AnchorSwapper | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | Swapper | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | SwapperEnabled | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | CollectableDust | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | Governable | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | Machinery | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | MultipleAsyncSwapper | unmatched — not counted | — | deployed address mentioned in conclusion | no |
| Optimum_-_Notional_Finance_Strategy_Security_Assessment.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf | Strategy | unmatched — not counted | — | listed in Contracts Assessed table | no |
| Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf | LevAaveFactory | unmatched — not counted | — | listed in Contracts Assessed table | no |
| Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf | FlashMintLib | unmatched — not counted | — | listed in Contracts Assessed table | no |
| Optimum_-_Stargate_Strategy_Security_Assessment.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf | StrategyFraxUniswapUSDC | unmatched — not counted | — | listed in scope table | no |
| Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf | UniV3StablesJoint | unmatched — not counted | — | listed in scope and findings | no |
| Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf | NoHedgeJoint | unmatched — not counted | — | listed in role model and function tables | no |
| Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf | ProviderStrategy | unmatched — not counted | — | listed in role model and function tables | no |
| Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf | Joint | unmatched — not counted | — | listed in scope and findings | no |
| Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf | BaseStrategy | unmatched — not counted | — | listed in role model and findings | no |
| Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf | Strategy | unmatched — not counted | — | listed in Contracts Assessed table | no |
| Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf | NotionalLpLib | unmatched — not counted | — | listed in Contracts Assessed table | no |
| Optimum_-_Angle_Protocol_Strategy_Security_Assessment.pdf | Strategy | unmatched — not counted | — | listed in Contracts Assessed table | no |
| Statemind_-_Yearn_veyfi_Audit.pdf | VotingYFI | own contract | 0x90c1f9… (selected) `0x90c1f9...588ad5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Statemind_-_Yearn_veyfi_Audit.pdf | RewardPool | own contract | 0xb287a1… (selected) `0xb287a1...1412fa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202208_Statemind_Tarot_Impermax.md | StrategyImperamaxLender | unmatched — not counted | — | listed in scope table | no |
| yAcademy_-_LevGeist_review.pdf | Strategy | unmatched — not counted | — | listed in scope and findings | no |
| yAcademy_-_LevGeist_review.pdf | BaseStrategy | unmatched — not counted | — | listed in scope and findings | no |
| yAcademy_-_Yearn_BalancerLpFactory_review.pdf | BalancerGlobal | unmatched — not counted | — | mentioned in scope and findings | no |
| yAcademy_-_Yearn_BalancerLpFactory_review.pdf | StrategyConvexFactoryClonable | unmatched — not counted | — | mentioned in scope and findings | no |
| yAcademy_-_Yearn_BalancerLpFactory_review.pdf | VaultRegistry | unmatched — not counted | — | mentioned in out-of-scope finding | no |
| yAcademy_-_joint_strategy_review.pdf | Joint | unmatched — not counted | — | Listed in scope and findings reference Joint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | ProviderStrategy | unmatched — not counted | — | Listed in scope and findings reference ProviderStrategy.sol | no |
| yAcademy_-_joint_strategy_review.pdf | HegicJoint | unmatched — not counted | — | Listed in scope and findings reference HegicJoint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | HedgilJoint | unmatched — not counted | — | Listed in scope and findings reference HedgilJoint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | HedgilV2Joint | unmatched — not counted | — | Listed in scope and findings reference HedgilV2Joint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | NoHedgeJoint | unmatched — not counted | — | Listed in scope and findings reference NoHedgeJoint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | SushiJoint | unmatched — not counted | — | Listed in scope and findings reference SushiJoint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | SpiritJoint | unmatched — not counted | — | Listed in scope and findings reference SpiritJoint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | SpookyJoint | unmatched — not counted | — | Listed in scope and findings reference SpookyJoint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | SolidexJoint | unmatched — not counted | — | Listed in scope and findings reference SolidexJoint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | LPHedgingLib | unmatched — not counted | — | Listed in scope and findings reference LPHedgingLib.sol | no |
| yAcademy_-_joint_strategy_review.pdf | ySwapper | unmatched — not counted | — | Listed in scope and findings reference ySwapper.sol | no |
| yAcademy_-_yearn_veyfi_review.pdf | GaugeFactory | unmatched — not counted | — | mentioned in summary: 'The GaugeFactory contract creates new Gauge and ExtraReward contracts' | no |
| yAcademy_-_yearn_veyfi_review.pdf | Gauge | own contract | Gauge (selected) `0x107717...f3a27c` — deployed 2023-10-18 02:59:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yAcademy_-_yearn_veyfi_review.pdf | ExtraReward | unmatched — not counted | — | mentioned in summary and findings | no |
| yAcademy_-_yearn_veyfi_review.pdf | Registry | ambiguous — not counted | Registry (alternative) `0xd40ecf...45b038` — deployed 2024-11-13 09:17:23+03 — liveness: live (current_address_book_code)<br>0x727fe1… (alternative) `0x727fe1...929b04` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| yAcademy_-_yearn_veyfi_review.pdf | VotingEscrow | unmatched — not counted | — | mentioned in summary and findings | no |
| yAcademy_-_yearn_veyfi_review.pdf | BaseGauge | unmatched — not counted | — | mentioned in findings | no |
| yAcademy_-_yearn_veyfi_review.pdf | VeYfiRewards | unmatched — not counted | — | mentioned in findings | no |
| yAcademy_-_yearn_veyfi_review.pdf | VoteDelegation | unmatched — not counted | — | mentioned in findings | no |
| yAcademy_-_yearn_veyfi_review.pdf | YieldStreamer | unmatched — not counted | — | mentioned in informational finding #6 | no |
| ChainSecurity_Yearn_Serpentor_audit.pdf | SerpentorBravo | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Yearn_Serpentor_audit.pdf | Timelock | ambiguous — not counted | 0x88ba03… (alternative) `0x88ba03...67bf73` — liveness: live (current_address_book_code)<br>0x88ba03… (alternative) `0x88ba03...67bf73` — liveness: live (current_address_book_code)<br>0x88ba03… (alternative) `0x88ba03...67bf73` — liveness: live (current_address_book_code)<br>0x88ba03… (alternative) `0x88ba03...67bf73` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf | yCRV | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf | ZapYCRV | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf | VotingYFI | unmatched — not counted | — | Scope section: 'The assessment was performed on VotingYFI.vy and RewardPool.vy source code files' | no |
| ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf | RewardPool | unmatched — not counted | — | Scope section: 'The assessment was performed on VotingYFI.vy and RewardPool.vy source code files' | no |
| ChainSecurity_Yearn_Yearn_yETH_audit.pdf | Pool | own contract | 0xccd040… (selected) `0xccd040...65bf81` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Yearn_Yearn_yETH_audit.pdf | Staking | own contract | Staking (selected) `0xcb7dce...5777ee` — deployed 2024-04-12 17:58:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Yearn_Yearn_yETH_audit.pdf | Token | unmatched — not counted | — | Mentioned in trust model: 'we assume that the LP token in Pool and the asset in Staking is yETH (as implemented in Token.vy)' | no |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | Bootstrap.vy | own contract | 0x41b994… (selected) `0x41b994...85c6bf` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | MerkleIncentives.vy | own contract | Incentives for Snapshot votes (selected) `0xae9de8...0a5179` — deployed 2023-07-06 15:09:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | POL.vy | own contract | Protocol Owned Liquidity (selected) `0x929401...b04478` — deployed 2023-06-30 14:27:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | Token.vy | own contract | yETH token (selected) `0x1bed97...6131f7` — deployed 2023-06-29 11:46:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | CurveLP.vy | unmatched — not counted | — | listed in scope table | no |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | Shutdown.vy | unmatched — not counted | — | listed in scope table | no |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | Stake.vy | own contract | Staking Module (selected) `0x27a2fc...78ac52` — deployed 2023-07-06 14:52:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Yearn_yETH_Periphery_audit.pdf | FraxRateProvider | unmatched — not counted | — | Scope section: 'In scope were the contracts in the contracts/providers directory.' System overview describes Frax rate provider contract. | no |
| ChainSecurity_Yearn_yETH_Periphery_audit.pdf | LidoRateProvider | unmatched — not counted | — | Scope section: 'In scope were the contracts in the contracts/providers directory.' System overview describes Lido rate provider contract. | no |
| ChainSecurity_Yearn_yETH_Periphery_audit.pdf | StaderRateProvider | unmatched — not counted | — | Scope section: 'In scope were the contracts in the contracts/providers directory.' System overview describes Stader rate provider contract. | no |
| ChainSecurity_Yearn_yETH_Periphery_audit.pdf | StaFiRateProvider | unmatched — not counted | — | Scope section: 'In scope were the contracts in the contracts/providers directory.' System overview describes StaFi rate provider contract. | no |
| ChainSecurity_Yearn_yETH_Periphery_audit.pdf | SwellRateProvider | unmatched — not counted | — | Scope section: 'In scope were the contracts in the contracts/providers directory.' System overview describes Swell rate provider contract. | no |
| ChainSecurity_Yearn_yETH_Periphery_audit.pdf | TranchessRateProvider | unmatched — not counted | — | Scope section: 'In scope were the contracts in the contracts/providers directory.' System overview describes Tranchess rate provider contract. | no |
| Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf | VestingEscrowSimple | unmatched — not counted | — | listed in scope table and deployments table | no |
| Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf | VestingEscrowFactory | unmatched — not counted | — | listed in scope table and deployments table | no |
| Yearn V3 report.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| Yearn V3 report.pdf | TokenizedStrategy | own contract | 0xbb5127… (selected) `0xbb5127...70fed0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn V3 report.pdf | VaultFactory | own contract | 0x444045… (selected) `0x444045...250ab0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn V3 report.pdf | VaultV3 | own contract | 0x1ab624… (selected) `0x1ab624...e14467` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf | BaseTokenizedStrategy | unmatched — not counted | — | listed in scope table | no |
| Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf | TokenizedStrategy | unmatched — not counted | — | listed in scope table | no |
| Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf | VaultFactory | unmatched — not counted | — | listed in scope section 2.1 | no |
| Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf | VaultV3 | unmatched — not counted | — | listed in scope section 2.1 | no |
| 06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf | VaultFactory | unmatched — not counted | — | listed in scope table | no |
| 06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf | VaultV3 | unmatched — not counted | — | listed in scope table | no |
| 06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf | BaseTokenizedStrategy | unmatched — not counted | — | listed in scope table | no |
| 06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf | TokenizedStrategy | unmatched — not counted | — | listed in scope table | no |
| yearn-vaults-v3 | VaultFactory | unmatched — not counted | — | listed in repository description | no |
| yearn-vaults-v3 | VaultV3 | unmatched — not counted | — | listed in repository description | no |
| 2021-04-02.md | StrategyMakerYFIDAIDelegate | unmatched — not counted | — | mentioned in incident disclosure as flawed strategy | no |
| 2021-04-02.md | StrategyMakerETHDAIDelegate | unmatched — not counted | — | mentioned as same template, migrated | no |
| 2021-05-13.md | StrategyProxy | unmatched — not counted | — | mentioned as flawed contract in incident disclosure | no |
| 2021-05-13.md | CurveYCRVVoter | unmatched — not counted | — | mentioned as contract interacted with via proxy | no |
| 2021-05-13.md | StrategyCurvea3CRVVoterProxy | unmatched — not counted | — | mentioned in timeline as contract where proxy address was set to zero | no |
| 2021-05-14.md | SingleSidedCrvDAI | unmatched — not counted | — | mentioned as the strategy involved in the incident | no |
| 2021-05-20.md | StrategyMakerETHDAIDelegate | unmatched — not counted | — | Mentioned as the flawed strategy in the incident disclosure | no |
| 2021-06-29.md | StrategyGenericLevCompFarm | unmatched — not counted | — | mentioned as the strategy type | no |
| 2021-06-29.md | DAI GenLevComp | unmatched — not counted | — | listed in references as affected strategy | no |
| 2021-06-29.md | DAI IB GenLevComp | unmatched — not counted | — | listed in references as affected strategy | no |
| 2021-06-29.md | USDC GenLevComp | unmatched — not counted | — | listed in references as affected strategy | no |
| 2021-06-29.md | USDC IB GenLevComp | unmatched — not counted | — | listed in references as affected strategy | no |
| 2022-01-30.md | SingleSidedBalancer | unmatched — not counted | — | Mentioned as the vulnerable strategy class throughout the report. | no |
| 2022-09-06.md | WOOFY | unmatched — not counted | — | mentioned as affected token | no |
| 2022-09-06.md | Vault | unmatched — not counted | — | referenced in scope as affected contract | no |
| 2022-11-01.md | BribeV2 | unmatched — not counted | — | mentioned as vulnerable contract in scope | no |
| 2022-11-01.md | BribeV3 | unmatched — not counted | — | deployed as fix, also called yBribe | no |
| 2022-11-01.md | yBribe | unmatched — not counted | — | alias for BribeV3 | no |
| 2022-11-07.md | StargateUSDCStaker | unmatched — not counted | — | Mentioned as the strategy contract that had the bug and was migrated. | no |
| 2023-04-04.md | StrategystETHAccumulator_v2 | unmatched — not counted | — | listed in scope and referenced in report | no |
| 2023-04-04.md | StrategystETHAccumulator | unmatched — not counted | — | listed as impacted strategy | no |
| 2023-05-21.md | StakingRewardsZap | unmatched — not counted | — | Affected zap contract mentioned in incident disclosure | no |
| 2023-06-13.md | StealthSafeGuard | unmatched — not counted | — | mentioned as the custom Safe guard deployed at a vanity address | no |
| 2025-08-13.md | yBOLD | unmatched — not counted | — | mentioned as contract in scope | no |
| 2025-08-13.md | ysyBOLD | unmatched — not counted | — | mentioned as contract in scope | no |
| 2025-08-13.md | Accountant | unmatched — not counted | — | custom accountant contract in scope | no |
| 2025-08-13.md | DepositLimitModule | unmatched — not counted | — | fix contract deployed | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x1f3998...b27c8a` | Accountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf728f8...1c32d1` | AccountantFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x437758...c375f0` | AddressesGenerator_VAULT_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf53639...539344` | AddressesGeneratorEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce29d3...9fc041` | AddressesGeneratorV1Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3a8efa...c0f094` | AddressesGeneratorV2Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x156bab...a12529` | AddressMergeHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1981ad...70af92` | AprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xba7fcb...d52f8e` | AuctionFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x94f447...e48d12` | AuctionRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x167aa4...4e5186` | BalancesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5fd381...a55b4d` | CalculationsChainlinkRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0ffe84...aa7227` | CalculationsCurve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x55e9b1...de8ea4` | CalculationsIronBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5ea7e5...a1dd25` | CalculationsSushiswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x38477f...b9aa3c` | CalculationsYearnVaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x32059c...c470bc` | CommonHealthCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8df17...b9d52d` | CommonTrigger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xff7184...65c248` | CoveYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1e9eb0...6b8671` | DebtAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x03d43d...9a4c18` | DebtAllocatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c4246...149d79` | Delegated Staked YFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x952b31...5e3d6e` | Delegated Staking Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc01a52...e5b142` | DelegatedBalanceMapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x590dd9...c1c4cf` | Dumper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x41252e...97a275` | dYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2391fc...6d894e` | dYFI Reward Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x62a4e0...6eb04b` | EarnRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d0fdc...936f8b` | Gauge registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x128e72...3ddfc9` | GaugeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb7a528...3e5ba5` | Generic governor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5aacd0...c34a6f` | Helper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x52605b...7db2f8` | Keeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3d4ced...26bc8f` | Liquid Locker Depositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xba18d0...0e681d` | Liquid Locker Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7efc39...72a000` | Liquid Locker Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ba61c...062bba` | LockerZapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7e9756...63d619` | ManagementList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x9046d3...e9107b` | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x043518...78e9b9` | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x56af9c...76fafd` | Ownership proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5d63a8...ddc99b` | PricesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x775f09...05653c` | Protocol Address Provider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x54483f...1d4cee` | RefundAccountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x240315...2d1271` | RegisteryAdapterV2Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd40ecf...45b038` | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xbcfca7...047690` | RegistryAdapterV2Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a0fa8...8816a1` | RegistryFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0377b4...5f7198` | ReleaseRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa82454...b05e50` | Reward Claimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd31911...ff5934` | Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3bf720...6685b1` | RoleManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xca1245...e9e5ce` | RoleManagerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c641e...792f7d` | SharerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe94628...5ba5fa` | Shutdown Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d02f6...2ad746` | SingleTokenRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x42b252...ecc016` | Staked YFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x95547e...da6113` | Staking Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8f60b...a5779b` | TimelockExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x02ff74...1d3480` | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x93a62d...a0efde` | TreasuryVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1007ed...248691` | TvlAdapterEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xec7ac8...097f24` | TvlAdapterIronBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4fb89...4c6c78` | TvlAdapterV1Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x14d6e0...da8785` | TvlAdapterV2Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x560144...a850e5` | TvlAdapterVeCrv | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc3a0be...f9467c` | UniqueAddressesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xab1c34...144cbb` | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x736d7e...6cfccf` | V2Keeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2d12ca...3cdff1` | VelodromeGlobal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2548bf...9ee884` | Voting Escrow Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x000000...fc4383` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x265c8d...619569` | YBSUtilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x01791f...c045ff` | YBToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x310ac2...22bcac` | Yearn Vault Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1112db...4fd8de` | Yearn4626Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5d2ea3...0fad91` | YearnBoostedStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x583019...04d0b4` | yETH staking contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3ee41c...9d63a0` | YRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 645 |
| upstream | 12 |
| standard_library | 9 |
| needs_review | 157 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 77
- Inherited remapped matches: 0
- Address-book scope dispositions: 25 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 245 unmatched
- Matched-own operational status: 25 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=55, low=24, medium=10
- Match method counts: address=16, unique_name=9

Zero-match audit list:

- [18631] DL audit link
- [18632] download report
- [18633] DL audit link
- [18636] StrategyCurveYCRV.sol - HackMD.pdf
- [18637] YearnV2_ our gotcha notes - HackMD.pdf
- [18638] Certik - itoken-finance-audit-report-1.1.0.pdf
- [18640] MixBytes - Timeloans.Finance Smart Contract Security Audit Report.pdf
- [18641] MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf
- [18642] MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Solidity_part.pdf
- [18643] MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf
- [18644] MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf
- [18645] PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf
- [18646] Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf
- [18647] 202102_MixBytes_sushiswap-bentobox.pdf
- [18648] MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf
- [18649] PeckShield_Audit_Report_CoverForge_v1.0.pdf
- [18650] MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf
- [18651] MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf
- [18652] MixBytes_-_Curve_Voter_Proxy_Security_Audit_Report.pdf
- [18653] MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf
- [18655] MixBytes_-_Yearn_Yvboost_Contracts_Audit_Report.pdf
- [18656] MixBytes_-_Yearn_Strategies_SNX_Contracts_Audit_Report.pdf
- [18657] MixBytes_-_Yearn_Liquity_stability_pool_Security_Audit_Report.pdf
- [18659] MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf
- [18660] ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf
- [18661] Mixbytes_-_Yearn_Strategy_SSB_Security_Audit_Report.pdf
- [18662] Optimum_-_Yearn_Tokemak_Strategy_Security_Assessment.pdf
- [18663] Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf
- [18664] Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf
- [18665] Optimum_-_Notional_Finance_Strategy_Security_Assessment.pdf
- [18666] Dedaub_-_Angle.md
- [18667] Dedaub_-_Stargate.md
- [18668] Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf
- [18669] Optimum_-_Stargate_Strategy_Security_Assessment.pdf
- [18670] Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf
- [18671] Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf
- [18672] Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf
- [18673] Optimum_-_Angle_Protocol_Strategy_Security_Assessment.pdf
- [18675] 202208_Statemind_Tarot_Impermax.md
- [18676] yAcademy_-_LevGeist_review.pdf
- [18677] yAcademy_-_Yearn_BalancerLpFactory_review.pdf
- [18678] yAcademy_-_joint_strategy_review.pdf
- [18680] ChainSecurity_Yearn_Serpentor_audit.pdf
- [18681] ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf
- [18682] ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf
- [18685] ChainSecurity_Yearn_yETH_Periphery_audit.pdf
- [18686] Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf
- [18688] Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf
- [18689] Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf
- [18690] 06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf
- [18691] yearn-vaults-v3
- [18692] 2020-09-25.md
- [18693] 2020-10-10.md
- [18694] 2020-10-30.md
- [18695] 2021-01-17.md
- [18696] 2021-02-04.md
- [18697] 2021-02-18.md
- [18698] 2021-04-02.md
- [18699] 2021-05-13.md
- [18700] 2021-05-14.md
- [18701] 2021-05-20.md
- [18702] 2021-06-29.md
- [18703] 2021-10-27.md
- [18704] 2022-01-30.md
- [18705] 2022-09-06.md
- [18706] 2022-11-01.md
- [18707] 2022-11-07.md
- [18708] 2023-03-13.md
- [18709] 2023-04-04.md
- [18710] 2023-05-21.md
- [18711] 2023-06-13.md
- [18712] 2023-12-11.md
- [18713] 2024-01-03.md
- [18714] 2025-05-08.md
- [18715] 2025-08-13.md
- [18716] 2025-11-26.md
- [18717] 2025-12-01.md

Fork inheritance lineage and inherited audits are included when available.
