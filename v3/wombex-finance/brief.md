# Agentic Audit Brief: Wombex Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Wombex Finance (`wombex-finance`)
- Website: [https://wombex.finance/](https://wombex.finance/)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc
- Contract surface: 188 unique implementations (188 raw deployments)
- Coverage basis: 5/13 confirmed own live verified implementations (38.5%); conservative 38.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $379,205.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Wombex Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, bsc. Structural roles: 9 core, 2 infra, 2 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (9), infra (2), supporting (2)
- Contract kinds: contract (12), abstract (1)
- Detected standards: erc20 (5), erc1967proxy (4), ownable (3), erc20permit (2), accesscontrol (1), erc165 (1), erc4626 (1)
- Frameworks: openzeppelin (13), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BaseRewardPoolLocked (`0x383a773c9bcad46e94010d8bb704ff3e450701ba`, chain 56)
- Booster (`0x54c327e424e4849d54571f2e6712d3b3ee39b38e`, chain 56)
- CvxCrvToken (`0x0415023846ff1c6016c4d9621de12b24b2402979`, chain 56)
- OptimizedTransparentUpgradeableProxy (`0x0029b7e8e9ed8001c868aa09c74a1ac6269d4183`, chain 56)
- OptimizedTransparentUpgradeableProxy (`0x0520451b19ad0bb00ed35ef391086a692cfc74b2`, chain 56)
- SkimmableAsset (`0x51e073d92b0c226f7b0065909440b18a85769606`, chain 42161)
- TokenFactory (`0x13e050d2aa88873d5c11704f4196ed66699a5b55`, chain 56)
- TokenImplementation (`0x5190f06eacefa2c552dc6bd5e763b81c73293293`, chain 42161)
- VoterProxy (`0x24d2f6be2bf9cdf3627f720cf09d4551580c1ec1`, chain 42161)
- Whitelist (`0x9a65781bfff8e43e4345d6b1b5157b2657f2735d`, chain 42161)
- Wmx (`0xa75d9ca2a0a1d547409d82e1b06618ec284a2ced`, chain 56)
- WombatERC20 (`0xad6742a35fb341a9cc6ad674738dd8da98b94fb1`, chain 56)
- WombatRouter (`0x19609b03c976cca288fbdae5c21d4290e9a4add7`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/13 (38.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 106 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 69 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 13 of 188 unique; 175 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/82
- Verified + Unaudited implementations: 77
- Verified by bytecode match: 0
- Unverified implementations: 106
- Unique implementations: 188
- Raw deployments: 188
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 38.5% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 5 | 6.1% | 2022-10 |
| Zokyo | Tier 2 | 5 | 6.1% | 2023-01 |
| PeckShield | Tier 2 | 2 | 2.4% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Booster | unknown | project_anchor | own_supporting | 0 | bsc | unit-261940 | `0x54c327e424e4849d54571f2e6712d3b3ee39b38e` | ✅ Audited |
| CvxCrvToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-261936 | `0x0415023846ff1c6016c4d9621de12b24b2402979` | ✅ Audited |
| TokenFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-261937 | `0x13e050d2aa88873d5c11704f4196ed66699a5b55` | ✅ Audited |
| VoterProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-261946 | `0x24d2f6be2bf9cdf3627f720cf09d4551580c1ec1` | ✅ Audited |
| Wmx | unknown | project_anchor | own_supporting | 0 | bsc | unit-261941 | `0xa75d9ca2a0a1d547409d82e1b06618ec284a2ced` | ✅ Audited |

### ⚠️ Verified + Unaudited (77)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ABnbcAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d2dead9547eb65aa78e239647a0c783f296406b` | ⚠️ Unaudited |
| AnkrStakingAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x128fa2c0708bd0e357cd97eadaafa3bc9608228b` | ⚠️ Unaudited |
| Asset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06228b709ed3c8344ae61e64b48204174d2e48b5` | ⚠️ Unaudited |
| BaseRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11f64ff090dbeb1b0630caa90a8dfbb70f45db5f` | ⚠️ Unaudited |
| BaseRewardPoolLocked | unknown | project_anchor | own_supporting | 0 | bsc | unit-261939 | `0x383a773c9bcad46e94010d8bb704ff3e450701ba` | ⚠️ Unaudited |
| BnbxAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10f7c62f47f19e3ce08fef38f74e3c0bb31fc24f` | ⚠️ Unaudited |
| BoostedMasterWombat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26d67a2d9ac5fb49d7e7a75df6b97450821a1933` | ⚠️ Unaudited |
| BoostedMultiRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12d6a56e7c6ba8c7299b860428cbd1491d73bf7e` | ⚠️ Unaudited |
| BoosterEarmark | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bb9744fe256ebc8b1968c3cbc8a48e6ec3a674b` | ⚠️ Unaudited |
| BoosterLensUI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e7a988681f3fd1dadb93e6417f569a30a97c727` | ⚠️ Unaudited |
| BoosterMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x086bf5c05d2d702914d4b78bdde185a51ac47835` | ⚠️ Unaudited |
| Bribe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x048dc3ba13406bcc8226ce62385261894f118047` | ⚠️ Unaudited |
| BribeRewarderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25e08a0d8ff0d9b1659e3c2b585c654cbaa6f3e1` | ⚠️ Unaudited |
| BribesRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x272ed55ef19d1f8e3697547ed27f81d0c0b96c1a` | ⚠️ Unaudited |
| BribesTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e11c005fce29acf7ea211ccb2a1c0fdac274a86` | ⚠️ Unaudited |
| BribeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e9fabe65a301e0cdd5b2a175fa98406faadab55` | ⚠️ Unaudited |
| CoreV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fff8596a090345784770789414387857f90ecc0` | ⚠️ Unaudited |
| DepositorMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99d473489e249c3a80fc6ada81eef60c98f997b8` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4dfffaaded26c8d5c619710de589a5ee91f609b9` | ⚠️ Unaudited |
| DynamicAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0321d1d769cc1e81ba21a157992b635363740f86` | ⚠️ Unaudited |
| DynamicPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b187882073dccec42fa9a992c8a54e14b44984f` | ⚠️ Unaudited |
| EarmarkRewardsLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aceb442f1f61cf77499d55c0a1dc3b1f853edee` | ⚠️ Unaudited |
| ExtraRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa30243610844ca7f3fe99292e2be2954df64b554` | ⚠️ Unaudited |
| ExtraRewardsDistributorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cff976c3c9b098cbbe3bdd51212cfad62dcf44c` | ⚠️ Unaudited |
| GaugeVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0092e7e6f2e422ae8e530cb0616956c9b5dc27e6` | ⚠️ Unaudited |
| GaugeVotingLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x050d4446bfe450dc702ccf90d2cd567a4a609164` | ⚠️ Unaudited |
| GovernedPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d15c46e75cc006490c356d29ff357a647918797` | ⚠️ Unaudited |
| jUsdcAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde509fe1555ab907e5c29f987ba0be1ac0626dae` | ⚠️ Unaudited |
| LensPoker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x124ac62416fbe6a404b9c4d2eb020a5307ebea14` | ⚠️ Unaudited |
| LensUser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8bba59856383fd09850af306929e8bfdc629df49` | ⚠️ Unaudited |
| LpVestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1b677531db12f01d2608a00d8c7bde930d54d98` | ⚠️ Unaudited |
| MasterWombatV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cff948ccce8dc7eba0dda3b1818298e2088fe8e` | ⚠️ Unaudited |
| MasterWombatV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0020a8890e723cd94660a5404c4bccbb91680db6` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bd0676bacc1c4fc838a1237a12df9eae7ec28cf` | ⚠️ Unaudited |
| MerkleDistributorAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2740f3ecb90e2afbcff63077ba96412e137fbe09` | ⚠️ Unaudited |
| MintManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6084cec7cc076bb3a196681c35c269157982a77a` | ⚠️ Unaudited |
| MultiRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04299f69b567c6c8dc49162138e0ba32cd15ffa4` | ⚠️ Unaudited |
| MultiStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c7537cdac9ec7716f62909d36ed85534ee879ff` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-261950 | `0x0029b7e8e9ed8001c868aa09c74a1ac6269d4183` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x04d4e1c1f3d6539071b6d3849fdaed04d48d563d` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-261948 | `0x0520451b19ad0bb00ed35ef391086a692cfc74b2` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x083640c5dbd5a8ddc30100fb09b45901e12f9f55` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x191601af39927ba165bf89b238bfbf615bad205b` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1ee15673e07105bcf360139fa8cafebdd7754bef` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x3da62816dd31c56d9cdf22c6771ddb892cb5b0cc` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0b041d477ff8c7f8709d85a55633a196edbf6f27` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c3c340233338d875637304b06f4f6faf9bebd20` | ⚠️ Unaudited |
| PoolDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0227a64c87a10b8854ae4b4b0027ea259f93ba07` | ⚠️ Unaudited |
| PoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6521a549834f5e6d253cd2e5f4fbe4048f86cd7b` | ⚠️ Unaudited |
| PriceFeedAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a20202a6f740200ba188f6d72fa72a08a346aaa` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x2722fe570fa9f7fee1662deee01f5d76003de182` | ⚠️ Unaudited |
| RewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4181e561b42fdad14c68b0794c215deb9bc80c8f` | ⚠️ Unaudited |
| SkimmableAsset | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-261934 | `0x51e073d92b0c226f7b0065909440b18a85769606` | ⚠️ Unaudited |
| StkbnbAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc496f42ea6fc72af434f48469b847a469fe0d17f` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x9f3f1e89831391214faa57ee7e27667156140655` | ⚠️ Unaudited |
| TokenImplementation | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-261944 | `0x5190f06eacefa2c552dc6bd5e763b81c73293293` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e8cbd5c936a1cac223ea51859fd343aa38f7fed` | ⚠️ Unaudited |
| UnprotectedDynamicPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0553f270e3a219b409770c0c208b68037cc2bd73` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x7e10ff4d0e6f20a054f516a72ec0dc4833a2feff` | ⚠️ Unaudited |
| WBETHAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x975693afe5bb69088a716e3a7f9bff77ec51d57f` | ⚠️ Unaudited |
| Whitelist | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-261935 | `0x9a65781bfff8e43e4345d6b1b5157b2657f2735d` | ⚠️ Unaudited |
| WmxClaimZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b57a6bb8fb741875e2f8a18a6fe322e4712602c` | ⚠️ Unaudited |
| WmxLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4e596c0d5ad06724f4980ff9b73438feb1504ee` | ⚠️ Unaudited |
| WmxMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6eb849ba1cc5e2f22e1ace33163bb01c91090323` | ⚠️ Unaudited |
| WmxMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7773e4d91b9dce9c65bc2a702fd291a19dc61270` | ⚠️ Unaudited |
| WmxPenaltyForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa65c11dd6184f8942994565952a2741c16e94d38` | ⚠️ Unaudited |
| WmxRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6882531e1ee7d90fd6fbc655d9353449e022bdff` | ⚠️ Unaudited |
| WmxRewardPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x062f2df081b93a12b23d892e7b10060283872792` | ⚠️ Unaudited |
| WmxRewardPoolLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d144e680e195d734c939bd3a26864ba1ff8ee99` | ⚠️ Unaudited |
| WmxVestedEscrowLockOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58272b455bf68778891a609be66882d5035ae6a9` | ⚠️ Unaudited |
| WombatERC20 | unknown | project_anchor | own_supporting | 0 | bsc | unit-261942 | `0xad6742a35fb341a9cc6ad674738dd8da98b94fb1` | ⚠️ Unaudited |
| WombatRouter | unknown | project_anchor | own_supporting | 0 | bsc | unit-261938 | `0x19609b03c976cca288fbdae5c21d4290e9a4add7` | ⚠️ Unaudited |
| WombexLensUI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x036e464b3fa3f31468c4df419bf24bbb561e9e38` | ⚠️ Unaudited |
| WomDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4322cbf6a2f91833ad24cc53424f592592004e87` | ⚠️ Unaudited |
| WomStakingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35957ca3d9e0e870d7b66dfbc643d56e3c203fa4` | ⚠️ Unaudited |
| WomSwapDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c1a2e8978deb1a3e537aaac553fbcb2237aa6cd` | ⚠️ Unaudited |
| WstETHAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb7e2f8efac7ab8079837417b65cd927f05f7465` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (106)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0592083b285aa75b9c8bad2485c6cccf93ccc348` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x05f727876d7c123b9bb41507251e2afd81ead09a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0782b6d8c4551b9760e74c0545a9bcd90bdc41e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0a3bb08b3a15a19b4de82f8acfc862606fb69a2d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0e99fbfd04c255124a168c6ae68cce3c7dcc5760` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x10ed43c718714eb63d5aa57b78b54704e256024e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x14016e85a25aeb13065688cafb43044c2ef86784` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x1b507b97c89ede3e40d1b2ed92972197c6276d35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x1fa71df4b344ffa5755726ea7a9a56fbbee0d38b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x2170ed0880ac9a755fd29b2688956bd959f933f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x277e777f7687239b092c8845d4d2cd083a33c903` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x2b37c10224c8d5432e0c5f7f0ea92b70f82e877c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x2ea772346486972e7690219c190dadda40ac5da4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x312bc7eaaf93f1c60dc5afc115fccde161055fb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x35d32110d9a6f02d403061c851618756b3bc597f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3bc5ac0dfdc871b365d159f728dd1b9a0b5481e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3cd55356433c89e50dc51ab07ee0fa0a95623d53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4268b8f0b87b6eae5d897996e6b845ddbd99adf3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x489833311676b566f888119c29bd997dc6c95830` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x48f6a8a0158031baf8ce3e45344518f1e69f2a14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4db5a66e937a9f4473fa95b1caf1d1e1d62e29ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4dfa92842d05a790252a7f374323b9c86d7b7e12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x52f24a5e03aee338da5fd9df68d2b6fae1178827` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x55d398326f99059ff775485246999027b3197955` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x561050ffb188420d2605714f84eda714da58da69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x64048a7eecf3a2f1ba9e144aac3d7db6e58f555e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x6569ddc1cc2648c89bc8025046a7dd65eb8940f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x6764506be2a755c18f4c70bde4e63f26f9f62810` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x6d1fce96e26d7e48e8ecc88a7d9d8241c00e9af8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x6f1c689235580341562cdc3304e923cc8fad5bfa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7d84a8977095a0cb4ea3c5cde105276217754e7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7f1167d6c372470e358f6518bf4eba2e3c5016c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x8ad47d7ab304272322513ee63665906b64a49da2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x8b892b6ea1d0e5b29b719d6bd6eb9354f1cde060` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x8df1126de13bcfef999556899f469d64021adbae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x8fc093fe17c7b74970277d66cb85232d3041ade6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x90c97f71e18723b0cf0dfa30ee176ab653e89f40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa2e3356610840701bdf5611a53974510ae27e2e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa4a1533f5f939d6718b0d5ce2850f2ff55206967` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb0219a90ef6a24a237bc038f7b7a6eac5e01edb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb0496543fdd8304c01e1cc6447e52cf63b1efbf9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb0b195aefa3650a6908f15cdac7d92f8a5791b0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb0b84d294e0c75a6abe60171b70edeb2efd14a1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb6d83f199b361403bda2c44712a77f55e7f8855f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xbed9b758a681d73a95ab4c01309c63aa16297b80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xc2e9d07f66a89c44062459a47a0d2dc038e4fb16` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xc9dcf462b666ab2196e044afcf7814f60cd2e09d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xcf0febd3f17cef5b47b0cd257acf6025c5bff3b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xd17479997f34dd9156deef8f95a52d81d265be9c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe05a08226c49b636acf99c40da8dc6af83ce5bb3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe48a3d7d0bc88d552f730b62c006bc925eadb9ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe80772eaf6e2e18b651f160bc9158b2a5cafca65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe86eaad81c32ffbb88b7ec9b325c8f75c8c9f1ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xeeb5a751e0f5231fc21c7415c4a4c6764f67ce2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf027e525d491ef6ffcc478555fbb3cfabb3406a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf1e604e9a31c3b575f91cf008445b7ce06bf3fef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf307910a4c7bbc79691fd374889b36d8531b08e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xfa4ba88cf97e282c505bea095297786c16070129` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x178412e79c25968a32e89b11f63b33f733770c2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x17fc002b466eec40dae837fc4be5c67993ddbd6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x19e6776e35e4afbffd4f51a792113382757940a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x20d7ee728900848752fa280fad51af40c47302f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x26202630423b6736b0b1f6c853c14162194b5490` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x3f56e0c36d275367b8c502090edf38289b3dea0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x3f90a5a47364c0467031fb00246192d40e3d2d9d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x4181e561b42fdad14c68b0794c215deb9bc80c8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x46f74778b265df3a15ec9695ccd2fd3869ca848c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x4a8686df475d4c44324210ffa3fc1dea705296e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x53def0a5db716f6ac4884f1a89eb11b50f570b70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x5979d7b546e38e414f7e9822514be443a4800529` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x5e28771d4414d3325f57542d16516e6e58f3351e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x61ffe014ba17989e743c5f6cb21bf9697530b21e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x6add078996308547c57b052549a19c5f66bf42c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x6c6fb5e7628d9b232b43abb81e9d4b5653f46ca0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x7429a2e8dc807c9e13bb65edb335d6e01051ae64` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x754961d3f6bc537c507dc8954ddc3f8351d29077` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x95ab45875cffdba1e5f451b950bc2e42c0053f39` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x96ff1506f7ac06b95486e09529c7efb9dfef601e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9d2f299715d94d8a7e6f5eaa8e654e8c74a988a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xa2a791c8ad4f3363c3997a565f9d7c19e870c83e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xb0b195aefa3650a6908f15cdac7d92f8a5791b0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xb9bdfe449da096256fe7954ef61a18ee195db77b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xbd7568d25338940ba212e3f299d2ccc138fa35f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc37a89cdb064ac2921fcc8b3538ac0d6a3aadf48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc6bc781e20f9323012f6e422bdf552ff06ba6cd1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc873fecbd354f5a56e00e710b90ef4201db2448d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xcaaab0a72f781b92ba63af27477aa46ab8f653e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xd4ea7475ced55eae6f581f112b0603f066c72c49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xda10009cbd5d07dd0cecc66161fc93d7c9000da1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xdd76ce773ce8bd29d32c8389197e98a6e4c1c1a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xe05a08226c49b636acf99c40da8dc6af83ce5bb3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xe14302040c0a1eb6fb5a4a79efa46d60029358d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xe80772eaf6e2e18b651f160bc9158b2a5cafca65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xeb8e93a0c7504bffd8a8ffa56cd754c63aaebfe8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xee9b42b40852a53c7361f527e638b485d49750cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xeff2b1353cdcaa2c3279c2bfde72120c7ffb5e24` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xf9c2356a21b60c0c4ddf2397f828dd158f82a274` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xff970a61a04b1ca14834a43f5de4533ebddb5cc8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Wombex-v1.0.pdf](https://github.com/wombex-finance/wombex-contracts/blob/main/audits/PeckShield-Audit-Report-Wombex-v1.0.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [SlowMist-Audit-Report-Wombex-Finance.pdf](https://github.com/wombex-finance/wombex-contracts/blob/main/audits/SlowMist-Audit-Report-Wombex-Finance.pdf) | SlowMist | Audit | 2022-10 | stale | Direct | contract_name | matched | 5 | 1 | 0 | 14 | high |
| [Zokyo-Audit-Report-Wombex-Finance-Main.pdf](https://github.com/wombex-finance/wombex-contracts/blob/main/audits/Zokyo-Audit-Report-Wombex-Finance-Main.pdf) | Zokyo | Audit | 2023-01 | stale | Direct | contract_name | matched | 5 | 1 | 0 | 24 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18613] PeckShield-Audit-Report-Wombex-v1.0.pdf — matched: Contracts extracted from findings targets. No explicit scope table, but these are the audited contracts.
- [18614] SlowMist-Audit-Report-Wombex-Finance.pdf — matched: All contracts listed in the visibility tables and referenced in findings are considered in scope. The audit date is the end date of the audit period (2022.09.16 - 2022.10.10).
- [18615] Zokyo-Audit-Report-Wombex-Finance-Main.pdf — matched: All contracts listed in the scope section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Wombex-v1.0.pdf | ExtraRewardsDistributor | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Wombex-v1.0.pdf | Booster | own contract | Booster (selected) `0x54c327e424e4849d54571f2e6712d3b3ee39b38e` — deployed 2023-05-28 15:16:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Wombex-v1.0.pdf | WomDepositor | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Wombex-v1.0.pdf | Wmx | own contract | Wmx (selected) `0xa75d9ca2a0a1d547409d82e1b06618ec284a2ced` — deployed 2022-10-16 19:53:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist-Audit-Report-Wombex-Finance.pdf | BaseRewardPool | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | BaseRewardPool4626 | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | Booster | own contract | Booster (selected) `0x54c327e424e4849d54571f2e6712d3b3ee39b38e` — deployed 2023-05-28 15:16:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist-Audit-Report-Wombex-Finance.pdf | CvxCrvToken | own contract | CvxCrvToken (selected) `0x0415023846ff1c6016c4d9621de12b24b2402979` — deployed 2022-10-16 19:54:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist-Audit-Report-Wombex-Finance.pdf | DepositToken | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | RewardFactory | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | TokenFactory | own contract | TokenFactory (selected) `0x13e050d2aa88873d5c11704f4196ed66699a5b55` — deployed 2023-05-28 15:16:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist-Audit-Report-Wombex-Finance.pdf | VoterProxy | own proxy deployment | VoterProxy (proxy) (selected) `0x24d2f6be2bf9cdf3627f720cf09d4551580c1ec1` — deployed 2023-04-01 13:03:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist-Audit-Report-Wombex-Finance.pdf | ExtraRewardsDistributor | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | Wmx | own contract | Wmx (selected) `0xa75d9ca2a0a1d547409d82e1b06618ec284a2ced` — deployed 2022-10-16 19:53:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WmxClaimZap | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WmxLocker | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WmxMerkleDrop | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WmxMinter | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WmxPenaltyForwarder | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WmxRewardPool | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WmxVestedEscrow | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WomDepositor | unmatched — not counted | — | listed in visibility table | no |
| SlowMist-Audit-Report-Wombex-Finance.pdf | WomStakingProxy | unmatched — not counted | — | listed in visibility table | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | ExtraRewardsDistributor | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | Interfaces | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | Wmx | own contract | Wmx (selected) `0xa75d9ca2a0a1d547409d82e1b06618ec284a2ced` — deployed 2022-10-16 19:53:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxClaimZap | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxLocker | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxMath | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxMerkleDrop | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxMinter | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxPenaltyForwarder | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxRewardPool | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WmxVestedEscrow | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WomDepositor | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | WomStakingProxy | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | BaseRewardPool | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | BaseRewardPool4626 | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | Booster | own contract | Booster (selected) `0x54c327e424e4849d54571f2e6712d3b3ee39b38e` — deployed 2023-05-28 15:16:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | CvxCrvToken | own contract | CvxCrvToken (selected) `0x0415023846ff1c6016c4d9621de12b24b2402979` — deployed 2022-10-16 19:54:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | DepositToken | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | RewardFactory | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | TokenFactory | own contract | TokenFactory (selected) `0x13e050d2aa88873d5c11704f4196ed66699a5b55` — deployed 2023-05-28 15:16:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | VoterProxy | own proxy deployment | VoterProxy (proxy) (selected) `0x24d2f6be2bf9cdf3627f720cf09d4551580c1ec1` — deployed 2023-04-01 13:03:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | BoringMath | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | IERC20Metadata | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | IERC4626 | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | IGaugeController | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | IProxyFactory | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | IRewardHook | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | IRewarder | unmatched — not counted | — | listed in scope | no |
| Zokyo-Audit-Report-Wombex-Finance-Main.pdf | MathUtil | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x383a773c9bcad46e94010d8bb704ff3e450701ba` | BaseRewardPoolLocked | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0029b7e8e9ed8001c868aa09c74a1ac6269d4183` | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0520451b19ad0bb00ed35ef391086a692cfc74b2` | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x51e073d92b0c226f7b0065909440b18a85769606` | SkimmableAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5190f06eacefa2c552dc6bd5e763b81c73293293` | TokenImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9a65781bfff8e43e4345d6b1b5157b2657f2735d` | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xad6742a35fb341a9cc6ad674738dd8da98b94fb1` | WombatERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x19609b03c976cca288fbdae5c21d4290e9a4add7` | WombatRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 79 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 106 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 12 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 40 unmatched
- Matched-own operational status: 12 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=12

Fork inheritance lineage and inherited audits are included when available.
