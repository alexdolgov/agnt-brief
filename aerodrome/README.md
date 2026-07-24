# Agentic Audit Brief: Aerodrome

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Aerodrome (`aerodrome`)
- Website: [https://aerodrome.finance/](https://aerodrome.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 124 unique implementations (128 raw deployments)
- Coverage basis: 0/28 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $310,170,753.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Aerodrome. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across base. Structural roles: 25 core, 5 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: core (25), supporting (5)
- Contract kinds: contract (30)
- Detected standards: erc165 (3), erc721 (2), multicall (2), ownable (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (19), permit2 (1), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

5 of 29 contracts are derived from known codebases. 24 contracts have no detected origin.

### Forked Contracts

**CLFactory** (`0x5e7bb104d84c7cb9b682aac2f3d509f5f406809a`, chain 8453)
Origin: arrakis-finance (`0x5e7bb1...06809a`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Minter** (`0xeb018363f0a9af8f91f06fee6613a751b2a33fe5`, chain 8453)
Origin: 40-acres (`0xeb0183...a33fe5`)
Containment: 100.0% - 29 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Router** (`0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43`, chain 8453)
Origin: 40-acres (`0xcf77a3...874e43`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Voter** (`0x16613524e02ad97edfef371bc883f2f5d6c480a5`, chain 8453)
Origin: arcadia-finance (`0x166135...c480a5`)
Containment: 100.0% - 34 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VotingEscrow** (`0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4`, chain 8453)
Origin: iaero-protocol (`0xebf418...67e6b4`)
Containment: 100.0% - 50 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- Aero (`0x940181a94a35a4569e4529a3cdfb74e38fd98631`, chain 8453)
- AirdropDistributor (`0xe4c69af018b2ea9e575026c0472b6531a2bc382f`, chain 8453)
- BasePrices (`0xee717411f6e44f9fee011835c8e6faac5deff166`, chain 8453)
- CustomUnstakedFeeModule (`0x0ad08370c76ff426f534bb2affd9b5555338ee68`, chain 8453)
- Emergency Council (`0x99249b10593fca1ae9dae6d4819f1a6dae5c013d`, chain 8453)
- FactoryRegistry (`0x5c3f18f06cc09ca1910767a34a20f771039e37c0`, chain 8453)
- Forwarder (`0x15e62707fca7352fbe35f51a8d6b0f8066a05dcc`, chain 8453)
- GaugeFactory (`0x35f35ca5b132cadf2916bab57639128eac5bbcb5`, chain 8453)
- ManagedRewardsFactory (`0xfda1fb5a2a5b23638c7017950506a36dcfd2bdc3`, chain 8453)
- MixedRouteQuoterV1 (`0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6`, chain 8453)
- NonfungibleTokenPositionDescriptor (`0x01b0cacb9a8004e08d075c919b5df3b59fd53c55`, chain 8453)
- PoolFactory (`0x420dd381b31aef6683db6b902084cb0ffece40da`, chain 8453)
- QuoterV2 (`0x254cf9e1e6e233aa1ac962cb9b05b2cfeaae15b0`, chain 8453)
- RewardsDistributor (`0x227f65131a261548b057215bb1d5ab2997964c7d`, chain 8453)
- Slipstream GaugeFactory (`0xd30677bd8dd15132f251cb54cbda552d2a05fb08`, chain 8453)
- Slipstream GaugeImplementation (`0xf5601f95708256a118ef5971820327f362442d2d`, chain 8453)
- Slipstream NonfungiblePositionManager (`0x827922686190790b37229fd06084350e74485b72`, chain 8453)
- Slipstream PoolImplementation (`0xec8e5342b19977b4ef8892e02d8daecfa1315831`, chain 8453)
- Slipstream SwapFeeModule (`0xf4171b0953b52fa55462e4d76eca1845db69af00`, chain 8453)
- SugarHelper (`0x0ad09a66af0154a84e86f761313d02d0abb6edd5`, chain 8453)
- SwapRouter (`0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5`, chain 8453)
- UniversalRouter (`0x6cb442acf35158d5eda88fe602221b67b400be3e`, chain 8453)
- VeArtProxy (`0xe9992487b2ee03b7a91241695a58e0ef3654643e`, chain 8453)
- VotingRewardsFactory (`0x45ca74858c579e717ee29a86042e0d53b252b504`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 30; live-surface rows included: 30 (29 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/31 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/28 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 28 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 93 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 29 of 124 unique; 95 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/73
- Verified + Unaudited implementations: 73
- Verified by bytecode match: 0
- Unverified implementations: 51
- Unique implementations: 124
- Raw deployments: 128
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

### ⚠️ Verified + Unaudited (73)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Aero | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-378536 | `0x940181a94a35a4569e4529a3cdfb74e38fd98631` | ⚠️ Unaudited |
| AirdropDistributor | unknown | project_anchor | own_supporting | 0 | base | unit-378549 | `0xe4c69af018b2ea9e575026c0472b6531a2bc382f` | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e634181dafb102213fad46b71ba1a4b6153b648` | ⚠️ Unaudited |
| BaseBridgeHelperModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x362dbd4ff662b2e2b05b9cedc91da2dd2c655b26` | ⚠️ Unaudited |
| BasePrices | unknown | project_anchor | own_supporting | 0 | base | unit-378558 | `0xee717411f6e44f9fee011835c8e6faac5deff166` | ⚠️ Unaudited |
| BridgedBaseWOETHProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xd8724322f44e5c58d7a815f542036fb17dbbf839`; base `0xf66886e242e20cab2496af1d411ebcfb73440270` | ⚠️ Unaudited |
| BridgedWOETHStrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x80c864704dd06c3693ed5179190786ee38acf835` | ⚠️ Unaudited |
| CCTPHookWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d04c71d805c158a3e786b3feed3a6b490f79670` | ⚠️ Unaudited |
| ClaimBribesSafeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26179ada0f7cb714c11a8190e1f517988c28e759` | ⚠️ Unaudited |
| CLFactory | unknown | project_anchor | own_supporting | 0 | base | unit-378530 | `0x5e7bb104d84c7cb9b682aac2f3d509f5f406809a` | ⚠️ Unaudited |
| CLGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1296a1b532e33f01091cf728706a94268c6025b5` | ⚠️ Unaudited |
| CLGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e703fd2b6506e2abcce2c8b5633872a7d9b6fbc` | ⚠️ Unaudited |
| CLPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88e336956de7b74627fdfd548656b55501a0471f` | ⚠️ Unaudited |
| Counter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x430d459700add442a501f4b3c70de7f9c3d75fb8` | ⚠️ Unaudited |
| CrossChainRemoteStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f81a5a22375ebcc2075b162d23a5b16a1e7a92d` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2dd4162d4685657c06cd8f027cca3208311ca9d1` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | project_anchor | own_supporting | 0 | base | unit-378511 | `0x0ad08370c76ff426f534bb2affd9b5555338ee68` | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6e6d57d0627aae127743c79bc795f836431d59f` | ⚠️ Unaudited |
| DirectStakingBaseHandlerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb282a4935fdab14a1b5ff14a4de75e100b4c1e3` | ⚠️ Unaudited |
| DirectStakingHandlerL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x851de5ea424557b52d1d6debe5bda12a7d37904b` | ⚠️ Unaudited |
| Emergency Council | unknown | project_anchor | own_supporting | 0 | base | unit-378539 | `0x99249b10593fca1ae9dae6d4819f1a6dae5c013d` | ⚠️ Unaudited |
| FactoryRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-378528 | `0x5c3f18f06cc09ca1910767a34a20f771039e37c0` | ⚠️ Unaudited |
| Forwarder | unknown | project_anchor | own_supporting | 0 | base | unit-378516 | `0x15e62707fca7352fbe35f51a8d6b0f8066a05dcc` | ⚠️ Unaudited |
| GaugeFactory | unknown | project_anchor | own_supporting | 0 | base | unit-378524 | `0x35f35ca5b132cadf2916bab57639128eac5bbcb5` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-378571 | `0x834c0da026d5f933c2c18fa9f8ba7f1f792fda52` | ⚠️ Unaudited |
| ManagedRewardsFactory | unknown | project_anchor | own_supporting | 0 | base | unit-378565 | `0xfda1fb5a2a5b23638c7017950506a36dcfd2bdc3` | ⚠️ Unaudited |
| Minter | unknown | project_anchor | own_supporting | 0 | base | unit-378552 | `0xeb018363f0a9af8f91f06fee6613a751b2a33fe5` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | project_anchor | own_supporting | 0 | base | unit-378509 | `0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6` | ⚠️ Unaudited |
| MixedRouteQuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49540630a4d2ce67d54450d007d634f4c45b4f4f` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0681d141da398e567a677f0eaf13c8815c4ec818` | ⚠️ Unaudited |
| NFTSVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x212665aaea8da0a3b71a47a53b3100ef4cf4dc52` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c314190b0b78513fd908c3bfe3c83ef5f5bbde3` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | project_anchor | own_supporting | 0 | base | unit-378507 | `0x01b0cacb9a8004e08d075c919b5df3b59fd53c55` | ⚠️ Unaudited |
| OETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10b342e0205fc20a0934d1a0f25e270520439989` | ⚠️ Unaudited |
| OETHBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c62a3c2620f2fb7ba5d50c9da2dec214cb82be9` | ⚠️ Unaudited |
| OETHBaseDripperProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x02f2c609950e90934ce99e58b4d7326ad0d7f8d6`; base `0xa3a4759df6687cd2573b1399b68118bb86eccdae` | ⚠️ Unaudited |
| OETHBaseHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa50fd560af7433d00d231b397512f5df375ffad8` | ⚠️ Unaudited |
| OETHBaseHarvesterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0cbeacf86232fc04050cd679d860516f7254c22e`; base `0x74c9097cb03bee2c0fdb45bb40e1e1438681d32d` | ⚠️ Unaudited |
| OETHBaseOracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc80da22601eae8720ed8ab117eb88c92b97c75b` | ⚠️ Unaudited |
| OETHBaseVaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd50f7d13632ccadcf24fb74676981099fe70d1a7` | ⚠️ Unaudited |
| OETHBaseVaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a759f78b1a1995b57c9d3b40eb1cdc2b66caaab` | ⚠️ Unaudited |
| OETHBaseVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x98a0cbef61bd2d21435f433be4cd42b56b38cc93`; base `0xfdbe6a80e1d22ff652cbff44fead2e52287393e8` | ⚠️ Unaudited |
| OETHBaseZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b56c09543d3068f8488ed34e6f383c3854d2bc1` | ⚠️ Unaudited |
| OETHbHydrexAMOProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6bebe3072ff42a7c2a4a5a9864b30bc5608d9c3` | ⚠️ Unaudited |
| OETHbHydrexAMOStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5d36960ffe43687ab1cb4f905b97f0a064f38e0` | ⚠️ Unaudited |
| OETHDripper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0030c7dc6cb7f449e9566f273342c3370ee6b16a` | ⚠️ Unaudited |
| OETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9f783e7d9fceb90988fdf89bbb2bc3e7092fd66` | ⚠️ Unaudited |
| OETHVaultValueChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d98cf85b65fa1acef5e9aaa2300753adf7bcf6a` | ⚠️ Unaudited |
| OUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa96fd141e92de60394103c7f9e045662913820f9` | ⚠️ Unaudited |
| PatchedManagedRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ab1a16622bc5bdd1619d427fb1a6f73c71be23d` | ⚠️ Unaudited |
| PerlinNoise | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b3a7479694d678fb34ef737811cb31b9dd9990e` | ⚠️ Unaudited |
| PermissionedRebaseModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf633980a61e9f90a41d030676059dc201d9d4a37` | ⚠️ Unaudited |
| PoolFactory | unknown | project_anchor | own_supporting | 1 | base | unit-378567 | `0x420dd381b31aef6683db6b902084cb0ffece40da` | ⚠️ Unaudited |
| ProtocolGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94c012a23a8a65a6f40608da30534a46a433f410` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | base | unit-378522 | `0x254cf9e1e6e233aa1ac962cb9b05b2cfeaae15b0` | ⚠️ Unaudited |
| RewardsDistributor | unknown | project_anchor | own_supporting | 0 | base | unit-378520 | `0x227f65131a261548b057215bb1d5ab2997964c7d` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 0 | base | unit-378545 | `0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43` | ⚠️ Unaudited |
| Slipstream GaugeFactory | unknown | project_anchor | own_supporting | 0 | base | unit-378547 | `0xd30677bd8dd15132f251cb54cbda552d2a05fb08` | ⚠️ Unaudited |
| Slipstream GaugeImplementation | unknown | project_anchor | own_supporting | 0 | base | unit-378562 | `0xf5601f95708256a118ef5971820327f362442d2d` | ⚠️ Unaudited |
| Slipstream NonfungiblePositionManager | unknown | project_anchor | own_supporting | 0 | base | unit-378534 | `0x827922686190790b37229fd06084350e74485b72` | ⚠️ Unaudited |
| Slipstream PoolImplementation | unknown | project_anchor | own_supporting | 0 | base | unit-378556 | `0xec8e5342b19977b4ef8892e02d8daecfa1315831` | ⚠️ Unaudited |
| Slipstream SwapFeeModule | unknown | project_anchor | own_supporting | 0 | base | unit-378560 | `0xf4171b0953b52fa55462e4d76eca1845db69af00` | ⚠️ Unaudited |
| SugarHelper | unknown | project_anchor | own_supporting | 0 | base | unit-378513 | `0x0ad09a66af0154a84e86f761313d02d0abb6edd5` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 1 | base | unit-378569 | `0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf817cb3092179083c48c014688d98b72fb61464f` | ⚠️ Unaudited |
| Trig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d75c4dda3d28b4f2ab634c439e495cf211a216f` | ⚠️ Unaudited |
| UniversalRouter | unknown | project_anchor | own_supporting | 0 | base | unit-378532 | `0x6cb442acf35158d5eda88fe602221b67b400be3e` | ⚠️ Unaudited |
| VeArtProxy | unknown | project_anchor | own_supporting | 0 | base | unit-378550 | `0xe9992487b2ee03b7a91241695a58e0ef3654643e` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 0 | base | unit-378518 | `0x16613524e02ad97edfef371bc883f2f5d6c480a5` | ⚠️ Unaudited |
| VotingEscrow | unknown | project_anchor | own_supporting | 0 | base | unit-378554 | `0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4` | ⚠️ Unaudited |
| VotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | base | unit-378526 | `0x45ca74858c579e717ee29a86042e0d53b252b504` | ⚠️ Unaudited |
| WOETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9745a051bd218d78eb6b5d0f53c685f6b052d478` | ⚠️ Unaudited |
| WOETHBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e1826c5a9d7fa49b1b6f54f9b6e47281a583408` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (51)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x145a70fb20be3e78826db855727ae7b248cb5326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e3edd5e019207d6355ea77f724b1f1bf639b569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x247872f58f2ff11f9e8f89c1c48e460cff0c6b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f8b78d5bf08ec8f94fe9bbb68db7f746a821443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x393550950616b6931f9fa5f85f1ce695e25d81ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b1ebc29667b5ac08714ac722d51a71e4da579f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d4c22254f86f64b7ec90ab8f7aec1fbfd271c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5264eeeab16037a7a7af15ff69a470af6e2a2223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57bffd8deafa66437b8c6e8a49b24bf36db1b058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5bd73897e92ecf3e6295ffe5c1104e99000d2c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60d3d6ec213d84dea193dbd79673340061178893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6590e684c23dbea7fc61598f601a36e9bbd0c7d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d961a6e4398462fd299fac6153b133b0f23e3f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77c475c972cdb85f021aa085181ab6de90228213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7fcd174e80f264448ebee8c88a7c4476aaf58ea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x81d877b0eb31544776c1d6563d9d6a0f49bc8a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8a42e623b04258a006e455ed2244e490d492f255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8af48aa50e4f7ed67e7d654fe51a4eda3395123b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8d840080f57bcd698941631817694d896ac8f9fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x919e53b78c36d442bd23094737def5fa064601fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9518af4b780802bf9975663154fc03f891c7c4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9574e3331964c8b4db516d639eb807709c3ada30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x993b1d1435c2d4e6c6f75c05ae0813c45e9a9689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa990c6a764b73bf43cee5bb40339c3322fb9d55f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xade65c38cd4849adba595a4323a8c7ddfe89716a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb630227a79707d517320b6c0f885806389dfcbb3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-378543 | `0xbde0c70bdc242577c52dfad53389f82fd149ea5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc0d2086b6f70c0c40423626167096c6196cfa0c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc72bda59e382be10bb5d71abd01ecc65aa16fd83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc9d1b9ca7d821686be6e967c33207292d27a5091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcbbb8035cac7d4b3ca7abb74cf7bdf900215ce0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc36f880264fdba2a32e5d25e0678b836d922674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xccc21f4750e8b3e9c095bcb5d2ff59247a2ccd35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xccd483ce093682d7d9a41e645eeb710afaa88249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf791f635c72c9764bef7f6d26bfc706ad902542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd63e8525e3f21bcea2a136f95e99263ba4948adc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7b852eced3a8d52d9728ea0345b64fbea9b5fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdbfefd2e8460a6ee4955a68582f85708baea60a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1644803415c7e5d9e4c956de78d9eb91946b46f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe58b21e51520797f5335a235e4d74b865c7c08b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe945ab812a22c02025dfc31d9523158b242a5684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec2ffcf38bc1df1292d2a9cab72347eabc9cd4d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf1b2b8c435e6641f6080d88a3d96fd4609556cd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf1d0bb43c194371b04717ee8029a467a218c69b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2d049c59b463b996baa85f2e11b395d9dc33104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf632031b94d72dee0d99def846c9b6211041337f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9547cb922f1bc8c54aadb88795bbb439278bf78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc678a3e837e85168a8f1c77e9ddbfe2a77fa961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfcd2c974c2d627f1fadc545eda4a60a337ab45f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfdd61b35a4861d1e415917b6d39b739de542b9e1` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 54
- Live contracts: 0
- Unknown liveness contracts: 54
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=54

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x145a70fb20be3e78826db855727ae7b248cb5326` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x1e3edd5e019207d6355ea77f724b1f1bf639b569` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x247872f58f2ff11f9e8f89c1c48e460cff0c6b29` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x2f8b78d5bf08ec8f94fe9bbb68db7f746a821443` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x393550950616b6931f9fa5f85f1ce695e25d81ad` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0x3b1ebc29667b5ac08714ac722d51a71e4da579f8` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0x3d4c22254f86f64b7ec90ab8f7aec1fbfd271c6c` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0x5264eeeab16037a7a7af15ff69a470af6e2a2223` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0x57bffd8deafa66437b8c6e8a49b24bf36db1b058` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0x5bd73897e92ecf3e6295ffe5c1104e99000d2c98` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x60d3d6ec213d84dea193dbd79673340061178893` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x6590e684c23dbea7fc61598f601a36e9bbd0c7d9` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x6d961a6e4398462fd299fac6153b133b0f23e3f3` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x74c9097cb03bee2c0fdb45bb40e1e1438681d32d` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x77c475c972cdb85f021aa085181ab6de90228213` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x7fcd174e80f264448ebee8c88a7c4476aaf58ea6` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x81d877b0eb31544776c1d6563d9d6a0f49bc8a30` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x8a42e623b04258a006e455ed2244e490d492f255` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x8af48aa50e4f7ed67e7d654fe51a4eda3395123b` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x8d840080f57bcd698941631817694d896ac8f9fa` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x919e53b78c36d442bd23094737def5fa064601fc` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0x9518af4b780802bf9975663154fc03f891c7c4b0` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0x9574e3331964c8b4db516d639eb807709c3ada30` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0x993b1d1435c2d4e6c6f75c05ae0813c45e9a9689` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xa3a4759df6687cd2573b1399b68118bb86eccdae` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xa990c6a764b73bf43cee5bb40339c3322fb9d55f` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0xade65c38cd4849adba595a4323a8c7ddfe89716a` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0xb630227a79707d517320b6c0f885806389dfcbb3` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0xc0d2086b6f70c0c40423626167096c6196cfa0c8` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0xc72bda59e382be10bb5d71abd01ecc65aa16fd83` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xc9d1b9ca7d821686be6e967c33207292d27a5091` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xcbbb8035cac7d4b3ca7abb74cf7bdf900215ce0d` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0xcc36f880264fdba2a32e5d25e0678b836d922674` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xccc21f4750e8b3e9c095bcb5d2ff59247a2ccd35` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0xccd483ce093682d7d9a41e645eeb710afaa88249` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xcf791f635c72c9764bef7f6d26bfc706ad902542` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xd63e8525e3f21bcea2a136f95e99263ba4948adc` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0xd7b852eced3a8d52d9728ea0345b64fbea9b5fca` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xdbfefd2e8460a6ee4955a68582f85708baea60a3` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xe1644803415c7e5d9e4c956de78d9eb91946b46f` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xe58b21e51520797f5335a235e4d74b865c7c08b0` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xe945ab812a22c02025dfc31d9523158b242a5684` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0xec2ffcf38bc1df1292d2a9cab72347eabc9cd4d1` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0xf1b2b8c435e6641f6080d88a3d96fd4609556cd1` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xf1d0bb43c194371b04717ee8029a467a218c69b4` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xf2d049c59b463b996baa85f2e11b395d9dc33104` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xf632031b94d72dee0d99def846c9b6211041337f` | non_address_book | unknown | unknown | unverified | n/a | `0x358f2c837ca4df1a0372bb87bd4ee485f38be05e` |
| unverified unclassified | UnnamedContract<br>`0xf66886e242e20cab2496af1d411ebcfb73440270` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xf9547cb922f1bc8c54aadb88795bbb439278bf78` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xfc678a3e837e85168a8f1c77e9ddbfe2a77fa961` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xfcd2c974c2d627f1fadc545eda4a60a337ab45f9` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xfdbe6a80e1d22ff652cbff44fead2e52287393e8` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |
| unverified unclassified | UnnamedContract<br>`0xfdd61b35a4861d1e415917b6d39b739de542b9e1` | non_address_book | unknown | unknown | unverified | n/a | `0x58890a9cb27586e83cb51d2d26bbe18a1a647245` |

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
| base | `0xe4c69af018b2ea9e575026c0472b6531a2bc382f` | AirdropDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xee717411f6e44f9fee011835c8e6faac5deff166` | BasePrices | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5e7bb104d84c7cb9b682aac2f3d509f5f406809a` | CLFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0ad08370c76ff426f534bb2affd9b5555338ee68` | CustomUnstakedFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5c3f18f06cc09ca1910767a34a20f771039e37c0` | FactoryRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x15e62707fca7352fbe35f51a8d6b0f8066a05dcc` | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x35f35ca5b132cadf2916bab57639128eac5bbcb5` | GaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfda1fb5a2a5b23638c7017950506a36dcfd2bdc3` | ManagedRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xeb018363f0a9af8f91f06fee6613a751b2a33fe5` | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6` | MixedRouteQuoterV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x01b0cacb9a8004e08d075c919b5df3b59fd53c55` | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x420dd381b31aef6683db6b902084cb0ffece40da` | PoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x254cf9e1e6e233aa1ac962cb9b05b2cfeaae15b0` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x227f65131a261548b057215bb1d5ab2997964c7d` | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43` | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0ad09a66af0154a84e86f761313d02d0abb6edd5` | SugarHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6cb442acf35158d5eda88fe602221b67b400be3e` | UniversalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe9992487b2ee03b7a91241695a58e0ef3654643e` | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x16613524e02ad97edfef371bc883f2f5d6c480a5` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4` | VotingEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x45ca74858c579e717ee29a86042e0d53b252b504` | VotingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 57 |

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
