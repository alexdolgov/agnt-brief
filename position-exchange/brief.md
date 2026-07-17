# Agentic Audit Brief: position-exchange

## Project Overview

- Project: position-exchange (`position-exchange`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.110Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: bsc
- Contract surface: 52 unique implementations (52 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 52 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 18 common project-authored base contract(s) (cumulativepremiumfractions, claimableamountmanager, limitordermanager). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 52 (52 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/41 (2.4%)
- Deployed-live implementations: 52 of 52 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/52
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 52
- Raw deployments: 52
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 1.9% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BUSDPosiVault | unknown | bsc | n/a | [`0x0385665ac09aa35c6e7ea58a0a9b63915fc60f38`](./contracts/bsc-56/0x0385665ac09aa35c6e7ea58a0a9b63915fc60f38/) | ✅ Audited |

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BNBPosiVault | unknown | bsc | n/a | [`0x43c2b319901be27b11dda5c5daea1e0d34c62de5`](./contracts/bsc-56/0x43c2b319901be27b11dda5c5daea1e0d34c62de5/) | ⚠️ Unaudited |
| CompanyReserveGovernor | unknown | bsc | n/a | [`0x9fc54b27f32b33d8275f8ba230bdc1eeef947b5c`](./contracts/bsc-56/0x9fc54b27f32b33d8275f8ba230bdc1eeef947b5c/) | ⚠️ Unaudited |
| CompanyReserveTimelock | unknown | bsc | n/a | [`0x2fa47ebe1326ee9edb73cf0a14ff34fe72a6b6cc`](./contracts/bsc-56/0x2fa47ebe1326ee9edb73cf0a14ff34fe72a6b6cc/) | ⚠️ Unaudited |
| ConvertLPToken | unknown | bsc | n/a | [`0x47ba847993d64c0a9c03c320c15f6fb4cc708fe3`](./contracts/bsc-56/0x47ba847993d64c0a9c03c320c15f6fb4cc708fe3/) | ⚠️ Unaudited |
| GeneralNFTReward | unknown | bsc | n/a | [`0x69ab6501249951cd00ccdb4a0c5a53aa3989fc78`](./contracts/bsc-56/0x69ab6501249951cd00ccdb4a0c5a53aa3989fc78/) | ⚠️ Unaudited |
| GeneralNFTRewardV2 | unknown | bsc | n/a | [`0x00629141438961f2b5d2a44cda4196d1c4a5cf95`](./contracts/bsc-56/0x00629141438961f2b5d2a44cda4196d1c4a5cf95/) | ⚠️ Unaudited |
| InsuranceFundV1 | unknown | bsc | n/a | [`0x89fa1bcd46fbef6c0144ea20304aff0339d4099c`](./contracts/bsc-56/0x89fa1bcd46fbef6c0144ea20304aff0339d4099c/) | ⚠️ Unaudited |
| InsuranceFundV2 | unknown | bsc | n/a | [`0x4ae36a9a6d94f6febb8fba4948378f501138a19b`](./contracts/bsc-56/0x4ae36a9a6d94f6febb8fba4948378f501138a19b/) | ⚠️ Unaudited |
| MarketplaceAuction | unknown | bsc | n/a | [`0xcb4322ada51169f7aabbfed6796100ef6f5d6b81`](./contracts/bsc-56/0xcb4322ada51169f7aabbfed6796100ef6f5d6b81/) | ⚠️ Unaudited |
| MockBNBBEP20 | unknown | bsc | n/a | [`0xe2c2dc7848b86c4ef77bd80cef419ad473fad11a`](./contracts/bsc-56/0xe2c2dc7848b86c4ef77bd80cef419ad473fad11a/) | ⚠️ Unaudited |
| MockPOSI | unknown | bsc | n/a | [`0xb0b74ea67a92385e653060ca18d7973335c41edb`](./contracts/bsc-56/0xb0b74ea67a92385e653060ca18d7973335c41edb/) | ⚠️ Unaudited |
| POSICompanyReserve | unknown | bsc | n/a | [`0x46ec924fdde672c625a6487e082987200206b380`](./contracts/bsc-56/0x46ec924fdde672c625a6487e082987200206b380/) | ⚠️ Unaudited |
| PosiNFT | unknown | bsc | n/a | [`0x46c72d43ff4d86645abadad5b70d503585f7a4e6`](./contracts/bsc-56/0x46c72d43ff4d86645abadad5b70d503585f7a4e6/) | ⚠️ Unaudited |
| PosiNFTFactory | unknown | bsc | n/a | [`0x559cb9408e6d190c1ce626b7541134b55144fae1`](./contracts/bsc-56/0x559cb9408e6d190c1ce626b7541134b55144fae1/) | ⚠️ Unaudited |
| PosiNFTMarketplace | unknown | bsc | n/a | [`0x2affdb44c31f15a8e75bbfaaeac9dca3c017cce6`](./contracts/bsc-56/0x2affdb44c31f15a8e75bbfaaeac9dca3c017cce6/) | ⚠️ Unaudited |
| PosiNFTMintProxy | unknown | bsc | n/a | [`0x0974112f3870c9953e9c08d3aabba618ff9bc947`](./contracts/bsc-56/0x0974112f3870c9953e9c08d3aabba618ff9bc947/) | ⚠️ Unaudited |
| PosiRefund | unknown | bsc | n/a | [`0xcef0cf23a3c952032614887765a9390cc1f98f19`](./contracts/bsc-56/0xcef0cf23a3c952032614887765a9390cc1f98f19/) | ⚠️ Unaudited |
| PosiSmartChefFactory | unknown | bsc | n/a | [`0x289acae64dc4f005535f8ee537b6d596ce2f0895`](./contracts/bsc-56/0x289acae64dc4f005535f8ee537b6d596ce2f0895/) | ⚠️ Unaudited |
| PosiStakingManager | unknown | bsc | n/a | [`0x0c54b0b7d61de871db47c3ad3f69feb0f2c8db0b`](./contracts/bsc-56/0x0c54b0b7d61de871db47c3ad3f69feb0f2c8db0b/) | ⚠️ Unaudited |
| POSITeamFunds | unknown | bsc | n/a | [`0xbfdb4074f504ca8c1e7747abf5fc2371fd6bdae0`](./contracts/bsc-56/0xbfdb4074f504ca8c1e7747abf5fc2371fd6bdae0/) | ⚠️ Unaudited |
| POSITeamRewardsLockingContract | unknown | bsc | n/a | [`0x05d8a278a2f52ecfc33bdd169b83cd168182f13a`](./contracts/bsc-56/0x05d8a278a2f52ecfc33bdd169b83cd168182f13a/) | ⚠️ Unaudited |
| PositionBond002 | unknown | bsc | n/a | [`0x77d2e86c25792ed30d17e6fc8334a09f6347f5a4`](./contracts/bsc-56/0x77d2e86c25792ed30d17e6fc8334a09f6347f5a4/) | ⚠️ Unaudited |
| PositionBond003 | unknown | bsc | n/a | [`0xd3462c5c15f90d41eb920888f9080ac64488d16b`](./contracts/bsc-56/0xd3462c5c15f90d41eb920888f9080ac64488d16b/) | ⚠️ Unaudited |
| PositionBond005 | unknown | bsc | n/a | [`0xc36aa92decdf711ba2c36071e4f038853ef6f807`](./contracts/bsc-56/0xc36aa92decdf711ba2c36071e4f038853ef6f807/) | ⚠️ Unaudited |
| PositionBond01 | unknown | bsc | n/a | [`0xd4c9123e011066a971fb78d4015cd3f0b8126e75`](./contracts/bsc-56/0xd4c9123e011066a971fb78d4015cd3f0b8126e75/) | ⚠️ Unaudited |
| PositionHouse | unknown | bsc | n/a | [`0x0400a443e3fb5818ff23f3cd8bc5f30a344e0f07`](./contracts/bsc-56/0x0400a443e3fb5818ff23f3cd8bc5f30a344e0f07/) | ⚠️ Unaudited |
| PositionHouseFunction | unknown | bsc | n/a | [`0xdf5770d79300d7b7126752ece002931edbd4bbab`](./contracts/bsc-56/0xdf5770d79300d7b7126752ece002931edbd4bbab/) | ⚠️ Unaudited |
| PositionHouseViewer | unknown | bsc | n/a | [`0x14b47cfc08417e1f8d05411cb528ab69cb7ab443`](./contracts/bsc-56/0x14b47cfc08417e1f8d05411cb528ab69cb7ab443/) | ⚠️ Unaudited |
| PositionManager | unknown | bsc | n/a | [`0x07efea9058bfc4399b36ce9ec0fcaf18dee04cb0`](./contracts/bsc-56/0x07efea9058bfc4399b36ce9ec0fcaf18dee04cb0/) | ⚠️ Unaudited |
| PositionReferral | unknown | bsc | n/a | [`0x0d6662a4a7545311e2b9ccedd243571c5fb752d6`](./contracts/bsc-56/0x0d6662a4a7545311e2b9ccedd243571c5fb752d6/) | ⚠️ Unaudited |
| PositionStrategyOrder | unknown | bsc | n/a | [`0x6b6d62a034db18327aafe07aadc5967e4c43ca57`](./contracts/bsc-56/0x6b6d62a034db18327aafe07aadc5967e4c43ca57/) | ⚠️ Unaudited |
| PositionToken | unknown | bsc | n/a | [`0x24aefaddbaec40b5e6912b0200164b51c5b17181`](./contracts/bsc-56/0x24aefaddbaec40b5e6912b0200164b51c5b17181/) | ⚠️ Unaudited |
| PositionTokenGovernor | unknown | bsc | n/a | [`0x89a0380d83a53310141308ea6b113173ff6f1200`](./contracts/bsc-56/0x89a0380d83a53310141308ea6b113173ff6f1200/) | ⚠️ Unaudited |
| PositionTokenTimelockContoller | unknown | bsc | n/a | [`0xddef6a81e364da625cd6e2acd393cfca16a56da1`](./contracts/bsc-56/0xddef6a81e364da625cd6e2acd393cfca16a56da1/) | ⚠️ Unaudited |
| PositionTokenV2 | unknown | bsc | n/a | [`0x00c896aa8ba3e77ad97accfd03e75dc3e4853ebf`](./contracts/bsc-56/0x00c896aa8ba3e77ad97accfd03e75dc3e4853ebf/) | ⚠️ Unaudited |
| PosiTreasury | unknown | bsc | n/a | [`0x152d3c50b2acb64a11bf3e7160ce7792079d320a`](./contracts/bsc-56/0x152d3c50b2acb64a11bf3e7160ce7792079d320a/) | ⚠️ Unaudited |
| PosiV2Migrate | unknown | bsc | n/a | [`0x79eaa59d796aa10960bb29917c5daaa641adde17`](./contracts/bsc-56/0x79eaa59d796aa10960bb29917c5daaa641adde17/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x80fed99ad61c3d9daf92f99408bc20d20bec356a`](./contracts/bsc-56/0x80fed99ad61c3d9daf92f99408bc20d20bec356a/) | ⚠️ Unaudited |
| SpotFactory | unknown | bsc | n/a | [`0x0a247e4892a9439fa82874ca0c1e210c35e1029b`](./contracts/bsc-56/0x0a247e4892a9439fa82874ca0c1e210c35e1029b/) | ⚠️ Unaudited |
| SpotHouse | unknown | bsc | n/a | [`0x1bb8939b9c0acf23fcec442b08a70f6c36eff9f0`](./contracts/bsc-56/0x1bb8939b9c0acf23fcec442b08a70f6c36eff9f0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x05e5b3cd263c4cd40cfa74b5e221dbede60c632e`](./contracts/bsc-56/0x05e5b3cd263c4cd40cfa74b5e221dbede60c632e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0bb004223a9eeab6348f89ddad6df96e15770337`](./contracts/bsc-56/0x0bb004223a9eeab6348f89ddad6df96e15770337/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x146729fd7eac0d5e54b53dfb1aec7f62fdeb768a`](./contracts/bsc-56/0x146729fd7eac0d5e54b53dfb1aec7f62fdeb768a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x18859fdd32fc19b21c353fc9fa06c7585e1805a2`](./contracts/bsc-56/0x18859fdd32fc19b21c353fc9fa06c7585e1805a2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x1bf3beb5747fa187ab8a1ba483609d107d509642`](./contracts/bsc-56/0x1bf3beb5747fa187ab8a1ba483609d107d509642/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x460f4aab09f2f3802d1a988935589fc1d5f64b14`](./contracts/bsc-56/0x460f4aab09f2f3802d1a988935589fc1d5f64b14/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x547dc7a6f196a06acc4c883cf17eab047de0275a`](./contracts/bsc-56/0x547dc7a6f196a06acc4c883cf17eab047de0275a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x5924551bb4c8cc32f4fe86cba09366d8be3df5f0`](./contracts/bsc-56/0x5924551bb4c8cc32f4fe86cba09366d8be3df5f0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xa595a1bfadc277ea56526b9c1b771138d3b8ae61`](./contracts/bsc-56/0xa595a1bfadc277ea56526b9c1b771138d3b8ae61/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xf35848441017917a034589bfbec4b3783bb39cb2`](./contracts/bsc-56/0xf35848441017917a034589bfbec4b3783bb39cb2/) | ⚠️ Unaudited |
| VaultReferralTreasury | unknown | bsc | n/a | [`0x6ba6df33707a9414cc41c4909378ba8cb623c692`](./contracts/bsc-56/0x6ba6df33707a9414cc41c4909378ba8cb623c692/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/positionexchange](https://skynet.certik.com/projects/positionexchange) | CertiK | Audit | 2022-01 | stale | Direct | contract_name | 1 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x43c2b319901be27b11dda5c5daea1e0d34c62de5`](./contracts/bsc-56/0x43c2b319901be27b11dda5c5daea1e0d34c62de5/) | BNBPosiVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9fc54b27f32b33d8275f8ba230bdc1eeef947b5c`](./contracts/bsc-56/0x9fc54b27f32b33d8275f8ba230bdc1eeef947b5c/) | CompanyReserveGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2fa47ebe1326ee9edb73cf0a14ff34fe72a6b6cc`](./contracts/bsc-56/0x2fa47ebe1326ee9edb73cf0a14ff34fe72a6b6cc/) | CompanyReserveTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x47ba847993d64c0a9c03c320c15f6fb4cc708fe3`](./contracts/bsc-56/0x47ba847993d64c0a9c03c320c15f6fb4cc708fe3/) | ConvertLPToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x69ab6501249951cd00ccdb4a0c5a53aa3989fc78`](./contracts/bsc-56/0x69ab6501249951cd00ccdb4a0c5a53aa3989fc78/) | GeneralNFTReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00629141438961f2b5d2a44cda4196d1c4a5cf95`](./contracts/bsc-56/0x00629141438961f2b5d2a44cda4196d1c4a5cf95/) | GeneralNFTRewardV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x89fa1bcd46fbef6c0144ea20304aff0339d4099c`](./contracts/bsc-56/0x89fa1bcd46fbef6c0144ea20304aff0339d4099c/) | InsuranceFundV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ae36a9a6d94f6febb8fba4948378f501138a19b`](./contracts/bsc-56/0x4ae36a9a6d94f6febb8fba4948378f501138a19b/) | InsuranceFundV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcb4322ada51169f7aabbfed6796100ef6f5d6b81`](./contracts/bsc-56/0xcb4322ada51169f7aabbfed6796100ef6f5d6b81/) | MarketplaceAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe2c2dc7848b86c4ef77bd80cef419ad473fad11a`](./contracts/bsc-56/0xe2c2dc7848b86c4ef77bd80cef419ad473fad11a/) | MockBNBBEP20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb0b74ea67a92385e653060ca18d7973335c41edb`](./contracts/bsc-56/0xb0b74ea67a92385e653060ca18d7973335c41edb/) | MockPOSI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46ec924fdde672c625a6487e082987200206b380`](./contracts/bsc-56/0x46ec924fdde672c625a6487e082987200206b380/) | POSICompanyReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46c72d43ff4d86645abadad5b70d503585f7a4e6`](./contracts/bsc-56/0x46c72d43ff4d86645abadad5b70d503585f7a4e6/) | PosiNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x559cb9408e6d190c1ce626b7541134b55144fae1`](./contracts/bsc-56/0x559cb9408e6d190c1ce626b7541134b55144fae1/) | PosiNFTFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2affdb44c31f15a8e75bbfaaeac9dca3c017cce6`](./contracts/bsc-56/0x2affdb44c31f15a8e75bbfaaeac9dca3c017cce6/) | PosiNFTMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0974112f3870c9953e9c08d3aabba618ff9bc947`](./contracts/bsc-56/0x0974112f3870c9953e9c08d3aabba618ff9bc947/) | PosiNFTMintProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcef0cf23a3c952032614887765a9390cc1f98f19`](./contracts/bsc-56/0xcef0cf23a3c952032614887765a9390cc1f98f19/) | PosiRefund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x289acae64dc4f005535f8ee537b6d596ce2f0895`](./contracts/bsc-56/0x289acae64dc4f005535f8ee537b6d596ce2f0895/) | PosiSmartChefFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0c54b0b7d61de871db47c3ad3f69feb0f2c8db0b`](./contracts/bsc-56/0x0c54b0b7d61de871db47c3ad3f69feb0f2c8db0b/) | PosiStakingManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbfdb4074f504ca8c1e7747abf5fc2371fd6bdae0`](./contracts/bsc-56/0xbfdb4074f504ca8c1e7747abf5fc2371fd6bdae0/) | POSITeamFunds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05d8a278a2f52ecfc33bdd169b83cd168182f13a`](./contracts/bsc-56/0x05d8a278a2f52ecfc33bdd169b83cd168182f13a/) | POSITeamRewardsLockingContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x77d2e86c25792ed30d17e6fc8334a09f6347f5a4`](./contracts/bsc-56/0x77d2e86c25792ed30d17e6fc8334a09f6347f5a4/) | PositionBond002 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd3462c5c15f90d41eb920888f9080ac64488d16b`](./contracts/bsc-56/0xd3462c5c15f90d41eb920888f9080ac64488d16b/) | PositionBond003 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc36aa92decdf711ba2c36071e4f038853ef6f807`](./contracts/bsc-56/0xc36aa92decdf711ba2c36071e4f038853ef6f807/) | PositionBond005 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd4c9123e011066a971fb78d4015cd3f0b8126e75`](./contracts/bsc-56/0xd4c9123e011066a971fb78d4015cd3f0b8126e75/) | PositionBond01 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0400a443e3fb5818ff23f3cd8bc5f30a344e0f07`](./contracts/bsc-56/0x0400a443e3fb5818ff23f3cd8bc5f30a344e0f07/) | PositionHouse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdf5770d79300d7b7126752ece002931edbd4bbab`](./contracts/bsc-56/0xdf5770d79300d7b7126752ece002931edbd4bbab/) | PositionHouseFunction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x14b47cfc08417e1f8d05411cb528ab69cb7ab443`](./contracts/bsc-56/0x14b47cfc08417e1f8d05411cb528ab69cb7ab443/) | PositionHouseViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07efea9058bfc4399b36ce9ec0fcaf18dee04cb0`](./contracts/bsc-56/0x07efea9058bfc4399b36ce9ec0fcaf18dee04cb0/) | PositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d6662a4a7545311e2b9ccedd243571c5fb752d6`](./contracts/bsc-56/0x0d6662a4a7545311e2b9ccedd243571c5fb752d6/) | PositionReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6b6d62a034db18327aafe07aadc5967e4c43ca57`](./contracts/bsc-56/0x6b6d62a034db18327aafe07aadc5967e4c43ca57/) | PositionStrategyOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x24aefaddbaec40b5e6912b0200164b51c5b17181`](./contracts/bsc-56/0x24aefaddbaec40b5e6912b0200164b51c5b17181/) | PositionToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x89a0380d83a53310141308ea6b113173ff6f1200`](./contracts/bsc-56/0x89a0380d83a53310141308ea6b113173ff6f1200/) | PositionTokenGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xddef6a81e364da625cd6e2acd393cfca16a56da1`](./contracts/bsc-56/0xddef6a81e364da625cd6e2acd393cfca16a56da1/) | PositionTokenTimelockContoller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00c896aa8ba3e77ad97accfd03e75dc3e4853ebf`](./contracts/bsc-56/0x00c896aa8ba3e77ad97accfd03e75dc3e4853ebf/) | PositionTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x152d3c50b2acb64a11bf3e7160ce7792079d320a`](./contracts/bsc-56/0x152d3c50b2acb64a11bf3e7160ce7792079d320a/) | PosiTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x79eaa59d796aa10960bb29917c5daaa641adde17`](./contracts/bsc-56/0x79eaa59d796aa10960bb29917c5daaa641adde17/) | PosiV2Migrate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0a247e4892a9439fa82874ca0c1e210c35e1029b`](./contracts/bsc-56/0x0a247e4892a9439fa82874ca0c1e210c35e1029b/) | SpotFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1bb8939b9c0acf23fcec442b08a70f6c36eff9f0`](./contracts/bsc-56/0x1bb8939b9c0acf23fcec442b08a70f6c36eff9f0/) | SpotHouse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6ba6df33707a9414cc41c4909378ba8cb623c692`](./contracts/bsc-56/0x6ba6df33707a9414cc41c4909378ba8cb623c692/) | VaultReferralTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 0 |
| standard_library | 11 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
