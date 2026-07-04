# Agentic Audit Brief: Wombex Finance

## Project Overview

- Project: Wombex Finance (`wombex-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:12.921Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, bsc
- Contract surface: 82 unique implementations (82 raw deployments)
- DeFi Llama TVL: $379,205.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 79 project-authored contract(s) across 2 chain(s); 18 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (upgradeableproxy, proxy, asset). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 82; live-surface contracts included: 82 (82 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 23/82 (28.0%)
- Deployed-live implementations: 82 of 82 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 23/82
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 82
- Raw deployments: 82
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 23 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 28.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 23 | 28.0% | 2022-10 |
| Zokyo | Tier 2 | 23 | 28.0% | 2023-01 |
| PeckShield | Tier 2 | 7 | 8.5% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseRewardPool | unknown | bsc | n/a | [`0x11f64f...45db5f`](./contracts/bsc-56/0x11f64ff090dbeb1b0630caa90a8dfbb70f45db5f/) | ✅ Audited |
| BaseRewardPoolLocked | unknown | bsc | n/a | [`0x383a77...0701ba`](./contracts/bsc-56/0x383a773c9bcad46e94010d8bb704ff3e450701ba/) | ✅ Audited |
| Booster | unknown | bsc | n/a | [`0x54c327...39b38e`](./contracts/bsc-56/0x54c327e424e4849d54571f2e6712d3b3ee39b38e/) | ✅ Audited |
| BoosterMigrator | unknown | bsc | n/a | [`0x086bf5...c47835`](./contracts/bsc-56/0x086bf5c05d2d702914d4b78bdde185a51ac47835/) | ✅ Audited |
| BribesRewardFactory | unknown | bsc | n/a | [`0x272ed5...b96c1a`](./contracts/bsc-56/0x272ed55ef19d1f8e3697547ed27f81d0c0b96c1a/) | ✅ Audited |
| CvxCrvToken | unknown | bsc | n/a | [`0x041502...402979`](./contracts/bsc-56/0x0415023846ff1c6016c4d9621de12b24b2402979/) | ✅ Audited |
| DepositorMigrator | unknown | bsc | n/a | [`0x99d473...f997b8`](./contracts/bsc-56/0x99d473489e249c3a80fc6ada81eef60c98f997b8/) | ✅ Audited |
| DepositToken | unknown | bsc | n/a | [`0x4dfffa...f609b9`](./contracts/bsc-56/0x4dfffaaded26c8d5c619710de589a5ee91f609b9/) | ✅ Audited |
| ExtraRewardsDistributor | unknown | bsc | n/a | [`0xa30243...64b554`](./contracts/bsc-56/0xa30243610844ca7f3fe99292e2be2954df64b554/) | ✅ Audited |
| RewardFactory | unknown | bsc | n/a | [`0x4181e5...c80c8f`](./contracts/bsc-56/0x4181e561b42fdad14c68b0794c215deb9bc80c8f/) | ✅ Audited |
| TokenFactory | unknown | bsc | n/a | [`0x13e050...9a5b55`](./contracts/bsc-56/0x13e050d2aa88873d5c11704f4196ed66699a5b55/) | ✅ Audited |
| VoterProxy | unknown | arbitrum | n/a | [`0x24d2f6...0c1ec1`](./contracts/arbitrum-42161/0x24d2f6be2bf9cdf3627f720cf09d4551580c1ec1/) | ✅ Audited |
| Wmx | unknown | bsc | n/a | [`0xa75d9c...4a2ced`](./contracts/bsc-56/0xa75d9ca2a0a1d547409d82e1b06618ec284a2ced/) | ✅ Audited |
| WmxClaimZap | unknown | bsc | n/a | [`0x0b57a6...12602c`](./contracts/bsc-56/0x0b57a6bb8fb741875e2f8a18a6fe322e4712602c/) | ✅ Audited |
| WmxLocker | unknown | bsc | n/a | [`0xd4e596...1504ee`](./contracts/bsc-56/0xd4e596c0d5ad06724f4980ff9b73438feb1504ee/) | ✅ Audited |
| WmxMerkleDrop | unknown | bsc | n/a | [`0x6eb849...090323`](./contracts/bsc-56/0x6eb849ba1cc5e2f22e1ace33163bb01c91090323/) | ✅ Audited |
| WmxMinter | unknown | bsc | n/a | [`0x7773e4...c61270`](./contracts/bsc-56/0x7773e4d91b9dce9c65bc2a702fd291a19dc61270/) | ✅ Audited |
| WmxPenaltyForwarder | unknown | bsc | n/a | [`0xa65c11...e94d38`](./contracts/bsc-56/0xa65c11dd6184f8942994565952a2741c16e94d38/) | ✅ Audited |
| WmxRewardPool | unknown | bsc | n/a | [`0x688253...22bdff`](./contracts/bsc-56/0x6882531e1ee7d90fd6fbc655d9353449e022bdff/) | ✅ Audited |
| WmxRewardPoolFactory | unknown | bsc | n/a | [`0x062f2d...872792`](./contracts/bsc-56/0x062f2df081b93a12b23d892e7b10060283872792/) | ✅ Audited |
| WmxRewardPoolLens | unknown | bsc | n/a | [`0x2d144e...f8ee99`](./contracts/bsc-56/0x2d144e680e195d734c939bd3a26864ba1ff8ee99/) | ✅ Audited |
| WomDepositor | unknown | bsc | n/a | [`0x4322cb...004e87`](./contracts/bsc-56/0x4322cbf6a2f91833ad24cc53424f592592004e87/) | ✅ Audited |
| WomStakingProxy | unknown | bsc | n/a | [`0x35957c...203fa4`](./contracts/bsc-56/0x35957ca3d9e0e870d7b66dfbc643d56e3c203fa4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ABnbcAsset | unknown | bsc | n/a | [`0x9d2dea...96406b`](./contracts/bsc-56/0x9d2dead9547eb65aa78e239647a0c783f296406b/) | ⚠️ Unaudited |
| AnkrStakingAsset | unknown | bsc | n/a | [`0x128fa2...08228b`](./contracts/bsc-56/0x128fa2c0708bd0e357cd97eadaafa3bc9608228b/) | ⚠️ Unaudited |
| Asset | unknown | arbitrum | n/a | [`0x06228b...2e48b5`](./contracts/arbitrum-42161/0x06228b709ed3c8344ae61e64b48204174d2e48b5/) | ⚠️ Unaudited |
| BnbxAsset | unknown | bsc | n/a | [`0x10f7c6...1fc24f`](./contracts/bsc-56/0x10f7c62f47f19e3ce08fef38f74e3c0bb31fc24f/) | ⚠️ Unaudited |
| BoostedMasterWombat | unknown | bsc | n/a | [`0x26d67a...1a1933`](./contracts/bsc-56/0x26d67a2d9ac5fb49d7e7a75df6b97450821a1933/) | ⚠️ Unaudited |
| BoostedMultiRewarder | unknown | arbitrum | n/a | [`0x12d6a5...73bf7e`](./contracts/arbitrum-42161/0x12d6a56e7c6ba8c7299b860428cbd1491d73bf7e/) | ⚠️ Unaudited |
| BoosterEarmark | unknown | bsc | n/a | [`0x1bb974...3a674b`](./contracts/bsc-56/0x1bb9744fe256ebc8b1968c3cbc8a48e6ec3a674b/) | ⚠️ Unaudited |
| BoosterLensUI | unknown | bsc | n/a | [`0x0e7a98...97c727`](./contracts/bsc-56/0x0e7a988681f3fd1dadb93e6417f569a30a97c727/) | ⚠️ Unaudited |
| Bribe | unknown | bsc | n/a | [`0x048dc3...118047`](./contracts/bsc-56/0x048dc3ba13406bcc8226ce62385261894f118047/) | ⚠️ Unaudited |
| BribeRewarderFactory | unknown | arbitrum | n/a | [`0x25e08a...a6f3e1`](./contracts/arbitrum-42161/0x25e08a0d8ff0d9b1659e3c2b585c654cbaa6f3e1/) | ⚠️ Unaudited |
| BribesTokenFactory | unknown | bsc | n/a | [`0x8e11c0...274a86`](./contracts/bsc-56/0x8e11c005fce29acf7ea211ccb2a1c0fdac274a86/) | ⚠️ Unaudited |
| BribeV2 | unknown | bsc | n/a | [`0x7e9fab...adab55`](./contracts/bsc-56/0x7e9fabe65a301e0cdd5b2a175fa98406faadab55/) | ⚠️ Unaudited |
| CoreV3 | unknown | bsc | n/a | [`0x2fff85...90ecc0`](./contracts/bsc-56/0x2fff8596a090345784770789414387857f90ecc0/) | ⚠️ Unaudited |
| DynamicAsset | unknown | bsc | n/a | [`0x0321d1...740f86`](./contracts/bsc-56/0x0321d1d769cc1e81ba21a157992b635363740f86/) | ⚠️ Unaudited |
| DynamicPool | unknown | bsc | n/a | [`0x2b1878...44984f`](./contracts/bsc-56/0x2b187882073dccec42fa9a992c8a54e14b44984f/) | ⚠️ Unaudited |
| EarmarkRewardsLens | unknown | bsc | n/a | [`0x0aceb4...53edee`](./contracts/bsc-56/0x0aceb442f1f61cf77499d55c0a1dc3b1f853edee/) | ⚠️ Unaudited |
| ExtraRewardsDistributorProxy | unknown | bsc | n/a | [`0x0cff97...dcf44c`](./contracts/bsc-56/0x0cff976c3c9b098cbbe3bdd51212cfad62dcf44c/) | ⚠️ Unaudited |
| GaugeVoting | unknown | bsc | n/a | [`0x0092e7...dc27e6`](./contracts/bsc-56/0x0092e7e6f2e422ae8e530cb0616956c9b5dc27e6/) | ⚠️ Unaudited |
| GaugeVotingLens | unknown | bsc | n/a | [`0x050d44...609164`](./contracts/bsc-56/0x050d4446bfe450dc702ccf90d2cd567a4a609164/) | ⚠️ Unaudited |
| GovernedPriceFeed | unknown | arbitrum | n/a | [`0x1d15c4...918797`](./contracts/arbitrum-42161/0x1d15c46e75cc006490c356d29ff357a647918797/) | ⚠️ Unaudited |
| jUsdcAsset | unknown | arbitrum | n/a | [`0xde509f...626dae`](./contracts/arbitrum-42161/0xde509fe1555ab907e5c29f987ba0be1ac0626dae/) | ⚠️ Unaudited |
| LensPoker | unknown | bsc | n/a | [`0x124ac6...ebea14`](./contracts/bsc-56/0x124ac62416fbe6a404b9c4d2eb020a5307ebea14/) | ⚠️ Unaudited |
| LensUser | unknown | bsc | n/a | [`0x8bba59...29df49`](./contracts/bsc-56/0x8bba59856383fd09850af306929e8bfdc629df49/) | ⚠️ Unaudited |
| LpVestedEscrow | unknown | bsc | n/a | [`0xa1b677...d54d98`](./contracts/bsc-56/0xa1b677531db12f01d2608a00d8c7bde930d54d98/) | ⚠️ Unaudited |
| MasterWombatV2 | unknown | bsc | n/a | [`0x6cff94...88fe8e`](./contracts/bsc-56/0x6cff948ccce8dc7eba0dda3b1818298e2088fe8e/) | ⚠️ Unaudited |
| MasterWombatV3 | unknown | bsc | n/a | [`0x0020a8...680db6`](./contracts/bsc-56/0x0020a8890e723cd94660a5404c4bccbb91680db6/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | bsc | n/a | [`0x0bd067...ec28cf`](./contracts/bsc-56/0x0bd0676bacc1c4fc838a1237a12df9eae7ec28cf/) | ⚠️ Unaudited |
| MerkleDistributorAdaptor | unknown | arbitrum | n/a | [`0x2740f3...7fbe09`](./contracts/arbitrum-42161/0x2740f3ecb90e2afbcff63077ba96412e137fbe09/) | ⚠️ Unaudited |
| MintManager | unknown | bsc | n/a | [`0x6084ce...82a77a`](./contracts/bsc-56/0x6084cec7cc076bb3a196681c35c269157982a77a/) | ⚠️ Unaudited |
| MultiRewarderPerSec | unknown | bsc | n/a | [`0x04299f...15ffa4`](./contracts/bsc-56/0x04299f69b567c6c8dc49162138e0ba32cd15ffa4/) | ⚠️ Unaudited |
| MultiStaker | unknown | bsc | n/a | [`0x6c7537...e879ff`](./contracts/bsc-56/0x6c7537cdac9ec7716f62909d36ed85534ee879ff/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0029b7...9d4183`](./contracts/bsc-56/0x0029b7e8e9ed8001c868aa09c74a1ac6269d4183/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | bsc | n/a | [`0x04d4e1...8d563d`](./contracts/bsc-56/0x04d4e1c1f3d6539071b6d3849fdaed04d48d563d/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | bsc | n/a | [`0x052045...fc74b2`](./contracts/bsc-56/0x0520451b19ad0bb00ed35ef391086a692cfc74b2/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | bsc | n/a | [`0x083640...2f9f55`](./contracts/bsc-56/0x083640c5dbd5a8ddc30100fb09b45901e12f9f55/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | bsc | n/a | [`0x191601...ad205b`](./contracts/bsc-56/0x191601af39927ba165bf89b238bfbf615bad205b/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | bsc | n/a | [`0x1ee156...754bef`](./contracts/bsc-56/0x1ee15673e07105bcf360139fa8cafebdd7754bef/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | bsc | n/a | [`0x3da628...b5b0cc`](./contracts/bsc-56/0x3da62816dd31c56d9cdf22c6771ddb892cb5b0cc/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x0b041d...bf6f27`](./contracts/arbitrum-42161/0x0b041d477ff8c7f8709d85a55633a196edbf6f27/) | ⚠️ Unaudited |
| Pool | unknown | bsc | n/a | [`0x2c3c34...bebd20`](./contracts/bsc-56/0x2c3c340233338d875637304b06f4f6faf9bebd20/) | ⚠️ Unaudited |
| PoolDepositor | unknown | bsc | n/a | [`0x0227a6...93ba07`](./contracts/bsc-56/0x0227a64c87a10b8854ae4b4b0027ea259f93ba07/) | ⚠️ Unaudited |
| PoolV2 | unknown | arbitrum | n/a | [`0x6521a5...86cd7b`](./contracts/arbitrum-42161/0x6521a549834f5e6d253cd2e5f4fbe4048f86cd7b/) | ⚠️ Unaudited |
| PriceFeedAsset | unknown | arbitrum | n/a | [`0x2a2020...346aaa`](./contracts/arbitrum-42161/0x2a20202a6f740200ba188f6d72fa72a08a346aaa/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x2722fe...3de182`](./contracts/arbitrum-42161/0x2722fe570fa9f7fee1662deee01f5d76003de182/) | ⚠️ Unaudited |
| SkimmableAsset | unknown | arbitrum | n/a | [`0x51e073...769606`](./contracts/arbitrum-42161/0x51e073d92b0c226f7b0065909440b18a85769606/) | ⚠️ Unaudited |
| StkbnbAsset | unknown | bsc | n/a | [`0xc496f4...e0d17f`](./contracts/bsc-56/0xc496f42ea6fc72af434f48469b847a469fe0d17f/) | ⚠️ Unaudited |
| TimelockController | unknown | bsc | n/a | [`0x9f3f1e...140655`](./contracts/bsc-56/0x9f3f1e89831391214faa57ee7e27667156140655/) | ⚠️ Unaudited |
| TokenImplementation | unknown | arbitrum | n/a | [`0x5190f0...293293`](./contracts/arbitrum-42161/0x5190f06eacefa2c552dc6bd5e763b81c73293293/) | ⚠️ Unaudited |
| TokenVesting | unknown | bsc | n/a | [`0x1e8cbd...8f7fed`](./contracts/bsc-56/0x1e8cbd5c936a1cac223ea51859fd343aa38f7fed/) | ⚠️ Unaudited |
| UnprotectedDynamicPool | unknown | bsc | n/a | [`0x0553f2...c2bd73`](./contracts/bsc-56/0x0553f270e3a219b409770c0c208b68037cc2bd73/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | bsc | n/a | [`0x7e10ff...a2feff`](./contracts/bsc-56/0x7e10ff4d0e6f20a054f516a72ec0dc4833a2feff/) | ⚠️ Unaudited |
| WBETHAsset | unknown | bsc | n/a | [`0x975693...51d57f`](./contracts/bsc-56/0x975693afe5bb69088a716e3a7f9bff77ec51d57f/) | ⚠️ Unaudited |
| Whitelist | unknown | arbitrum | n/a | [`0x9a6578...f2735d`](./contracts/arbitrum-42161/0x9a65781bfff8e43e4345d6b1b5157b2657f2735d/) | ⚠️ Unaudited |
| WmxVestedEscrowLockOnly | unknown | bsc | n/a | [`0x58272b...5ae6a9`](./contracts/bsc-56/0x58272b455bf68778891a609be66882d5035ae6a9/) | ⚠️ Unaudited |
| WombatERC20 | unknown | bsc | n/a | [`0xad6742...b94fb1`](./contracts/bsc-56/0xad6742a35fb341a9cc6ad674738dd8da98b94fb1/) | ⚠️ Unaudited |
| WombatRouter | unknown | bsc | n/a | [`0x19609b...a4add7`](./contracts/bsc-56/0x19609b03c976cca288fbdae5c21d4290e9a4add7/) | ⚠️ Unaudited |
| WombexLensUI | unknown | bsc | n/a | [`0x036e46...1e9e38`](./contracts/bsc-56/0x036e464b3fa3f31468c4df419bf24bbb561e9e38/) | ⚠️ Unaudited |
| WomSwapDepositor | unknown | bsc | n/a | [`0x3c1a2e...7aa6cd`](./contracts/bsc-56/0x3c1a2e8978deb1a3e537aaac553fbcb2237aa6cd/) | ⚠️ Unaudited |
| WstETHAsset | unknown | arbitrum | n/a | [`0xeb7e2f...5f7465`](./contracts/arbitrum-42161/0xeb7e2f8efac7ab8079837417b65cd927f05f7465/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Wombex-v1.0.pdf](https://github.com/wombex-finance/wombex-contracts/blob/main/audits/PeckShield-Audit-Report-Wombex-v1.0.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | contract_name | 7 | high |
| [SlowMist-Audit-Report-Wombex-Finance.pdf](https://github.com/wombex-finance/wombex-contracts/blob/main/audits/SlowMist-Audit-Report-Wombex-Finance.pdf) | SlowMist | Audit | 2022-10 | stale | Direct | contract_name | 23 | high |
| [Zokyo-Audit-Report-Wombex-Finance-Main.pdf](https://github.com/wombex-finance/wombex-contracts/blob/main/audits/Zokyo-Audit-Report-Wombex-Finance-Main.pdf) | Zokyo | Audit | 2023-01 | stale | Direct | contract_name | 23 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 82 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=53

Fork inheritance lineage and inherited audits are included when available.
