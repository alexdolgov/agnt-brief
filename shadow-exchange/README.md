# Agentic Audit Brief: Shadow Exchange

## Export Authority

- Production state: **published scope**
- Raw selected rows: 14 across 3 audit(s)
- Eligible audit results: 4 (3 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Shadow Exchange (`shadow-exchange`)
- Website: [https://www.shadow.so](https://www.shadow.so)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: sonic
- Contract surface: 125 unique implementations (445 raw deployments)
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

**PairFactory** (`0x2da25e7446a70d7be65fd4c053948becaa6374c8`, chain 146)
Origin: vfat.io (`0x60b7ec...03a8b6`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**RamsesV3Factory** (`0xcd2d0637c94fe77c2896bbcbb174ceffb08de6d7`, chain 146)
Origin: shadow-exchange (`0x20b770...5d1f5a`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VoteModule** (`0xdcb5a24ec708cc13cee12bfe6799a78a79b666b4`, chain 146)
Origin: vfat.io (`0xf7a585...13656c`)
Containment: 100.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0e03b0a37b1c5c1d9800b758ccb5b8e229690dcf`, chain 146)
- UnnamedContract (`0x1a99e55a2f6ae7d64bcfede80837b5884b1b1d74`, chain 146)
- AccessHub2 (`0xc1c7e1076ca856e6d362a6e286861b3be5510193`, chain 146)
- FeeDistributorFactory (`0x29adf08a22381855243eeeb3228647ac56847ff5`, chain 146)
- FeeRecipientFactory (`0x5712bd693ac758158146aa151f31bd74cfbf37c1`, chain 146)
- GaugeFactory (`0x8cf82d413ca20a40a2fa43c2bf77d136d81299e9`, chain 146)
- Gems (`0x5555b2733602ded58d47b8d3d989e631cbee5555`, chain 146)
- GnosisSafeProxy (`0x137f7cb38f125ceafea48004cac24f6514dec218`, chain 146)
- GnosisSafeProxy (`0x5be2e859d0c2453c9aa062860ca27711ff553432`, chain 146)
- GnosisSafeProxy (`0x7fdf763e777a2fe1490efb577f51a528d19f3d22`, chain 146)
- LauncherPlugin (`0x3ec4fc1885513d932f113f9de9b50a8764dbfc7f`, chain 146)
- Minter (`0xc7022f359cd1bda8ab8a19d1f19d769cbf7f3765`, chain 146)
- NonfungiblePositionManager (`0x12e66c8f215ddd5d48d150c8f46ad0c6fb0f4406`, chain 146)
- NonfungiblePositionManager (`0xa57fa38b3fd45922394e9e1077748a2383f1542e`, chain 146)
- NonfungibleTokenPositionDescriptor (`0xdaa4b06a6710576441367ab90b31689a562c4607`, chain 146)
- Quoter (`0x3003b4feaff95e09683feb7fc5d11b330cd79dc7`, chain 146)
- QuoterV2 (`0x219b7adebc0935a3ec889a148c6924d51a07535a`, chain 146)
- Router (`0x1d368773735ee1e678950b7a97bca2cafb330cdc`, chain 146)
- Shadow (`0x3333b97138d4b086720b5ae8a7844b1345a33333`, chain 146)
- ShadowTimelock (`0x4577d5d9687ee4413fc0c391b85861f0a383df50`, chain 146)
- SwapRouter (`0x5543c6176feb9b4b179078205d7c29eea2e2d695`, chain 146)
- TransparentUpgradeableProxy (`0x5e7a9eea6988063a4dbb9ccddb3e04c923e8e37f`, chain 146)
- TransparentUpgradeableProxy (`0x9f59398d0a397b2eeb8a6123a6c7295cb0b0062d`, chain 146)
- UniversalRouter (`0x92643dc4f75c374b689774160cdea09a0704a9c2`, chain 146)
- x33 (`0x3333111a391cc08fa51353e9195526a70b333333`, chain 146)
- XShadow (`0x5050bc082ff4a74fb6b0b04385defddb114b2424`, chain 146)

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
- Outside the address book: 93 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 21
- Confirmed-live implementations: 32 of 125 unique; 93 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 9/90
- Verified + Unaudited implementations: 81
- Verified by bytecode match: 0
- Unverified implementations: 35
- Unique implementations: 125
- Raw deployments: 445
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
| AccessHub2 | unknown | project_anchor | own_supporting | 1 | sonic | unit-392528 | 2 deployments: sonic `0x5e7a9eea6988063a4dbb9ccddb3e04c923e8e37f`; sonic `0xc1c7e1076ca856e6d362a6e286861b3be5510193` | ✅ Audited |
| FeeCollector | unknown | project_anchor | own_supporting | 0 | sonic | unit-392518 | `0xcc0365f8f453c55ea7471c9f89767928c8f8d27f` | ✅ Audited |
| FeeDistributorFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-392503 | `0x29adf08a22381855243eeeb3228647ac56847ff5` | ✅ Audited |
| GaugeV3 | unknown | project_anchor | own_supporting | 1 | sonic | unit-392524 | `0x452f378db86f6ef98731cdeb8344d8c171b6968c` | ✅ Audited |
| Minter | unknown | project_anchor | own_supporting | 0 | sonic | unit-392517 | `0xc7022f359cd1bda8ab8a19d1f19d769cbf7f3765` | ✅ Audited |
| RamsesV3Factory | registry | project_anchor | own_supporting | 0 | sonic | unit-392519 | `0xcd2d0637c94fe77c2896bbcbb174ceffb08de6d7` | ✅ Audited |
| RamsesV3PoolDeployer | unknown | project_anchor | own_supporting | 0 | sonic | unit-392514 | `0x8bbdc15759a8ecf99a92e004e0c64ea9a5142d59` | ✅ Audited |
| VoteModule | unknown | project_anchor | own_supporting | 0 | sonic | unit-392521 | `0xdcb5a24ec708cc13cee12bfe6799a78a79b666b4` | ✅ Audited |
| Voter | unknown | project_anchor | own_supporting | 1 | sonic | unit-392526 | 2 deployments: sonic `0x6393c8e3ecb2fde7cf4d434da8c916fd47807eca`; sonic `0x9f59398d0a397b2eeb8a6123a6c7295cb0b0062d` | ✅ Audited |

### ⚠️ Verified + Unaudited (81)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 42 deployments: sonic `0x0a709b535241c0f60b9862d52a8dffd3f575dc8b`; sonic `0x0d6cd90ef1ec1a6e181e540ea60cc6151f8a9e9f`; sonic `0x1268031bf227077c3ff2c56e0a36f439cdf9bfe4`; sonic `0x18131c931444c3b019017c0263bb0870123b3fab`; sonic `0x2af763154f745a550728ee98bf8c40e3068068d8`; sonic `0x2e9418f7590d206ffb12ba29a13d700a579976ba`; sonic `0x352ad726c9de52507624e33b8a781ffd146e7369`; sonic `0x359d5b37e4b44f0d11ad4183bacda1054f978ca9`; sonic `0x398d7632521b599c514137b9cdb78cb307bd0cec`; sonic `0x4597b6f5209be94705cc6fe95f6dbd77432bee8e`; sonic `0x45aa6f4b13b5cd24b52f4e7dc4090611c4828aca`; sonic `0x56d7e8f0729289737e68bd1a93f54edc33f97fd7`; sonic `0x573afa72ea5db9edbd506a02355f7351aafcc4fa`; sonic `0x57dda5340505a8948aa7e3b1c01632559e27642f`; sonic `0x585118ffdfab4c53c17f8ec79c7eb342bd7d88fc`; sonic `0x617a62dcdc1e64a50c5adaae2b32aa8835302b63`; sonic `0x6b400cb52def4086ab117be0c000da6aa20318a9`; sonic `0x6c26aabecba366f4621996b56f809612abe6264d`; sonic `0x82129fbeb71768f4d9a0acea01fec051cdb31111`; sonic `0x925ba5c6dce168cd5ec69fe6ee892d43fec391a4`; sonic `0x95156b0e318a94d7e76f24a9b03dbd83d982d143`; sonic `0x96a55745a4643eed71f525030f6e0d63e88e61db`; sonic `0x9885e62a04d231bf81b0b0986478876c20f2977b`; sonic `0xa1275743b3fa85cd66d99635fb81740c8b969657`; sonic `0xa9ddae28920f016bdec448c9fd005acb5a1b35a4`; sonic `0xaf29cca96e7092bab96dfad5408a7a875fc62a35`; sonic `0xb3d0bec47f9f69177c8170d1687c826fa4d0b397`; sonic `0xb8ca18b412bec38cd98c5df407891e17733df175`; sonic `0xbb1ed8b39ffff00b685f4a3dc62cc8b5a37ed298`; sonic `0xbd1a7ad06043e0f0c57798421bdcd88f55726e01`; sonic `0xbf0630f8435839ad900ac6f29beed27afec4931e`; sonic `0xc051ceadb767105a034f8bd641d8d971b58a1c6d`; sonic `0xc4433cc72a2db5d4c69f202d2cadc91c1fb2c0b3`; sonic `0xc55c7b882dfaec0cb3542e8516b9fbe8c8a80d9c`; sonic `0xc89be3f2ca045b04c54899414fc88180f896f444`; sonic `0xcd36328637527e507560ec907aa127e249608cd1`; sonic `0xd87df09b089c1bfb8f727493518359c1bf3b8c95`; sonic `0xe4c3dc75e398350ebeb0874c800af9b8c8dd1522`; sonic `0xe66030722bbe57c9283654ff97dac8cb1c8ed8b5`; sonic `0xe6ae8b7c74e88ee2af5ffdde38d6186ab1244ced`; sonic `0xebd6822eda9c17122b710fa42ca3d24244918e80`; sonic `0xee4e01c561f3e7400da82b1d19e75392817007fc` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x23f702ee76e447b7c9eea928d3f8b44b81da2fd9`; sonic `0xd230afd74278a159d85f000efadc4bc7b9b0a13a` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3a999975449bc9ecc0e7d00c13cc8c32eebd7cd5`; sonic `0xf5b93591580e0f8d6d2be3cb8148611704fe73c4` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x45b1115e59df2d6892712d2da12eb315c1b9fdff`; sonic `0x69e3905cc7d1c0c376a1431d78bb0be387f65d9a` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x896e1dd5ccc4b06702dd1993c74fc73a4ae75f61`; sonic `0xe6fe3449f9f48dc3c1f96d85fa5e644bf902483d` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x8b109eeafcacf5a91b83f01460ffe5415ef05224`; sonic `0xffee7cb3307ee7a484b384bf1e0366e835069269` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x97a1c7f842f4ca52a025889913a421a112aca096`; sonic `0xdd632eaab0e648824e9c58d7a479e0edd575c664` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x995531e650d9158554d173710839d5a96b4573d0`; sonic `0xb1ad3f64c1958107c122114086f54110f77e4424` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x9da6da969f47316115beff50b38c7e03bbac9c84`; sonic `0x9fb974d4702f9c37e65450c799ede28c7b1e9cd0` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xedd8971618920b7769f1c4531eb58aa3ad26caef`; sonic `0xff78ad4a31740880e2badd86293ac83bdd20bc46` | ⚠️ Unaudited |
| AccessHub2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: sonic `0x038e1f5c90de503f32af0088d8561dfa574080b7`; sonic `0x147b1e1832e758d30588ea8164cb035b36825874`; sonic `0x32d6e0fcb83d97babed65807bd382d32202c941b`; sonic `0x47643af6212418196d63c0ee94940f1c4ec300a6`; sonic `0x60b9c3c32c4768890fbf11b570cb31cbd253b070`; sonic `0x64c24f3078a714171312d044e45fb5bb9f7f797f`; sonic `0x662aa9013f0b9afe3fc377ccfd8e969c6719f8e5`; sonic `0x980b9f7f27e6c1cf3500fb6775d624924004b011`; sonic `0xa6ae478bd261d9bd7abc6b7caa5291449d41b817`; sonic `0xb166858e871c005f66adf3329e45efe8a3aa4f35`; sonic `0xbff9175e4e9d312463b926ab2a64dee2699e8545` | ⚠️ Unaudited |
| AccessHubExpansionPack1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 17 deployments: sonic `0x01f6e1a36200960cb22cf9de8b30846ee75f3e75`; sonic `0x073fdefa27af6985272304b962bffe463146bd08`; sonic `0x0fa5697da02f2f190698905cbb6e666d1b95043a`; sonic `0x14f98a2f7bbc3fb15edaa3f0c9f250381a804d6b`; sonic `0x222d90d70781b4a8119c58dc11e9faae17b8bcaa`; sonic `0x4f5ddbf9020fa001705d1d65732147b177d92f0c`; sonic `0x5739e4701a0665b051fda9b4e94c66e3450f49c7`; sonic `0x63966d0aaa05439ee67c70789df998ec916f61f5`; sonic `0x68017962ad09f1e12c45283dbd5349b800f8e86f`; sonic `0x68aa9392df58eaf11bde14f54b0817dafcaa95cd`; sonic `0x8fbdb7c73f9780f7be5610201e92f913bd3b17d1`; sonic `0xb340d5b2f18a36064bbe6a0788846d36aee09b60`; sonic `0xbc6177c972efafde2ef9bd98ce5290b1ff5f793d`; sonic `0xc01f4d2ab6b432653a34e8b2310316a8f6760f13`; sonic `0xcee3c099704faa47e161bfaba99fa1050942c088`; sonic `0xd827a4bf623c7f0e33fdb34e55ecb051075c2bf8`; sonic `0xf76bbca996cbfdbb2c77e3f032c2f040cf059bce` | ⚠️ Unaudited |
| AccessHubExpansionPackTemp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x30b2c4145c441583ec56de488b4e9a74a741a2a1`; sonic `0x3d4ec74bcd50445a50f8554d6763d9d591850fe3`; sonic `0x78f55714418017d48827412ca83b5f232e5926f4`; sonic `0x861bfa8d9db6fc7ed76294976dc9183c3e45970d`; sonic `0x8c56bc9411a787b9cd692a97779ae5d170469fad`; sonic `0x92b92147704db8e1097130a33b94ca889531c78f` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x1edf3060dab58c65324e54695ea71e592c30b76d`; sonic `0x6f6a537c1e9ccf11d0bc59e64bf8d93f26484aef`; sonic `0x9eb5b7cd3ebb22bb3f093406da3ae33ebd55b4b1`; sonic `0xba5f9af2f2b8d7a931dcfddfc55ea81607919ac8` | ⚠️ Unaudited |
| ClGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x38bff9205ec1ded237c81110d4d73e814b243470`; sonic `0x9b7e6279d221515b51e769280ef1ebb4e62bea1c`; sonic `0x9caf8e8b8a8208d43579de755f394a88be5686e0`; sonic `0xee31682bac383e7463822eb9f15fedfc47160116`; sonic `0xf914cc768040b4268a779c3084a3e9cda6e8a1a8` | ⚠️ Unaudited |
| CrossAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc7409cead5b975e8865db9b3e7717348d753aaec` | ⚠️ Unaudited |
| DustSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x1817ec37284f7d2104e9c11201d7f4c31cb84965`; sonic `0xa8d15f9597259600aa969b9205e2d82b6b60bc9f` | ⚠️ Unaudited |
| EmissionsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x7423e3d8fc6e626be895ee70ae54a68994c4318e`; sonic `0xa42008d78297e5ebab526b3129880004c8452171`; sonic `0xca4b1a69f7683c05a462bc795162a2026d6c5bb7` | ⚠️ Unaudited |
| EqualizerPerpetualBuyOut | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1d7fdd57840fd2f2692f5d70a36f1b5afe46d5b4` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x6a4400157291d1ff339188eca407011c7429c9c5`; sonic `0x949e7b2f3f66eae761a9397346ddbd719f046c0e`; sonic `0xa3c90f253cf47a946ecc9d7d5e7f395e03bdd8f7`; sonic `0xbf9ab1b18f9e943404e794bdfe9b5aac012fa017`; sonic `0xf5228b0cca68c4db05928dd6d6cf3f5836cb38a0` | ⚠️ Unaudited |
| FeeDistributorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x14520c1e7728ce4043c5538f602afbf3e526582d`; sonic `0x292676db2945ac888cd7e9f14e1d5db74ef87d47`; sonic `0x5bc32b8931cdd117ab4cdeaf6ab498d1fa83b186`; sonic `0x90e433e091b4eaf2ecc00d74aab7971f5dcec31c`; sonic `0xa73ff086597820af58b2f2d422364477fceca4bf`; sonic `0xa98a11e81fdb0cdf7172427032bb0bdd26f5335a`; sonic `0xcfca4c93ebb2316c134d23a3a0fd540efb72618c`; sonic `0xda51405441450789e2cde054fc18b0d6055f5c5a`; sonic `0xf0ee36e430f9760fbdcd95d8b65c6172c9c6aab2` | ⚠️ Unaudited |
| FeeRecipientFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x178800c74dc32cb6814b5a3ffe2b7e68c85d0acc`; sonic `0x45623bfda22fd908a0d007542e3ba333579690b0`; sonic `0x49607c8e263fe8ae43481ba27a35276ac9cc860d`; sonic `0x5f86d184e3fd73c758432495c1b10759384a241b`; sonic `0x75729aae1a529b41eb9530f09659a03e6e11e17d`; sonic `0x9875f6b0b27bb55d91139fe0a25515f5efd06bf8`; sonic `0xde8db146f41259bb9ea2443b014b8b871d3ca699`; sonic `0xe4467670c32d6416c29cad1e07b921765b4e4d8f`; sonic `0xeff5fd063e5ef6c9a795748a5af904bece47cc51` | ⚠️ Unaudited |
| FeeRecipientFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-392512 | `0x5712bd693ac758158146aa151f31bd74cfbf37c1` | ⚠️ Unaudited |
| FixedRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8b78bbb48a63da1f9db4ac418fe4de604ac8c4a5` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x1903c747999b728b95b965bb7a0de6029d939d22`; sonic `0x3263aaa990ee556b8f43072db26bd8bc4e5ddd85`; sonic `0x57c4c4bb67a19ab3a8609568a038d917be86043f`; sonic `0x7b8248accce02a42aea489c1817dfa1bab803650`; sonic `0x8bef5e3f79c73e47ddc01530b454c0a2bfc434ec`; sonic `0x94a3eb8f264b3556fe92d3e6463587cc3d46d07b`; sonic `0xd371018ec21cd44c71b0b86d0b8af7a854496614`; sonic `0xec08a4da11d879ceda83209dc7030c4e6d0d199f`; sonic `0xf2f565bd824b2f7c692aeb11e1fdba74811bfd15` | ⚠️ Unaudited |
| GaugeFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-392515 | `0x8cf82d413ca20a40a2fa43c2bf77d136d81299e9` | ⚠️ Unaudited |
| GaugeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x3ff6378aee1b1c580bd345f74d7c2cdcd9fbee12`; sonic `0x553ad129c3312fbd1bb9e09ece6fbeaa151bdb85` | ⚠️ Unaudited |
| Gems | unknown | project_anchor | own_supporting | 0 | sonic | unit-392511 | `0x5555b2733602ded58d47b8d3d989e631cbee5555` | ⚠️ Unaudited |
| Gems | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x64980593f031d62ccd4b3ad02b5e74374107a9f0` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | sonic | unit-392499 | `0x137f7cb38f125ceafea48004cac24f6514dec218` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | sonic | unit-392513 | `0x7fdf763e777a2fe1490efb577f51a528d19f3d22` | ⚠️ Unaudited |
| LauncherPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x02d833751d5bc54675bd5686cfcfc982a8113c53`; sonic `0x0e192ebc7e4279876df9cea8b331a2b2697f7c33`; sonic `0x26dd03f654c3ae62db774654ea4c718fbcc30789`; sonic `0x3ebe65466ad60f55be3a3c596e3f9c25d9065967`; sonic `0x5b4e02a81373cea45a0539fbd21a741f125d0f80`; sonic `0x804331ad5657f6cfa312e009b52fb37ca942325e`; sonic `0xb91e35e52c08b57af4520a8c95268a942ebf8561`; sonic `0xecdb78b76e6599e3cfce26265cf8c5dd87eab6b0`; sonic `0xed5901b50af640723a83835b6590d7e279a16d78` | ⚠️ Unaudited |
| LauncherPlugin | unknown | project_anchor | own_supporting | 0 | sonic | unit-392508 | `0x3ec4fc1885513d932f113f9de9b50a8764dbfc7f` | ⚠️ Unaudited |
| MarbleMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x109ddd9af402e850c1e6a2979f50b0024020faf7`; sonic `0x2ee15babbeaa6d6e6cae022b7b4b96ad2585c03a`; sonic `0x57551e91b4ad873847b734ad030e573a315a07db`; sonic `0x9238327c2a4a1af154c3398f0eee0a3a18298221`; sonic `0xb5e55016a32908ec5a342f1b26b3c855bc9364c2`; sonic `0xeb1dbef7e571b79732878cd50d6f95a1f218bd7d` | ⚠️ Unaudited |
| MarbleMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x13f8e397c12b31accfceac012e8a06dc35dfd16c`; sonic `0x2a78f35726751d22e172dd755cfc051f352affbf` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x2b03020ee29c66e518f73683d7788732d4289856`; sonic `0x2f7864a1ca29da0396aafa4148bd4169d7639340`; sonic `0x4e3a52a75eb452a48ba2561a2d75d35c0013a752`; sonic `0x635e17d92e59595ebc780e358275623ada3aa2d8`; sonic `0x71619ce35b9e6fdfdeb549b0af3f03db69f7f644`; sonic `0x9bc0b2e3e85128639a45d93f0d636908ed1a1c46`; sonic `0xa478d856aef1745834b1bffced5f6f5204e01364` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x57cb65bf5ad9ff96c465c1f9c4cfb941171a7263`; sonic `0x7c2916c91101fb49934302c8b631b198235abe76`; sonic `0xbf63dcdf1e9827aac16f5e825f0f543db9ce5a13`; sonic `0xcc83a742af837919641b1c9a540c521976e2cd34`; sonic `0xd464d06edd2baf89ca67c02579ce118a5df106d9`; sonic `0xdce360fe13715ca231424a1a582a294b189ec261` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 13 deployments: sonic `0x002ee63dfec7bc83a2f5c0049929c04e60b00985`; sonic `0x10accea52906c93ab5481168251fde64520bb6d9`; sonic `0x20547b278807c4a6fa0a388422ca77705c5e925a`; sonic `0x3b3699b2d286f1f60d8fb48ba3af646adfcee8ea`; sonic `0x5f477c5dfb9ed6c5e2923414b6a8dc51c976f847`; sonic `0x8850a36a5287ec9a8dcdd225a35e6e423bad7176`; sonic `0xa3f3b8924f1e490917ef69712c7dd546984a5866`; sonic `0xa829e3b6fed5c057c282c0f83aa6ddc0fcc87713`; sonic `0xb3154c2e44abc2aaa6e184cd5615fecbc189f5df`; sonic `0xbca6a21076e5e02cb5555f2b6745aab4743930d7`; sonic `0xd3fdf8eed3d8417eef217161a620457826589f2f`; sonic `0xd7e648256b28135dfcd9ffafe7ef7c10ac91ae8e`; sonic `0xf9f98bcba1b67ceb0bc123d9db73d889b4543874` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | sonic | unit-392522 | `0x12e66c8f215ddd5d48d150c8f46ad0c6fb0f4406` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | sonic | unit-392527 | `0xa57fa38b3fd45922394e9e1077748a2383f1542e` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 19 deployments: sonic `0x0d1eda94745bc38065cb803b340b8cc8f89df33e`; sonic `0x1a36e84b4e260c8932fde6be2b08cb25f8715e60`; sonic `0x41fa7fb65a8d6927d9d12254eded5f76550836fb`; sonic `0x42690d50df14390ecf7f68d94c59b382a1da664d`; sonic `0x44459184a9db541cd9060a72b487d941a9307d3f`; sonic `0x4d28e3829dbbb41a4ba5921605380b55799a657c`; sonic `0x4eaeca8c43ff768a9183ff6d8b163b7861960c29`; sonic `0x60b1b27d6d288ad8c1e78c0d8e193839352e7b98`; sonic `0x78be3a9d44f2976986f5a5b37d2d51a2242d5390`; sonic `0x7f7f0808243f760070f2acb889425c91d63ae6b9`; sonic `0x9a6158a078a92091fae0715f81a526c71e88c4dc`; sonic `0xd54406a2d05a186a95d5ebfe5de0d2154604784a`; sonic `0xd9009ba9292faa2878be052089b42a50c0759441`; sonic `0xd98acae628796d1a0ea1bc8ef2cc99a8aff18561`; sonic `0xdafd9776ca0028be1c8ac7eae00ce4700ccc7673`; sonic `0xdb0cf2eeef45206d3ef957c142c46e5cff97436e`; sonic `0xe2c4bd92bbe777f14e55f5c88d6d7b6d6d22bd09`; sonic `0xf4d70014952fef5d31bc6c1fd5a107813b33e4e1`; sonic `0xfe3244e2f3a672d5287dc5c98be60434802d8c4b` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | project_anchor | own_supporting | 0 | sonic | unit-392520 | `0xdaa4b06a6710576441367ab90b31689a562c4607` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x2735e2027d97e944cd7af0d0acbed24188238a7d`; sonic `0x99982a7af098ff6b1b6f0dc8f45e09db017e00bb` | ⚠️ Unaudited |
| PairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x292da3cfb2dbcfc2cf1f404a95929d909fa69493`; sonic `0x522f94e60d0d0656f737586a39a94e2a8a146b52`; sonic `0x60b7ec1e79140d1b7ff54ed7c737c8e89b03a8b6`; sonic `0x8d0f45614381cd12a500b1a24f8d8793a6ff5c34`; sonic `0xaccf6805f40f03af4909c9d238be8aea653ee652`; sonic `0xcb3e3ce89c6dad2b8ec0e5a56074539a232be924`; sonic `0xd54aa58eda39230316dc1a949305dd3b4ba8010c` | ⚠️ Unaudited |
| PairFactory | registry | project_anchor | own_supporting | 0 | sonic | unit-392504 | `0x2da25e7446a70d7be65fd4c053948becaa6374c8` | ⚠️ Unaudited |
| PoolUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x01d6f4672d61acb6d8571682aba81e2eb7861fcd`; sonic `0xd517cc2ba1e93151f4fedcdb40e5376521800328` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x324963c267c354c7660ce8ca3f5f167e05649970` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x7058589fc0e5fe7e716b963c3f9bfc908a1ce145`; sonic `0x891db37752d749f2b1bb2b597f7dd893c70041de`; sonic `0xb2b28f204b308f2ff9bfd88c3a2f158387be6eec` | ⚠️ Unaudited |
| PythOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x5c63d7154eebcc01a5d287fe99d6057be87cf5b2`; sonic `0x88a6539635da9c440c0b0a5e7e73ac6df4978bca`; sonic `0xf0367d2724e3f62fe151fa30e46b4d83253bb4d2` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 19 deployments: sonic `0x0960e2b599b3f1966d7e1e8047e2729dc7886a0e`; sonic `0x0e3142cb432ef844cba8cac3577acc9c85d3c09f`; sonic `0x1af8d0f0ec9599df81458a02a605e6f4167e41d8`; sonic `0x1ddc8064f3a3afa285e49bc71bc39b5ad2d265c9`; sonic `0x23645c0dee93596e34dd4a8db1842047732ac521`; sonic `0x34c0d5090d25ed78c173406e01394f89a622721a`; sonic `0x3f74861f26a1df00584f5a2df87e1fcf9718abf6`; sonic `0x65c3f10f43d79390a68b74cbf13527930e1a25ac`; sonic `0x6696e4f10ff1431276c4262b2bbbae0294f51769`; sonic `0x6d1cfc13473d4aa4ed4a19d81e7a5629de0865fe`; sonic `0x7983e99a40b647bb2af068aae11909037e6e0cf6`; sonic `0x802bab990bfa331918ec27f22a39f12daa98a003`; sonic `0xacf85018dff7c8ef0d347d32ddde0652294a4580`; sonic `0xad75cfbeab8bf4c8c48ac0d7c510d02f941dc45f`; sonic `0xbcc69b70a11adac965cbd2654463132c775c9500`; sonic `0xd479e36d8a134b86fa39de475f61217edf7f8d7d`; sonic `0xe46f54e70f0a0325d5fbd7d03720f43bb9a1587c`; sonic `0xf2a751c77d5709a14922f62a3130cc64351e614d`; sonic `0xfc5739d2971725a9e8d2fe5fff3fcc1c23698ae6` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | sonic | unit-392505 | `0x3003b4feaff95e09683feb7fc5d11b330cd79dc7` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 19 deployments: sonic `0x13819d1549d2899bcadc709f1ffbba74d16c62ad`; sonic `0x1fa4bb87a2aaa865f6c575cf6baa4586450efa62`; sonic `0x23151c8fa85afc6b97fe83dcc661f1d5fab6faf0`; sonic `0x3581546ace8bec23834c4befbbb3a9f63f0824fd`; sonic `0x56602bf06f8c89e42ed46cbb9b560b4684ee1744`; sonic `0x5b7162afce85de51e0809e88bcf16c650053a1f9`; sonic `0x727618f47674ebdf6b3fca44d73023b2647b6eab`; sonic `0x7f5134c5955a722ac9749f6f6aff3d29e0149bf8`; sonic `0x819bd8dc81bb92ad9e0d311d5f15552f1e5145ba`; sonic `0x8ebd92fda5f25244b92c7c45bec8210983a9fee7`; sonic `0x99e035783534b3b8d5de3afbd9d9b6286324e9dc`; sonic `0xa49d652f5199b8d61321fefb97cc26e68641f9b1`; sonic `0xb1e6f4d2414bbe4272dda094647565072fbbf3fe`; sonic `0xbbf6ede6c449b0b3437f4266ef0f7909f1b0d866`; sonic `0xc260f8b91a03b6fe75d2822b84ec48838a42748b`; sonic `0xced0d4711c3da80d38ee7bee2c72c314aca526f0`; sonic `0xd2c3551a03f5ae52ff107bff88f2e911e9e8eb72`; sonic `0xd3a8b168898a61914e4903478223c0118cff5da7`; sonic `0xfa2c032831f0ef42c976a58720f6275c77ef5e28` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | sonic | unit-392502 | `0x219b7adebc0935a3ec889a148c6924d51a07535a` | ⚠️ Unaudited |
| RamsesV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: sonic `0x209345d63c4629b46816d85c9e53f076036c7f75`; sonic `0x20b7703ce305366e4dbdad99e3181a58835d1f5a`; sonic `0x6a216eddec4443d57a305e2a2d16925fe7fd09e8`; sonic `0x73e326f39a80beb1a09eb5bdf6d8858fd46297e1`; sonic `0x8368218a93872e90f89abb0bb3c625652990aa5b`; sonic `0x9d2dfb536dd93b168b8b9bff3590bd16e78aeae5`; sonic `0xb2453885176bf8895c5f2b084138256aa3886e87`; sonic `0xbc2c6648d17896b468c50905a884180c257e8f7e`; sonic `0xed147bc254e9f0887365c1c6b7830bbedebb9bef`; sonic `0xed55fa4772cbb9f45ea8118a39cf640df2fdb2dc`; sonic `0xff1a32f42cad6c3c70af3fbceb2f3a24a87d6356` | ⚠️ Unaudited |
| RamsesV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x092c0b146201bb16d9a37cfc0a7310b05fc8799b`; sonic `0x9053fe060f412ad5677f934f89e07524343ee8e7` | ⚠️ Unaudited |
| RamsesV3PoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: sonic `0x04cad83faa77098a1726fe7702d4b9935e131ab9`; sonic `0x2207b730d39624bf5733d7ef3a22c8789b0854d7`; sonic `0x310e977af8b6667e763572de01adc0a23da2368c`; sonic `0x32f4171689eba852bb77832ef01a973a577a2344`; sonic `0x4c0a98ef13e29fcf8544256007bdf58c58bea3b6`; sonic `0x737e6e517ce63a77aa0311f339c369c94b3e47da`; sonic `0x9e0115c2280f4066a903fc6dadc6f12524efe671`; sonic `0xac8928aa7d2058db2b0e8f0fac4058ff45067a84`; sonic `0xc1747e43f2e07c0c146fd070320430c551d77156`; sonic `0xe6e4619b128e55ef21c72d4ba3d012eb1de63d7d`; sonic `0xf04581d79e340f7e944cf3318c832007050db8c8` | ⚠️ Unaudited |
| RewardClaimers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x684667de9025329e1c2d3869b2a7631a91ff4082` | ⚠️ Unaudited |
| RewardClaimers2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x1881fcfe62782771c4315fd0a6a087ba6bba11d5`; sonic `0x54e6eccd783ff3cfe10eb157e7b3ffc6d8c84b98`; sonic `0xf996933caed39736559c74cfce0d5ef3b4a8b995` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | sonic | unit-392501 | `0x1d368773735ee1e678950b7a97bca2cafb330cdc` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x4e026278de6dce70ce802f9254369e0f270a0a6b`; sonic `0xdedfa6b69204385be1619fe13fdaa9ccacc51c95`; sonic `0xdfdb9c39a3dbdbd50970e99ef34c9ab129aa4217`; sonic `0xe5a4f21b2fa0e4d98a0dc730914a78db014deff5`; sonic `0xf2079f862c94e9357ca463d8b01fdfa48e0ece7a` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | third_party_dependency | 2 | sonic | unit-392523 (2 proxies) | 2 deployments: sonic `0x5be2e859d0c2453c9aa062860ca27711ff553432`; sonic `0x600ad881ace196c27d0cf14e662ad03c6a5b4de8` | ⚠️ Unaudited |
| Shadow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x299d61ef8f413c03ad913c4f8d220f277e53f950` | ⚠️ Unaudited |
| Shadow | unknown | project_anchor | own_supporting | 0 | sonic | unit-392507 | `0x3333b97138d4b086720b5ae8a7844b1345a33333` | ⚠️ Unaudited |
| ShadowGelatoTask | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x14a9bdc938c5db29cd6873bb4fb05af9dce4a699`; sonic `0x654224f7a7ab916c2ce6585bef982f1107f2f11d` | ⚠️ Unaudited |
| ShadowMessageRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x40afbeda91714b7cfc82a2e02fa2313bbcb4b717`; sonic `0x422cbee941382fb2b71ab1d02204300a4830764a`; sonic `0x8cceb02d14f605850a2aad9eb705092717047e04` | ⚠️ Unaudited |
| ShadowTimelock | unknown | project_anchor | own_supporting | 0 | sonic | unit-392509 | `0x4577d5d9687ee4413fc0c391b85861f0a383df50` | ⚠️ Unaudited |
| Shadrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x1d8c9fcf9b55635070a30c21f8fb4e673a084347`; sonic `0x1e3b055b12dbb92fc27013e3e3fd10649d70ed92`; sonic `0xaf424d0c8b07f350345a677c8cb0c40fab3c5349` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 19 deployments: sonic `0x33f3c96adacf0602fa5ecdef6f6a1af42c17838b`; sonic `0x450c8f8b131240aed835052855ebfbc23bfe5578`; sonic `0x46416f225eaaa0ec91c709c01ec15b5414d7acd8`; sonic `0x477da53f943f956d1b7f2f60768f2f37e84afda3`; sonic `0x5c0230e1c8fb441fd1125bf672d38c2a6f4322ba`; sonic `0x6c43317546e3abb29856d777145aed08760e69df`; sonic `0x9354e08b724d4e75e842736b6c45ca0c8ad38fb2`; sonic `0x96b83ae9b3d0cf2b9d93b8fafecf9d8e4862d2f5`; sonic `0x97d93a46efbcc5bf2d699033c6aee6371dfeaaa9`; sonic `0xa0f206286452a623afe63fe379f8f8e258ac317d`; sonic `0xa921a4ec6153b65625034b7d9e50b02aa596ca45`; sonic `0xab419b19b141dfcee06ff30056078c8e389d2543`; sonic `0xccc583ab44f88c9ee0c6f3eabedec58a53008080`; sonic `0xe11651b70b470db05b115e6795883d88f4e30937`; sonic `0xe63bcc8e2252ac3465d749a7893dfa08f1f22248`; sonic `0xe7d26aec4f5c12b21608c192cc3bea7099df99c2`; sonic `0xec15b869bdfedbe992011b353b90694b106b8fdf`; sonic `0xf047f81eb5d76dcde0c292d783e161f26e885ce8`; sonic `0xfe15572ba2b7a929c8e57c26c8b3c2256076dc2f` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 1 | sonic | unit-392525 | `0x5543c6176feb9b4b179078205d7c29eea2e2d695` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | sonic | unit-392497 | `0x095bbc37f439eef5dcf733205b51447d03202e14` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 19 deployments: sonic `0x0e347ff8e0fc72ad1190b9ba6472f93df7604715`; sonic `0x15d917ec431811fa8333e6e61d2f837acadd676d`; sonic `0x2e09d04c41d513f30f09dca02c30ae364507fe6b`; sonic `0x375cce690e0f0ba532f4aa03f616bd731faa19d1`; sonic `0x4069bfdf05eb6b9e4f947685b8eb3b513275c00c`; sonic `0x4d84dc1c2b4b9aaed9f746ef3d59b71205762933`; sonic `0x4ec02642ab27688bb55d82978e90a9c954b0554f`; sonic `0x4eed7b6d0302d6be7e5acaaf144d75e31d933cc7`; sonic `0x562c526b671a6df173eb908553e0bae485124731`; sonic `0x78de12c03b1cefdea075a8bc9f4bed9a8469cda7`; sonic `0x791ab0697bd1fd5e9de8fa871c0fb84192fa016a`; sonic `0x83038d6195f25dd721076ec750fc475dbd6b0eb5`; sonic `0x8bfdc3f6b0c28c87eaa757497a2840f80cee244d`; sonic `0x8e12bcf491122eaf73d52b9e2f0336fd8d5d524c`; sonic `0xb3c1f2db93c0e4b87776fb9b267889026e8af888`; sonic `0xc710b280cec9b1bc5e48b2fb3fca15c33f75cce7`; sonic `0xe281ff824a7ae553f24986c54c5715f527c65211`; sonic `0xe88c3cf69bcf4a164e43c17c51e5095ccb6bbcde`; sonic `0xf87cd73d019ac12a392f297c13dfcede9ba83b47` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x78189fe0f9b4a78a9c951a4842e527eb5ff57381`; sonic `0xd558d993bb24874f2658a082bd154824760236da` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x18e9c03b486ef96d2de3a73567f8ed0cace38c73`; sonic `0x7ec31452cf4e40cbca7207d507ec040c6166a03d`; sonic `0x90b9c23cd9085dcff6b88da618ad0189a5993a96`; sonic `0xa5ec3ff1381fc99e65e8c72fce7802d93163b687` | ⚠️ Unaudited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | sonic | unit-392516 | `0x92643dc4f75c374b689774160cdea09a0704a9c2` | ⚠️ Unaudited |
| VoteModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x1bc0166f81bdfba98aa13493916895e169d10f66`; sonic `0x57f518dc7d37405602f44054ead3c06a25aca0ef`; sonic `0xf7a585932b4e3b121fe1af8edd4773a49313656c` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 16 deployments: sonic `0x005a44fb100ebb756a8a14f439dda3ee465ed32f`; sonic `0x03171ac8a281731728ca4d96ccb1b95f8dc644b5`; sonic `0x06d3c0f3b6766b7b2c0323bd43b886b650feca4e`; sonic `0x1172aaaa62644a79c96717112a84bdd4f1af3513`; sonic `0x1996196a9fdee4fb14931adb171ad3be966a320f`; sonic `0x1f4e3711e76d7893231e4e525fbdc2c8a34b9335`; sonic `0x27ffc897ce020fd0547492d4a1f8e4dad0f7fdf3`; sonic `0x348d9bef98af9d08a8c7fd8530d1fa7728de4d6a`; sonic `0x3af1dd7a2755201f8e2d6dcda1a61d9f54838f4f`; sonic `0x3cd2cad04aa6c57e7988e5c45425d9b59f28df5d`; sonic `0x702c1793c43bc8489625967f231c75df0ef53562`; sonic `0x80cde6f58a0fdacb340dd3ea3417df8586a507fb`; sonic `0xa3ce58fac4edec6880b185826c405b57300d7d2d`; sonic `0xcbc6ffea432acdb134f6b2b6c3f05d594f17055d`; sonic `0xccfda40bb384d014152b11a702a177be04c8fdbf`; sonic `0xdafd303cbde4d0e1d2aeb447b1cb4cfe53a5b83c` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5d7e87faae386778cad7de9421ef3b53af4af3ad`; sonic `0x8d91c7fd9c4edede9cded6c186f5a2fac96f7777` | ⚠️ Unaudited |
| x33 | unknown | project_anchor | own_supporting | 0 | sonic | unit-392506 | `0x3333111a391cc08fa51353e9195526a70b333333` | ⚠️ Unaudited |
| x33Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x0135f52b53c07da55850741342b7211d6b1fabe5`; sonic `0x8c9df8af131a9053202dc6505ae31f42d4ba2186`; sonic `0x9500fec2f2cef4f051e96939311a2ee662db50ce`; sonic `0x9710e10a8f6fba8c391606fee18614885684548d` | ⚠️ Unaudited |
| XShadow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x13944ab11e476c69bfecff1c7de71492457b4d84`; sonic `0x8a756e3c9d2e1a6211f273136560990667f85448` | ⚠️ Unaudited |
| XShadow | unknown | project_anchor | own_supporting | 0 | sonic | unit-392510 | `0x5050bc082ff4a74fb6b0b04385defddb114b2424` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (35)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x016bcaf1703d09053dcfcd7d792ce20f32483570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x03547621ccc7f0599c327bc0b35cc27a9d96d773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x03fe4dd36db2c8483e258974db82d07d82f8d239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x06a18e1cf3edd294949a4b52d5cd827289e099ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392498 | `0x0e03b0a37b1c5c1d9800b758ccb5b8e229690dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x16f78602ed8f9853fbddacee9e66605c315f2829` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392500 | `0x1a99e55a2f6ae7d64bcfede80837b5884b1b1d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ee369827d1b01449b61f229cb7d8df1ff9f7afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x24ad57227f96d2dc4963374bce033cc4879546b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x276e9c08eb6e9ed06742cb1f0037cda339ec77dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2940987fce2650655902cb95da6bfbf337a0a39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2d619f07e544826c17feb1cc89ae093f6afc57a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x35456f932a444494d1f75f0ed49e244dc57c46f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4b96c935899c99682e99cde8fffdafe213c9e232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4ce3647492a3f5b4f9c940a7160652ba6001c4cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4e70f2e540389765b006f4b4e120cc3f4147f62d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x508a838449f168f4c08a1f86b1186afb581e0fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x62e93a640f88f164a60295d0e9e4c206a1088c29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6369e8dfad8db8378179d74c187f1d5dea47fa9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6dc606cb4cc4cb02e89479e00e4b01bc2e92f785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x83489c522fdfb94755481c6bcbc84d4103cdfe5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x89537725015c11f439b063ff93e2e0fafa128232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa03dfcccb5c9ce510377bd305a0d42949bc90b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa5cfbb90816b5f274a9a9ff19e0ac7db057574e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa47967b198a4d7f7c50f77c450c3585b6816b70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb0fceb9f92679272708235971f4c3977d8676085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb71fb3cd0740a5ebb2f37d378cd8f6e0b7b53ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xba62b207859d9567263d5312b6d36f10085e8ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbfacb50265a3f7d02cca1a6d42e0080446470325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc1857ea6ff05a0ead8d7588a11878638dcb0155c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc66ca359fe18822a9634365e86e594d0dcb92e67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc9b0c7dfecd44f855e38c0b594b4ddb03d40f160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcf0d4c40cda481814270b46d59928a943d61dd1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xda4329c7b0a75d8d2954d08e8b4c377a2dd65fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xede95984a0c9e667bdd805351d449fc83bfbfcbd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 415
- Live contracts: 15
- Unknown liveness contracts: 400
- Source-verified contracts: 381
- Currently scope-matched contracts retained as-is: 7
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=7, candidate auto own=11, candidate review=69, contamination review=25, exact address book overlap=5, source verified unclassified=264, unverified unclassified=34

Showing first 200 of 415 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| sonic | currently scope matched | FeeCollector<br>`0xcc0365f8f453c55ea7471c9f89767928c8f8d27f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | currently scope matched | FeeDistributorFactory<br>`0x29adf08a22381855243eeeb3228647ac56847ff5` | project_anchor | unknown | live | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | currently scope matched | Minter<br>`0xc7022f359cd1bda8ab8a19d1f19d769cbf7f3765` | project_anchor | unknown | live | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | currently scope matched | RamsesV3PoolDeployer<br>`0x8bbdc15759a8ecf99a92e004e0c64ea9a5142d59` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | currently scope matched | TransparentUpgradeableProxy<br>`0x5e7a9eea6988063a4dbb9ccddb3e04c923e8e37f` | project_anchor | unknown | live | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate auto own | RamsesV3Factory<br>`0x209345d63c4629b46816d85c9e53f076036c7f75` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate auto own | RamsesV3Factory<br>`0x20b7703ce305366e4dbdad99e3181a58835d1f5a` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate auto own | RamsesV3Factory<br>`0x6a216eddec4443d57a305e2a2d16925fe7fd09e8` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate auto own | RamsesV3Factory<br>`0x73e326f39a80beb1a09eb5bdf6d8858fd46297e1` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate auto own | RamsesV3Factory<br>`0x8368218a93872e90f89abb0bb3c625652990aa5b` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate auto own | RamsesV3Factory<br>`0x9d2dfb536dd93b168b8b9bff3590bd16e78aeae5` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate auto own | RamsesV3Factory<br>`0xb2453885176bf8895c5f2b084138256aa3886e87` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate auto own | RamsesV3Factory<br>`0xbc2c6648d17896b468c50905a884180c257e8f7e` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate auto own | RamsesV3Factory<br>`0xed147bc254e9f0887365c1c6b7830bbedebb9bef` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate auto own | RamsesV3Factory<br>`0xed55fa4772cbb9f45ea8118a39cf640df2fdb2dc` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate auto own | RamsesV3Factory<br>`0xff1a32f42cad6c3c70af3fbceb2f3a24a87d6356` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | ClGaugeFactory<br>`0x9b7e6279d221515b51e769280ef1ebb4e62bea1c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | ClGaugeFactory<br>`0x9caf8e8b8a8208d43579de755f394a88be5686e0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | ClGaugeFactory<br>`0xee31682bac383e7463822eb9f15fedfc47160116` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | ClGaugeFactory<br>`0xf914cc768040b4268a779c3084a3e9cda6e8a1a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | DustSwapper<br>`0x1817ec37284f7d2104e9c11201d7f4c31cb84965` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | DustSwapper<br>`0xa8d15f9597259600aa969b9205e2d82b6b60bc9f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | FeeCollector<br>`0x6a4400157291d1ff339188eca407011c7429c9c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | FeeCollector<br>`0xa3c90f253cf47a946ecc9d7d5e7f395e03bdd8f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | FeeCollector<br>`0xbf9ab1b18f9e943404e794bdfe9b5aac012fa017` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | NonfungiblePositionManager<br>`0x002ee63dfec7bc83a2f5c0049929c04e60b00985` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | NonfungiblePositionManager<br>`0x10accea52906c93ab5481168251fde64520bb6d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | NonfungiblePositionManager<br>`0x20547b278807c4a6fa0a388422ca77705c5e925a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | NonfungiblePositionManager<br>`0x3b3699b2d286f1f60d8fb48ba3af646adfcee8ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | NonfungiblePositionManager<br>`0x5f477c5dfb9ed6c5e2923414b6a8dc51c976f847` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | NonfungiblePositionManager<br>`0x8850a36a5287ec9a8dcdd225a35e6e423bad7176` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | NonfungiblePositionManager<br>`0xa3f3b8924f1e490917ef69712c7dd546984a5866` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | NonfungiblePositionManager<br>`0xa829e3b6fed5c057c282c0f83aa6ddc0fcc87713` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | NonfungiblePositionManager<br>`0xb3154c2e44abc2aaa6e184cd5615fecbc189f5df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | NonfungiblePositionManager<br>`0xbca6a21076e5e02cb5555f2b6745aab4743930d7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | NonfungiblePositionManager<br>`0xd3fdf8eed3d8417eef217161a620457826589f2f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | NonfungiblePositionManager<br>`0xd7e648256b28135dfcd9ffafe7ef7c10ac91ae8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | NonfungiblePositionManager<br>`0xf9f98bcba1b67ceb0bc123d9db73d889b4543874` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | PairFactory<br>`0x292da3cfb2dbcfc2cf1f404a95929d909fa69493` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | PairFactory<br>`0x522f94e60d0d0656f737586a39a94e2a8a146b52` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | PairFactory<br>`0x60b7ec1e79140d1b7ff54ed7c737c8e89b03a8b6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | PairFactory<br>`0x8d0f45614381cd12a500b1a24f8d8793a6ff5c34` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | PairFactory<br>`0xaccf6805f40f03af4909c9d238be8aea653ee652` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | PairFactory<br>`0xcb3e3ce89c6dad2b8ec0e5a56074539a232be924` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | PairFactory<br>`0xd54aa58eda39230316dc1a949305dd3b4ba8010c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RamsesV3PoolDeployer<br>`0x04cad83faa77098a1726fe7702d4b9935e131ab9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RamsesV3PoolDeployer<br>`0x2207b730d39624bf5733d7ef3a22c8789b0854d7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RamsesV3PoolDeployer<br>`0x310e977af8b6667e763572de01adc0a23da2368c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RamsesV3PoolDeployer<br>`0x32f4171689eba852bb77832ef01a973a577a2344` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RamsesV3PoolDeployer<br>`0x4c0a98ef13e29fcf8544256007bdf58c58bea3b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RamsesV3PoolDeployer<br>`0x737e6e517ce63a77aa0311f339c369c94b3e47da` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RamsesV3PoolDeployer<br>`0x9e0115c2280f4066a903fc6dadc6f12524efe671` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RamsesV3PoolDeployer<br>`0xac8928aa7d2058db2b0e8f0fac4058ff45067a84` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RamsesV3PoolDeployer<br>`0xc1747e43f2e07c0c146fd070320430c551d77156` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RamsesV3PoolDeployer<br>`0xe6e4619b128e55ef21c72d4ba3d012eb1de63d7d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RamsesV3PoolDeployer<br>`0xf04581d79e340f7e944cf3318c832007050db8c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RewardClaimers<br>`0x684667de9025329e1c2d3869b2a7631a91ff4082` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RewardClaimers2<br>`0x1881fcfe62782771c4315fd0a6a087ba6bba11d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RewardClaimers2<br>`0x54e6eccd783ff3cfe10eb157e7b3ffc6d8c84b98` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | RewardClaimers2<br>`0xf996933caed39736559c74cfce0d5ef3b4a8b995` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | VoteModule<br>`0x1bc0166f81bdfba98aa13493916895e169d10f66` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | VoteModule<br>`0x57f518dc7d37405602f44054ead3c06a25aca0ef` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | VoteModule<br>`0xf7a585932b4e3b121fe1af8edd4773a49313656c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | Voter<br>`0x1996196a9fdee4fb14931adb171ad3be966a320f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | Voter<br>`0x27ffc897ce020fd0547492d4a1f8e4dad0f7fdf3` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | Voter<br>`0x348d9bef98af9d08a8c7fd8530d1fa7728de4d6a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | Voter<br>`0x80cde6f58a0fdacb340dd3ea3417df8586a507fb` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | Voter<br>`0xa3ce58fac4edec6880b185826c405b57300d7d2d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | Voter<br>`0xccfda40bb384d014152b11a702a177be04c8fdbf` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | candidate review | Voter<br>`0xdafd303cbde4d0e1d2aeb447b1cb4cfe53a5b83c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | AutomatedFeeNotifier<br>`0x6f6a537c1e9ccf11d0bc59e64bf8d93f26484aef` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | FeeDistributorFactory<br>`0x14520c1e7728ce4043c5538f602afbf3e526582d` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | FeeDistributorFactory<br>`0x90e433e091b4eaf2ecc00d74aab7971f5dcec31c` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | FeeRecipientFactory<br>`0x178800c74dc32cb6814b5a3ffe2b7e68c85d0acc` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | FeeRecipientFactory<br>`0x49607c8e263fe8ae43481ba27a35276ac9cc860d` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | GaugeFactory<br>`0x1903c747999b728b95b965bb7a0de6029d939d22` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | LauncherPlugin<br>`0x0e192ebc7e4279876df9cea8b331a2b2697f7c33` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | LauncherPlugin<br>`0x5b4e02a81373cea45a0539fbd21a741f125d0f80` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | Minter<br>`0x2b03020ee29c66e518f73683d7788732d4289856` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | Minter<br>`0x4e3a52a75eb452a48ba2561a2d75d35c0013a752` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | MixedRouteQuoterV1<br>`0x57cb65bf5ad9ff96c465c1f9c4cfb941171a7263` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | NonfungibleTokenPositionDescriptor<br>`0x0d1eda94745bc38065cb803b340b8cc8f89df33e` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | Quoter<br>`0x0960e2b599b3f1966d7e1e8047e2729dc7886a0e` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | QuoterV2<br>`0x13819d1549d2899bcadc709f1ffbba74d16c62ad` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | TickLens<br>`0x095bbc37f439eef5dcf733205b51447d03202e14` | project_anchor | unknown | live | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | contamination review | TickLens<br>`0x4d84dc1c2b4b9aaed9f746ef3d59b71205762933` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | exact address book overlap | FeeRecipientFactory<br>`0x5712bd693ac758158146aa151f31bd74cfbf37c1` | project_anchor | unknown | live | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | exact address book overlap | GaugeFactory<br>`0x8cf82d413ca20a40a2fa43c2bf77d136d81299e9` | project_anchor | unknown | live | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | exact address book overlap | LauncherPlugin<br>`0x3ec4fc1885513d932f113f9de9b50a8764dbfc7f` | project_anchor | unknown | live | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | exact address book overlap | NonfungibleTokenPositionDescriptor<br>`0xdaa4b06a6710576441367ab90b31689a562c4607` | project_anchor | unknown | live | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x0d6cd90ef1ec1a6e181e540ea60cc6151f8a9e9f` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x18131c931444c3b019017c0263bb0870123b3fab` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x2e9418f7590d206ffb12ba29a13d700a579976ba` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x359d5b37e4b44f0d11ad4183bacda1054f978ca9` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x398d7632521b599c514137b9cdb78cb307bd0cec` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x3a999975449bc9ecc0e7d00c13cc8c32eebd7cd5` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x45aa6f4b13b5cd24b52f4e7dc4090611c4828aca` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x56d7e8f0729289737e68bd1a93f54edc33f97fd7` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x57dda5340505a8948aa7e3b1c01632559e27642f` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x585118ffdfab4c53c17f8ec79c7eb342bd7d88fc` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x617a62dcdc1e64a50c5adaae2b32aa8835302b63` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x6b400cb52def4086ab117be0c000da6aa20318a9` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x82129fbeb71768f4d9a0acea01fec051cdb31111` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x896e1dd5ccc4b06702dd1993c74fc73a4ae75f61` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x8b109eeafcacf5a91b83f01460ffe5415ef05224` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x925ba5c6dce168cd5ec69fe6ee892d43fec391a4` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x95156b0e318a94d7e76f24a9b03dbd83d982d143` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x96a55745a4643eed71f525030f6e0d63e88e61db` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x9885e62a04d231bf81b0b0986478876c20f2977b` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0x9fb974d4702f9c37e65450c799ede28c7b1e9cd0` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xa1275743b3fa85cd66d99635fb81740c8b969657` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xa9ddae28920f016bdec448c9fd005acb5a1b35a4` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xaf29cca96e7092bab96dfad5408a7a875fc62a35` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xb1ad3f64c1958107c122114086f54110f77e4424` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xb8ca18b412bec38cd98c5df407891e17733df175` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xbd1a7ad06043e0f0c57798421bdcd88f55726e01` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xbf0630f8435839ad900ac6f29beed27afec4931e` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xc051ceadb767105a034f8bd641d8d971b58a1c6d` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xc4433cc72a2db5d4c69f202d2cadc91c1fb2c0b3` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xd230afd74278a159d85f000efadc4bc7b9b0a13a` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xdd632eaab0e648824e9c58d7a479e0edd575c664` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xe4c3dc75e398350ebeb0874c800af9b8c8dd1522` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xe66030722bbe57c9283654ff97dac8cb1c8ed8b5` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xe6ae8b7c74e88ee2af5ffdde38d6186ab1244ced` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AccessHub<br>`0xebd6822eda9c17122b710fa42ca3d24244918e80` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | AutomatedFeeNotifier<br>`0x9eb5b7cd3ebb22bb3f093406da3ae33ebd55b4b1` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | EmissionsToken<br>`0x7423e3d8fc6e626be895ee70ae54a68994c4318e` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | EmissionsToken<br>`0xa42008d78297e5ebab526b3129880004c8452171` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | EmissionsToken<br>`0xca4b1a69f7683c05a462bc795162a2026d6c5bb7` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | FeeDistributorFactory<br>`0x292676db2945ac888cd7e9f14e1d5db74ef87d47` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | FeeDistributorFactory<br>`0xa73ff086597820af58b2f2d422364477fceca4bf` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | FeeDistributorFactory<br>`0xa98a11e81fdb0cdf7172427032bb0bdd26f5335a` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | FeeDistributorFactory<br>`0xcfca4c93ebb2316c134d23a3a0fd540efb72618c` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | FeeDistributorFactory<br>`0xf0ee36e430f9760fbdcd95d8b65c6172c9c6aab2` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | FeeRecipientFactory<br>`0x45623bfda22fd908a0d007542e3ba333579690b0` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | FeeRecipientFactory<br>`0x5f86d184e3fd73c758432495c1b10759384a241b` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | FeeRecipientFactory<br>`0x75729aae1a529b41eb9530f09659a03e6e11e17d` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | FeeRecipientFactory<br>`0xde8db146f41259bb9ea2443b014b8b871d3ca699` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | FeeRecipientFactory<br>`0xe4467670c32d6416c29cad1e07b921765b4e4d8f` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | GaugeFactory<br>`0x3263aaa990ee556b8f43072db26bd8bc4e5ddd85` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | GaugeFactory<br>`0x7b8248accce02a42aea489c1817dfa1bab803650` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | GaugeFactory<br>`0x8bef5e3f79c73e47ddc01530b454c0a2bfc434ec` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | GaugeFactory<br>`0xd371018ec21cd44c71b0b86d0b8af7a854496614` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | GaugeFactory<br>`0xec08a4da11d879ceda83209dc7030c4e6d0d199f` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | GaugeFactory<br>`0xf2f565bd824b2f7c692aeb11e1fdba74811bfd15` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Gems<br>`0x64980593f031d62ccd4b3ad02b5e74374107a9f0` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | LauncherPlugin<br>`0x26dd03f654c3ae62db774654ea4c718fbcc30789` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | LauncherPlugin<br>`0x3ebe65466ad60f55be3a3c596e3f9c25d9065967` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | LauncherPlugin<br>`0x804331ad5657f6cfa312e009b52fb37ca942325e` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | LauncherPlugin<br>`0xb91e35e52c08b57af4520a8c95268a942ebf8561` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | LauncherPlugin<br>`0xecdb78b76e6599e3cfce26265cf8c5dd87eab6b0` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Minter<br>`0x2f7864a1ca29da0396aafa4148bd4169d7639340` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Minter<br>`0x635e17d92e59595ebc780e358275623ada3aa2d8` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Minter<br>`0x71619ce35b9e6fdfdeb549b0af3f03db69f7f644` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Minter<br>`0x9bc0b2e3e85128639a45d93f0d636908ed1a1c46` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Minter<br>`0xa478d856aef1745834b1bffced5f6f5204e01364` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | MixedRouteQuoterV1<br>`0x7c2916c91101fb49934302c8b631b198235abe76` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | MixedRouteQuoterV1<br>`0xbf63dcdf1e9827aac16f5e825f0f543db9ce5a13` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | MixedRouteQuoterV1<br>`0xd464d06edd2baf89ca67c02579ce118a5df106d9` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | MixedRouteQuoterV1<br>`0xdce360fe13715ca231424a1a582a294b189ec261` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x1a36e84b4e260c8932fde6be2b08cb25f8715e60` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x41fa7fb65a8d6927d9d12254eded5f76550836fb` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x42690d50df14390ecf7f68d94c59b382a1da664d` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x44459184a9db541cd9060a72b487d941a9307d3f` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x4d28e3829dbbb41a4ba5921605380b55799a657c` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x4eaeca8c43ff768a9183ff6d8b163b7861960c29` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x60b1b27d6d288ad8c1e78c0d8e193839352e7b98` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x78be3a9d44f2976986f5a5b37d2d51a2242d5390` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x7f7f0808243f760070f2acb889425c91d63ae6b9` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x9a6158a078a92091fae0715f81a526c71e88c4dc` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0xd54406a2d05a186a95d5ebfe5de0d2154604784a` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0xd9009ba9292faa2878be052089b42a50c0759441` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0xd98acae628796d1a0ea1bc8ef2cc99a8aff18561` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0xdafd9776ca0028be1c8ac7eae00ce4700ccc7673` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0xdb0cf2eeef45206d3ef957c142c46e5cff97436e` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0xe2c4bd92bbe777f14e55f5c88d6d7b6d6d22bd09` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0xf4d70014952fef5d31bc6c1fd5a107813b33e4e1` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0xfe3244e2f3a672d5287dc5c98be60434802d8c4b` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | ProxyAdmin<br>`0x7058589fc0e5fe7e716b963c3f9bfc908a1ce145` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | ProxyAdmin<br>`0x891db37752d749f2b1bb2b597f7dd893c70041de` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | ProxyAdmin<br>`0xb2b28f204b308f2ff9bfd88c3a2f158387be6eec` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0x0e3142cb432ef844cba8cac3577acc9c85d3c09f` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0x1af8d0f0ec9599df81458a02a605e6f4167e41d8` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0x1ddc8064f3a3afa285e49bc71bc39b5ad2d265c9` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0x23645c0dee93596e34dd4a8db1842047732ac521` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0x34c0d5090d25ed78c173406e01394f89a622721a` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0x3f74861f26a1df00584f5a2df87e1fcf9718abf6` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0x65c3f10f43d79390a68b74cbf13527930e1a25ac` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0x6696e4f10ff1431276c4262b2bbbae0294f51769` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0x6d1cfc13473d4aa4ed4a19d81e7a5629de0865fe` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0x7983e99a40b647bb2af068aae11909037e6e0cf6` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0x802bab990bfa331918ec27f22a39f12daa98a003` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0xacf85018dff7c8ef0d347d32ddde0652294a4580` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0xad75cfbeab8bf4c8c48ac0d7c510d02f941dc45f` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0xbcc69b70a11adac965cbd2654463132c775c9500` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0xd479e36d8a134b86fa39de475f61217edf7f8d7d` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0xe46f54e70f0a0325d5fbd7d03720f43bb9a1587c` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0xf2a751c77d5709a14922f62a3130cc64351e614d` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | Quoter<br>`0xfc5739d2971725a9e8d2fe5fff3fcc1c23698ae6` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |
| sonic | source verified unclassified | QuoterV2<br>`0x1fa4bb87a2aaa865f6c575cf6baa4586450efa62` | non_address_book | unknown | unknown | verified | n/a | `0x07712d748c40608810a0305751e35f0eedef70d2` |

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
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | AccessHub | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5e7a9eea6988063a4dbb9ccddb3e04c923e8e37f` — deployed 2024-12-27 05:22:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | ClGaugeFactory | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x452f378db86f6ef98731cdeb8344d8c171b6968c` — deployed 2025-02-26 12:46:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | ClGaugeFactoryStorage | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Etherex | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeCollector | own contract | FeeCollector (selected) `0xcc0365f8f453c55ea7471c9f89767928c8f8d27f` — deployed 2025-01-15 22:06:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeDistributor | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeDistributorFactory | own contract | FeeDistributorFactory (selected) `0x29adf08a22381855243eeeb3228647ac56847ff5` — deployed 2025-01-15 20:56:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Gauge | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | GaugeV3 | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x452f378db86f6ef98731cdeb8344d8c171b6968c` — deployed 2025-02-26 12:46:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Minter | own contract | Minter (selected) `0xc7022f359cd1bda8ab8a19d1f19d769cbf7f3765` — deployed 2025-01-15 20:56:14+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | NonfungiblePositionManager | ambiguous — not counted | NonfungiblePositionManager (proxy) (alternative) `0xa57fa38b3fd45922394e9e1077748a2383f1542e` — deployed 2024-12-27 05:34:40+03 — liveness: live (current_address_book_code)<br>NonfungiblePositionManager (proxy) (alternative) `0x12e66c8f215ddd5d48d150c8f46ad0c6fb0f4406` — deployed 2025-01-01 11:07:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Pair | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | PositionKey | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesTreasuryHelper | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xcd2d0637c94fe77c2896bbcbb174ceffb08de6d7` — deployed 2024-12-27 05:25:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3Pool | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3PoolDeployer | own contract | RamsesV3PoolDeployer (selected) `0x8bbdc15759a8ecf99a92e004e0c64ea9a5142d59` — deployed 2024-12-27 05:25:16+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3PositionManager | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | REX33 | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RewardValidator | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | VoteModule | own contract | VoteModule (selected) `0xdcb5a24ec708cc13cee12bfe6799a78a79b666b4` — deployed 2025-01-15 21:35:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Voter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x9f59398d0a397b2eeb8a6123a6c7295cb0b0062d` — deployed 2025-02-26 12:46:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | VoterGovernanceActions | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | VoterStorage | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | XRex | unmatched — not counted | — | mentioned in findings | no |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3PoolDeployer | own contract | RamsesV3PoolDeployer (selected) `0x8bbdc15759a8ecf99a92e004e0c64ea9a5142d59` — deployed 2024-12-27 05:25:16+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xcd2d0637c94fe77c2896bbcbb174ceffb08de6d7` — deployed 2024-12-27 05:25:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Pool | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Oracle | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Tick | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Position | unmatched — not counted | — | listed in scope section | no |
| code4rena.com/reports/2024-10-ramses-exchange | GaugeV3 | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x452f378db86f6ef98731cdeb8344d8c171b6968c` — deployed 2025-02-26 12:46:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Pool | unmatched — not counted | — | Listed in scope and mentioned in findings. | no |
| code4rena.com/reports/2024-10-ramses-exchange | FeeCollector | own contract | FeeCollector (selected) `0xcc0365f8f453c55ea7471c9f89767928c8f8d27f` — deployed 2025-01-15 22:06:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xcd2d0637c94fe77c2896bbcbb174ceffb08de6d7` — deployed 2024-12-27 05:25:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | NonfungiblePositionManager | ambiguous — not counted | NonfungiblePositionManager (proxy) (alternative) `0xa57fa38b3fd45922394e9e1077748a2383f1542e` — deployed 2024-12-27 05:34:40+03 — liveness: live (current_address_book_code)<br>NonfungiblePositionManager (proxy) (alternative) `0x12e66c8f215ddd5d48d150c8f46ad0c6fb0f4406` — deployed 2025-01-01 11:07:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2024-10-ramses-exchange | Oracle | unmatched — not counted | — | Referenced in code and findings as Oracle library. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x5712bd693ac758158146aa151f31bd74cfbf37c1` | FeeRecipientFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x8cf82d413ca20a40a2fa43c2bf77d136d81299e9` | GaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5555b2733602ded58d47b8d3d989e631cbee5555` | Gems | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3ec4fc1885513d932f113f9de9b50a8764dbfc7f` | LauncherPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x12e66c8f215ddd5d48d150c8f46ad0c6fb0f4406` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa57fa38b3fd45922394e9e1077748a2383f1542e` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xdaa4b06a6710576441367ab90b31689a562c4607` | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x2da25e7446a70d7be65fd4c053948becaa6374c8` | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3003b4feaff95e09683feb7fc5d11b330cd79dc7` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x219b7adebc0935a3ec889a148c6924d51a07535a` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x1d368773735ee1e678950b7a97bca2cafb330cdc` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3333b97138d4b086720b5ae8a7844b1345a33333` | Shadow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x4577d5d9687ee4413fc0c391b85861f0a383df50` | ShadowTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5543c6176feb9b4b179078205d7c29eea2e2d695` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x095bbc37f439eef5dcf733205b51447d03202e14` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x92643dc4f75c374b689774160cdea09a0704a9c2` | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3333111a391cc08fa51353e9195526a70b333333` | x33 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5050bc082ff4a74fb6b0b04385defddb114b2424` | XShadow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 85 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 35 |

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
