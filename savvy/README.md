# Agentic Audit Brief: Savvy

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Savvy (`savvy`)
- Website: [https://savvydefi.io](https://savvydefi.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum
- Contract surface: 75 unique implementations (164 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $122,822.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Savvy. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across arbitrum. Structural roles: 4 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: accesscontrol (4), erc165 (4), erc20 (4)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 4; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 71 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 64
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/53
- Verified + Unaudited implementations: 53
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 75
- Raw deployments: 164
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (53)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | arbitrum | n/a | 7 deployments: arbitrum `0x015081d1b5f768c6aaba6baca35c37f81001f7c8`; arbitrum `0x02c5844732518a571a63b02345424e326c48d86a`; arbitrum `0x1ede034cfd05a52abf38558ce62cebd82e46f00e`; arbitrum `0x39440d2528abc6fbd2e539da28bbc581f9078161`; arbitrum `0x3a47bd741cab8565f6ccc820e48c040700c65fb9`; arbitrum `0x4056e92c635595e9b9d5f4f85ba04220cbd0cbb6`; arbitrum `0xca728c2593ac1912457c8060836cc13bb61f1b08` | ⚠️ Unaudited |
| Allowlist | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x2443605ef9b886428209863f2c327e2821140dd0`; arbitrum `0x2dfbced8a7b40143e9c8513e788a0c8b3325e035`; arbitrum `0x722399ceebc51c648fbba56c743e802cac4edb95` | ⚠️ Unaudited |
| GmdTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3bda9365f6b4b438672c60159bc1e5062bd83267`; arbitrum `0xbc41510f154d7aacce2fa294f68241bb65eaa960` | ⚠️ Unaudited |
| GmdTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x43e6ecb5c17b069fdc61456fb1e12b295ab8591b`; arbitrum `0x7628b50765c9d407058b2262b04cf5e69b5e59d3`; arbitrum `0xbf8aa25ad262aaa3d875034412ea080ff1144cda`; arbitrum `0xe3116e561eec10c0681f9d4b514a256d03d2f489` | ⚠️ Unaudited |
| GmdTokenAdapterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | arbitrum | n/a | 5 deployments: arbitrum `0x19dde2f49075ad9cb29cdae62ee1de949474eb55`; arbitrum `0x20fa55fc023fc7e7e6e6d8967e7d2b9049e3ede4`; arbitrum `0x3c47a3966c82d9d90be763f4479e3172bd8737cd`; arbitrum `0xb06b4eba410de626e98d199a145ca7c663e4a570`; arbitrum `0xc63c7d601c6d4b02cd633677571527255b1101db` | ⚠️ Unaudited |
| GmdTokenAdapterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x45d23542ef7fc720533bd6186421711a6ec05986`; arbitrum `0x632652775b655ad78c0bcb6bb788d41981034dc0`; arbitrum `0xbe6acc21a9d2ef2f878bebc1b0850bf47c228802`; arbitrum `0xc16130f840f6cde564be87a517bf70738de0cded` | ⚠️ Unaudited |
| GmdV1RedemptionAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x596971a7f0368dd608f19800c2a688c4ea4f2cc0`; arbitrum `0x59796d036fe0b35da4624a8cb9f7d079b15e1628`; arbitrum `0x9a24f2b9def1748c83441c693fe201e020005d8b`; arbitrum `0x9dfe4ef88de8e8fe193e3b0696176fef99913619`; arbitrum `0xb7624dec3f9eef60249d5e7333f05dd781894434`; arbitrum `0xfd7eabf873e27581ce7781008a361fb541535ca6` | ⚠️ Unaudited |
| InfoAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x48d1e9bc55b8f199d5fc8f960bf909313847a448`; arbitrum `0x68d54ff41ba47355b95bd477bcf4d5ff4b2c2a59` | ⚠️ Unaudited |
| InfoAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6b10e327a98bd732674216273adcb19ea64e0eb` | ⚠️ Unaudited |
| JonesDAOTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ae7ea030a91fb5923ebc5ea0bb01e320418fa4a` | ⚠️ Unaudited |
| JonesDAOTokenAdapterWithArbRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0282c106ca396a8f37554bc506f7fe84f68c8a1f`; arbitrum `0xb680986a685e0d4e99a0509b6b0c51e3c31ffbff` | ⚠️ Unaudited |
| PassThroughAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x34e257e15f53a354bd725f5bd9d54dafc2d5e54e`; arbitrum `0x6559d1defb94058c04c603c3c927f10c3e4f3180` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4332cb742512c8471d3fcc4c1978299342650261` | ⚠️ Unaudited |
| SavvyAdminInfoAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90da195a1fa2e5676d757fe08d5a0671600a2345` | ⚠️ Unaudited |
| SavvyBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x338e2319a40ae8dc72abce7d8e6b6caf697e50d5`; arbitrum `0xbf837f2c7894cff859a01d078d7aaa8c47221a2f` | ⚠️ Unaudited |
| SavvyBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9bdaec367ef6f705a7747955740c9c29d65126a7` | ⚠️ Unaudited |
| SavvyFrontendInfoAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x0f1ad69441ab9bf05902a4ddc765ee7821d77d89`; arbitrum `0x176e40e195451e0f77b1a80daec29810e0e5a05d`; arbitrum `0x635234f8ea152244887ac7670516e7ab2108e4b8`; arbitrum `0x75f5e208d756274ff7b5fd4836b259d4b673dcdb`; arbitrum `0xc3f8520921d07714c93623957fa5914734ff3a08`; arbitrum `0xe9348d8515e723c94d51e3d917fbaa9bca1fbc31` | ⚠️ Unaudited |
| SavvyFrontendInfoAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1fee872ae9364c6710dd5df88e8f5806f57dd2c5`; arbitrum `0xaa51678af79cd70c2e13ff8ef293dd17e355f018` | ⚠️ Unaudited |
| SavvyFrontendInfoAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x73d05d4748ba4c44d43b7c561f1a277648c6feba`; arbitrum `0x97dca4000b2b89afd926f5987ad7b054b3e39db2` | ⚠️ Unaudited |
| SavvyLoanMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x2a0d14fd6e137af3c3c13e404a5bab817a076ea2`; arbitrum `0x716d2c488cd255f2010879bd7e3e88a31bb30400`; arbitrum `0x7ba6a81d8a24b088378f65e8c02ea07dd0b7bc99`; arbitrum `0x916a0ec8aafda0578ede37ffe45b29f0cb1ead00` | ⚠️ Unaudited |
| SavvyLoanMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x991382ff87fc0857608ab0b22241b803b419ce03` | ⚠️ Unaudited |
| SavvyLPRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x117b57109b2be611686ea1be522dc3770d862e0a`; arbitrum `0xa2d99ddb1853c5b12d8cc040d2fa32ae5238b178` | ⚠️ Unaudited |
| SavvyLPRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x17216e2fe7ce9800c29213737689a64c5189657e`; arbitrum `0x8c128536da9202883c37586fe701abdb8c318050`; arbitrum `0xe73d40d300af26db5b91ab12fb96f836f1b3cc3c` | ⚠️ Unaudited |
| SavvyLPRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3e54aa8a714559752d420832642175f896dc0331`; arbitrum `0xb1865ac9559a1eae117902960c1b974b9208dbf4` | ⚠️ Unaudited |
| SavvyPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x3204d81c73f8100766c1691a67078b16ec7c142c`; arbitrum `0x36358a1597db299033b16fda567010d53c0a4eda`; arbitrum `0x4505abf34aac9e3f3a75d2aac8fd82a7547645b4`; arbitrum `0x5c4eb1909fb21e39fc45ee753420aedeba07f3ef` | ⚠️ Unaudited |
| SavvyPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x390e681c90bdf2149f4edc9110470505ddcdb795`; arbitrum `0x4f68f2ef7d4b7df371b7dd45574812f298d60666` | ⚠️ Unaudited |
| SavvyPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x27bb0f0b87e3e64784b88aa929bb9faac10f222f`; arbitrum `0xbcdab0382c17f58b828db3ad840f0140c4f00156` | ⚠️ Unaudited |
| SavvyProtocolToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-253845 | `0x43ab8f7d2a8dd4102ccea6b438f6d747b1b9f034` | ⚠️ Unaudited |
| SavvyRedlist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0d6554a8c6a7d98d4aa05206daddbcb3372b8f7f`; arbitrum `0xd0b547e3517e8b2b23070b6780ff5ef1243a7c68` | ⚠️ Unaudited |
| SavvySage | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x2fccd0f67d0722f5eb7c1a404dff0224544155e3`; arbitrum `0xcd5156fdd53fd9a0f5bfc37b212dd9c989c10533`; arbitrum `0xf8f20cbafa5ed9c7c5a4fa8f07ab0b62bb078ff9` | ⚠️ Unaudited |
| SavvySage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5716f6d3fecc4960c54cd47a8deb9cadfab67c5a`; arbitrum `0x78a370c3d5fff93da53a2b088a117244c52af857` | ⚠️ Unaudited |
| SavvySwap | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x03fa5a7fa80e5ea464559d21b8843e15b7969c07`; arbitrum `0x0e56d518e5d3f5e6cfcfd46095b6b4024541027b`; arbitrum `0x8c1b863ba5fa1422cfb27f0ce8b650eff9640d85`; arbitrum `0xd9565ab01aa30d7aa2b982b8b1c740480c1c8497` | ⚠️ Unaudited |
| SavvySwap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x268819f38e2e8c9e3a44755830db5e53eddaa511`; arbitrum `0x37e50987211e4aab92f08d6aa4b7ada33e90584f` | ⚠️ Unaudited |
| SavvySwap | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | arbitrum | n/a | 6 deployments: arbitrum `0x43be188901f529c11337f28bc1f753a878b2f691`; arbitrum `0x5a0cf61c81120558202bfba9221e177f29062e75`; arbitrum `0x82bdc3365b3f4d3c0589a6bb8631590146930df1`; arbitrum `0x9a3a3ba687fcb8afe6367eff3a5f5a11f51626da`; arbitrum `0xb5231e17596beaf436a25b018bd63e5b42e14135`; arbitrum `0xbc4e8679d4589941a9882a3d96bda0c5393fa050` | ⚠️ Unaudited |
| SavvySyntheticToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-253846 | `0xeee18334c414a47fb886a7317e1885b2bfb8c2a6` | ⚠️ Unaudited |
| SavvySyntheticToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-253847 | `0xf202ab403cd7e90197ec0f010ee897e283037706` | ⚠️ Unaudited |
| SavvySyntheticToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-253848 | `0xf7728582002ef82908c8242cf552e969ba863ffa` | ⚠️ Unaudited |
| SavvyTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x81a71a94e6c40fb52e3ac3cf188189c05cdbef51`; arbitrum `0xc85b72e97ab42a6706b18169eb461fb12cea6b98` | ⚠️ Unaudited |
| StaticAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x42b0d2bbd335a0c4e7e8ace55cf5e49b357c6f0a`; arbitrum `0x80132174e4d89e4275a244d4d87a3f6d023c796c`; arbitrum `0x8728ce0606c3e304e2f796bbb8c503644584beec`; arbitrum `0xcab3886d48bad0f749ba7e7c7a255b636c64f937`; arbitrum `0xcba86fa485f0539ce1d204a306ddf9475d63ff51`; arbitrum `0xcdff8576683e22621f512fc2e6d347a9d241dad3`; arbitrum `0xdd7e69c478288a9596decc2230a39c7b922413dd`; arbitrum `0xe5463b135ffbbea6dec8aecdea2e493e9b8f46db` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0eda601e814cf942a17c0ae3f97dbbeb855c03e9`; arbitrum `0xbb8ea83c0cdc6a4816a2a5de81d3895b3dcf48f4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x32157bee957411edf2648ed2bc184b15f2fe8d1c`; arbitrum `0xb903d29c6aae882cbf763e260c73b1624cb90c6c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3701a069c67b10455a7efc05c06b57b62a0fc59e`; arbitrum `0xb4f5727ee4925330bf6ca3ab850c6c64b694b0bc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3b1d730f9cbd9017493263edbfd60ab856843ff6`; arbitrum `0x9394b6b85beab8cba1e4aa35fbbb5c31c258224a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7beb54a78a71e2548bc803dc7f334ce1ed247797`; arbitrum `0xf25f259fde7ead43d0b23ee1eff6380be52f4633` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x882e251c1e010205a9f9b0147f3331b4728bb640`; arbitrum `0xede39059579ac922ca7443e16140727a0e931688` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xa6f6703ad99a7c638122e0f5d128044fbde22d8a`; arbitrum `0xb5b914c7af9b5fe348d2f8436b82cc0f646df1d6` | ⚠️ Unaudited |
| VeSvy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x31dc0d579d2d967e852731b7e759e52f668fbad0`; arbitrum `0x9aeee4656f67034b06d99294062feba1015430ad` | ⚠️ Unaudited |
| VeSvy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x3b5e593367b4eb310d2fa7e1ce9d3f97e4f86355`; arbitrum `0x4919dfa0fc3b859b8d1619af7855f23e0c516d6f`; arbitrum `0xe0d6dbc835389ef0353e75a6a5dfcf868bcddc60` | ⚠️ Unaudited |
| WrappedStakedJonesToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1bde8affd7a8d0b31ba89d67c98d185c196451fa`; arbitrum `0x3819487b1aec0e9a8f665cc2e1e1ccb3c5d6aba4`; arbitrum `0xc0439b7d38bbcbd8ec9e9d9950c0dad73d828332`; arbitrum `0xfc5e95c8c6bf348440ede5f836517bb50052fd4e` | ⚠️ Unaudited |
| WrapTokenGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84b5f8a97d7c1483b8fdc6ef603a8167e07225a8` | ⚠️ Unaudited |
| YieldStrategyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x06af08964240da52d7c4a383da3499365d04e35f`; arbitrum `0x23627eb1c6692adf25ad79285fde2bc6bdf12c82`; arbitrum `0xdc82e20111767f4a2a76a65bd85e41f7859c7b9f` | ⚠️ Unaudited |
| YieldStrategyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x09dde6661fd023cf7c3751555347a5cb8687f806`; arbitrum `0x52c0bef0e1408e3917277ff6c487d2fef479dd18` | ⚠️ Unaudited |
| YieldYakAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | arbitrum | n/a | 6 deployments: arbitrum `0x09da2f80ba8e47b4fc9b3f8ab7edd7e4ba0374b5`; arbitrum `0x22225f4f74580dda512180963dfbe760334190bb`; arbitrum `0x63d7bd2c0d58b2fac5f2737ae5b760a51a0ade27`; arbitrum `0x673c05a9fc4f1134f05739a52fd290977c6dcfc2`; arbitrum `0x8ceac2ddd6db7e04e0a7982c9e576eaa24fb06b2`; arbitrum `0xf85bf91cc39140c9bd8a57ea7aa043a293c5cdc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00e1b94e8d4d2bbc64b8032ba12a8e80d9bd7d4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x021fc8fdcb784460e1f2ce46cf93cc0d9fbf8389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05d9470ccfa34400977d354f69b2679f41609419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0625d88dabfff9f8e2c37d915e1ca34adcbeee92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e06bb959ec3bbb632691b63a1f2e10bd31cf4fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x211e823d694ea0c7e95285485efb2b4e121cbfa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21a194dafe9bc6396eb5bc3c0bad6cd95a720dce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x334878e1db6a1281435f84146d131daa44912946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3de7bc2390f135bf4f8bca567e7818aa9da63fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f143e54dad2db48eede1c4c993f9efd02d0f77b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x841060fcb1e693ce94cab7e018fa1794c82916d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ca8a5ecfbfbb1abab8dfddd5181f4dd0146d443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97d5d719f026f12127297c7151bd2ad634b8a81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f96907124c3949896b9e58a00d7c86c21e657ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa97ab3ec8d6d5236174fd1581be0f59cd26c5dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8a52578c80c0b903674da42babea150f22c523b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9dd165ebaf44fa6a15af22a7f98373409def856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbdef7eb55904ea1d2457ee8ba2d60239b950168e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8a2a20ef99cde708d4528dc4aee88fc6e28a0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe679fc3daac692eee32a259bb3e122b1627449c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6efaefc86afd94d2113ec72b3b1e66a5c10f2e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb5845eefbbc52e5103de56324f438270df9de25` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 160
- Live contracts: 0
- Unknown liveness contracts: 160
- Source-verified contracts: 131
- Currently scope-matched contracts retained as-is: 0
- Classification counts: contamination review=1, source verified unclassified=130, unverified unclassified=29

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| contamination review | GmdV1RedemptionAdapter<br>`0x596971a7f0368dd608f19800c2a688c4ea4f2cc0` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | Allowlist<br>`0x2443605ef9b886428209863f2c327e2821140dd0` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | GmdTokenAdapter<br>`0x3bda9365f6b4b438672c60159bc1e5062bd83267` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | GmdTokenAdapter<br>`0xbc41510f154d7aacce2fa294f68241bb65eaa960` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | GmdTokenAdapter<br>`0xe3116e561eec10c0681f9d4b514a256d03d2f489` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | GmdTokenAdapterV2<br>`0x3c47a3966c82d9d90be763f4479e3172bd8737cd` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | GmdTokenAdapterV2<br>`0xc16130f840f6cde564be87a517bf70738de0cded` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | GmdV1RedemptionAdapter<br>`0x59796d036fe0b35da4624a8cb9f7d079b15e1628` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | GmdV1RedemptionAdapter<br>`0x9a24f2b9def1748c83441c693fe201e020005d8b` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | GmdV1RedemptionAdapter<br>`0x9dfe4ef88de8e8fe193e3b0696176fef99913619` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | GmdV1RedemptionAdapter<br>`0xb7624dec3f9eef60249d5e7333f05dd781894434` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | GmdV1RedemptionAdapter<br>`0xfd7eabf873e27581ce7781008a361fb541535ca6` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | InfoAggregator<br>`0x48d1e9bc55b8f199d5fc8f960bf909313847a448` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | InfoAggregator<br>`0xb6b10e327a98bd732674216273adcb19ea64e0eb` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | JonesDAOTokenAdapter<br>`0x2ae7ea030a91fb5923ebc5ea0bb01e320418fa4a` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | JonesDAOTokenAdapterWithArbRewards<br>`0x0282c106ca396a8f37554bc506f7fe84f68c8a1f` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | PassThroughAMO<br>`0x6559d1defb94058c04c603c3c927f10c3e4f3180` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | ProxyAdmin<br>`0x4332cb742512c8471d3fcc4c1978299342650261` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyAdminInfoAggregator<br>`0x90da195a1fa2e5676d757fe08d5a0671600a2345` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyBooster<br>`0x338e2319a40ae8dc72abce7d8e6b6caf697e50d5` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyBooster<br>`0x9bdaec367ef6f705a7747955740c9c29d65126a7` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyFrontendInfoAggregator<br>`0x0f1ad69441ab9bf05902a4ddc765ee7821d77d89` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyFrontendInfoAggregator<br>`0x176e40e195451e0f77b1a80daec29810e0e5a05d` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyFrontendInfoAggregator<br>`0x635234f8ea152244887ac7670516e7ab2108e4b8` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyFrontendInfoAggregator<br>`0x73d05d4748ba4c44d43b7c561f1a277648c6feba` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyFrontendInfoAggregator<br>`0x75f5e208d756274ff7b5fd4836b259d4b673dcdb` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyFrontendInfoAggregator<br>`0xaa51678af79cd70c2e13ff8ef293dd17e355f018` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyFrontendInfoAggregator<br>`0xc3f8520921d07714c93623957fa5914734ff3a08` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyFrontendInfoAggregator<br>`0xe9348d8515e723c94d51e3d917fbaa9bca1fbc31` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyLoanMigrator<br>`0x716d2c488cd255f2010879bd7e3e88a31bb30400` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyLoanMigrator<br>`0x991382ff87fc0857608ab0b22241b803b419ce03` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyLPRewardDistributor<br>`0x117b57109b2be611686ea1be522dc3770d862e0a` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyLPRewardDistributor<br>`0x17216e2fe7ce9800c29213737689a64c5189657e` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyLPRewardDistributor<br>`0x8c128536da9202883c37586fe701abdb8c318050` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyLPRewardDistributor<br>`0xb1865ac9559a1eae117902960c1b974b9208dbf4` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyLPRewardDistributor<br>`0xe73d40d300af26db5b91ab12fb96f836f1b3cc3c` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyPositionManager<br>`0x390e681c90bdf2149f4edc9110470505ddcdb795` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyPositionManager<br>`0x4505abf34aac9e3f3a75d2aac8fd82a7547645b4` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyPositionManager<br>`0x4f68f2ef7d4b7df371b7dd45574812f298d60666` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyPriceFeed<br>`0x27bb0f0b87e3e64784b88aa929bb9faac10f222f` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyRedlist<br>`0xd0b547e3517e8b2b23070b6780ff5ef1243a7c68` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvySage<br>`0x5716f6d3fecc4960c54cd47a8deb9cadfab67c5a` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvySage<br>`0xf8f20cbafa5ed9c7c5a4fa8f07ab0b62bb078ff9` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvySwap<br>`0x268819f38e2e8c9e3a44755830db5e53eddaa511` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvySwap<br>`0x82bdc3365b3f4d3c0589a6bb8631590146930df1` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvySwap<br>`0x8c1b863ba5fa1422cfb27f0ce8b650eff9640d85` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | SavvyTimelockController<br>`0xc85b72e97ab42a6706b18169eb461fb12cea6b98` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | StaticAToken<br>`0x42b0d2bbd335a0c4e7e8ace55cf5e49b357c6f0a` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | StaticAToken<br>`0x80132174e4d89e4275a244d4d87a3f6d023c796c` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | StaticAToken<br>`0x8728ce0606c3e304e2f796bbb8c503644584beec` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | StaticAToken<br>`0xcab3886d48bad0f749ba7e7c7a255b636c64f937` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | StaticAToken<br>`0xcba86fa485f0539ce1d204a306ddf9475d63ff51` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | StaticAToken<br>`0xcdff8576683e22621f512fc2e6d347a9d241dad3` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | StaticAToken<br>`0xdd7e69c478288a9596decc2230a39c7b922413dd` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | StaticAToken<br>`0xe5463b135ffbbea6dec8aecdea2e493e9b8f46db` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x015081d1b5f768c6aaba6baca35c37f81001f7c8` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x02c5844732518a571a63b02345424e326c48d86a` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x03fa5a7fa80e5ea464559d21b8843e15b7969c07` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x09da2f80ba8e47b4fc9b3f8ab7edd7e4ba0374b5` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x09dde6661fd023cf7c3751555347a5cb8687f806` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x0d6554a8c6a7d98d4aa05206daddbcb3372b8f7f` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x0e56d518e5d3f5e6cfcfd46095b6b4024541027b` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x0eda601e814cf942a17c0ae3f97dbbeb855c03e9` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x19dde2f49075ad9cb29cdae62ee1de949474eb55` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x1ede034cfd05a52abf38558ce62cebd82e46f00e` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x1fee872ae9364c6710dd5df88e8f5806f57dd2c5` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x20fa55fc023fc7e7e6e6d8967e7d2b9049e3ede4` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x22225f4f74580dda512180963dfbe760334190bb` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x23627eb1c6692adf25ad79285fde2bc6bdf12c82` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x2a0d14fd6e137af3c3c13e404a5bab817a076ea2` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x2dfbced8a7b40143e9c8513e788a0c8b3325e035` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x2fccd0f67d0722f5eb7c1a404dff0224544155e3` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x3204d81c73f8100766c1691a67078b16ec7c142c` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x32157bee957411edf2648ed2bc184b15f2fe8d1c` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x34e257e15f53a354bd725f5bd9d54dafc2d5e54e` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x36358a1597db299033b16fda567010d53c0a4eda` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x37e50987211e4aab92f08d6aa4b7ada33e90584f` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x39440d2528abc6fbd2e539da28bbc581f9078161` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x3a47bd741cab8565f6ccc820e48c040700c65fb9` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x3e54aa8a714559752d420832642175f896dc0331` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x4056e92c635595e9b9d5f4f85ba04220cbd0cbb6` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x43be188901f529c11337f28bc1f753a878b2f691` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x43e6ecb5c17b069fdc61456fb1e12b295ab8591b` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x45d23542ef7fc720533bd6186421711a6ec05986` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x5a0cf61c81120558202bfba9221e177f29062e75` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x5c4eb1909fb21e39fc45ee753420aedeba07f3ef` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x632652775b655ad78c0bcb6bb788d41981034dc0` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x673c05a9fc4f1134f05739a52fd290977c6dcfc2` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x68d54ff41ba47355b95bd477bcf4d5ff4b2c2a59` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x722399ceebc51c648fbba56c743e802cac4edb95` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x7628b50765c9d407058b2262b04cf5e69b5e59d3` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x78a370c3d5fff93da53a2b088a117244c52af857` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x7ba6a81d8a24b088378f65e8c02ea07dd0b7bc99` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x81a71a94e6c40fb52e3ac3cf188189c05cdbef51` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x882e251c1e010205a9f9b0147f3331b4728bb640` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x8ceac2ddd6db7e04e0a7982c9e576eaa24fb06b2` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x916a0ec8aafda0578ede37ffe45b29f0cb1ead00` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x9394b6b85beab8cba1e4aa35fbbb5c31c258224a` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x97dca4000b2b89afd926f5987ad7b054b3e39db2` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x9a3a3ba687fcb8afe6367eff3a5f5a11f51626da` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x9aeee4656f67034b06d99294062feba1015430ad` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xa2d99ddb1853c5b12d8cc040d2fa32ae5238b178` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xa6f6703ad99a7c638122e0f5d128044fbde22d8a` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xb06b4eba410de626e98d199a145ca7c663e4a570` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xb4f5727ee4925330bf6ca3ab850c6c64b694b0bc` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xb5231e17596beaf436a25b018bd63e5b42e14135` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xb680986a685e0d4e99a0509b6b0c51e3c31ffbff` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xbc4e8679d4589941a9882a3d96bda0c5393fa050` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xbcdab0382c17f58b828db3ad840f0140c4f00156` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xbe6acc21a9d2ef2f878bebc1b0850bf47c228802` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xbf837f2c7894cff859a01d078d7aaa8c47221a2f` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xbf8aa25ad262aaa3d875034412ea080ff1144cda` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xc63c7d601c6d4b02cd633677571527255b1101db` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xca728c2593ac1912457c8060836cc13bb61f1b08` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xcd5156fdd53fd9a0f5bfc37b212dd9c989c10533` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xd9565ab01aa30d7aa2b982b8b1c740480c1c8497` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xdc82e20111767f4a2a76a65bd85e41f7859c7b9f` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xf25f259fde7ead43d0b23ee1eff6380be52f4633` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xf85bf91cc39140c9bd8a57ea7aa043a293c5cdc2` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | VeSvy<br>`0x31dc0d579d2d967e852731b7e759e52f668fbad0` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | VeSvy<br>`0x3b5e593367b4eb310d2fa7e1ce9d3f97e4f86355` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | VeSvy<br>`0x4919dfa0fc3b859b8d1619af7855f23e0c516d6f` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | VeSvy<br>`0xe0d6dbc835389ef0353e75a6a5dfcf868bcddc60` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | WrappedStakedJonesToken<br>`0x1bde8affd7a8d0b31ba89d67c98d185c196451fa` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | WrappedStakedJonesToken<br>`0x3819487b1aec0e9a8f665cc2e1e1ccb3c5d6aba4` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | WrappedStakedJonesToken<br>`0xc0439b7d38bbcbd8ec9e9d9950c0dad73d828332` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | WrappedStakedJonesToken<br>`0xfc5e95c8c6bf348440ede5f836517bb50052fd4e` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | WrapTokenGateway<br>`0x84b5f8a97d7c1483b8fdc6ef603a8167e07225a8` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | YieldStrategyManager<br>`0x06af08964240da52d7c4a383da3499365d04e35f` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | YieldStrategyManager<br>`0x52c0bef0e1408e3917277ff6c487d2fef479dd18` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| source verified unclassified | YieldYakAdapter<br>`0x63d7bd2c0d58b2fac5f2737ae5b760a51a0ade27` | non_address_book | unknown | unknown | verified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x00e1b94e8d4d2bbc64b8032ba12a8e80d9bd7d4f` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x021fc8fdcb784460e1f2ce46cf93cc0d9fbf8389` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x05d9470ccfa34400977d354f69b2679f41609419` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x0625d88dabfff9f8e2c37d915e1ca34adcbeee92` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x0e06bb959ec3bbb632691b63a1f2e10bd31cf4fb` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x211e823d694ea0c7e95285485efb2b4e121cbfa4` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x21a194dafe9bc6396eb5bc3c0bad6cd95a720dce` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x334878e1db6a1281435f84146d131daa44912946` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x3701a069c67b10455a7efc05c06b57b62a0fc59e` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x3b1d730f9cbd9017493263edbfd60ab856843ff6` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x3de7bc2390f135bf4f8bca567e7818aa9da63fad` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x3f143e54dad2db48eede1c4c993f9efd02d0f77b` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x7beb54a78a71e2548bc803dc7f334ce1ed247797` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x841060fcb1e693ce94cab7e018fa1794c82916d4` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x8ca8a5ecfbfbb1abab8dfddd5181f4dd0146d443` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x97d5d719f026f12127297c7151bd2ad634b8a81f` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0x9f96907124c3949896b9e58a00d7c86c21e657ce` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0xa97ab3ec8d6d5236174fd1581be0f59cd26c5dd4` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0xb5b914c7af9b5fe348d2f8436b82cc0f646df1d6` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0xb8a52578c80c0b903674da42babea150f22c523b` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0xb903d29c6aae882cbf763e260c73b1624cb90c6c` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0xb9dd165ebaf44fa6a15af22a7f98373409def856` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0xbb8ea83c0cdc6a4816a2a5de81d3895b3dcf48f4` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0xbdef7eb55904ea1d2457ee8ba2d60239b950168e` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0xc8a2a20ef99cde708d4528dc4aee88fc6e28a0d6` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0xe679fc3daac692eee32a259bb3e122b1627449c8` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0xe6efaefc86afd94d2113ec72b3b1e66a5c10f2e6` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0xeb5845eefbbc52e5103de56324f438270df9de25` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |
| unverified unclassified | UnnamedContract<br>`0xede39059579ac922ca7443e16140727a0e931688` | non_address_book | unknown | unknown | unverified | n/a | `0x6d356e6085769f4a1c755703a59e087b55da51a9` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13804] Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | Allowlist | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | InfoAggregator | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | Math | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvyActionBatcher | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvyBooster | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvyLGE | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvyPositionManager | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvyPriceFeed | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvyRedlist | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvySage | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvySwap | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvySyntheticToken | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | VeERC20Upgradeable | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | VeSvy | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | WrapTokenGateway | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | YieldStrategyManager | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | YieldYakAdapter | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13804] Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf

Fork inheritance lineage and inherited audits are included when available.
