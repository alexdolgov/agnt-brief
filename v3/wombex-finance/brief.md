# Agentic Audit Brief: Wombex Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Wombex Finance (`wombex-finance`)
- Website: [https://wombex.finance/](https://wombex.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc
- Contract surface: 82 unique implementations (82 raw deployments)
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
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 69 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 13 of 82 unique; 69 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/82
- Verified + Unaudited implementations: 77
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 82
- Raw deployments: 82
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

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

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
| needs_review | 0 |

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
