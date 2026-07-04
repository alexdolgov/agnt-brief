# Agentic Audit Brief: DSF.Finance

## Project Overview

- Project: DSF.Finance (`dsf.finance`)
- Website: [https://dsf.finance](https://dsf.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.253Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: ethereum
- Contract surface: 38 unique implementations (91 raw deployments)
- DeFi Llama TVL: $452,052.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 38 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Contracts are linked by 13 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 99; live-surface contracts included: 91 (89 live, 2 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/36 (2.8%)
- Deployed-live implementations: 36 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/37
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 38
- Raw deployments: 91
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 2.7% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DSF | unknown | ethereum | n/a | 3 deployments: ethereum [`0x22586e...30ae69`](./contracts/ethereum-1/0x22586ea4fdaa9ef012581109b336f0124530ae69/); ethereum `0x68837e...e99253`; ethereum `0x86880a...622a14` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| coreVault_USDT | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x3d854d...9dba63`](./contracts/ethereum-1/0x3d854da45bb29541407702b6bbefb57fc39dba63/); ethereum `0x639f18...a94fca` | ⚠️ Unaudited |
| CurveDexModule | unknown | ethereum | n/a | [`0x17f849...2f0f46`](./contracts/ethereum-1/0x17f84989ff45b0e5fd85a983d100ec564a2f0f46/) | ⚠️ Unaudited |
| DexV2AggregatorModule | unknown | ethereum | n/a | 3 deployments: ethereum [`0x262a7b...385a90`](./contracts/ethereum-1/0x262a7b5c1f7da3391775cc922cae802c97385a90/); ethereum `0x3f7633...ab4423`; ethereum `0x95b12f...c60879` | ⚠️ Unaudited |
| DexV2AggregatorModuleMk2 | unknown | ethereum | n/a | [`0xd1724d...9450da`](./contracts/ethereum-1/0xd1724d7c865b29a52cc0238e2b453531759450da/) | ⚠️ Unaudited |
| DexV2AggregatorModuleMk3 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x260942...30e547`](./contracts/ethereum-1/0x260942d3ef440ce22f1640ae9ab9edb10b30e547/); ethereum `0x409738...e5fbd5`; ethereum `0x95e50d...9837c8`; ethereum `0xb2d8aa...9d88ef` | ⚠️ Unaudited |
| DexV2AggregatorModuleMk4 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3bed9c...d4ed29`](./contracts/ethereum-1/0x3bed9cba3949fecbe34f696398fec6174ad4ed29/); ethereum `0x671f53...f05c12`; ethereum `0xf3bf6b...5dc592` | ⚠️ Unaudited |
| DSF_CVXCRVHoldingsMIM3crv | unknown | ethereum | n/a | [`0x26a147...7dfad8`](./contracts/ethereum-1/0x26a14743dee6182e7a06a651b80129152d7dfad8/) | ⚠️ Unaudited |
| DSFanalytics | unknown | ethereum | n/a | 2 deployments: ethereum [`0x444b1d...5c8962`](./contracts/ethereum-1/0x444b1d03f055eaf78d284964ab64157a925c8962/); ethereum `0x70fd33...28fb00` | ⚠️ Unaudited |
| DSFanalyticsMk2 | unknown | ethereum | n/a | [`0xeac056...0bbaf9`](./contracts/ethereum-1/0xeac056d92f6924a85acb0035f3a816fe5c0bbaf9/) | ⚠️ Unaudited |
| DSFanalyticsMk3 | unknown | ethereum | n/a | [`0x69c77e...808f65`](./contracts/ethereum-1/0x69c77e523020b1dd8908e42a94e45793fc808f65/) | ⚠️ Unaudited |
| DSFFutureIncomeAggregator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3d6033...359b82`](./contracts/ethereum-1/0x3d603335cd12e3ba776a64dcfab40bd6c9359b82/); ethereum `0xf024d4...97dec0` | ⚠️ Unaudited |
| DSFhelperMIM | periphery | ethereum | n/a | [`0x9ea2a3...88afbc`](./contracts/ethereum-1/0x9ea2a3623b20b2a14c6d3245e4210b707b88afbc/) | ⚠️ Unaudited |
| DSFRewardForwarder | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e86fd...a1babc`](./contracts/ethereum-1/0x4e86fd6f1a211bfbc2056055c998ba313ba1babc/); ethereum `0xf1695a...393da5` | ⚠️ Unaudited |
| DSFRewardManagerStrategyStub | core_logic | ethereum | n/a | [`0x63dd85...f0c626`](./contracts/ethereum-1/0x63dd85b4d611822b761a75915fe7e84aeff0c626/) | ⚠️ Unaudited |
| DSFtest | unknown | ethereum | n/a | [`0xa147f8...d85eb9`](./contracts/ethereum-1/0xa147f8a158fc0ef023a9ddb8fdbdafc73fd85eb9/) | ⚠️ Unaudited |
| DSFuserData | unknown | ethereum | n/a | 2 deployments: ethereum [`0x230833...e4dcfd`](./contracts/ethereum-1/0x230833258da1c9950ea3608924ac92e888e4dcfd/); ethereum `0x6b9dbc...1932dc` | ⚠️ Unaudited |
| DSFuserDataMk2_Aggregated | unknown | ethereum | n/a | 5 deployments: ethereum [`0x783659...0d4e25`](./contracts/ethereum-1/0x78365950df4cec3ab32ecb474cb9de27c10d4e25/); ethereum `0x78ea5e...e91773`; ethereum `0x93edde...6ad410`; ethereum `0xc3a8d7...24093b`; ethereum `0xd37879...c2195b` | ⚠️ Unaudited |
| DSFuserDataMk3_Aggregated | unknown | ethereum | n/a | 2 deployments: ethereum [`0x26c452...1a711b`](./contracts/ethereum-1/0x26c452c210b07f7697b8bf044784f948531a711b/); ethereum `0x6ae139...759cff` | ⚠️ Unaudited |
| DSFuserDataMk4 | unknown | ethereum | n/a | [`0x439ae2...7ff22e`](./contracts/ethereum-1/0x439ae20d0b827c99273873f90699773bec7ff22e/) | ⚠️ Unaudited |
| DSFUserHelper | periphery | ethereum | n/a | 3 deployments: ethereum [`0x321824...a6dc5b`](./contracts/ethereum-1/0x3218241b322680971cc0862171e3032f1ca6dc5b/); ethereum `0x4b3b68...eef3d4`; ethereum `0x57e786...5c90b9` | ⚠️ Unaudited |
| DSFUserHelperMIM | periphery | ethereum | n/a | [`0xf225e5...d4e2ef`](./contracts/ethereum-1/0xf225e5c78d56cbe6993f533865ab49c2f4d4e2ef/) | ⚠️ Unaudited |
| DsfWhiteLabelVault_USDT | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x18a973...fabf30`](./contracts/ethereum-1/0x18a97312588c093018600d975a08a01515fabf30/); ethereum `0x33f033...8d05ac`; ethereum `0x442d9f...6cc9fc`; ethereum `0x534983...f4ebab`; ethereum `0x9cf07c...306408`; ethereum `0xcbbf25...5918aa`; ethereum `0xea41ab...7d23e4`; ethereum `0xfa06f4...5c4d0f` | ⚠️ Unaudited |
| ERC20RegistryLens | registry | ethereum | n/a | [`0x605bfa...e19ca3`](./contracts/ethereum-1/0x605bfa862a92fe15e6abd9943be571fcc8e19ca3/) | ⚠️ Unaudited |
| PathOracle | operational_periphery | ethereum | n/a | [`0xee1ca9...f46f50`](./contracts/ethereum-1/0xee1ca92361ae19e3442daae6ed18a5ab37f46f50/) | ⚠️ Unaudited |
| PoolLiquidityAggregator | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x45017a...6a5162`](./contracts/ethereum-1/0x45017a40449679ee974a3c1f25c6941aed6a5162/); ethereum `0x87ede3...8888fa` | ⚠️ Unaudited |
| RatioContract | unknown | ethereum | n/a | [`0x9979a5...55fb7a`](./contracts/ethereum-1/0x9979a5b64419f58d103746c7a01e526abf55fb7a/) | ⚠️ Unaudited |
| RewardManager | governance | ethereum | n/a | 6 deployments: ethereum [`0x17d08e...52e6f6`](./contracts/ethereum-1/0x17d08e5fc8d81ac3726b3533d702efe03552e6f6/); ethereum `0x2a4b56...3c57c3`; ethereum `0x702035...f5e83e`; ethereum `0xb7df8c...3ade12`; ethereum `0xce4183...ee5f2a`; ethereum `0xfd2cc1...b9b589` | ⚠️ Unaudited |
| RewardManagerMk2 | governance | ethereum | n/a | [`0x0b9d1e...b71257`](./contracts/ethereum-1/0x0b9d1e9ac8d2e407b75222cd132dbfafafb71257/) | ⚠️ Unaudited |
| StaticQuoterV2 | periphery | ethereum | n/a | 2 deployments: ethereum [`0x5f0d24...36adca`](./contracts/ethereum-1/0x5f0d24aeab8b458231566716b2638e840e36adca/); ethereum `0x84651f...1b3f18` | ⚠️ Unaudited |
| StorageSlot | unknown | ethereum | n/a | [`0x2fbe7d...78ba98`](./contracts/ethereum-1/0x2fbe7dc08e4152620c00b89c7969eb80bb78ba98/) | ⚠️ Unaudited |
| SwapAdapterMk3Module | adapter | ethereum | n/a | 3 deployments: ethereum [`0x71cbe8...9dd01d`](./contracts/ethereum-1/0x71cbe8edcee5c2fde4b651f9160f6405ff9dd01d/); ethereum `0xa12ae6...d388be`; ethereum `0xc74b3f...d9ac47` | ⚠️ Unaudited |
| SwapAdapterMk4 | adapter | ethereum | n/a | [`0x0e4b86...e45c2d`](./contracts/ethereum-1/0x0e4b86ef2eb4530b6b1878622dc3e892d1e45c2d/) | ⚠️ Unaudited |
| TokenDistribution | token | ethereum | n/a | [`0xc3bdf4...2c574c`](./contracts/ethereum-1/0xc3bdf49d229d6c9d6afe1ac11d199b35b02c574c/) | ⚠️ Unaudited |
| TokenPriceOracle | operational_periphery | ethereum | n/a | [`0x41f7cb...3ccd8e`](./contracts/ethereum-1/0x41f7cbdff2419af57566f0a34cdf7780163ccd8e/) | ⚠️ Unaudited |
| TwapGuardV3 | governance | ethereum | n/a | 3 deployments: ethereum [`0x07d5c2...e711cd`](./contracts/ethereum-1/0x07d5c219cc9d1ff0903501dd4c7e828196e711cd/); ethereum `0x533a79...571c0e`; ethereum `0xe5890d...d4763a` | ⚠️ Unaudited |
| UniversalRouter | adapter | ethereum | n/a | 15 deployments: ethereum [`0x280582...d12531`](./contracts/ethereum-1/0x28058206aeb39c335ef4efaefcf136d1d7d12531/); ethereum `0x2f5a9b...e48d5f`; ethereum `0x4400c1...bdfee1`; ethereum `0x4d8bd0...24a4f4`; ethereum `0x5a91de...4ce95e`; ethereum `0x6c938d...1def55`; ethereum `0x8f5948...bb4744`; ethereum `0x9e470e...75fa9c`; ethereum `0xa3cf63...fb7766`; ethereum `0xc01827...0c2e7b`; ethereum `0xc2fb0e...66e8ad`; ethereum `0xd6d379...184267`; ethereum `0xdbc81c...83df3d`; ethereum `0xdd6958...554adc`; ethereum `0xe447ea...69cb0b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x93f960...68fd96` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DSF_security_review.pdf](https://github.com/DSFfinance/DSF_Protocol_Mk1/blob/main/audit/DSF_security_review.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3d854d...9dba63`](./contracts/ethereum-1/0x3d854da45bb29541407702b6bbefb57fc39dba63/) | coreVault_USDT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x262a7b...385a90`](./contracts/ethereum-1/0x262a7b5c1f7da3391775cc922cae802c97385a90/) | DexV2AggregatorModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1724d...9450da`](./contracts/ethereum-1/0xd1724d7c865b29a52cc0238e2b453531759450da/) | DexV2AggregatorModuleMk2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x260942...30e547`](./contracts/ethereum-1/0x260942d3ef440ce22f1640ae9ab9edb10b30e547/) | DexV2AggregatorModuleMk3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bed9c...d4ed29`](./contracts/ethereum-1/0x3bed9cba3949fecbe34f696398fec6174ad4ed29/) | DexV2AggregatorModuleMk4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26a147...7dfad8`](./contracts/ethereum-1/0x26a14743dee6182e7a06a651b80129152d7dfad8/) | DSF_CVXCRVHoldingsMIM3crv | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x444b1d...5c8962`](./contracts/ethereum-1/0x444b1d03f055eaf78d284964ab64157a925c8962/) | DSFanalytics | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeac056...0bbaf9`](./contracts/ethereum-1/0xeac056d92f6924a85acb0035f3a816fe5c0bbaf9/) | DSFanalyticsMk2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69c77e...808f65`](./contracts/ethereum-1/0x69c77e523020b1dd8908e42a94e45793fc808f65/) | DSFanalyticsMk3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d6033...359b82`](./contracts/ethereum-1/0x3d603335cd12e3ba776a64dcfab40bd6c9359b82/) | DSFFutureIncomeAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ea2a3...88afbc`](./contracts/ethereum-1/0x9ea2a3623b20b2a14c6d3245e4210b707b88afbc/) | DSFhelperMIM | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e86fd...a1babc`](./contracts/ethereum-1/0x4e86fd6f1a211bfbc2056055c998ba313ba1babc/) | DSFRewardForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63dd85...f0c626`](./contracts/ethereum-1/0x63dd85b4d611822b761a75915fe7e84aeff0c626/) | DSFRewardManagerStrategyStub | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa147f8...d85eb9`](./contracts/ethereum-1/0xa147f8a158fc0ef023a9ddb8fdbdafc73fd85eb9/) | DSFtest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x230833...e4dcfd`](./contracts/ethereum-1/0x230833258da1c9950ea3608924ac92e888e4dcfd/) | DSFuserData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x783659...0d4e25`](./contracts/ethereum-1/0x78365950df4cec3ab32ecb474cb9de27c10d4e25/) | DSFuserDataMk2_Aggregated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26c452...1a711b`](./contracts/ethereum-1/0x26c452c210b07f7697b8bf044784f948531a711b/) | DSFuserDataMk3_Aggregated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x439ae2...7ff22e`](./contracts/ethereum-1/0x439ae20d0b827c99273873f90699773bec7ff22e/) | DSFuserDataMk4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x321824...a6dc5b`](./contracts/ethereum-1/0x3218241b322680971cc0862171e3032f1ca6dc5b/) | DSFUserHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf225e5...d4e2ef`](./contracts/ethereum-1/0xf225e5c78d56cbe6993f533865ab49c2f4d4e2ef/) | DSFUserHelperMIM | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18a973...fabf30`](./contracts/ethereum-1/0x18a97312588c093018600d975a08a01515fabf30/) | DsfWhiteLabelVault_USDT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x605bfa...e19ca3`](./contracts/ethereum-1/0x605bfa862a92fe15e6abd9943be571fcc8e19ca3/) | ERC20RegistryLens | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee1ca9...f46f50`](./contracts/ethereum-1/0xee1ca92361ae19e3442daae6ed18a5ab37f46f50/) | PathOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45017a...6a5162`](./contracts/ethereum-1/0x45017a40449679ee974a3c1f25c6941aed6a5162/) | PoolLiquidityAggregator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9979a5...55fb7a`](./contracts/ethereum-1/0x9979a5b64419f58d103746c7a01e526abf55fb7a/) | RatioContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d08e...52e6f6`](./contracts/ethereum-1/0x17d08e5fc8d81ac3726b3533d702efe03552e6f6/) | RewardManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b9d1e...b71257`](./contracts/ethereum-1/0x0b9d1e9ac8d2e407b75222cd132dbfafafb71257/) | RewardManagerMk2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f0d24...36adca`](./contracts/ethereum-1/0x5f0d24aeab8b458231566716b2638e840e36adca/) | StaticQuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fbe7d...78ba98`](./contracts/ethereum-1/0x2fbe7dc08e4152620c00b89c7969eb80bb78ba98/) | StorageSlot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71cbe8...9dd01d`](./contracts/ethereum-1/0x71cbe8edcee5c2fde4b651f9160f6405ff9dd01d/) | SwapAdapterMk3Module | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e4b86...e45c2d`](./contracts/ethereum-1/0x0e4b86ef2eb4530b6b1878622dc3e892d1e45c2d/) | SwapAdapterMk4 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3bdf4...2c574c`](./contracts/ethereum-1/0xc3bdf49d229d6c9d6afe1ac11d199b35b02c574c/) | TokenDistribution | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41f7cb...3ccd8e`](./contracts/ethereum-1/0x41f7cbdff2419af57566f0a34cdf7780163ccd8e/) | TokenPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07d5c2...e711cd`](./contracts/ethereum-1/0x07d5c219cc9d1ff0903501dd4c7e828196e711cd/) | TwapGuardV3 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x280582...d12531`](./contracts/ethereum-1/0x28058206aeb39c335ef4efaefcf136d1d7d12531/) | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
