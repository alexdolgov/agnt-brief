# Agentic Audit Brief: Angle

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

⚠️ Lifecycle status: DEAD - TVL dropped 50.7% over 90 days

## Project Overview

- Project: Angle (`angle`)
- Website: [https://app.angle.money](https://app.angle.money)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, aurora, avalanche, base, bsc, celo, ethereum, gnosis, mantle, optimism, polygon
- Contract surface: 1543 unique implementations (1855 raw deployments)
- Coverage basis: 0/64 confirmed own live verified implementations (0.0%); conservative 0.0% with 1 needs-review implementation(s)
- DeFi Llama TVL: $2,277,329.70
- On-chain TVL (included contracts): $1,109,451,436.23
- TVL by chain: Optimism $884,151,888.79 | Ethereum $224,916,703.66 | Celo $228,470.03 | Polygon $89,160.02 | Arbitrum $65,213.74

## Project Description

This brief describes the observed EVM deployment and audit surface for Angle. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 101 contract row(s) across arbitrum, aurora, avalanche, base, bsc, celo, ethereum, gnosis, mantle, optimism, polygon. Structural roles: 55 unclassified, 35 supporting, 7 core, 4 infra. 28 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 101
- Structural roles: unclassified (55), supporting (35), core (7), infra (4)
- Contract kinds: contract (101)
- Detected standards: erc1967proxy (23), ownable (3), erc165 (2), erc20 (2), erc20permit (2), accesscontrol (1)
- Frameworks: openzeppelin (36), openzeppelin-upgradeable (22)
- Upgradeable-pattern rows: 28

## Fork Analysis

0 of 47 contracts are derived from known codebases. 47 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ANGLE Rainbow Bridge (`0xb7e3617adb58dc34068522bd20cfe1660780b750`, chain 1313161554)
- CoreBorrow (`0x5bc6bef80da563ebf6df6d6913513fa9a7ec89be`, chain 1)
- CoreBorrow (`0x4b1e2c2762667331bc91648052f646d1b0d35984`, chain 5000)
- CoreBorrow (`0x5183f032bf42109cd370b9559fd22207e432301e`, chain 42161)
- DiamondProxy (`0x00253582b2a3fe112feec532221d9708c64cefab`, chain 1)
- DiamondProxy (`0x222222fd79264bbe280b4986f6fefbc3524d0137`, chain 1)
- DiamondProxy (`0x222222880e079445df703c0604706e71a538fd4f`, chain 8453)
- DiamondProxy (`0xd253b62108d1831aed298fc2434a5a8e4e418053`, chain 42161)
- EURA Rainbow Bridge (`0xdc7acde9ff18b4d189010a21a44ce51ec874ea7c`, chain 1313161554)
- EURA Rebalancer (`0x6238cd56fda8c5fa5a118825235018b114f1e4ae`, chain 1)
- FlashAngle (`0x4a2ff9bc686a0a23da13b6194c69939189506f7f`, chain 1)
- GnosisSafeProxy (`0x0c2553e4b9dfa9f83b1a6d3eab96c4baab42d430`, chain 1)
- GnosisSafeProxy (`0x57eedcb68445355e9c11a90f39012e8d4aaa89fc`, chain 1)
- GnosisSafeProxy (`0xdc4e6dfe07efca50a197df15d9200883ef4eb1c8`, chain 1)
- GnosisSafeProxy (`0x3245d3204eeb67afba7b0ba9143e8081365e08a6`, chain 10)
- GnosisSafeProxy (`0xd245678e417aee2d91763f6f4efe570ff52fd080`, chain 10)
- GnosisSafeProxy (`0x3b9d32d0822a6351f415beab05251c1457ff6f8d`, chain 137)
- GnosisSafeProxy (`0xda2d2f638d6fcbe306236583845e5822554c02ea`, chain 137)
- GnosisSafeProxy (`0x55f01ddae74b60e3c255bd2f619febdfce560a9c`, chain 42161)
- GnosisSafeProxy (`0xaa2daccab539649d1839772c625108674154df0b`, chain 42161)
- Governor (`0x748ba9cd5a5ddba5aba70a4ac861b2413dca4436`, chain 1)
- LayerZero ANGLE bridge (`0x1056178977457a5f4be33929520455a7d2e28670`, chain 1)
- LayerZero EURA bridge (`0x0c1ebbb61374da1a8c57cb6681bf27178360d36f`, chain 137)
- ProposalReceiver (`0xcda39b74054effb230156f21b334e50295ca8df4`, chain 42161)
- ProposalSender (`0x896d64b4b7265273ddcd00808f3579563f9790a8`, chain 1)
- ProxyAdmin governor (`0x1d941ef0d3bba4ad67dbfbcee5262f4cee53a32b`, chain 1)
- ProxyAdmin guardian (`0xd9f1a8e00b0eebedddd9afeab55019d55fcec017`, chain 1)
- SmartWalletWhitelist (`0xaa241ccd398fec742f463c534a610529dcc5888e`, chain 1)
- Swapper (`0xd7cf341ce068eb335d3be24bef6c06348bfb5346`, chain 1)
- Timelock (`0x09d81464c7293c774203e46e3c921559c8e9d53f`, chain 1)
- Transmuter EURA (`0xba0e73218a80c3dec1213d64873af83b02ce0455`, chain 8453)
- TransparentUpgradeableProxy (`0x0000206329b97db379d5e1bf586bbdb969c63274`, chain 1)
- TransparentUpgradeableProxy (`0x0022228a2cc5e7ef0274a7baa600d44da5ab5776`, chain 1)
- TransparentUpgradeableProxy (`0x004626a008b1acdc4c74ab51644093b155e59a23`, chain 1)
- TransparentUpgradeableProxy (`0x1a7e4e63778b4f12a199c062f3efdd288afcbce8`, chain 1)
- TransparentUpgradeableProxy (`0x4579709627ca36bce92f51ac975746f431890930`, chain 1)
- TransparentUpgradeableProxy (`0x4fa745fccc04555f2afa8874cd23961636cdf982`, chain 1)
- TransparentUpgradeableProxy (`0xec0b13b2271e212e1a74d55d51932bd52a002961`, chain 1)
- TransparentUpgradeableProxy (`0x0022228a2cc5e7ef0274a7baa600d44da5ab5776`, chain 10)
- TransparentUpgradeableProxy (`0x0022228a2cc5e7ef0274a7baa600d44da5ab5776`, chain 42161)
- TransparentUpgradeableProxy (`0x004626a008b1acdc4c74ab51644093b155e59a23`, chain 42161)
- TransparentUpgradeableProxy (`0x31429d1856ad1377a8a0079410b297e1a9e214c2`, chain 42161)
- UI helper (`0x1b17ac6b8371d63e030c5981891d5fbb3e4e068e`, chain 1)
- USDA Permissionless Harvester (`0x2385a7f5f4ed4bfdda2bca602ebac9dac2a694ef`, chain 1)
- USDA Rebalancer (`0x22604c0e5633a9810e01c9cb469b23eee17ac411`, chain 1)
- veANGLE (`0x0c462dbb9ec8cd1630f1728b2cfd2769d09f0dd5`, chain 1)
- veANGLEVotingDelegation (`0x2d7bd1c4e7720084d535b36de1b4327462d63078`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 101; live-surface rows included: 101 (79 live, 22 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 69/105 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/64 (0.0%)
- Coverage assessment: partial (medium confidence) — Coverage is calculated only over confirmed own address-book implementations; review inventory is reported separately and included in the conservative percentage where live and verified.
- Address-book implementation classification: 65 own, 36 exact-address-book context/dependencies excluded, 2 exact-address-book entries needing review
- Outside the address book: 1440 discovered implementations shown in the inventory but excluded from coverage (16 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 125
- Confirmed-live implementations: 68 of 1543 unique; 1475 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/233
- Verified + Unaudited implementations: 232
- Verified by bytecode match: 1
- Unverified implementations: 1310
- Unique implementations: 1543
- Raw deployments: 1855
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (232)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CErc20Immutable | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x1afd1ff9e441973b7d34c7b8abe91d94f1b23ce0`; optimism `0x26aab17f27cd1c8d06a0ad8e4a1af8b1032171d5`; optimism `0x33865e09a572d4f1cc4d75afc9abcc5d3d4d867d`; optimism `0x5569b83de187375d43fbd747598bfe64fc8f6436`; optimism `0x5ff29e4470799b982408130efaabdeeae7f66a10`; optimism `0x8cd6b19a07d754bf36adeee79edf4f2134a8f571`; optimism `0xd7daabd899d1fabbc3a9ac162568939cec0393cc`; optimism `0xec8fea79026ffed168ccf5c627c7f486d77b765f`; optimism `0xf7b5965f5c117eb1b5450187c9dcfccc3c317e8e` | ⚠️ Unaudited |
| StakedAaveV3 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4da27a545c0c5b758a6ba100e3a049001de870f5` | ⚠️ Unaudited |
| BackedTokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x2f123cf3f37ce3328cc9b5b8415f9ec5109b45e7`; ethereum `0x3f95aa88ddbb7d9d484aa3d482bf0a80009c52c9`; ethereum `0xca30c93b02514f86d5c86a6e375e3a330b435fb5` | ⚠️ Unaudited |
| yVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x24129b935aff071c4f0554882c0d9573f4975fed`; ethereum `0xb17640796e4c27a39af51887aff3f8dc0daf9567`; ethereum `0xcd6997334867728ba14d7922f72c893fcee70e84` | ⚠️ Unaudited |
| AgTokenNameable | token | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-379175 | `0x0000206329b97db379d5e1bf586bbdb969c63274` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x5af15da84a4a6edf2d9fa6720de921e1026e37b7`; ethereum `0xa2761b0539374eb7af2155f76eb09864af075250`; ethereum `0xbc10c4f7b9fe0b305e8639b04c536633a3db7065`; ethereum `0xf3c2bdfccb75cafda3d69d807c336bede956563f` | ⚠️ Unaudited |
| StableTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xe8537a3d056da446677b9e9d6c5db704eaab4787` | ⚠️ Unaudited |
| VaultManagerLiquidationBoost | core_logic | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 6 deployments: ethereum `0x1bece8193f8dc2b170135da9f1fa8b81c7ad18b1`; ethereum `0x241d7598bd1eb819c0e9ded456acb24aca623679`; ethereum `0x73aaf8694ba137a7537e7ef544fcf5e2475f227b`; ethereum `0x8e2277929b2d849c0c344043d9b9507982e6add0`; ethereum `0x96de5c30f2bf4683c7903f3e921f720602f8868a`; ethereum `0xe1c084e6e2ec9d32ec098e102a73c4c27eb9ee58` | ⚠️ Unaudited |
| TokenPolygonUpgradeableNameable | token | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | unit-379190 | `0xe0b52e49357fd4daf2c15e02058dce6bc0057db4` | ⚠️ Unaudited |
| StandardArbERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xe4dddfe67e7164b0fe14e218d80dc4c08edc01cb` | ⚠️ Unaudited |
| AaveTokenV3 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7fc66500c84a76ad7e9c93437bfc5ac33e2ddae9` | ⚠️ Unaudited |
| VaultManagerLiquidationBoost | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | optimism | n/a | 4 deployments: optimism `0x16cd38b1b54e7abf307cb2697e2d9321e843d5aa`; optimism `0x9818bc9c4e09b1c542235dc969ad1c6136899ad1`; optimism `0xaec8318a9a59baeb39861d10ff6c7f7bf1f96c57`; optimism `0xcf5a2934fe43666c24823dfd455c617edff78bb6` | ⚠️ Unaudited |
| Convex2PoolStaker | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x42dc54fb50db556fa6ffba765f1141536d4830ea` | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0077e921c30c39cdd8b693e25af572c10e82a05` | ⚠️ Unaudited |
| StakeDAO2PoolStaker | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x58441e37255b09f9f545e9dc957f1c41658ff665`; arbitrum `0xc8711b1206cd3e89799ec32973f583e696cb553c` | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x25f2226b597e8f9514b3f68f00f494cf4f286491` | ⚠️ Unaudited |
| Accounts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x0fe15138b6ecf2b9cc3b2bc12fe9671d4267ef53`; celo `0x56567727a0da93ee0beba9400af7eb96dae2b98c`; celo `0x907f5c53c0e31db06af45bc58f076563469c525a`; celo `0xbac4a39ecba3c0f2e5caf30f090f094f6405f603` | ⚠️ Unaudited |
| AgEURNameable | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-379179 | `0x1a7e4e63778b4f12a199c062f3efdd288afcbce8` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 8 deployments: bsc `0x3e399ae5b4d8bc0021e53b51c8bcdd66dd62c03b`; bsc `0x59153e939c5b4721543251ff3049ea04c755373b`; bsc `0x92d84b0687361cd0753e95f5a8746fbaf42e9135`; gnosis `0x59153e939c5b4721543251ff3049ea04c755373b`; gnosis `0xc63aaf16f1fa309e97cabe3937472d6ca16fb629`; arbitrum `0x12f31b73d812c6bb0d735a218c086d44d5fe5f89`; arbitrum `0x1a7e4e63778b4f12a199c062f3efdd288afcbce8`; arbitrum `0x862f596e76a549363ffba54b4be296988cbdc763` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 2 | optimism | unit-379184 (2 proxies) | 2 deployments: optimism `0x0000206329b97db379d5e1bf586bbdb969c63274`; optimism `0x9485aca5bbbe1667ad97c7fe7c4531a624c8b1ed` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x0000206329b97db379d5e1bf586bbdb969c63274`; bsc `0x12f31b73d812c6bb0d735a218c086d44d5fe5f89` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | `0x0000206329b97db379d5e1bf586bbdb969c63274` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 1 | gnosis | unit-379187 | `0x4b1e2c2762667331bc91648052f646d1b0d35984` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | unit-379189 | `0x0000206329b97db379d5e1bf586bbdb969c63274` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 2 | arbitrum | unit-379193 (2 proxies) | 2 deployments: arbitrum `0x0000206329b97db379d5e1bf586bbdb969c63274`; arbitrum `0xfa5ed56a203466cbbc2430a43c66b9d8723528e7` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 2 | celo | n/a | 2 deployments: celo `0x0000206329b97db379d5e1bf586bbdb969c63274`; celo `0xc16b81af351ba9e64c1a069e3ab18c244a1e3049` | ⚠️ Unaudited |
| ANGLE | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-379109 | `0x31429d1856ad1377a8a0079410b297e1a9e214c2` | ⚠️ Unaudited |
| ANGLE | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-379133 | `0x58441e37255b09f9f545e9dc957f1c41658ff665` | ⚠️ Unaudited |
| ANGLE | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-379156 | `0x900f717ea076e1e7a484ad9dd2db81ceec60ebf1` | ⚠️ Unaudited |
| ANGLE | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-379172 | `0xaaaaaa19ddd491648db2a31c32f2b2792dec5015` | ⚠️ Unaudited |
| ANGLE | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-379164 | `0x5ee94c25e3d5113cd055537340b9d19cfa4d9217` | ⚠️ Unaudited |
| ANGLE Rainbow Bridge | unknown | project_anchor | own_supporting | 0 | aurora | unit-379144 | `0xb7e3617adb58dc34068522bd20cfe1660780b750` | ⚠️ Unaudited |
| AngleBorrowHelpers | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xc9cb5703c109d4fe46d2f29b0454c434e42a6947`; arbitrum `0xdd6a0a00fe3353e813f3b3864694d55d2a7ce11c` | ⚠️ Unaudited |
| AngleGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x29e496419fd2558aa66af23c63f4df8a6b431011`; gnosis `0x566ec28dd2af956937bf9b7a6969fb6098cd1769`; gnosis `0xf18303e2dd58cf29cad655b3bd2e1cc4582c6a16`; gnosis `0xf990e3a34cdf3042186d253d364154faf862cf09` | ⚠️ Unaudited |
| AngleNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x588c06d6b15cb6d6f3428fa589a8fff1b6ba226b` | ⚠️ Unaudited |
| AngleRouter V2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-379134 | `0x658286fc9605f6ff4d0311d0b58670e26ecb27e1` | ⚠️ Unaudited |
| AngleRouter V2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-379153 | `0x595ab88628cd1af06706e25f10c485b651c47aa8` | ⚠️ Unaudited |
| AngleRouter V2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-379166 | `0xf530b844fb797d2c6863d56a94777c3e411cec86` | ⚠️ Unaudited |
| AngleRouterArbitrum | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-379197 | 2 deployments: arbitrum `0x3ee021f6f91911b8a2af6047889c54cc4983f78d`; arbitrum `0x9a33e690aa78a4c346e72f7a5e16e5d7278be835` | ⚠️ Unaudited |
| AngleRouterArbitrum | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-379198 | 2 deployments: arbitrum `0x4b1e2c2762667331bc91648052f646d1b0d35984`; arbitrum `0xc16b81af351ba9e64c1a069e3ab18c244a1e3049` | ⚠️ Unaudited |
| AngleRouterArbitrum | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xd31d6e964f96b38b8e324212fc423b6b4e52e20b`; arbitrum `0xfd0087e170bb5cc31c3340b3d3a477b9c5d40a0b` | ⚠️ Unaudited |
| AngleRouterGnosis | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xb8c1350c2fdbe2f652c6869c5cd48268d0b732a7`; gnosis `0xbdd9a43790bfe85da12a9efbf0eafd8135538c99` | ⚠️ Unaudited |
| AngleRouterGnosis | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe77edd217c589aba9887edf802e8ebe0a57a0578` | ⚠️ Unaudited |
| AngleRouterMainnet | adapter | project_anchor | own_supporting | 1 | ethereum | unit-379176 | `0x4579709627ca36bce92f51ac975746f431890930` | ⚠️ Unaudited |
| AttestationsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 18 deployments: celo `0x2496fda4b928e8cf799ac04ea79861ac828e9a3d`; celo `0x252b037054e1394cd5e4a92a76f1fbff925f1649`; celo `0x30b3c1265262d7bda066357a4678cb2d660595ac`; celo `0x3a493665dc7a609d94b87adf0af51bf8d2edb3f4`; celo `0x488debd4b7646a44cac389dae4c6b55ad26c8fa6`; celo `0x4a241b9df1b54f983fd0dc094bc400fc93877da9`; celo `0x65e25c46cb80ae5f8118d6bcfa3b69d969799411`; celo `0x673f19caa81ae317aa9acdcb3a8b0593c174eecb`; celo `0x68da817fda9f7538eb75792536b5c5c7b5504785`; celo `0x93d52a66e6300baadc91b194a246fc349ba0ecf7`; celo `0xb53ce2e9c5222049a4b374bb404b0d5f92d8d96a`; celo `0xc834e7c2252bb1b9df90a7f161bc0877dc359afd`; celo `0xcc651797284339852a38f66c31fafa8ffe9e8fbe`; celo `0xdadd05185e053f7ccd308852237b1aa57a6f9303`; celo `0xdd944d35b87dfdfb8aa249a434ecc2c01d99f451`; celo `0xeaaf5597cd2a86d9933d38bc1482244078bc9149`; celo `0xf114c70fda914a96e06afdac06fe19fef8f5406a`; celo `0xff2ba5b9d1a97e872a451e43a0e28a2a2bc9fd2d` | ⚠️ Unaudited |
| CakeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82` | ⚠️ Unaudited |
| Comp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc00e94cb662c3520282e6f5717214004a7f26888` | ⚠️ Unaudited |
| CoreBorrow | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379114 | `0x5bc6bef80da563ebf6df6d6913513fa9a7ec89be` | ⚠️ Unaudited |
| CoreBorrow | unknown | project_anchor | own_supporting | 0 | optimism | unit-379129 | `0x1a7e4e63778b4f12a199c062f3efdd288afcbce8` | ⚠️ Unaudited |
| CoreBorrow | core_logic | project_anchor | own_core | 3 | bsc | n/a | 5 deployments: bsc `0x31429d1856ad1377a8a0079410b297e1a9e214c2`; bsc `0x5183f032bf42109cd370b9559fd22207e432301e`; bsc `0x5ee94c25e3d5113cd055537340b9d19cfa4d9217`; arbitrum `0x31429d1856ad1377a8a0079410b297e1a9e214c2`; arbitrum `0x5183f032bf42109cd370b9559fd22207e432301e` | ⚠️ Unaudited |
| CoreBorrow | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | gnosis | n/a | 4 deployments: gnosis `0x31429d1856ad1377a8a0079410b297e1a9e214c2`; gnosis `0x3e399ae5b4d8bc0021e53b51c8bcdd66dd62c03b`; gnosis `0x67b9c7c45bbdd1a78aed4b8ff3b1bb3c8170bdab`; gnosis `0xfd0dfc837fe7ed19b23df589b6f6da5a775f99e0` | ⚠️ Unaudited |
| CoreBorrow | unknown | project_anchor | own_supporting | 0 | polygon | unit-379154 | `0x78754109cb73772d70a6560297037657c2af51b8` | ⚠️ Unaudited |
| CoreBorrow | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0xa86cc1ae2d94c6ed2ab3bf68fb128c2825673267`; arbitrum `0xb38ba207d02f07653a37b53c1c0a250b04f97e82` | ⚠️ Unaudited |
| DarkParadiseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20d1b558ef44a6e23d9bf4bf8db1653626e642c3` | ⚠️ Unaudited |
| DiamondCut | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 7 deployments: gnosis `0x1d0cdcf2294e2e301d0a06d0ca59ed4c43396332`; gnosis `0x78754109cb73772d70a6560297037657c2af51b8`; gnosis `0xa5379675a758a55ccb8cf34a54022c7f76beed99`; gnosis `0xc9cb5703c109d4fe46d2f29b0454c434e42a6947`; gnosis `0xca7ee04ae36cf051780f3b7a8e67224ff82613d9`; gnosis `0xe14bfa5575d9906ba35beb15c9dbe5c77bfdd5b5`; gnosis `0xe9da5f4af9c89320780ffb9e970a3c9e915d5eba` | ⚠️ Unaudited |
| DiamondEtherscan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x5506bc7ff32c33dbcb7012c1508d1242a34c15d2`; gnosis `0x752de78fc09e730292b3dbca8c063ac63711deb1`; gnosis `0xc2c7a0d9a9e0467090281c3a4f28d40504d08fb4` | ⚠️ Unaudited |
| DiamondEtherscanFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc492fbae68ce6c5e14c7ed5cd8a59babd5c90e4c` | ⚠️ Unaudited |
| DiamondLoupe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 7 deployments: gnosis `0xa013ee06ddc7073c1b6e84601ddffa237f5cc208`; gnosis `0xa31a7ee3bd17c114eebde49c2c1ef5a7fd5ef0a1`; gnosis `0xad96b6342e4ebbbfbaff0df248e84c7304fff5a5`; gnosis `0xc06481fc1d0196c138770fd2148dcb306cb24e20`; gnosis `0xd31d6e964f96b38b8e324212fc423b6b4e52e20b`; gnosis `0xdd6a0a00fe3353e813f3b3864694d55d2a7ce11c`; gnosis `0xfcc0bd6cb2fdc18637894b34bc4cd2d3355270d3` | ⚠️ Unaudited |
| DiamondProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x02c4771ed8d48d0d01a16303bbe2e9f4369b67a8`; gnosis `0xff091a4fdbcddce68805183dffdea47cdbb9feac` | ⚠️ Unaudited |
| DistributionCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: gnosis `0x79e4df078a06ac31bfaa0f672f1f6e9b7f38113e`; arbitrum `0x0b3bf915eb02ceee25d2416b9721688dba9266f8`; arbitrum `0x10be886c0c93615d1d109be6c9415eea34fe8b57`; arbitrum `0x6450d62d135331f67541fa5d747701f66d0b2cca`; arbitrum `0x7b2d773af5b00f4233a8366f0d1635094ffddcd3`; arbitrum `0xc5a1368f1971aa6b19bd6a936476188020f6e05c` | ⚠️ Unaudited |
| Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x60157fc156063f73f4327cb78cd3e0a9de5948ab`; arbitrum `0xc2aaba70df4450c413bfbe7a1baffaf25d93a5ae`; arbitrum `0xc8b81f809cc59a17130997648a2b601320179494` | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379178 | `0x00253582b2a3fe112feec532221d9708c64cefab` | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379182 | `0x222222fd79264bbe280b4986f6fefbc3524d0137` | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | gnosis | n/a | 3 deployments: gnosis `0x1a42a30dcba20a22b69c40098d89cb7304f429b9`; gnosis `0x4a44f77978daa3e92eb3d97210bd11645cf935ab`; gnosis `0x8911084ef979ac1b02d6d9aabfad86927c5b1589` | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | project_anchor | own_supporting | 1 | base | unit-379205 | `0x222222880e079445df703c0604706e71a538fd4f` | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-379202 | `0xd253b62108d1831aed298fc2434a5a8e4e418053` | ⚠️ Unaudited |
| Election | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x169c946c9f70094b8ad74ee16477f27e713009bc`; celo `0x3db69cf778dfa1d60145731d9ce09a674c9f6f28`; celo `0xbd7d392bb2ef07063256e875f363d4fb2931780e` | ⚠️ Unaudited |
| EpochManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x91e35ccea07a15af477e189c1e2bd12569dfc535` | ⚠️ Unaudited |
| EpochRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x33285cab4df24f37899dc14f324530661c63464b`; celo `0x4cadba6ae9984b408b492a3f8f451e1bb3562aba`; celo `0x9dc549eeb4fca1b2c00e55aa771144321ff050d9` | ⚠️ Unaudited |
| EURA | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-379171 | `0xa61beb4a3d02decb01039e378237032b351125b4` | ⚠️ Unaudited |
| EURA Rainbow Bridge | unknown | project_anchor | own_supporting | 0 | aurora | unit-379145 | `0xdc7acde9ff18b4d189010a21a44ce51ec874ea7c` | ⚠️ Unaudited |
| EURA Rebalancer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379116 | `0x6238cd56fda8c5fa5a118825235018b114f1e4ae` | ⚠️ Unaudited |
| FakeGnosis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 7 deployments: gnosis `0x029f049c59a6b56610a34ba01d0d28e26ed407a8`; gnosis `0x0331814f183d6a782e93e46810e76b5d21294b27`; gnosis `0x0945de4f356de3569fe12850ab85a91f533b87a0`; gnosis `0x456f478a7210e0dc35ed67a5fec1d86cdcdabd6b`; gnosis `0x68c1c25c5dd3db1a6e5fe74e057ff8d4a264d89f`; gnosis `0xa2875bc2e4d1567190fa7a045427041d51b7c2b1`; gnosis `0xe0688a2fe90d0f93f17f273235031062a210d691` | ⚠️ Unaudited |
| FalconXAAAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x48fc1a04e5e18c994c3165c9ad0d3553d7f57724`; ethereum `0x8fed610aefd81f6bec517854b1a245deca83667e`; ethereum `0xefffa40db994d0f573765e48027527f8c22c8fa2` | ⚠️ Unaudited |
| FeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4a5e967100ca28566cb2a39216992c6db57e95a4`; ethereum `0x9c8438713cea5466125f0331d9d875ea43115bc9` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1abaea1f7c830bd89acc67ec4af516284b1bc33c` | ⚠️ Unaudited |
| FlashAngle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379111 | `0x4a2ff9bc686a0a23da13b6194c69939189506f7f` | ⚠️ Unaudited |
| FlashAngle | unknown | project_anchor | own_supporting | 0 | optimism | unit-379143 | `0xf1ddcaca7d17f8030ab2eb54f2d9811365efe123` | ⚠️ Unaudited |
| FlashAngle | unknown | project_anchor | own_supporting | 0 | polygon | unit-379149 | `0x2878596427bfa6b52fa6d93b519a0c610bbdf00a` | ⚠️ Unaudited |
| FlashAngle | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-379195 | 2 deployments: arbitrum `0x3e399ae5b4d8bc0021e53b51c8bcdd66dd62c03b`; arbitrum `0x59153e939c5b4721543251ff3049ea04c755373b` | ⚠️ Unaudited |
| GaugeMultiRewards | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c310fc54c0534dc3c45312934508722284352d1` | ⚠️ Unaudited |
| Getters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 7 deployments: gnosis `0x2904a4d96f88ad4bd548507ba139e892083894f7`; gnosis `0x600ab52922a37c06897816a59d7c22956c6bb739`; gnosis `0x7ca73c7402e7c532546e27679623dc90e88a87a1`; gnosis `0x82609811d2c3e9b8a32c690546953bd11f817a78`; gnosis `0xb6b481d241171c4609ca61d514071b1e1240a82b`; gnosis `0xc7f58335129561f37f3795a636c4d75b002c99d9`; gnosis `0xf2eda0829e8a9cf53ebcb8afcbb558d2eabcef64` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 3 | ethereum | unit-379181 (3 proxies) | 3 deployments: ethereum `0x0c2553e4b9dfa9f83b1a6d3eab96c4baab42d430`; ethereum `0x57eedcb68445355e9c11a90f39012e8d4aaa89fc`; ethereum `0xdc4e6dfe07efca50a197df15d9200883ef4eb1c8` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | optimism | unit-379185 | `0x3245d3204eeb67afba7b0ba9143e8081365e08a6` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x0128ea927198f39e4955ddb01fd62e8de6b3e6a4`; bsc `0x371ac6db8063e6076890ef032a4a3cfcf226f548` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | gnosis | n/a | 2 deployments: gnosis `0x0f70eed1bb51d5edb1a2e46142638df959bafd69`; gnosis `0xf0a31faec2b4fc6396c65b1af1f6a71e653f11f0` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | polygon | unit-379191 (2 proxies) | 2 deployments: polygon `0x3b9d32d0822a6351f415beab05251c1457ff6f8d`; polygon `0xda2d2f638d6fcbe306236583845e5822554c02ea` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | arbitrum | unit-379196 (2 proxies) | 2 deployments: arbitrum `0x55f01ddae74b60e3c255bd2f619febdfce560a9c`; arbitrum `0xaa2daccab539649d1839772c625108674154df0b` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | celo | n/a | `0x434153aa505959bcd5aaa7c17445eb8d835086f5` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | celo | n/a | 4 deployments: optimism `0xd245678e417aee2d91763f6f4efe570ff52fd080`; celo `0x2ba5a55dbdad03023e6872a8d57c458e9399bfe1`; avalanche `0x43a7947a1288e65faf30d8ddb3ca61eaabd41613`; avalanche `0xccd44983f597ae4d4e2b70cf979597d63a10870d` | ⚠️ Unaudited |
| GoldToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x04a182a01a303a4f1333a5ce1213ae54f0c7edb2`; celo `0xb165169b8cccc849108d81d094d6f49324b2c19d`; celo `0xfea1b35f1d5f2a58532a70e7a32e6f2d3bc4f7b1` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x40bca46d9f7db71ecaa1e76655c3038a5a1824e6`; celo `0x40cac0be7e25b14e39f782d5b7e5c3076aa6c57a`; celo `0xf51d27777e5b2b910e0caad467ae945e4b7a215d` | ⚠️ Unaudited |
| GovernanceSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0xb1b7b6af5bb6b527094c7cc5ce8bab32f4c51e9e`; celo `0xed1073ce5fe09f2310f0993c0b558a92d46dbe14` | ⚠️ Unaudited |
| GovernanceTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b94ca0d99a7cd14e67c9d3618a9726094c13360` | ⚠️ Unaudited |
| Governor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379117 | `0x748ba9cd5a5ddba5aba70a4ac861b2413dca4436` | ⚠️ Unaudited |
| Idle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x875773784af8135ea0ef43b5a374aad105c5d39e` | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb1947aac0bb38bb467ae251f6ddaf2d6a340d37` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x5ab109d145d807a2e26d7d797db6f67ed9eb780f`; ethereum `0x6de6ea8659c8cea1f2aaf29758e40ff4c8a1a53f`; ethereum `0x9f3a307b61b152128f416806e737e990ff8b62de`; ethereum `0xd85ad3529716fdb6b58a0b62de94430eceb6837d` | ⚠️ Unaudited |
| IdleCDOEthenaVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1eb1b47d0d8bcd9d761f52d26fcd90bba225344c`; ethereum `0xea08230de3a5978ebef254a6b7d8f2f8b837a373` | ⚠️ Unaudited |
| IdleCDOPoLidoVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe7bdf364862ef8a31426e6e2b7d5defde3a59a26`; ethereum `0xf87ec7e1ee467d7d78862089b92dd40497cba5b8` | ⚠️ Unaudited |
| IdleCreditVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1ff9a2c8d71318667eb218ad409054a6a36b927a`; ethereum `0x3daceb62bc64cdd4d12f7df6376b9f7ee6888dba`; ethereum `0xc499925d7991ff8204967ac58455293f2db3855a` | ⚠️ Unaudited |
| IdleCreditVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e`; ethereum `0x59aabdad8fdabd227cc71543b128765f93906626`; ethereum `0xb744aa6e6a9b74a745eac32371c47b27d40b0706` | ⚠️ Unaudited |
| IdleCreditVaultImpliedPrice | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x55bdb81026f9a6e9308f7ee727a9124a92ae383e`; ethereum `0xb05cff1491e9670b4a04ea6bffb3b2ede4f4c477` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6584f3484494d7014e420080f50b69e5e071507` | ⚠️ Unaudited |
| IdleUsdcOtcSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x863a08bfc7ae938c4f96c2c3ef82fa309b33e765` | ⚠️ Unaudited |
| IntegerSortedLinkedList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa86051f29c45218b5f6cd121ebafb690660d047c` | ⚠️ Unaudited |
| KeyringIdleWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1a4d23403c31ba26a4b84af09364d503ad2bcc68`; ethereum `0x42e64544e71e8d2ad6590f78a07b1a81133d7cbd`; ethereum `0x6375954d0f91e1721967914d8cd3011ee4bf2688`; ethereum `0x6a6a91c7c7c05f9f6b8bc9f6e5ea231e460450e3`; ethereum `0xb84957322bb6381f21f3414584483458050d77a0`; ethereum `0xda7514ad3b2b3ed739b529b3d0897a18c2dbf80c` | ⚠️ Unaudited |
| LayerZero ANGLE bridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379103 | `0x1056178977457a5f4be33929520455a7d2e28670` | ⚠️ Unaudited |
| LayerZero ANGLE bridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-379136 | `0x9201cc18965792808549566e6b06b016d915313a` | ⚠️ Unaudited |
| LayerZero EURA bridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-379135 | `0x840b25c87b626a259ca5ac32124fa752f0230a72` | ⚠️ Unaudited |
| LayerZero EURA bridge | unknown | project_anchor | own_supporting | 0 | polygon | unit-379146 | `0x0c1ebbb61374da1a8c57cb6681bf27178360d36f` | ⚠️ Unaudited |
| LayerZero USDA bridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-379138 | `0xc69e66109943faf5cbda22f360b7eb7c27bb5c88` | ⚠️ Unaudited |
| LayerZero USDA bridge | unknown | project_anchor | own_supporting | 0 | polygon | unit-379158 | `0xe70575daab2b1b3fa9658fa76cc506fcb0007169` | ⚠️ Unaudited |
| LayerZeroBridge | operational_periphery | project_anchor | own_supporting | 2 | ethereum | unit-379180 (2 proxies) | 2 deployments: ethereum `0x4fa745fccc04555f2afa8874cd23961636cdf982`; ethereum `0xec0b13b2271e212e1a74d55d51932bd52a002961` | ⚠️ Unaudited |
| LayerZeroBridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1a7e4e63778b4f12a199c062f3efdd288afcbce8` | ⚠️ Unaudited |
| LayerZeroBridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xe9f183fc656656f1f17af1f2b0df79b8ff9ad8ed` | ⚠️ Unaudited |
| LayerZeroBridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | `0x4dd4758f594b60551dc64f30289204d34ccd077d` | ⚠️ Unaudited |
| LayerZeroBridgeToken | operational_periphery | project_anchor | own_supporting | 1 | gnosis | unit-379186 | `0xfa5ed56a203466cbbc2430a43c66b9d8723528e7` | ⚠️ Unaudited |
| LayerZeroBridgeToken | operational_periphery | project_anchor | own_supporting | 2 | arbitrum | unit-379200 (2 proxies) | 2 deployments: arbitrum `0x16cd38b1b54e7abf307cb2697e2d9321e843d5aa`; arbitrum `0x8f4245d2efec45af24e5fa35f07172a830fc0ade` | ⚠️ Unaudited |
| LayerZeroBridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xea8239fc12a1c9d075bfa61aa08a50dcdf38fee5` | ⚠️ Unaudited |
| LayerZeroBridgeTokenERC20 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x16cd38b1b54e7abf307cb2697e2d9321e843d5aa` | ⚠️ Unaudited |
| LayerZeroBridgeTokenERC20 | operational_periphery | project_anchor | own_supporting | 1 | arbitrum | unit-379201 | `0x366cee609a64037a4910868c5b3cd62b9d019695` | ⚠️ Unaudited |
| LendToAaveMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x317625234562b1526ea2fac4030ea499c5291de4` | ⚠️ Unaudited |
| Lizard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x463913d3a3d3d291667d53b8325c598eb88d3b0e` | ⚠️ Unaudited |
| LizardETHStg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x425c296bacf5db485a67252a0bacc3816115ad17` | ⚠️ Unaudited |
| LizardRouter01 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf26515d5482e2c2fd237149bf6a653da4794b3d0` | ⚠️ Unaudited |
| LizardUsdcChronos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x957bad196ba0e2bbcdc80572f7d4d43ad2d47c16` | ⚠️ Unaudited |
| LizardUsdcStg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54355cc6913b26a15cca1f820cf17d362fa65db5` | ⚠️ Unaudited |
| LizardUsdtStg | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f456ae422d171ceac7fdab4bc5febe322303db9` | ⚠️ Unaudited |
| LizardVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98a1de08715800801e9764349f5a71cbe63f99cc` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfea5e213bbd81a8a94d0e1edb09dbd7ceab61e1c` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02398771fd1db790ef2b656ca3bcb3075f27a72c` | ⚠️ Unaudited |
| MerkleClaim | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00d59bc35174c3b250dd92a363495d38c8777a49` | ⚠️ Unaudited |
| MerkleDistributorSdt | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf442e3a8041199747f94b01a64632134256f847f` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeef01735c132ada46aa9aa4c54623caa92a64cb` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3460dc71a8863710d1c907b8d9d5dbc053a4102d` | ⚠️ Unaudited |
| MockANGLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0xd08667fc2f323b7d64096e8ad79ff49e96cb75df`; gnosis `0xe09e56c778d24859aa12a731c430921ed811d38a` | ⚠️ Unaudited |
| MockCoreBorrow | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 7 deployments: gnosis `0x210c6c3fbb709bfc68d4588b14317e319bed1276`; gnosis `0x2b11d82caadd76985861e858029c28446de05a50`; gnosis `0x2f2e0ba9746aae15888cf234c4eb5b301710927e`; gnosis `0x4a5c6420d2efddea4579528e9659c8de54021cb0`; gnosis `0xbdbdf128368de1cf6a3aa37f67bc19405c96f49f`; gnosis `0xe1e6d7370fb8ea42cc9169d18571579c67141eea`; gnosis `0xeb7c849eb9c2582fc6ec99847c501d90b49f1d4d` | ⚠️ Unaudited |
| MockToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x65a1dfb54cdec9011688b1818a27a8c687e6b1ed` | ⚠️ Unaudited |
| MockTokenPermit | token | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 28 deployments: gnosis `0x05214c5e95e756e4de26e12611495e260241f00a`; gnosis `0x06486a422b8742218693f874cea95a69c92a004f`; gnosis `0x1b0c95852fa547c44600f70ef473640e1b717ce4`; gnosis `0x1e5b48c08d6b5efe0792d04f27602bd90026514a`; gnosis `0x1ece8c666f104803f77c31d2a0a83264e22734b4`; gnosis `0x28c5d220278429eaf720a4b51d4b9141599039ef`; gnosis `0x3f125ecd51181af1f344adf76e4271d2923707ab`; gnosis `0x4b81f51988cd6a9f44350cdabee9620d16359aa3`; gnosis `0x58441e37255b09f9f545e9dc957f1c41658ff665`; gnosis `0x5c6f17778fd036fc6b3db9f757f18b926a31156c`; gnosis `0x5e6955627e30660eca4bca2fb8ac09e0dbeb63c1`; gnosis `0x5f77974810617995f27bb4c91c88886df9c181ab`; gnosis `0x5fe0e497ac676d8ba78598fc8016ebc1e6ce14a3`; gnosis `0x7f66dcc27c5c07e87945cb808483bb9eca683a39`; gnosis `0x8218013027be0041e31e58781f87a9cdae69928a`; gnosis `0x8c6afde64a44aeb58a0e76ac9659982bbc5e0941`; gnosis `0x9a33e690aa78a4c346e72f7a5e16e5d7278be835`; gnosis `0xa6a505eeb4e1e93052c48126f2d42ef6694a651d`; gnosis `0xa8ce8e2498dcbc0ee755583b0e6c74a0c184d56d`; gnosis `0xa988ff110386d140e4e7a3691a328d49597e9c29`; gnosis `0xbc71f517af43b296663ae03228f25d7cbfcddedb`; gnosis `0xc011882d0f7672d8942e7fe2248c174eed640c8f`; gnosis `0xc1f9266c6d3389e981639ee873121199a7acdb8f`; gnosis `0xc8711b1206cd3e89799ec32973f583e696cb553c`; gnosis `0xdd8670b64b8ec2c4f7da9f8f6d1f757d107e1895`; gnosis `0xe682aa5f491bd775c89b160462f7911d8a1b0297`; gnosis `0xf530b844fb797d2c6863d56a94777c3e411cec86`; gnosis `0xf89fa5d0f1a85c2bada78dbcc1d6cdc09a7c8e12` | ⚠️ Unaudited |
| MultiCallWithFailure | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97b6897aad7aba3861c04c0e6388fc02af1f227f` | ⚠️ Unaudited |
| OpynPerpVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8f14554f40705de7908879e2228d2ac94fde1a` | ⚠️ Unaudited |
| OracleDAI | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x236d9032d96226b900b0d557ae6fd202f3a26b6a`; ethereum `0xbf2a9659cb9f3e2e83a1a4d5a2d5e6efcdfc13d1` | ⚠️ Unaudited |
| OrchestratorOwnable | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a3c75dc85f83a1bfa80fe304e6159ed4c4aac87` | ⚠️ Unaudited |
| PairFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x25cbddb98b35ab1ff77413456b31ec81a6b6b746` | ⚠️ Unaudited |
| PerpetualManagerFront | governance | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x4121a258674e507c990cdf390f74d4ef27592114`; ethereum `0x98fdbc5497599eff830923ea1ee152adb9a4cea5` | ⚠️ Unaudited |
| ProgrammableBorrower | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d0799a2f740120dacbfec33c5374b9086d069b` | ⚠️ Unaudited |
| ProposalReceiver | unknown | project_anchor | own_supporting | 0 | optimism | unit-379140 | `0xd6788102627462d1a679282e726125ccdebab514` | ⚠️ Unaudited |
| ProposalReceiver | unknown | project_anchor | own_integration_wrapper | 0 | gnosis | n/a | 3 deployments: bsc `0xb9807831b01ecb7b20d9fbe2b5454d066cd2de8e`; gnosis `0x4d9a15925f972bc4d45233132efd0fb498836cfc`; arbitrum `0xcda39b74054effb230156f21b334e50295ca8df4` | ⚠️ Unaudited |
| ProposalReceiver | unknown | project_anchor | own_supporting | 0 | polygon | unit-379150 | `0x2c159fcb745570de3ecd934cab92ae3085d19c04` | ⚠️ Unaudited |
| ProposalSender | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379120 | `0x896d64b4b7265273ddcd00808f3579563f9790a8` | ⚠️ Unaudited |
| ProposalSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 11 deployments: gnosis `0x00e0f3d12a38b6284c02ccf9efbfaf4f61905958`; gnosis `0x2aaae852a35332bba4abad69bbf9b256b683624c`; gnosis `0x499c86959a330eb860fdfff6e87896d4298a4f4e`; gnosis `0x56de2ee55a0915d81724d07d8e5c86fde34506f7`; gnosis `0x93701cae5a709f1dfd619981c7b6c5449dc2cca9`; gnosis `0x946942e13a909527265b845e0b18d38f139d6669`; gnosis `0xc5a1368f1971aa6b19bd6a936476188020f6e05c`; gnosis `0xde8e46cc73d9d1c94f9b99ce518cf69a7a7615a3`; gnosis `0xdfbe6d2383c11fe2a21d140638088a6625d6c446`; gnosis `0xec0d13a48340eef7f0007f4186249b97d78a6803`; gnosis `0xf93062c0ff84bba688b4c25c3af6837c38b720a6` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | needs_review (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0x07116391a797e4b3cfbea13912a15845fa843f5b`; bsc `0x9a5b060bd7b8f86c4c0d720a17367729670afb19`; bsc `0xe6d9bd6796bdaf9b391fac2a2d34bae9c1c3c1c4`; gnosis `0x2101f65a51d545cd51896160230bcc6a360a6671`; gnosis `0x50ecc9f45cac262c7edb78aa704f1320a904d067`; gnosis `0x9a5b060bd7b8f86c4c0d720a17367729670afb19`; arbitrum `0x0400b6e4cbe9aa651f078df0a1ebe3054b224ba2`; arbitrum `0x9a5b060bd7b8f86c4c0d720a17367729670afb19`; arbitrum `0xf2eda0829e8a9cf53ebcb8afcbb558d2eabcef64` | ⚠️ Unaudited |
| ProxyAdmin governor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379105 | `0x1d941ef0d3bba4ad67dbfbcee5262f4cee53a32b` | ⚠️ Unaudited |
| ProxyAdmin governor | unknown | project_anchor | own_supporting | 0 | optimism | unit-379137 | `0xc16b81af351ba9e64c1a069e3ab18c244a1e3049` | ⚠️ Unaudited |
| ProxyAdmin governor | unknown | project_anchor | own_supporting | 0 | polygon | unit-379157 | `0xbfca293e17e067e8abdca30a5d35addd0cbae6d6` | ⚠️ Unaudited |
| ProxyAdmin guardian | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379125 | `0xd9f1a8e00b0eebedddd9afeab55019d55fcec017` | ⚠️ Unaudited |
| ProxyAdmin guardian | unknown | project_anchor | own_supporting | 0 | optimism | unit-379141 | `0xe14bfa5575d9906ba35beb15c9dbe5c77bfdd5b5` | ⚠️ Unaudited |
| ProxyAdmin guardian | unknown | project_anchor | own_supporting | 0 | polygon | unit-379148 | `0x10be886c0c93615d1d109be6c9415eea34fe8b57` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x6f5e42be8d24255a376fffa8a3fffae8a77b8c6f`; gnosis `0xd681af564cada7d6952ac39ea14b4a8654479000` | ⚠️ Unaudited |
| RewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 7 deployments: gnosis `0x13bac78046b5625167c1c3542b0f8656df1d7164`; gnosis `0x5199ba2b0ee6cc970f42ab35bbed3a265c542991`; gnosis `0x67ab61d45add5624fc4e21e921d91627c14e79d8`; gnosis `0x892bf71463bd9fa57f3c2266ab74dbe1b96decea`; gnosis `0x8b450a1c108c008e5145f5d1ad28159caf8b4483`; gnosis `0x97203498d0c2b6785af06b832cdeafdddb762c4f`; gnosis `0xa5fb7174c9306f63426e1f43f5c629a578b2173c` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5d5bea9f0fc13d967511668a60a3369fd53f784f` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa132dab612db5cb9fc9ac426a0cc215a3423f9c9` | ⚠️ Unaudited |
| Sanctuary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac14864ce5a98af3248ffbf549441b04421247d3` | ⚠️ Unaudited |
| SanToken | token | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x5d8d3ac6d21c016f9c935030480b7057b21ec804`; ethereum `0xb3b209bb213a5da5b947c56f2c770b3e1015f1fe` | ⚠️ Unaudited |
| Savings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1e5b48c08d6b5efe0792d04f27602bd90026514a`; gnosis `0x6c04c39b9e73ac91106d12f828e2e29fd8ef1024`; arbitrum `0xadf56645e6796e32a805e5bc70267c656d0eaf7c` | ⚠️ Unaudited |
| Savings | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x8928d0c942ca48ea86f458857de61b92d6f5a564`; gnosis `0x9de6efe3454f8eff8c8c8d1314cd019af2432e59` | ⚠️ Unaudited |
| SavingsNameable | unknown | project_anchor | own_supporting | 2 | ethereum | unit-379177 (2 proxies) | 2 deployments: ethereum `0x0022228a2cc5e7ef0274a7baa600d44da5ab5776`; ethereum `0x004626a008b1acdc4c74ab51644093b155e59a23` | ⚠️ Unaudited |
| SavingsNameable | unknown | project_anchor | own_supporting | 1 | optimism | unit-379183 | `0x0022228a2cc5e7ef0274a7baa600d44da5ab5776` | ⚠️ Unaudited |
| SavingsNameable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | `0x0022228a2cc5e7ef0274a7baa600d44da5ab5776` | ⚠️ Unaudited |
| SavingsNameable | unknown | project_anchor | own_supporting | 2 | arbitrum | unit-379194 (2 proxies) | 2 deployments: arbitrum `0x0022228a2cc5e7ef0274a7baa600d44da5ab5776`; arbitrum `0x004626a008b1acdc4c74ab51644093b155e59a23` | ⚠️ Unaudited |
| SavingsNameable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x0022228a2cc5e7ef0274a7baa600d44da5ab5776` | ⚠️ Unaudited |
| sdCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1b5651e55d4ceed36251c61c50c889b36f6abb5` | ⚠️ Unaudited |
| SDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f` | ⚠️ Unaudited |
| sdToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x402f878bdd1f5c66fdaf0fababcf74741b68ac36`; ethereum `0x752b4c6e92d96467fe9b9a2522ef07228e00f87c` | ⚠️ Unaudited |
| SettersGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 7 deployments: gnosis `0x07573b3e99468d5d058f58ad54bfed449af83ec1`; gnosis `0x0f198afb705964a675feb230e8be2de5558b3ff1`; gnosis `0x2fa1255383364f6e17be6a6ac7a56c9acd6850a3`; gnosis `0x735ff13c7af33583b2c657680c2809464dbcae9b`; gnosis `0xa5479b8864a3e22d45b145452d31d44ba990df60`; gnosis `0xcf5a2934fe43666c24823dfd455c617edff78bb6`; gnosis `0xe8426450d46f4ed4e667e96c7ea53bae518ff8eb` | ⚠️ Unaudited |
| SettersGuardian | governance | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 7 deployments: gnosis `0x2878596427bfa6b52fa6d93b519a0c610bbdf00a`; gnosis `0x381a815b112a394f27121e2a99e86f88b1ef85a2`; gnosis `0x43365213237ab259c707bc2cbc3e07d123ae2ad5`; gnosis `0x89c4851accc79384243da946451a82b1b44aedb4`; gnosis `0xac64946faec438557c3ac95475225b1eeaa56c17`; gnosis `0xf664118e79c0b34f1ed20e6606a0068d213839b9`; gnosis `0xfbb53f48da13f9919dbdb6abab4b5cc7800c6dae` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379122 | `0xaa241ccd398fec742f463c534a610529dcc5888e` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x4b813c09ee83f6a308135d60658b22fbb8c0bf5f`; gnosis `0x9b4c3f0eb7e732a64c549ec989d62ec82b00d37b` | ⚠️ Unaudited |
| Sonne | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1db2466d9f5e10d7090e7152b68d62703a2245f0` | ⚠️ Unaudited |
| StableMasterFront | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5addc89785d75c86ab939e9e15bfbbb7fc086a87` | ⚠️ Unaudited |
| StableTokenV3 | token | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xd8763cba276a3738e6de85b4b3bf5fded6d6ca73` | ⚠️ Unaudited |
| StakeDAOLevSwapper2Pool | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6239baf1b79acfff180bf7dd8647ef9b0cf97f5` | ⚠️ Unaudited |
| StakeDaoNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd4f84e4f3cd31d6c91d80122b5a26cb4ae66bd5` | ⚠️ Unaudited |
| StakeDaoNFT_V2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5f572b705cae1893cdceb5161ce40e2fc5bb6cd` | ⚠️ Unaudited |
| StakeDaoNFT_V3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd2236b1e089762cc264c85eebcff195ae38ea2` | ⚠️ Unaudited |
| StakeDaoNFTPalace | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x221738f73fa4bfca91918e77d112b87d918c751f` | ⚠️ Unaudited |
| StakedDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x41279e29586eb20f9a4f65e031af09fced171166`; optimism `0xdc05d85069dc4aba65954008ff99f2d73ff12618` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3d7e670d105e8fbcae3bf2bfc54324302cdb6ad5`; ethereum `0x7ee4a0f368681e4d97a8dbe78dbd756e097b6a76`; ethereum `0xbb9485e2b9b0da40db3874a144700e31bd9c40c2`; ethereum `0xbcb307f590972b1c3188b7916d2969cf75309dc6`; polygon `0xcc00985055520c86d8b7764035002cef600f7616` | ⚠️ Unaudited |
| Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2d78b6f5dc8985d90145f27c8f5a3782eb9deb2e`; ethereum `0xb46a42427e412869f1bd7b9b3a2b5e5856a8907e` | ⚠️ Unaudited |
| Swapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379124 | `0xd7cf341ce068eb335d3be24bef6c06348bfb5346` | ⚠️ Unaudited |
| Swapper | unknown | project_anchor | own_supporting | 0 | optimism | unit-379132 | `0x3f125ecd51181af1f344adf76e4271d2923707ab` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 7 deployments: gnosis `0x4ce0a4a86a18fa864284ad385a7cda7444875feb`; gnosis `0x927ed3c2e8f309c195b90c87040f884979c9ecc6`; gnosis `0xc7f199ae6633b9336cf1b5a60c020b6cd993047d`; gnosis `0xd23b51d6f2cb3ec7ca9599d4332a2f10c3cfdf85`; gnosis `0xd8f2cda6de4f6e23414a00a2226ef5f58e7ce440`; gnosis `0xdb2fd6a9f5138246c6dfa1b8a1d5f366cc638b46`; gnosis `0xf0a5fccc650b374eb5db6880064d050f1857e20f` | ⚠️ Unaudited |
| Swapper | unknown | project_anchor | own_supporting | 0 | polygon | unit-379152 | `0x516735bf9a517fc66f53a798b1910498a8a621c5` | ⚠️ Unaudited |
| Swapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-379160 | `0x2904a4d96f88ad4bd548507ba139e892083894f7` | ⚠️ Unaudited |
| SwapperSidechain | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c215206da4bf108ae5aeef9da7cad3352a36dad` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379101 | `0x09d81464c7293c774203e46e3c921559c8e9d53f` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda86e15d0cda3a05db930b248d7a2f775e575a44` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | optimism | unit-379131 | `0x343902fe4d72e24b29f22d787b2e54eeea5e8227` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | polygon | unit-379147 | `0x0c24766a56732b85eee5a383ed6614abd34fb631` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf929345e5a5ac2f86c7a5802c1ce4aa46f524b28` | ⚠️ Unaudited |
| TimelockControllerWithCounter | governance | project_anchor | own_supporting | 0 | gnosis | n/a | 11 deployments: bsc `0xc9025cef778a8032a689ac52798c66939c17c22f`; gnosis `0x0f2b510bfb0b83fc692b5601ef7a800d1d9d2fef`; gnosis `0x20b63ccfdb926904c2cfa8c9424b28c4bfd8fb36`; gnosis `0x64b478b7537395036c65468a6eb9b52fa6096a1f`; gnosis `0x769a713bf0589d495008e5a7c78fabafb9c35f39`; gnosis `0x7b979b965cd124501d87007b2421d0e585733525`; gnosis `0x80d1cd24b10c0ba5d6ee5043cbdc80e00830381b`; gnosis `0x85a61981669292e44250c6a1a1fed4ba0c5c6cf8`; gnosis `0xb2ea590fcea142dcceaeb3912da4c1df721848ef`; gnosis `0xd2a211acea98c799a67ac47c274ebdf7dee24396`; arbitrum `0x169487a55de79476125a56b07c36ca8dbf37a373` | ⚠️ Unaudited |
| TokenSideChainMultiBridge | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 2 | arbitrum | unit-379192 | 4 deployments: bsc `0x5efe48f8383921d950683c46b87e28e21dea9fb5`; bsc `0x97b6897aad7aba3861c04c0e6388fc02af1f227f`; arbitrum `0x03c2d2014795ee8ca78b62738433b457ab19f4b3`; arbitrum `0x656b80b667a46869144047e6e6c0000c81610253` | ⚠️ Unaudited |
| Transmuter EURA | unknown | project_anchor | own_supporting | 0 | base | unit-379173 | `0xba0e73218a80c3dec1213d64873af83b02ce0455` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 5 | ethereum | n/a | 6 deployments: ethereum `0x3f66867b4b6eceba0dbb6776be15619f73bc30a2`; ethereum `0x53b981389cfc5dcda2dc2e903147b5dd0e985f44`; ethereum `0x6b4ee7352406707003bc6f6b96595fd35925af48`; ethereum `0xc9daabc677f3d1301006e723bd21c60be57a5915`; ethereum `0xcee383c5ad0cc99a9da2975c5bd572d0e7769d1f`; ethereum `0xe9f183fc656656f1f17af1f2b0df79b8ff9ad8ed` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x075a2660901430dc5714ca50282e5a2a1eec4e59`; bsc `0x52f0c256e58c579bf9e41e4332669b4f7c7209c5`; bsc `0xc1f9266c6d3389e981639ee873121199a7acdb8f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | unit-379204 | `0xaec8318a9a59baeb39861d10ff6c7f7bf1f96c57` | ⚠️ Unaudited |
| Treasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | `0x3e9ea799c447b3c65702c82f8193085f330a1db0` | ⚠️ Unaudited |
| Treasury | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-379188 | 2 deployments: gnosis `0x5addc89785d75c86ab939e9e15bfbbb7fc086a87`; gnosis `0xc16b81af351ba9e64c1a069e3ab18c244a1e3049` | ⚠️ Unaudited |
| Treasury | operational_periphery | unclassified_address_book | needs_review (excluded) | 4 | arbitrum | unit-379203 | 6 deployments: bsc `0x4b1e2c2762667331bc91648052f646d1b0d35984`; bsc `0x7ab641e661a9728913a44e06f6a4879481142ddb`; bsc `0x9485aca5bbbe1667ad97c7fe7c4531a624c8b1ed`; bsc `0xc16b81af351ba9e64c1a069e3ab18c244a1e3049`; arbitrum `0x0d710512e100c171139d2cf5708f22c680eccf52`; arbitrum `0xf1ddcaca7d17f8030ab2eb54f2d9811365efe123` | ⚠️ Unaudited |
| Treasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x79e4df078a06ac31bfaa0f672f1f6e9b7f38113e` | ⚠️ Unaudited |
| UI helper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379104 | `0x1b17ac6b8371d63e030c5981891d5fbb3e4e068e` | ⚠️ Unaudited |
| USDA Permissionless Harvester | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379107 | `0x2385a7f5f4ed4bfdda2bca602ebac9dac2a694ef` | ⚠️ Unaudited |
| USDA Rebalancer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379106 | `0x22604c0e5633a9810e01c9cb469b23eee17ac411` | ⚠️ Unaudited |
| Validators | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa47961bf08da4267825866757f6e469a40c8dc95` | ⚠️ Unaudited |
| VaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1033dd8415a282db52f14902e91de6e91868ac6d` | ⚠️ Unaudited |
| VaultManagerLiquidationBoost | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x913e8e1ed659c27613e937a6b6119b91d985094c`; ethereum `0x9ffc8a23eafc25635dae822ea9c4ff440226a001` | ⚠️ Unaudited |
| VaultManagerLiquidationBoost | core_logic | non_address_book | non_address_book_inventory (excluded) | 5 | polygon | n/a | 6 deployments: polygon `0x0945de4f356de3569fe12850ab85a91f533b87a0`; polygon `0x3f125ecd51181af1f344adf76e4271d2923707ab`; polygon `0x42b8391a787508c514c5a7a25215ea63d1ab5687`; polygon `0x4b81f51988cd6a9f44350cdabee9620d16359aa3`; polygon `0xf18303e2dd58cf29cad655b3bd2e1cc4582c6a16`; polygon `0xfb16d8e96c0c6e9b72541bfd8d4c3d9e867c990b` | ⚠️ Unaudited |
| VaultManagerLiquidationBoost | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x04437e94af860afbb0429a7d36b9c00a5a5173b9`; arbitrum `0xa202feaf7c2ad2148984cf3acefc1e3b1e52d7cf`; arbitrum `0xe9f183fc656656f1f17af1f2b0df79b8ff9ad8ed`; arbitrum `0xf664118e79c0b34f1ed20e6606a0068d213839b9` | ⚠️ Unaudited |
| VaultManagerLiquidationBoost | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92d84b0687361cd0753e95f5a8746fbaf42e9135` | ⚠️ Unaudited |
| VaultManagerListing | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x7f27082eabdddc9dc3cc6632c9f594d210b9d43c`; arbitrum `0x8928d0c942ca48ea86f458857de61b92d6f5a564`; arbitrum `0xe682aa5f491bd775c89b160462f7911d8a1b0297` | ⚠️ Unaudited |
| Ve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29d3622c78615a1e7459e4be434d816b7de293e4` | ⚠️ Unaudited |
| veANGLE | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379102 | `0x0c462dbb9ec8cd1630f1728b2cfd2769d09f0dd5` | ⚠️ Unaudited |
| veANGLEVotingDelegation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379108 | `0x2d7bd1c4e7720084d535b36de1b4327462d63078` | ⚠️ Unaudited |
| VeANGLEVotingDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd622c71aba9060f393fec67d3e2b9335292bf23b` | ⚠️ Unaudited |
| VeDist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfa51d9635fa9be5117093efeff06d388d539b86` | ⚠️ Unaudited |
| Velo | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3c8b650257cfb5f272f799f5e2b4e65093a11a05` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x09236cff45047dbee6b921e00704bed6d6b8cf7e` | ⚠️ Unaudited |
| Voting Escrow v2.0.0 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0c30476f66034e11782938df8e4384970b6c9e8a` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9c7305eb78a432ced5c4d14cac27e8ed569a2e26` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 26 deployments: ethereum `0x051d7e5609917bd9b73f04bac0ded8dd46a74301`; ethereum `0x08780fb7e580e492c1935bee4fa5920b94aa95da`; ethereum `0x1005f7406f32a61bd760cfa14accd2737913d546`; ethereum `0x2932a86df44fe8d2a706d8e9c5d51c24883423f5`; ethereum `0x29f3dd38db24d3935cf1bf841e6b2b461a3e5d92`; ethereum `0x3175df0976dfa876431c2e9ee6bc45b65d3473cc`; ethereum `0x50161102a240b1456d770dbb55c76d8dc2d160aa`; ethereum `0x552dad974da30d67f25be444991e22cbae357851`; ethereum `0x63f222079608eec2ddc7a9acdcd9344a21428ce7`; ethereum `0x696b5d296a8aef7482b726fcf0616e32fe72a53d`; ethereum `0x6c3f90f043a72fa612cbac8115ee7e52bde6e490`; ethereum `0x6d787113f23bed1d5e1530402b3f364d0a6e5af3`; ethereum `0x742c3cf9af45f91b109a81efeaf11535ecde9571`; ethereum `0x75f8f7fa4b6da6de9f4fe972c811b778cefce882`; ethereum `0x81c46feca27b31f3adc2b91ee4be9717d1cd3dd7`; ethereum `0x99a58482bd75cbab83b27ec03ca68ff489b5788f`; ethereum `0x9f330db38caaae5b61b410e2f0aad63fff2109d8`; ethereum `0xa1f8a6807c402e4a15ef4eba36528a3fed24e577`; ethereum `0xa2d40edbf76c6c0701ba8899e2d059798eba628e`; ethereum `0xba3436fd341f2c8a928452db3c5a3670d1d5cc73`; ethereum `0xc78fa2af0ca7990bb5ff32c9a728125be58cf247`; ethereum `0xcfc25170633581bf896cb6cdee170e3e3aa59503`; ethereum `0xd0921691c7debc698e6e372c6f74dc01fc9d3778`; ethereum `0xdcef968d416a41cdac0ed8702fac8128a64241a2`; ethereum `0xf253f83aca21aabd2a20553ae0bf7f65c755a07f`; ethereum `0xf43211935c781d5ca1a41d2041f397b8a7366c7a` | ⚠️ Unaudited |
| VyperDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x39ce9cdad28d08d32fd94284070a8b0c8309393f`; gnosis `0x4e4c68b5de42afe4fdcefe4e2f9da684822cba18` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 9 deployments: celo `0x066f672c03347a24ee3f52d1f184f04f7abd25f2`; celo `0x120c00afa9052583402ea361f43d9683c849e892`; celo `0x65534a1cedacc6ef812f751b459db7660e043372`; celo `0x68e231b208d82dedba0cf7d97db0d3bf9bee3903`; celo `0x72306ff91e79054e35a785d3831b215dd072c33d`; celo `0xad52b8aa73b45b0872fe05d5de2c10123414e7fc`; celo `0xb7feac258e081415c84b7f4b1092057610ff582a`; celo `0xbcb789aabd2bf7be0a4a6674676b49787cc3a567`; celo `0xc99d541743e0570f2eebb76ac435de0c8edd411e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (1310)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CoreBorrow | unknown | project_anchor | own_supporting | 0 | mantle | unit-379168 | `0x4b1e2c2762667331bc91648052f646d1b0d35984` | ❓ Unverified |
| EURA | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | unit-379169 | `0xa61beb4a3d02decb01039e378237032b351125b4` | ❓ Unverified |
| Proxy (impl: 0xe9169817edbfe5fcf629ed8b3c2a34e2a50ec84c) | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x0000206329b97db379d5e1bf586bbdb969c63274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688c4296a2c4d800f271fe6f01741111b09be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a425db7c8b65a46cf39c23a188e10a2de99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00d39058943b4a6f01cb3386a7f44b84ab482c8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0138a84f821809e2d01b16d053f4b4a5b88b725e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0186e34de71987303b4ed4a027ed939a1178a73b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0198792f2849397908c092b6b57654e1a57a4cdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b8a788d2742d8d1706fce7204fb523c51e175c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c6808eb242c826d32f03712d66d5e613782363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02072abc26f1d69849b6dca0b1ea805dc4cbe2e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02682c933428e7a9b7527dd9385f1e0c5d4a4f48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x028e1f0db25daf4ce8c895215deafbce7a873b24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031f71b5369c251a6544c41ce059e6b3d61e42c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03563deef50b957f69232de055ea1a8aa6d854d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04eadd7b10ea9a484c60860aea7a7c0aec09b9f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x051ba97b84a921f4134376af2c7e3a38229b0933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052e51568351effa9ea90df6fe648446f006323b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05c65c915f9d465dd55993ffae69943638eeb42e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x062f3442b97ea5e36e721812e957b6379801be29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068eb29ffd28fd9191143d4de5593df257eb194a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06975bb418effb0029fe278a6fa15b92bb97496f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ce8086965234400fdecab190b115c2c0717047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07374b547cae235227635c13266c69847a3e46fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ace8d682987c2219fe8cd314b858c326a4c3fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ee2f1272914e869d0e47e08b5a10007b8fdf31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08db226d63ce724a6091ba82d28dfc76ceca23d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b541beff2cd44859701619e245e82f48e62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0962fb33a7e0172d0e413b0fab003bee5142e6b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ae947495034c0bbbab845fd75b5bbafc91aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ac74fe6f3c9123254418eefce37e4f7271a2b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ad8ac496b4280bc3b36fb1b6372abdec8ee7c54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b4f695b05902efc14344d19ed1d0b0e061c8a3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc3bba4ef3d1355a76e69900f98a59d30ef54f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3310b0b57b86d376040b755f94a925f39c4320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c39daf173646c4ce9e6a678425ed965c98ccc66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cac674ebd77bbd899f6079932768f6d59da089a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb45d9790e7f335b491c9532f7ad15aa1a9dfac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cdcbeaddf2276df7f41d8b1f45249bf3d63a8d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce658f9bc3af831271199578449810023dba703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d0f8a0f04d54197f85fee6d5523df2d84a73b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d1bbd727235aebae9069153f970ad806febb4e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d41f858d803af86e5192a77a798ad7d97e906ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d81b042bb9939b4d32cdf7861774c442a2685ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0da050cf37747fd665adacdc0ce482f62442fb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e07ef9f9368a4092ca1ba9f01de1ae7bcaee361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e6590f64a82cbc838b2a087281689de1a5bc8e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e90cf05acb23d8dfa856a74e74a165c6a7af8b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec3008da9641bf80c0c82b37e05f59c58c6fcd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f050055b162feaca563ff36fe905c930361da57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f087ab4baa4fb5284b6cbb2163d0f22c185e59a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f1eb8d5568e9c1ee72e6de7b5a9e2837a530019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f4b416a651f57358c2aa86da285100fbe5bc7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fe4fc1301afe4afe8c3ac288c3e13cdace71b04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x107a369bc066c77ff061c7d2420618a6ce31b925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10cecc30087f4b3e894dad8398307faa2f0ac2b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11833cf5145c4ec310b315fa9781c53cdb4b9718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x120508eb8f0895a7de876cf2d49bb04458c68a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1247b148062179cd6156f68d9a1019f671f955c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a8865194a29571958711764f8faacd568e20fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12b98c621e8754ae70d0fdbbc73d6208bc3e3ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13898151591b91ad5c41385b9af333676f481788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1440469fba56ea663de7c29bbe8bca7ad5158647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x147f4163756db2eee9092bb848603a9e7054c52d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15bb111f1b7c60b5f97045c1e817878e8ebd218b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x169e448bff1fa74c9be3fe4dadb14434dcff692f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f6be72882b24527f94c7bccabf77b62608083b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1745c027ab3082c3b1019db69af295f095500663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x174a273f0ea28e55b6dd13259aa43d262b863a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17979eb3866efdf5aa295f0d41a82c6fd5ceb5e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e9ab2992dfecbe779a06a92a6cdb9fe6aeeef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1846bdfdb6a0f5c473dec610144513bd071999fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b1b0c623a30089a280ed9256379fb0e4e62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041ad83145351ef45f4bb91d08886648aeaf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a783886f03710abf4a6833f50d5e69047123be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b610f5ba95d3a9d0f7b41ed55615157074639bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6fdd5d25b9882bec7deb697f60db5a53892675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c89df6c8b1ab81ef90855120fafb93d7fca3254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cbd086e16f1188e0e15a153124d6f5c81e57f3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cd24f833af78ae877f90569eaec3174d6769995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d659f4357e30de73ed2dc02ed4e34bca262dcc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ea9ae797972ad9fc52c55105d184d8b059bb716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f5a97fb665e295303d2f7215ba2160cc5313c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f69f47ba5f9437dcfd856b838fa0070f493ae13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fc957b768b2f7f4a035bc861ed89e9c7cc01c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x209d0df488d7863f59b888ec21ce925f7bfd4eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20aeea0de311420c22868f266e92088e4f198b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21fcd8adac59adc2eb94355eb2f43f869bbc9582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22103d325d28e17c4f42268c7432676efb914175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x222c844c729b4f7180c689c482ed7925cfa5c4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2256b25cfc8e35c3135664fd03e77595042fe31b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226845c2ba216b8bb1aaadfd4e14de69426c5445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22b0ac22d5d58f05873e470bca5db7ceb5c47f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23ac1f73c536657b5cd1aba7ad42753dcc8ff3ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23dce3933149aca21c4d5c778c7fd549799f4249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2403457ce59e56dd69d2fc4f22e77d7ab180deb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25b0a02c8050943483ae5d68165ebcb47eb01148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e7337037817dd9bddd0334ca1591f370518893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x263283a6b5ae1671d5c5de75347a61abc83fc16c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26d7977cd8e3c4192645ce3b20601878c410b9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271c616157e69a43b4977412a64183cf110edf16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271ce5ded4ccbd28833bddf8a8093517299920f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x275da8e61ea8e02d51edd8d0dc5c0e62b4cdb0be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2869e74a15d3c0c797b04feaef93734060a4477c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x289c74e8e83b95c2b6e166e02cd8a90dd52d492a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28fac5334c9f7262b3a3fe707e250e01053e07b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x292714dd74a03adaf59c0dec61353340e8a85e67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29c794b9a70752c41d65ebccef1c1ee697387510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29d094110c7a89f1cb6c975df0a38cae80f24b21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a28789645776eaa95f6d491ff375781ea5b40dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a719c74e3530d70711b4f4a34b7bc05984601e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2adf7ccf0241b60747d194b3ea163e28105dadec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c8776567c4eeebda1450e343b1bef49ae32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b914f5e396b0017a866c7e36af9fbba46c2d887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc706b83ab08d0437b8a397242c3284b5f81d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5a50d4125882083aaefdd370848771286a84a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c08bacc1fc6095f21eb59e57318a6c06d3fca24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c2b6c09657cdba5a692b1b27ac60c0839511651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c42fdcd742cd4bb058554c1d537e5af667497a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c63f9da936624ac7313b972251d340260a4bf08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d1d26777404bdab35aab8cad9ed1fe5a2f629eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d29c277ac61376fb011dcafce03ea3c9485f4c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8b5b65c6464651403955ac6d71f9c0204169d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d90df48c706874f1b9a02054273996fbf458964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e2063080a05ffdaa6d57f9358c2a5e1c65c70ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ef4b38a128ecc1ac06b43055553f95af59523de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f326f13c6624a4eec1d93bce1b0a5a6b8c9da6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f58a698de73e34e9de2beb41528046c77cbb225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f5c260550ed0efede4881bc004107c3f04e26a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fa1a0e96e8d37f0cf288ff517362249b369d0bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fbe7f9eebf7f2c18fd7d1c380d14ddc43005ad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fd3252999806bce78035def25131517d2f5cc29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fec85c0eaaace2b24926eabbf8373b26240931a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30184e352d47e8ff5adc34c42365cdbd992e28d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x308e4ca6c8ddb7bc9ae2b9dc1dac55897b362a7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a2f3c3aa6d12c0a36bed210dcf1b32ef6228cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x319c06103bc51b3c01a1a121451aa5e2a2a7778f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31aa15da826da3311788b208d31cae34074d1dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31acf75be792721532f6527f7c99c05b8803f2f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31bee1fb186fc3bbc8f7639206d675cf3dea2140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326fe113a130c569b44aff93b3637f3ac956ecdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb5a46e02decaf5f939ab12c123eee203a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3391bc034f2935ef0e1e41619445f998b2680d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33cc998fd4af3b6be42bac9a67fe97e9e275d2ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3481dd51b31b8edc13da6dd78cd47ac2af659d69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35168324dc1981addc3bc915788e200bedf77865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35b476bf3b66fa1c4bcfe4df9fd2971a3e1c2a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35c93ea0ea2a3c319774473ce6c0f866d94fe28a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35df8a95b348dd87167ed00b3421ba15d95ac1c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36569d9afafc8bfd6bb844ee371f401c695f1bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36798b9abe18042917379ae700631aaada933d14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x368440b3121f32df336d393834eafd8fa787c4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3687c0f8760371fc1bd1c7bc28695c388cded5a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36fb071d5d30e5207ecc010c0ea3cc9ad75838a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36fed2ce0fbad6f913b90ceaa294b1a0f1534a27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x371ec16a15c00a3deac8e6ab929d8da4d68c60cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3751b4466a238db35c39b578d4889cfb6847a46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x375d170b98da0e5394edf3ab2ba1e9360f9c29c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3785ce82be62a342052b9e5431e9d3a839cfb581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37bf48d035d78e432774a0529355b1a7afd93e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37de1d299c93743472343699c58ec95000870dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38140673567957dc7946abce45c271cac33fa2f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387177b33830f48199110f186f47797c66556b3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3886557ed1698dbd496a4a0f2e00df8918ea45e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e7627eb98a40e7528bcce709a80083093ba2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3910dce33441360e4c1d2749afa08e1a59af2546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392504f486a3f7caa24b104a9618f5ae30e2ab9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3993d34e7e99abf6b6f367309975d1360222d446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39c70ae0a87c8eb373c40d090126c472e5e23647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39c71fe893f41ec0d96b85533b5a2b391b61c5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39dc833a9bebe7c38eb09c669e4fc24f90d6226a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a283d9c08e8b55966afb64c515f5143cf907611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a4de44b29995a3d8cd02d46243e1563e55bcc8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b38ce23799dc56664ff6048892510abffdb7a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b43870abf343aa999997f97e48648557301fcb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bcba0afd36c9b350f46c570f89ab70817d122cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c278929ad48955b236dec535a597b762b97bfd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5a5d7832e9084fd88885823afa8cd99250a70c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c9916bb9498f637e2fa86c2028e26275dc9a631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cd51e62e14926dda0949ea3869d5fad0b9ab844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d1775da27dd9c6d936795ac21b94cded8babd69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d6418a1f8412a5ebcc953558bc765aaf4e75588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d6d9d386feaba912e5cad20770b3d797258ed7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e0ae4c19c3bdfc9eed5a2898d3a57c6f61e847a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f03d8e4e8d7fcc8a9965e23bb3daa81cfc4ee24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f8c6211b3580c00b431edcbc2fbb23966d05ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe7940616e5bc47b0775a0dccf6237893353bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40072fc98b3a128950b1857bd7ce57b144477407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40745803c2faa8e8402e2ae935933d07ca8f355c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x409893c94aad411030e5a78fd39b015221dfb8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40dfe8a2c8b95746b1f36f921fb4e812a1a6725a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379110 | `0x411e140da9aece566c783c38eac9c4a1ed846f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4169ef3b885416bd553567e78585a97ee52ba700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b55b28de948d9e5bbe62f30d47f8f0f29a7e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4207bf5e9d0e850abe12520c0fed0313c593f1d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420d54c94810c303986ae3b7688709a6bb552057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42402e60b3aab035c7b63ee7a0a46ac9a86a424a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x425a8233d30a9a8f48c9319f8d80e232b6682817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42740698959761baf1b06baa51efbd88cb1d862b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x429ae76c9f1da661be327b4ec2047ac0ebfa1daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b9dea10b51a696949715797bdfd69489fc3b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42c21c576588f1bef340a26fa3932ba41528f2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x433d5b175148da32ffe1e1a37a939e1b7e79be4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4380208ed0fc5136e93ed1ff67d2cbe1906d29f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43e744991c4db0a830a396eeeec21c19d6e25fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4462ed748b8f7985a4ac6b538dfc105fce2dd165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4473bc90118b18be890af42d793b5252c4dc382d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44b6cdda5d030b29eec58009f6f474082313c470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4598454a2aafa5c3e5eb81b5143f2226597c4014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45ad3e014ae7470ff24955d6395334a1030f3976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4603292bff362575be16ae38c508942c7cb3b384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x461ffb88fd7c29b327ab05f3ca2b07d7a3350f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x462fc48992b2050e5df5df31f68ba6e38161dde2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x463465c334742d72907ca5fb97db44688b4ec3dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46de3a3da932f1cbc151db76ac1bee935611544e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478601cabe3c3c0bad9bd5ed024c36648b9a148e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47b6d73cfcd3a6be3c5fa046438eed6e4df55753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47f6ac52a523e4f754170751c170410b757e20f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x486f7a09abfd529a7dae8cd35d2a265d1862d295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48a48c6694168093a3dee02e9e8ac5a14169a652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4916ee4a761e5cff5b4a3183f109f3e141a12569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49196f9a5d4f8a64a06320c0be15a096f0cdc9b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49663768fff9e22c831ece49b5e15bce917eac1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49ba0471aff5bb1a6e4588389e27df2a9e8e1933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49c7b39a2e01869d39548f232f9b1586da8ef9c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49ddc46222ebb472d0630cb18b7f77c05d350df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49fc162c08a0ebddb00d7876fe435b9d479ebe6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a07723bb06bf9307e4e1998834832728e6cdb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a8f37ee4e314f0b1f87b7b4dbd49dc97da98e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a989a6680d2a8c945eef9e7b686bd6121449037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4adeb02dd22af00a8b6189bee89769ed76129956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ae60bc9a3efc160ae2eba70947a9b47ad2b9094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bd6af4cf5c00167d0922bc90ed61a800a244ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bfd21ebcf0819e8c5a74346517f9db849208ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5d4f542765b66154b2e789abd8e69ed4504112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c99d2a6d30400be7a164053e4e44fda13912907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca9b3063ec5866a4b82e437059d2c43d1be596f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cb152b45e667f86a0470776bed0be93a5f1c534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbf03a2d7037eb59ae03d3a2927f1d7ec805c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f162fd143e4a829341efd6dd451b018b10f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e31d9c49e8c63f4b3926ae6a8848b756fd0b8df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e5e8a75455ae94fa8fd6dbf28ed4d609684f2cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8af7aa1a7c8c1082abdf2bb416044495b937fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ebe360e970e6e5b98c974d2e9102d46a96bd3bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f6834b384f58fb07867871553d1d1483212a80d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f80e44af91bdba5b9bcb857e9d8aa56651ae688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379112 | `0x4f91f01ce8ec07c9b1f6a82c18811848254917ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x503d751b13a71d8e69db021df110bfa7ae1da889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50449b3d1f5931d568a1951ee506a9534e7f7dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50996c7e748b1b83130b4854945d86ba6fc81f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c39ea8f3d72310c8b56a56b333994266e9b477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f35f4fd499898801282a415f4c3a689663719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51257e0d34f7c9795f2547725b6c87ef6140dafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51c77689a9c2e8ccbecd4ec9770a1fa5fa83eef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51fe22abaf4a26631b2913e417c0560d547797a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x526d62d71c4c61ad4365ef5de3d3e2983b14020c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379113 | `0x52701bfa0599db6db2b2476075d9a2f4cb77dae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5274891bec421b39d23760c04a6755ecb444797c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x528baca578523855a64ee9c276826f934c86a54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a430b5b7407fa103c5ae974744e4cc945354e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54449cd454ba2be50dc9d1ac9bb83a503c908d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x544897a3b944fdeb1f94a0ed973ea31a80ae18e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ae90be2dee0a960953c724839541e75bb1f471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54e7e67a3e152a1d6a10fc50b6b3cc5ad71e91df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55573cb84f02cb5dc4dd923bf5cd9c5b4b12a4a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55583f7ca92f4cf051e6f55d77a967ba9b2c1edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55cf2cf79759574a4e868ab83701794afc5a6a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56050f117d675041da6a4b501f0cb75d455759a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x562c4fd96f0652f5fcfa96b0a33088b5a6eaee9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x577d963246d28dbe0dc579048adda421b054924a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57aa7b444458a68a9c2852b9182337ad1dc1c0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57d59d4bbb0e2432f1698f33d4a47b3c7a9754f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57e142278e93d721f3ebd52ec5d2d28484862f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584b0fd8f038fe8aedf4057ca3cb3d840446fbbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5852bda4520f1b000c760c1dfb8ba5db8fcbaa90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x587fe6430a1148df4868e9e71357a179110c608a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58c405e3c57547adae679be854ff067e15c30762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x593ff7ba8c0fd8bb87ce7214ec0f82119aa67a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596f8e49ace6fc8e09b561972360dc216f1c2a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0d404d2042b92eb7948ac5943128e1088fd24b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a62ca401667b18557ef23d84bf27aff5a0164cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa00dce91409b58b6a1338639b9daa63eb22be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac53910dea4779e5ac3a7e997df8e9d5f6a7c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b3d6c553e52f8b3fc7cb4a4c67e479c2ce0a7c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bae5119d4c6be71b1a318a7dfbeae85d5aca4a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bea27d52e36c58dbce2921773396f33f2bd780a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cc24f44ccaa80dd2c079156753fc1e908f495dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ccba376bc879362b1069323b74298ee68ff83d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0f47b32fdd343bfa74ce221808e2abe4a53827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d4e705315aca451db40bf7c067077c768b3ffd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dad2eef80a8cdfd930ab8f0353ca13bd48c4346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dec32675edac1bd6e5dca0ad9affcc7d4257cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0198c158276efaebc5a32c8351fb5d679d4288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ecf8bf9eae51c2ff47fac8808252facd8e36797` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379115 | `0x5f9f41497f9e11fd7d4c4b067413199682ee2cff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600e571106c31c4ca1bf4177ba808e37146a4a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x603cb545b98aca3691be869871b34ae72ccfddca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6042d559acf454f73d8c0319386e46f65ee77fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b1b1f20373005030095fbe7cde032625fc96c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6110dec9fac2a721c0eee64b769a7e4cccf4aa81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6120e46a4dd1bc8e4a94aee0f71987c62de99931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6161e1144298f24e2d524263025e6c0292a8c01a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62191ef48bf8fd7a0e10ecb066b0350e6a9c18a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62568889198f1bab603e26da7b6c1808838fe489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627bb157ebc0b77ad9f990dd2ad75878603abf08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627ca78b2b693364223fb2c24c19cee03a45da60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x628b4df112d20c1b001e9ccfb2bf853e4dd9eb6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62a0369c6bb00054e589d12aad7ad81ed789514b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62aa57dd00c3d77f984379892c857bef58fc7722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62b17c9083db5941197e83bd385985b8878b58fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x633fb4d38b24dc890b11db2ae2b248d13f996a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6340678b2bab22a37d781cd8da958a3cd1d97cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63564e223ba1fdb491c6ca68f63c67a578443ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63664c8f8beaa493b999988091169bd11a5de8e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63d27b3da94a9e871222cb0a32232674b02d2f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64239152e4fa7913c790b1bdce332fccdaaa7219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x642882c80cd313578d0c56ad8acb5ea96a65fdd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x649e0b707a90f1d73b27f83358c4d9bcc91fd622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656dd75d33a6241a0c4c2368eb00441ad3113ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657b6c7f44687b78e850e7ec4b36641a697b6f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65a8b215f34df5c30c64523d638ea698065ffa15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66624b88ac0006fa14955393a5cb1248918c21ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66b59140f0911f01e98c51ca71732b3f96b4b9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66f4a1d4e22207a1a36133a6aec7a60263a0fcd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6735803b326682168d24241b8d80f0c06115f580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x675a1378777cc2d25dbf430a28738cb6b7a3f8c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67f2c664891e4fcdecba6b596567eb0a872a84e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67fe41a94e779ccfa22cff02cc2957dc9c0e4286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6818254e0a141ca3d85a5f44989f18e820e33ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6850398a001776aeb8a4e9af75c3fdab49cecad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68c79b15c2270215a47bf10eba954fc95fab635f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69369507aa7a44156cc297448ab57e3c15d26485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695085c4eae4c0416e26de99059db71d8183b783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6963460d921407e4db82a72837a1e709ac7a0d25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697655518c1e063fa1f14de2bf37602b7316305b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69a62c24f16d4914a48919613e8ee330641bcb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69aafff1218ba086ac782f98cb8399d1226e2af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69d7469e677e4c8fa4581d36908b0c9c8750baa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a9f585e990e72fc1ed1c938d2674f02b5937385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad40c48876e98c8b5f164d2f89c9ea11f5d73de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af700a9b52bdea2e33dbdcacae638fd8e118bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b327845518ef70702bffdf8a143848f26941ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b765d07cf966c745b340adca67749fe75b5c345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b98a5e0e67e68f502e8950992e0b1c0aee0a506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf9ea02daab6b4b3b71cce20a84088a71bf723a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c14a1a28dd6dae5734fd960bac0b89a6b401cfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ca26545370978cf2b8c210913d8775d02c840e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cf3bfc6b732c56144f49f794b49335b3e474233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d8793acbe1bf71072a0cfb24c0d1f6abf897daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddd163240c21189ed0c89d30f6681142bf05ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6df196928ace3c98b12ff0769b3164753e5099aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e63d9090a8be81324594bcea62952b2e4dd6bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e706eb9cbb20db0db93fcc3b53053b3d10a3ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6effde807888adf2e05709fd62caeff3ead13aa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f322059caf329b598b3c09de27c4f851780b62f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4e8c8832ed1a1e14e030d56c015196a705fbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f7a35aafaab9aa4b524fd85c19e9e38c0baa2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fa86028323ba310fe4488f74085de99ed0264d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fbada9e92d0f00a89b2f9769af36dcfc16543b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fddcab28d0c55219a512e5964dee40ee1fe70de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7002b727ef8f5571cb5f9d70d13dbeeb4dfae9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70728f08e97303d757be4cd97a7d27b65dd41e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70a1151e0bb32484e25c107e3a69886a8361482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f30c5dcec9d6ce637f41f0eb5a8e8733902377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70fc957eb90e37af82acdbd12675699797745f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70fd038b2a72d7712e8e3179f209aa9efc4d3fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x721d37cf37e230e120a09adbbb7aab0cf729aca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x727d9c331e9481167dc61a9289c948da25be825e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x728014ad4820ffbb9f7a73d6cfc4b226c62855b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72de985c5af6f96f3be22784b5533218421e6394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72eeed8043dcce2fe7cdac950d928f80f472ab80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7314adf52ea8a69cf3589177096f698ee862f8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x735a3792ac5655b21c0cae47d1c75184705daa52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7369495d64ec9f8ff107e7857127c340781bb8c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a44027bdaf5d71296d2c73cfb13e561c76a916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a99d5383ab115a24b4e3f6def02f7dd0e57b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73b4f354fd8d37fdb7cf13390d366e959e1e2bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73f3fb86cb579eeea9d482df2e91b6770a42fd6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73fb8d2d96486b6aac8713f0c1cc2633e03a0f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x742cf09d89dd80494cc106ea737163436b0bcb68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7466c91238d6e9c16801b4b885cfc3155af3fce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747459fc40d80a500440f9d650818f7fa5754acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747e819b878956fb6e5eb936a6415a5d037ff388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74de99f325d70143c9b9b5dcba39bfe602c6c4cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752ebeb79963cf0732e9c0fec72a49fd1defaeac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75c8b35e92abca44452d8c8f982a1b539dd19763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7600d5a837bc8acee5c6c5e564e681ddadbe059f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7624c0dd4f5d06d650ddff25ffec45d032501260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x764677ca274c22220d98f86fbc0e150bdb468ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7740792812a00510b50022d84e5c4ac390e01417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x775d6f71ac19fc9b9618ef42808987e4e5475408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x776245a376dd5a043e625ed75af5cc678b3a6841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77ee252fc6fc18ba1321f221a05fdf8b6eaf50d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x781616fb046a4e39c239e39bfeff1a07d4b753f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x783128730280053ef00f675b777288e80565f26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78751b12da02728f467a44eac40f5cbc16bd7934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d584d2d49ec8ce8ea379d69364b700bd35874d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a77231abe02359e0386dfea3b47124e36d44a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a928e2a07e093fb83db52e63dfb93c2f5ff42ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a9efd7f689c9173db9037f44f3933376821de8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ab2a7ed1a0c58dea84de880b4f1710229137211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af331398dc340bf327904077eb68f27f75a9693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b70fca01ab3745e24303b56f72296614768c337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b8c3ee1bafb4af5826d41137cd5caf878083619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7baf5fe88f271966fa58314b75f1887f2ab617f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bfe8d96491f7b1039f14a8e44439e4dc46f9eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0ff11bfbfa3cc2134ce62034329a4505408924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c24be3fc9a03bdaf87ffc15ec7860065b9da06d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c31fdca14368e0da2da7e518687012287bb90b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c4414aa6b0c6cb1bc7e5bfb7433138426ac637a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c868f045a60501a2f4159446545939771dda323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ccaf1e4b3224b9920708e35a0c396497fc08eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cd106d776fb57e382c18018be1e1dbf72ad290e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d20ecb58d9d661aef2bd0ee953d53567e695dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da2ef41913adc5285ffdcfa3622f5f81c946500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7db7a4a50b26602e56536189aa94678c80f8e5b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e5d8e57a5910005fc65f383cb79f581dc8507f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6063f4afcfbe33753d9ae0fb7b880880b17af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6327cce4bbdb936ee744a7bae6c2978b62183f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6c50f75badb725fddaa47c063d8f8407defc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec8e02b74cdd1c1c222dbf3bf47f3256b734099` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379118 | `0x7f82ff050128e29fd89d85d01b93246f744e62a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f9154a1c81cf0739bc2ce402ee444da341d0725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8016e6f35a4b32a5ea4c3919418039c7daffccaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80333bd8791fee04c4c3e1ca8a524cefa7c94737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80466c64868e1ab14a1ddf27a676c3fcbe638fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80a88449635869f61682bda364218fc6a5385a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80af31b494de6e3a5657e5a3abeae59949c7f070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80e3df03000de592344d6197607620d015948f8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81373aad854e31e6da610b2fa5260c6c60db8dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818709b85052ddc521fae9c78737b27316337e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81dbe9ff361c0422b86d929a91b48b79da041a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x826c61c3183b261e4d4a9a28adbc358061ecd207` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8282bd15dca2ea2bdf24163e8f2781b30c43a2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82a5530942263645dd3b8101740c2a0ac30c7919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8301ae4fc9c624d1d396cbdaa1ed877821d7c511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83025859ebd9f5e15465293bde67da69f3959c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x832f436ad2813c76aae756703cacb5c1028d11da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x835c848e0486e44620bf07f06182aaf02a1a6dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x838a31b8735cf36592066a50e2f7579ce52141ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8468b8efe7eea52978ccfe3c0248ca6f6895e166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847ee1227a9900b73aeeb3a47fac92c52fd54ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8484673ca7bff40f82b041916881aea15ee84834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84b2deaf87a398f25ec5833000f72b6a4906b5ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84fdee80f18957a041354e99c7eb407467d94d8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x854b5b0f86bd1b53492736245a728e0a384252a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x856ff1aaff4782eee27d2c6bbad48781f57f88cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85fd0626e2d7f07a2b08718f2ea2e044b1d5f163` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379119 | `0x8667dbebf68b0bfa6db54f550f41be16c4067d60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86c8b56d124c2a8e7ea8a9e6a7f8ed99dde5cca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87d51e4ea403edcc61c9be9893f4ea9447afe6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886b102953ab3eaf719df7b80b03cd5203c201f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88d3112d0fba016aacc7c6d5bf094814c9efc920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89086653f185a0431d24043d92772942c141bab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89a13b0be966e53429372bc47721e336befcf347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ac9a0b48fc66875de710ab7ee53027970064dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89bf671ce19eabc0c9387960198676875f3ab56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89d32bf7b120630b24fe9edc8c7534a73016c999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ea1e4232680a66470a725ffd399082a375d1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a00a03465277d96f4996f397550259ac6d0deae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a5a5de9db5770123ff2145f59e9f20047f0a8ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a5d3958db2c2be9173a180759afc544575b346c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aeb58603efb7a9f63712a2506df01b685ba1c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b220fb7cece2f36c5d7a667c96cd23888567512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b39bbf63b8302ea75a08014b233c72127aad670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b6861d07d3688103d0ad801fabfc4f6bac231de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b8dce09b0deb003573215d5be238534b1cf11bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c81121b15197fa0eeaee1dc75533419dcfd3151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c85dcf93c20d6c166398eb2279a9e4e9f155f02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c9394b4adb97b595ee4895910358d09fe674eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cff70cfbda2ac1b804481b88fa1f13d9e0711f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d76f31e7c3b8f637131df15d9b4a3f8ba93bd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9ad9b82b603fe588ef65203e7a0d2e51ca95f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0a8a5c1e5b3ac0670ea5a613bb15724d51fc37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2c0cbda6ba7b65dbca333798a3949b07638026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f195979f7af6c500b4688e492d07036c730c1b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f300679f893584149af176562abc64f8e3b4476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4cb6a9bc3856264ec5f9680ab1cb5fb81574eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4ef8c623c33cdb6a57c19aecb87e161fa7691f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f68f4810cce3194b6cb6f3d50fa58c2c9bdd1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f889dc453750c91c921bd6fb9a33a8a579b1baa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fb3f730fb2ab4b28e3d39a67e916dc98d59745c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fcd21253aaa7e228531291cc6f644d13b3cf0ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9076091b52efd4b90b7bf9ca57576bddf2e03b5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x913a3a0d83b87497587e66a7f9603ccd998ba572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9164e210d123e6566daf113136a73684c4ab01e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9182a7c9d9858d54816bac7e3c049b26d3fc56bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91d93dbd823221ea9e54fb3e447bd917ce41f2e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931c080c7ed6b3c6988576654e5d56753dc92181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x937c5122d6fbaddbd74a41e73b9db6deb66d515d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93bf70173a53b11aaa06c35847e3feb9d865daf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9438904abc7d8944a6e2a89671fef51c629af351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x944d369522eb919064b52b9665f4151e52b5045a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94bcffc172af69132bbce7df52d567e5ce651dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9509af16566eb4d7401b50250de73d2f6dfb60c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9567341f6c94defc1538a05daaaeb159cf0e9739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9567bc65c9bc403787c5d203807770456096b289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956f650177f95ef142aa2a26da407ad014cf5784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x957e8c5d373303007b409d491a77b45e9199b9bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95cc93b8eb5a2b56932b04da50a9ea43b287663a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ecdc6caaf7e4805fcef2679a92338351d24297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96078f94375a81d28013b414b22683e66020eae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96697656fc6bed7ebdc0310da9308599ce2bbbff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966cbdecefb60a289b0460f7638f4a75f432ca06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x969ce00488720d4907c75da5fd9565b5ac27e8ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96d07ff312c56e08462308bca2f5e505e8111a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96dd27112bdd615c3a2d649fe22d8ee27e448152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9708b5398382ee064a8e718972670351f1c2c860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x972a64d108e250df98dbeac8170678501f5ef181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x979a04fd2f3a6a2b3945a715e24b974323e93567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97ccc1c046d067ab945d3cf3cc6920d3b1e54c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f60ffc47fafbcba3ea364bff2abcbabf85c849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9838eccc42659fa8aa7daf2ad134b53984c9427b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98611b7b723bd4dd759de423e32feb1775f26ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98638facf9a3865cd033f36548713183f6996122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98a7f18d4e56cfe84e3d081b40001b3d5bd3eb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99233be51ac3c0a8611e4bbf8c4bf8e81a914397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x997162cbb767dd83409277bf826d5d92b4e5518b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99a1578d340c2799dceca7d0d83e8d03b9c6eb30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d053a0f4b4100e739c6b42829c7cb59c031d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f8dc2eac0940e609a8dcb9fc905f0158af2288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99fe8557a8f322525262720c52b7d57c56924012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a0f97fac6154d9233a0fdfce4dc27dcb48b95ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a16d98e31b2697847cc812f9dde98b05c9ba541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a7aca7618801ca90f91beaa5a1a2e90a55605ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379121 | `0x9ad7e7b0877582e14c17702eecf49018dd6f2367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bd5b13f51e27b58174968a8983b450a300cda05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be82cddb5c266e010c97e4b1b5b2df53c16384d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2186cabc49782632efd00ba28bdb92086470a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c3bc87693c65e740d8b2d5f0820e04a61d8375b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c85f2faf81e18ebfd9a17510d8bd5fe8ebb16e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c8aefb643e538043fe624ff6c2a7c803651292d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ce83d1fd9bb82540fcb48f69870d7153e71533c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6f65f2ffe08158a00793bf62c62b43629117b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9db5a6bd77572748e541a0cf42f787f5fe03049e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dfbf2b2af574ca8ba6dd3fd397287944269f720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e0c5ee5e4b187cf18b23745fcf2b6ae66a9b52f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e291bfbb158ffaaf1c3a8ccd694be0d49d6aada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f0f9729c84ee22e5639d0aa43a94d619570dbd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f22c9f070204b6d5919edc7d4e14e6b0b62c4ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fb97f41aea0b974b30d9db14985843f2bac099b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fc29bd6b61b6d050c7bcde830f2d70c3f0b4ad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fd4bf528563f0535fa84c93200e105612b39bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ff8b75575a244c05697ff74818d202265088bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa09735efbcff6e76e6efff82a9ad996a85cd0725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0aed4ef3c5f3d656bd4cd42e7a018da32f2bb6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa128145d1bdb8ba983f65605e503f30aceaaf1da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1461486c5b4195f5fbc67a0840b16f5b4362075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa14ea0e11121e6e951e87c66afe460a00bcd6a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1f71ed24aba6c8da8ca8c046bbc9804625d88fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b71ee64e910741f5cf480b19e8e402de4d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2ec6b2d7e769fd67ac68457c2c1943981512cdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa306796036737d6c2a3f50d3edb9b8d456511db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa30be796fb2babf9228359e86a041c14e29f86fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a3741c48298e21eebe5a59beaf6f89dc0e0c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3b9ac3935de2ae52894189bad657e1f7e459dd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3bbadbb8765a51851031f0a91b26ed05fe88468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa402f9e5015be2de7aed695e47f2729246cc9434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa409a39df0191943ac4263d26bd67ef6d2584d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa48d5e8efcdfbcaa9ba8b8fbdf7954a9a2859e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4b662ee32bf65e839ae27cf9f5550354ffe41ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa504742cefe2f9027328b49c7cffec3d79b5ab1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa55caa40b32a02becfad1d0d29c4f1cf38c4c743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa575b3a6d88e9c1b5196cb7e2a14962a5c533559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6b353b2d590d3c0cbcb85c6ef02ef9c1da2aa59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6c89a31d59f9c68d9cba28d690c5e52058fb472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa74cab633214c16808eb0b6f499c98036b227b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7780086ab732c110e9e71950b9fb3cb2ea50d89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7988bc7fc7eb3f49cea6059cd4da7212cc126df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7e98815c0193e01165720c3abea43b885ae67fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85461afc2deec01bda23b5cd267d51f765fba10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c7b9c4f18b227abc4b099ba92d6a1cfeb9649c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8da4580dc0f1bb5b6761677184b58e611736cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91cf5b36a691bda39640156b081cb71c3e9992e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa92ec1ddb97de7b58714324cf8d5c3427522a70a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9b29062abf9bfa213c63440955f5de091ad541f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9b68053c86a96185511467684e8780b2862d74a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0850ddf8ab99286a473a7d2a96e07cefa89034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa25a6fa9e4dadae0d3ee59bea19fbcf0284830c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa346781ddd7009caa644a4980f044c50cd2ae22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabcb303c32cefcc5cff1bb7f17aebd1993b3abd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac288da6a8c5b6406562c27d54ba22666fe3adca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8a4d55c1d6ea3f84a6c868f2b5a5ec3cef2800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacdf8fddc5031b11ecd2ecc46898e059989a8cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad0853408773d2f376d24f9cdadac402b6646687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad19c0506f5277bbf92d8dfde1a51a15aed42606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad6cc71ef6ba82ffad9adf40220d035669eacb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcfcf9894335dc340f6cd182afa45999f45fc44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae14b769eac8ddb3caa79bd3d7c21d2986327bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae2ebae0a2bc9a44bdaa8028909abaccd336b8f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaee70429bdfbf599a979f50d5fde5eb0d317e0f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaefb1325a2c1756bc3fcc516d6c2cf947d225358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaeff59c091ac5db820b20f7a4447036d2ba77f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf141907c3185bee2d451b5a72b89232b0340652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0217f23552b6f3057a451b4c24ee838387d2b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08afcf83ed084dd7e4df0d83f4f4a2be9109944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08eb288c57a37bc82238168ad96e15975602cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0aa1f98523ec15932dd5faac5d86e57115571c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0d97bc540f81c21c70d1eccf197d4f40a86d83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0ec6865ebda158aeae85461257e8654f9040d36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb13d293b72e84df89881f6d8bcfcef8568fbcee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb19059ebb43466c323583928285a49f558e572fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2565976b82e17e47457b0ad350126cd23be3071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb299bcdf056d17bd1a46185eca8bce458b00dc4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb311acd3eba1acfa29957cad50746738d52070dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb31b1ab117cb61ad4cdcea5013dbd687ab0b6866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb39ca0261a1b2986a6a9fe38d344b56374963de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3cbb93eb1c0ed51804f4a797397d09859085bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb40432243e4f317ce287398e72ab8f0312fc2fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4226b21900513674cfb0263e7930f969e12efff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5031e764d502c041b2fd3f52e0ad57e4fdea017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb51be9eea9cbeefe2fe7ac2161ace58444c294e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa4c4752321b3154f08dfbdfcf34847f2eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb576491f1e6e5e62f1d8f26062ee822b40b0e0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57a959cdb3d5e460f9a7cc48ed05ec29dff049a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a2492926815116b69fdb21a471a60ce79148db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a8f07dd4c3d315869405d702ee8f6ea695e8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5cebedbb601666e54d214e4aacb35d1dbb5d459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61009896eb35d81d02f15b2a1380252d2141725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6297d8bcd05ed8308ef7d0b08aefec86856b1f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb692e908d11a3048afdf68fa89550c2d638d046d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6c1121ddc8adcf7002b0c9a33b01ec029b802cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb701a741a0f1e75841e9c76a6dd3aa3c386cb97f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb73d51af8fc15423664f7ecd759179ad4e6a26ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8687d7dc9d8fa32fabde63e19b2dbc9bb8b2138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a3f8e783d52cfb9e632276714234661db698e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb911d7e59ba82fdf477a2ab22ff25125072c9282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb924982a41aa35f4eb1301833cbe4e1a9b6124e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb93450f818ae2ce89bc5d660049753883acbb883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb960c386eca71d28c95cb064d2f4720fbad1f8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb988641e8d493b5bff65e63819975b6b33477057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9b541691ad966c85f0a152dfafa1901e1831001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9c8d0a004772000ee199c4348f1933acbfdc1bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f861b7755ff09cfd65cfe262d19823607b1f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba625b318483516f7483dd2c4706ac92d44dbb2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba6f9a90ccd403b815ead85b03e5a93286c66b3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbac8459641f765b26e8984f29082629359f084c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae90b9c5daf4122ea5ed51492d0a86638f8fcf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb3fda661149f6e45d829d5dd54a1608577c5fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb9fd2de55943c88ec2238fb36a345e3f612284f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc1707d16541108b7035e52e1daeb27ca4b6b79f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc48967c34d129a2ef25dd4dc693cc7364d02eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4c5585cb34739dac215076b79ac5c0e4bf24dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4d0f452b347cf25ee84509ed99bd478ac96b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6977251621591fd3e8222cc89081841510b547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7507bea8d7bcb49f511cf59651b5114e6e7667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcda2acfe820c92b8e0b389733aaaae4f930a9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdb57b49ccff778566318a7631448286640f0275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdbc6d788d8090d3b72c6d5a1f763d5b56eeb907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe0dace8d62a14d2d872b20462b4725cc50a1ff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe3e788bd11ab3070b5264aeed25c1976ab6ac00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe83fd842db4937c0c3d15b2aba6af7e854f8dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbed6e1ff4363730a56dfdcd6689e5d958085299d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf7e5212ef42bd33bc1839e135f6f2725816eded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf875f2c6e4cc1688dfe4ecf79583193b6089972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfcf63294ad7105dea65aa58f8ae5be2d9d0952a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfdc7d97559173b52ef2a2f1bc9becf97b0d401d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc00978c2bfc2c0ac159367080992b287c075164b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc014f34d5ba10b6799d76b0f5acdeee577805085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0490b219a85f71c3bbae580099bd695edadae37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0534d886b6f6b1a82633c0dc7177141cff70060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc05b41ef0567c7644d1c40fecb951100a30814e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc07c0f6ffa78ddad677a22697c083892209bb83b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08550a4cc5333f40e593ecc4c4724808085d304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0bd9eb88840ee181c5cadf0a2914d41a403007a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc177760cfb98b021338c09afa728882d8c1acbea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1793a29609ffff81f10139fa0a7a444c9e106ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1db00a8e5ef7bfa476395cdbcc98235477cde4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc226dfc347abd8bef6efbbf67b58589333a004a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc238a4daaf9bdc351b48b894f8dafa72e3e029c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc278041fdd8249fe4c1aad1193876857eea3d68c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc288ff06233ad1ff70dc50d85c6019de0ba4e8b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2ff102e62027de1205a7edd4c8a8f58c1e5e3e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc35d078092872ec1f2ae82bcd6f0b6b89f0850de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3c9b18efaf05ad94ec1867a677cd8b1eaf50086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3d127c37957492955c11e15ccf1d2f20010230f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ef7ed4f97450ae8da2473068375788bdeb5c5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc455e6c7936c2382f04306d329abc5d36444d3f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379123 | `0xc48b15492a4c4f48808576f6fcbc6dea9388e942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ad29ba4b3c580e6d59105fff484999997675ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ef781fc7fea83f84d2408cb2a5f6bbf3123a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54106a999bede585c9574f2e4cb31df46cbdd83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5b580114c19e1490cf4573c59db6a2fb2f402bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5fa220347375ac4f91f9e4a4aab362f22801504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67a44d958eef0ff316c3a7c9e14fb96f6dedaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc684432fd6322c6d58b6bc5d28b18569aa0ad0a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc74d886ebaa5674e21a1cb0be3997bddce6ad525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc779ec03d2e6a31e309d27cdc0e000b4692eed18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7bab672806932fcaf918b4318796b02b0832856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7dff3d0dfd96dfb6b6db7a6f4151fe4fd028586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7f1b9c72b8230e470420a4b69af7c50781a3f44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc81733a204cf40ca240d81c12b60d7dc33b2d92d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc839540ae03d1c1ea2f44f271d3a7f8e60fa9a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8e2fad99061407e947485c846bd05eae9de1991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8e6ca6e96a326dc448307a5fde90a0b21fd7f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332fdcb1c491dcc683bae86fe3cb70360738bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95bd7460ece4007973458d1c0f8ccc46c1880df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9f019fa138ba4fac3b4e400705fbdd75b20af8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca3d75ac011bf5ad07a98d02f18225f9bd9a6bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca637b4ebf69946a2683f7a3d1804528b2c0e9bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb08717451aae9ef950a2524e33b6dcaba60147b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb08c549eb76898f01d89e992ff5efa6b60c523b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb2bd49d4b7874e6597dedfaa3e7b4e01831c5af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb70bbaec89b577617f835e7a2e126da9e5acf21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8a15af05102713d4e9628f20824111f9331b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbed5bc7da17510557cf12f44eb02ad0dc438810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbed82324afcc67e77e9ce9a23d85d49d65cfe90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc6ba0fa7671675c5e94fcb34ee233b9ff58e8a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccbcf64863c54980f4242d634bc93182e2741802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccebbf77c3eeb298113392363e0c9863b37111b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb55051fc792303ddc7c1052cc5161baed88e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdd7db5c25f0de4e3194f56456d504a03676a8c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcddb1bceb7a1979c6caa0229820707429dd3ec6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce87c44e1174a5c9c543beb83fe198f3fac20910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcec176d1e9b89e36b22031592cb431ab1c8846a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ea643d3ee6042a743f1ab012d55863805876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf66438d3b880f8f80b071f228fff7bcdd38bb90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf93471a82241c2be469d83d960932721b098ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf96f4b91c6d424fb34aa9a33855b5c8ed1fe66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfaa789af38ff91eb0124cd27b3d53094177cc48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb3cfeae8c3f39aecdf7ec275a00d29eca08535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd04843ac2ae7cfb7fe9ff6ff43c808af7a030527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c71ecd0787bb792e2bb8eeef030a66467bba1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0dbcd556ca22d3f3c142e9a3220053fd7a247bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0e6bc02657451fe16cddd7cab8cd55e39d25d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd10d54830714003575d9f472d62268a29c902e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd17761d118eb7077a4995beec6b71a184fae04c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1cdefdbf64910b53cd27d990a4ca049c1c10e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2179a3754b96f1cf19f07242d1107d2f68f01e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd223bbdd0421e394c0df9dffe568f1dadffd6f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd29c4cba2422476295ece570508c825145e792a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2e25a16b5006dc5faf4c116b65b571f690615b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2f45883627f26ec34825486ca4c25235a0da0c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd302484dc0fb3d50f60e1a2a82c882174abc6ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd30747a6e2100e45434b628fb891c3d94a591506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd34f3e52c429d0358f28a66ac01889172b493eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3af1317450d291c328525a8eb183d5cca45553d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e576b5dcde3580420a5ef78f3639ba9cd1b967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd408ee2366b4d8b8eac50a41a05c5dbc1ce9fb50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd446a98f88e1d053d1f64986e3ed083bb1ab7e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd47b96fb33b79a4dd81a2bfa676ebb669166f619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd48237a468c66604f64a75dd3511bc443a078e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd49d6beee20f87ee28f00f9376ec962aab9aeae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4d7e65a66850a19680802096896a31866131a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd51a44d3fae010294c616388b506acda1bfaae46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6282c5aeaad4d776b932451c44b8eb453e44244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6953e2c5546860a244aacb0e5af67a16d3725de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6ab3b405f1c6fe015e35258f7d77456b5ccd0dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6c6bbf683bb46e96272c4a4ed1905ffdf3942b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6c6f31091bf6e4a6a48c91cfa4c341f1bab44ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6dabbc2b275114a2366555d6c481ef08fdc2556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6f279b7ccbcd70f8be439d25b9df93aeb60ec55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd79964c70cb06224fda4c48387b53e9819bcb71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7c1b48877a7dfa7d51cf1144c89c0a3f134f935` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd838bf7fb3b420ac93a7d9f5b40230f78b33536f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8885c65203036faa16a9edaef4897db313f2819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8a70d0506ee5825befce5de099893f0fdadcf98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f49c747aed8d394f6f1841546e2b83e09a357d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd94736dcfa7a020a962994a1ee77382bc1613326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e551a6fc76de1dd46c53d641c29e45657118db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb1b149177b5819cf467ad6519cf55416789300a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb5cf43033d993ba52cee0a4a9507803f1d57a89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb6f646a4d05e74bbb7b8ae379b6e1f0010ba595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb7306ddba67dd9d5af08204e314f4de6c29e20d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb90ae28a02b6cb1772192f88fdac5516e094459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc7777c771a6e4b3a82830781bdde4dbc78f320e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc892358d55d5ae1ec47a531130d62151eba36e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc8cc3e7c8a1ec6e1c1ad009c803f5ce911db4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce26b2c78609b983cf91cccd43e238353653b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce86b74a648b6bbade63364ad0ea7f27ce20338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd05247d34d85bcc145c74e2f1d070352fef83f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd596250f838af8862d30e9c78a143356894a18d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd6df112374700394616c1289a27836fe05129b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde91f78ae8cc68f6f299986a4a175c3bb962575a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeae64b9c3df75f12f946b0d2d8a58f7cd54ee25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdede1cce94cdaa3ce358e561895775db369b72e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdee2233543d1f29619f949b111c9988089337fee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf41e21dae8bf6ae3eddb83337f8364eb7fc1659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfbff9319366d8d048b8adbfe624401b50e68ea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfd98f2fab869b18ad4322b2c7b1227c576402c6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379126 | `0xe02f8e39b8cfa7d3b62307e46077669010883459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe05f146b17ccc77f6c9224a613bb156d65da43e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0aad3754e423ae4bb3dd3912af4bc57fd66c604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0bfd08da4daf8f8ba11d1c3802009e75f963497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0c4a2b14f0acd936226a598be6bfed190e098d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe160b8450b84887c295e18657c85842bdeca71fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe250b65b6fa2a61fb99f7c41c1c615b0ed3321f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2bcf83a760dbe50ab4732c7dbb337f225062707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2ee519399a49f1a2004a25da61e82867a69b9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe38daa41be7ca22f724b9cf6d13cd920bf18a3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3d2f165ae2143ad13e1674ca50865b1304539c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3e3fb7e9f48d26817b7210c9bd6b22744790415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ee57d3fbdbae9b506a92da79ca8454ac288e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55be4c8f2d3c11536f61c8977dac4ad58446059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a3ce0ba4e656f68bb6fc32509565e7564d3b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5afcf332a5457e8fafcd668bce3df953762dfe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5cb51e2d6682ff6b4d0b37cea7e66227dd15c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6ff21224b386ae7eb162bbf973e1dfb471a6ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe782adaa40f2148ccd0e181ce090e44900e392ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe79e177d2a5c7085027d7c64c8f271c81430fc9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cd2b4eb1d98cd6a4a48b6071d46401ac7dc5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84f5b1582ba325fdf9ce6b0c1f087ccfc924e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84fa0fd833d6a7954a5bc6298986f5ef264c1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe85f72cb10eb9406d3857397e194168e43de534d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe892846fe41a3a8b61d1b071886f6e9ac2ee75e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8981aa72d495aa71681c41159c1ec8746ee3fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b2989276e2ca8fdea2268e3551b2b4b2418950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8cc6cfa4d8610a86fa988e11e38ca385a93aecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe911fa14a49ac37e79ae8a60bd22a5f6a78c85a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe925021a3aba8059119a5a9c287065b9e932d130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe969bd6c4a9708f7536f47a2a73bb84ab3eff6fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe96a9bdb549f4cc4ee8deb7085bd6ffe4b273b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9b123bf0941817e4437595738d3cd59a9802c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9b1391334b2727ff23206255873d8a7c4c403cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9d52a6f8d68ae9e64a6b4b1c40190e95663364c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9dac26794c857982455bc7e69f22573b0e9e492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9eccadeb31299cd9edb18959b5b6f4e034b5649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea091ed7146e2c3cf3ac11fa296e206e55177b30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea6876dde9e3467564acbee1ed5bac88783205e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4480152bef93fa7bd01a7f427f1dd3069fc4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb7547a8a734b6fddbb8ce0c314a9e6485100a3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec470753b56ced3784ce29db7c297f0c1b75fc87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec5ee33a64c10556b3bf20192680c1b92d14d8fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379127 | `0xec876edc3f1a24c99d7c56f017e1d51581952f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec9482040e6483b7459cc0db05d51dfa3d3068e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecb20a3d711a6705e5785a885e77572d5c2d6c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2c6126b6e68396191f0603f0d1dccf987d9322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed4064f376cb8d68f770fb1ff088a3d0f3ff5c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed4c67ba05c0f30a437e94b7ed03efb79a363158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed4fa9580053bbfd62c3b03cc29a939f44698617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeda9f23294473d69f0943744925a8be9c1fc354f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee4043b3e4fdf830a557aa78604e16a599701dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee5c50c7c49dec47dde2f9b0233b9e14a8f00cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee5ec95ce2c8700a2d152db3249fa13b163f0073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee671e6d7aaf2bb374d5f98c40777a0824021a78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee76293d97f0613849603090cc75aa97e3cf5e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeeff294ebef4ad9be8af2391d66ee716c39e32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef1385d2b5dc6d14d5fecb86d53cdbefeca20fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef6aebf34221bf4ee5faa2ad039b9f4d49b28105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef8d9df3b1bc40bae634f75a5ab144e82ad7128e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02faf7cfee786111eae6747a0c344b48c1ed5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf06dc60e2f7ace741620c11963f470318c34ba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07c97c7437c863932bfa362731d9b0f7420c719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0db13c967570e0db9b13a44d9782308b72c4411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf113929f69fabe165a2280cac00c5f77196aa34c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf11efcee32ed8b5f28260724a9952d9803bd0a0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf16373cc9c00f7332e225eced2569c286a95b0db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18056bbd320e96a48e3fbf8bc061322531aac99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1d3ff8511453cf00fee1d8dfdb844707c799db9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf241a0151841ae2e6ea750d50c5794b5edc31d99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2bbedf416a388b051938f8d526336f6e043cf72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf313a91af8930ae7fe3e6f8ba7ce62024928ee77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf34842d05a1c888ca02769a633df37177415c2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3622252b41b444bd34a7824656f0e9f729b5aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3d8671e662c000ad03d860398932f0644611bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf424b10e1e9691ae5fb530fe4c3e6b9971013d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf468ae21accb0e44172ac453f0dde1a96f88cb58` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379128 | `0xf48aa76b4f2cd71682c05afbccf1ccb444cdd9c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf52834404a51f5af1cdbeedaa95b60c8b2187ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf52cdcd458bf455aed77751743180ec4a595fd3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53686cb7fc4474c77643e45c94c6dc76294d46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf55f3366db9a75a1e3efc28f1241415c633a61ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cbebbd549273af82b42cd0230de9ea6efef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf58c9e2eca285bd84690126bb7cee5bee4f45820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5d90e680ede7719850bcd7975922bd3095c2f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5e9eb18b3ecdfda07ea55133f427d47add6884f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6223c567f21e33e859ed7a045773526e9e3c2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf66b8c3d9933a8f9362b4d30f2b918cc97e5a31e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6954b03d6a94ba9e8c80cbe5824f22a401ee5d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6abb2d18ac5428be3eb8971716f554427eb2a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6e5e4810471a11d83bd75aefd3522d641681936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf70e982682326ab6641d32058526b1b61aae8754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71040d20cc3ffbb28c1abcef46134c7936624e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf81b88fdd604a0ad12292c0acca11d02c2669997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf939e0a03fb07f59a73314e73794be0e57ac1b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9e2ae779a7d25cde46fccc41a27b8a4381d4e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3afc9a194babd56e743fa3b7aa2ccbed3eaaad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3e2db8eb6c646e0d24046c1a185934d41a8f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaf843f864dda372be21b28b03dc0a339af090ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb230bc3de97ee43d2501bcaab9a50bba9b69e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb48aaf5c2d5f1722c6a7910115811e7c094c9b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb77ee48b6a69b4c97af7474b4f175591aeb61b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbc535a19974025820db395238bbea4caa0125b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbef0cb133e2921aad88bbd993990834ca33bda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc21c913acddb38b742e7e4ad29beef01b013381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc780e0e273098e6efdad6f30caa48ffc659cd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc86f82bdd8ad4e1b79e48d570a04e3f2f208c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfca6b0573034baaca576ea2ef675032fb8df6cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcbd5b780109f030b71286ab59f187e4287aa358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe91b8a83d6d7f8bf9b0cf3cbc6eb9687ee17e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff051db87adfb0be398016ee5c68280ad49f1fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff31c69a983bac080f23f21be965650758d19d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff35f8a1202e58039c7ccb50bfa75b8254f0e821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff3bd4bfa3b6c5955ed477f14975c9bfea2b5488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff9338dae3d2335172156467c5440da4db05ae52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff9b258a58fe94294bba1c55d927cb77cb938a15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x031073114258d56a3613368e82566899a8073f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0331814f183d6a782e93e46810e76b5d21294b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x05e532c94cc6210d66b3fb0683d58943735ad243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x066c98e48238e8d77006a5fa14ec3b080fd2848d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06f98cb1090afb2a923f21ab37ca9e1a7cf8532b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0750b6fdada48057dbc7103e1e9286f00f997d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0c791a2377981149ece2596e73b173164dd19c27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d710512e100c171139d2cf5708f22c680eccf52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1033dd8415a282db52f14902e91de6e91868ac6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x168901193a72e82c00110c799c9c22f3ae6fd311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17063ad4e83b0aba4ca0f3fc3a9794e807a00ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c327ecfe87ab0428d74720ee1f33238c10b5834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1e9a8a4fbf43d9e73ac2106acd1c32c4976ec978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x22c7e5ce392bc951f63b68a8020b121a8e1c0fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x236ed9cce4c2423572b9453da3abb5b72e2eb91b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x24149e2d0d3f79ebb7fc464b09e3628de395b39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2778d99a0897a8a43d8d0f30f9f61bfec1b0a7ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-379130 | `0x2859a4ebcb58c8dd5cac1419c4f63a071b642b20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x285cb1faca9184132c7ee99964a15549e6cc9c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x28c5d220278429eaf720a4b51d4b9141599039ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2ac724460d3dc68881a5b136f368219f5ed2c1cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b1d11f82fc70e2693ab19c4c3da23da75ae2597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2ba86032e601e001aeb0069efff824bcf699ffc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30f433dc05eb80ae3ff678102de12a5758ee2f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30fe862f1d4c2c7e1b006d9325256130fbb55e46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x32cb367378d0b1ddbc81f259a8445bb88ddd9a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x37ff10390f22fabdc2137e428a6e6965960d60b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b8075483e51ab78d81caa5300f7f20a5386d04c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3d53aa9e22dc0fe145bf1ea13ee8585cb4e998dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3d943ced08b53546254bc751a6931401328cb8a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3dc9fa7759ca2769982bf7ebd36362e52d54f3bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3f6fb832279ac7db0b4f92b79cbb8df03702631e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3fb2ef203a051a5bf190ffbb2fa510e78a5bb103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x41a65aae5d1c8437288d5a29b4d049897572758e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x42dc54fb50db556fa6ffba765f1141536d4830ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4804357ace69330524ceb18f2a647c3c162e1f95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x493f11252dd0eac438c512c801f331fda42c9402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4b245547590d2274bb3ffb67ce448369167b353d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4b3ee1628f0d5e19337b104fb7d776c5ce5238cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4c988e12c38fea0a4018605aaa5349d3495ef341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4e0e206a3e10ca372ab7afae840993ec02d6c815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4fa745fccc04555f2afa8874cd23961636cdf982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x52b88b300a8dd0808e53203eb499cfca051a8253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x53d6ea4775e08232a2c88d2f103cb124089eebbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5479de16d06526e6792a722242f2bcb589c49582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x58333b7d0644b52e0e56cc3803ca94af9e0b52c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5b22bd2fc485afe2deaf1ac9e2fad316dde163b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5b89789fb230d17c4b0ae1461f26828554f81e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c8e22bbc48997e59bc83dce9a9356f60bbaf2d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5da3ea9167e159de0d3003c21c86db1334c3f5c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5e9ab86e99caee6df6578e0fbbd4a915a4a294bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5f2f6721ca0c5ac522bc875fa3f09bf693dcfa1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x60cf091cd3f50420d50fd7f707414d0df4751c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x615d8b6565d92083ea3ba72639ba025bcb2cb09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64dd805aa894dc001f8505e000c7535179d96c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x656ae279bcfac02d8e5a51306b72090b3aeeec6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x68d483b75ffbb7fff96385f9a9fa23a7d6d5deb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6a7f6887159c16cba4be347894d0b6e907e65efc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b38c561366a939ea8711a7311c8e5aab0a71df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6baa135acd661b93401c726f4c9fd2cc0be374ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6cd24ac05103c2c911347a6d3628d64a9f07eaf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6ee38828bdabfed9ddf16c5819446774354c5634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7097aab446f0cb33381410004f80b90d87e1cc63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7320bd5fa56f8a7ea959a425f0c0b8cac56f741e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x770f7cdfae5ecaa3a0538da7cb1d6c8f22252fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7955519e14fdf498e28831f4cc06af4b8e3086a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ab641e661a9728913a44e06f6a4879481142ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7d69692389cda1ed99fd04d3081d7ac9368d6778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f27082eabdddc9dc3cc6632c9f594d210b9d43c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x846e822e9a00669dcc647079d7d625d2cd25a951` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8d5d5bfd51df03a8f65ae20cdcff20cd9db8346d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e10362334a4549640481d330a0020238b37ad10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9117ecd2da25fe1c62c989ed7dc3353a89389b6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9131de066606dc91a26ae019c8b41760b2370f41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x92e17fd2da50775fbd423702e4717ccd7fb2a6bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x938ed674a5580c9217612de99da8b5d476dcf13f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x93d9e5f11182e6025a839af2b792e2200d3b7469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x94b488c9f36b8430180e7375eec67db757bfddf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x95700bab9723cfb338b8f8316ff889bc36fa943f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x958e575d01f84211b63315395b16555602ac4d46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x97b6897aad7aba3861c04c0e6388fc02af1f227f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9c215206da4bf108ae5aeef9da7cad3352a36dad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9eff321ddf8ab509c8c65f7e57289258e9c169b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9f543b3f1eb37b2540749df537e83d29309ecc02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa014a485d64efb236423004ab1a99c0aaa97a549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa61beb4a3d02decb01039e378237032b351125b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa714aa2c155edb64dad72cd568a43784137a24d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa84ea94aa705f7d009cddf2a60f65c0d446b748e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xad23cfb8b5d2a662f2acafdcbbfcd0795e60b04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xafdf91f120dec93c65fd63dbd5ec372e5dca5f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb112e4cc83f0df154fe3fb088109be2ac5bfb110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb19bd9fc8fa8f00599a04115193b915e1929bc5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb2378660daebb9ba6c1ce2a38d3ee1d6a6e4dc14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb4bf17210844418f9f2d3b90036e11aa40517971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb68d9ad0a7f2e870fc19c71a4fde4146dab00368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb740075761914fd8c4e43dfd5d85a2e5558c8a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb78ecddbb770fa270f3869777c82e81e05c18a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb82d03271f4bae1f931123a7c27818bde59e4b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbbbd75383f6a61d5eb5b43e94e6372df6f7f13c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbe4db588a6d60b29acd6b9da5c8502bff8da2d67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc0a2b72f912af5a0831b8acf87b69ed7070e021c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc1626da69573ad647b66a7bd94a65c336f632751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2c7a0d9a9e0467090281c3a4f28d40504d08fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc5ba10b609e8500c04884e1bcfc935b2c22654cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc5be2c918eb04b091962fdf095a217a55cfa42c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc793f56f74b0e3e78fb3a6d55b75e2ca636e5340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc7faa06d1d6c0205133635b0dd4961028fe2418c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xce3c96fa5cc543936a7f1f8e405516ca2159f0c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xce81ce09f495204ad72bdd08cc555afa221aeec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcf6cf33e5cbd20548e8fc4f2c75bb0d9f336b45b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcfdae153097b3ad134595e70fd128a2f5f8fb023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd14451e0fa44b18f08aeb1e4a4d092b823caca68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd1974664d191a9ca1cfcf483066f9e2b942d5ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd257c933b2e55ddd796fbe3e29260c952e1763e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd278d822a040457324043619e962a5b093ba1d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd50c9ec0cb2bc848fa3df8205e6d093e68e041c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdb0c52f1f3892e179a69b19aa25da2aece5006ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe2cfad8763bf901cc05e9f498b7813ff2054e1fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe324d92516be618afd776c8c87386196e76d50ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe39ccd6ce1af169f9e4311cfe7788f152d9370a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3b81318b1b6776f0877c3770afddff97b9f5fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3c5e29ea198e617ebc707718707beff9393fa51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe7de932d50efc9ea0a7a409fc015b4f71443528e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe8ff1489227fa74f77e49c688903e69e1583c03f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-379142 | `0xe9f183fc656656f1f17af1f2b0df79b8ff9ad8ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xec4b282dc8b1732890338785fb75bcfab9838f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xedb12d0b9e4ee75b2bc28d86bc291e7810de0299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf6cba3c440eb70489d4fa0bd9dcf0cdf799f9f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfa2ecffc6dc11e1e6466bda293ff4a5f6d5a6dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfa5ed56a203466cbbc2430a43c66b9d8723528e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfb16d8e96c0c6e9b72541bfd8d4c3d9e867c990b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfc48e39fed51f2937c8ce7ee95ed9181c2790ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfc69af1700e35ac67807652fb1957239805ee772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfc9a6ce944f14517447bcccd89cdba33e4b43435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61fd1a75ca73fd43408085aab97e75d5a586bfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x152773abbfb66eded0c3c2b9a5e021a62dc9c61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1e6aa5a1577e3668a78f3bcfd840e503b3b10f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3076f77962fbda30a85641590468314dea3e298f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e66516437b858207d6ad2cc7f0a7eaf81194748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6828a57a9cef9480c13cd669865b2f97820ddef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x81ac0f2e39088c73dce9b354fdc6c302e9f2836d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x882dd02d7f2f06b7e968ecb97b1b62bf51b3af4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8a7a498782db973f8ba322b9f4bafcb0db21adb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9c98a5af0ef9f200bd58eae79b94ff5acf6a752b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc3963e5549fcb36c7053b600f51622fbc8b94e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc8c22f59a931768fae6b12708f450b4fab6dd6fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xce3fd179eaa09bbd60eaea70d8b1c81b304c91e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf868da244c17cf0e288ae4a92c8636f072a7bae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfc48e39fed51f2937c8ce7ee95ed9181c2790ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfd0a40d9fa2cd02ee0fe0600d68de808aac7f4aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfd89b096320826f9de878a8c85ae01ea5525f680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfe0e499fbb529214ce9744a66fce8b05413abb18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0050038959659c1e09d5e7f0543b5cf411a942b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00e0f3d12a38b6284c02ccf9efbfaf4f61905958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05e08e1bf31c1882822cc48d7d51d6fe49bca9c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x060246ed061999f7e128fd8355d84467d6726b71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0850bc07f8aead6bbc1f1ccb5506b6d5f78be74d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d17b69ff7d30f7ec13a9447d1e5624b601a730b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11d88e1e4cfb28fb37fede38956f0fe7b475eae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1305d45d583378d38fa614bbd9b45d6a0704690d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1438f778dd1a1cbbec13af703faf3ff245d6c272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x151b4aa3a1f553f8c4ac1463fee41fdfa319ed35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x158b2be4f4ec463ca98400aa52362bdeaab9ce48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x180c4e3a82f81bc8d2d99fb51b8771946eedf6e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18471f8629c5f284256a4eb0dff901e3f4987223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bd5bd77ca0829c4ea7a716c2414265f2230ae84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20b63ccfdb926904c2cfa8c9424b28c4bfd8fb36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21ee82653b8cafa1eaf6e54080d93150f32ad176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2226424fa0360816349c3c5b17d40cf36eca1c3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x237b353338d81942fffaf9e133d39620f805ccbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26c67a7493ae48722aef0bb96e00c0580cf29320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2aaae852a35332bba4abad69bbf9b256b683624c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ac724460d3dc68881a5b136f368219f5ed2c1cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379151 | `0x2f2e0ba9746aae15888cf234c4eb5b301710927e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37ad97c08e3ce8184ad30911bfb0bcee443d5120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ec81cebc9b5ec70852279e195b21bf0ad89b8fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4072ca957c9327a41bab53fee1a7f26c8579597d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x41180273e5d6f0fbf812d9d675ed7956f0d39f8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42dc54fb50db556fa6ffba765f1141536d4830ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44c51421f1bf6f555fb2ddc95cacff8c9fd51df2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4924e9740d317c58edce2f02b4ef747bc9046ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x499c86959a330eb860fdfff6e87896d4298a4f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ce0a4a86a18fa864284ad385a7cda7444875feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4d55341747841bbc0148512e85b259b2b6975fde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e4c68b5de42afe4fdcefe4e2f9da684822cba18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50f5b0207e899adf0d7244c4da4eb1b023883d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x566ec28dd2af956937bf9b7a6969fb6098cd1769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x56de2ee55a0915d81724d07d8e5c86fde34506f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5718bd86b5f53996c00698f4fba79a5facaffb2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57ef4e590a0eba16a5893443c5b1f6fb9ed7e341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x58f3684712e776980000ef1c6a79ba5ca0518373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a49c920f051438be228d3b1fc824e58d842f00a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a4ab9c1b391f1981a8481e40c983deafab71e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5bc6bef80da563ebf6df6d6913513fa9a7ec89be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cf2435e2c9b83200c409936d456a330b51c5ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d6b87d0173a326ca80452e3c80a2281939d4814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x60157fc156063f73f4327cb78cd3e0a9de5948ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x61fd1a75ca73fd43408085aab97e75d5a586bfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x658286fc9605f6ff4d0311d0b58670e26ecb27e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x65a1dfb54cdec9011688b1818a27a8c687e6b1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x69a942b80a62fb84c0efe917dd33e8e8c462ac67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d92ac3091f99c032b5c7e33ac846db783cf909c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f2c6d2f10aa87dc24276ffd05d53267c88bae14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x721df667d018742a6efa624f6c405284232fbc27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7660b2b53f6e9ecebebfade61fdeb1f3703caa24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x79024fe05d29193d302a10fe1de463e662248e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83a2b2bd1b8f17032e46d5a88ee8945bef911f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x844ae504c157a28fbb23af79bf637691f998cf2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x84d68b9fd19750e7229eb3020d7868419346d327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x84fb94595f9aef81147cd4070a1564128a84bb7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x862f596e76a549363ffba54b4be296988cbdc763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87c88923c7149bae28e6e5ce11b968183707657f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8928d0c942ca48ea86f458857de61b92d6f5a564` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-379155 | `0x892bf71463bd9fa57f3c2266ab74dbe1b96decea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x907fb3fbb2554389bf01e2e0126a610146c1078b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9192caa489299507085391896076f484ad595e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9418d0aa02fce40804abf77bb81a1ccbeb91eafc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x963ed728b10ddeefcf071616089ba86dbf19bc60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9819138a8508397197d8817f542417305bfd96f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9de6efe3454f8eff8c8c8d1314cd019af2432e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa014ef0565c22c33e8099744e1e1543f736b01d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa124ef5d320261f50e2381ffc71430dfa04535da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa17baa1cbeb9451b91f4491f3c5fa1b99f5b5541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2875bc2e4d1567190fa7a045427041d51b7c2b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa7c8af476558fd8c91422dae19e783dfdf6ffbb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaba8bf8276ad1376c4a12263872bf7f287360d72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad96b6342e4ebbbfbaff0df248e84c7304fff5a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xadf56645e6796e32a805e5bc70267c656d0eaf7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaeb7631018f30e6b7bac6e205390934b654ddf47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf271c3a55bb518b008e394b157c6435feeee642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf2daa417f1a5eb6dbfaa4b434929a36b4d66fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb07df87544e3e8327a18cd576fab678bf90df0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb25c2c1dd98c7f164461a0bb7d0e4783430c54e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb44c57a274bf5737873236f218b0c70c4aac521c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb6126b96ef2b64d7c97a10760705ea33a0028afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb691989144b4dcf3038b26383d998a44af7215ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb74d948e463e5390a76cd2e63b78e48da027398b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb9207130832b4863d01452d7411fae1408005078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb755240596530be0c1de5dfd77ec6398471561d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc577cbbab5eef36e6b57285a765bd1e9d3f8b465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc69e66109943faf5cbda22f360b7eb7c27bb5c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc7f8d7607bc00ba8f2b51c827091f70b19433ae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8c22f59a931768fae6b12708f450b4fab6dd6fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xccac05d378342b4717195d3436a4cb083ca604bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcda39b74054effb230156f21b334e50295ca8df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd08667fc2f323b7d64096e8ad79ff49e96cb75df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd8ef817ffb926370dcaab8f758ddb99b03591a5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb09f8bdfff2c8413adf7251b31b74e057f32d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xde725566fa2bafd175066943d8d50ae762058e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf7747861fae8c77d83517f59c1398dd0d70be7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe0c4db05a515f2ece758ab02e6ce4d1c30245752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe166efa278c4193e9e49fe3fcb3412b1180c42ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe68fe13202b7478d96f49276a9dadda6c72cd452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe77edd217c589aba9887edf802e8ebe0a57a0578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8426450d46f4ed4e667e96c7ea53bae518ff8eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe880fe143dc62aab47aba54e2165ee982b5bce3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea8239fc12a1c9d075bfa61aa08a50dcdf38fee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec8ddf5110b820d9a3dd170bb70ff980bae186c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee5b7fb47c39a516056b6d1e4a060b7bf3a12892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xefa2b0cf1521c0c2e88b51919c9b16b26953ba05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf868da244c17cf0e288ae4a92c8636f072a7bae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf929345e5a5ac2f86c7a5802c1ce4aa46f524b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9969cc40bf698640c2d9147ea6a01d5ec8e2bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe0e499fbb529214ce9744a66fce8b05413abb18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-379170 | `0xfa5ed56a203466cbbc2430a43c66b9d8723528e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-379174 | `0xfa5ed56a203466cbbc2430a43c66b9d8723528e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b194a1a5d2c2697858b9e3b523c509893d9075f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x101dc0f1ef293ee2d63b9823ac3f318ffa721b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e59c4cec7fa82d6ccda4a0489a4b6fff6443d17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x20a8db282dee1cbccf837e1a4df6d0af83786c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23c7170fd3fec8ef421eba8f69b8e72dd86ac713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c1c69afeecd9d6d57dde30c62a080e7b9e6dd25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e3df222a5333101624b5962d211f3437a760285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x330b0aac13e389313e48f9b70e4d1531c71a5094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bc98c59236c27adb19085a3b0fcdf6577897e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47cfe2036bd48fa364ceaaa4efef5ea8a99ee2c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48e43586ca0764523431ae78ac24cd458674b15f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b552a2fc2e1fbb71f97c5bfa20b4b7ed24b1526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4cddfbd81a3523f6056d30a9d2c4d36313a4bb46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d24e9cc5a8c848f3f8bfa14ebb8a7607105ec3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x513f809047598057d290fed977e74f479fa3e2a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6855d50f7dc1a3b08b8cf55d09f6dbea0ce3304f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x734d84631f00dc0d3fcd18b04b6cf42bfd407074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75524e97e5a6f7a693c593fda4ec42c3286bed23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x758d04dc11398fd20061411655ed269eba97e143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d598b5735e4466100b1d8af5875be5ead1c6df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e80fd89e1ae583fd443b73e9013d47742d659ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2296e8d17cbbf41d065c64ac46490716cdafeeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa61beb4a3d02decb01039e378237032b351125b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab5d28803c8790937a1b884ab287e724715d0a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xabe9a9ef6f13dd33b2c52660f5d74d44bace3b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xacd0c2f3be110ecec98da64a86974512b27851ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf2dab253269f2d54221ea7cc499c073ffefd6e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc29f9e675630c604e382b0775cb65baadadf624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc37a6d784bf2c68b8e680ab970e398b5703dcae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd32c5b0848e44d1aac45070e59ecf476d3ffd6c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0688a2fe90d0f93f17f273235031062a210d691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe119c68be873e14d26f8413f36c466b40b67807b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf699eddeac1541e7202c14f6c4d656eee88ff064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc2b25a2b5b42d0a1696a39181fc7b9d4649cca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x029f049c59a6b56610a34ba01d0d28e26ed407a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x03c2d2014795ee8ca78b62738433b457ab19f4b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x03e39a4747a5ad250cefb64650194228a37d1089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x08a4b5bc1b5adef0a283c8f0185ded6169f0bd29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0cb6fd1a8fef2a7ebb29b6d5083742a35b42422f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1e3d01fe61d1bc29a34106c682a79b1c4142ba5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2dad1cd6b9597fd2b4f421aae872c4f66d64f261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x30584e0bd69e6224b256b5a9cbbec8b6c09f3f7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3e399ae5b4d8bc0021e53b51c8bcdd66dd62c03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x456f478a7210e0dc35ed67a5fec1d86cdcdabd6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4b1e2c2762667331bc91648052f646d1b0d35984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4efa94f406f528ec092b896ea8b0ddffe38bc05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5183f032bf42109cd370b9559fd22207e432301e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x55f3b4d42c0e4371a6f84d46db6e3b328eecb381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x59153e939c5b4721543251ff3049ea04c755373b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5addc89785d75c86ab939e9e15bfbbb7fc086a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x656b80b667a46869144047e6e6c0000c81610253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x81ac0f2e39088c73dce9b354fdc6c302e9f2836d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x892bf71463bd9fa57f3c2266ab74dbe1b96decea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8bc96d9993c7613fe9a3abe00c3e302126272e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9a5b060bd7b8f86c4c0d720a17367729670afb19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9b3c71edeb2e965d043e546d01323690a3101dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa61beb4a3d02decb01039e378237032b351125b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb1f2a25ffb2b095e99f430caf507cc31f9a3eaab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb658b5de9d6711a0ca35d1e8d688e09c67be2b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb98746b9b2f00aa17e801a679323a5657bae9feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc682c381ceccbffd82b25f38e518f5b50b67330d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xcb32eaf22ee39fc5f8592f1720d0010150d10f3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd0716cb2023cf22cff63a632b50c677083015c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xdb2fd6a9f5138246c6dfa1b8a1d5f366cc638b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xdd6a0a00fe3353e813f3b3864694d55d2a7ce11c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xddf776d8069d1684dbc7ca024cc5671a8a0b27fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf1ddcaca7d17f8030ab2eb54f2d9811365efe123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03c2d2014795ee8ca78b62738433b457ab19f4b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04437e94af860afbb0429a7d36b9c00a5a5173b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0750b6fdada48057dbc7103e1e9286f00f997d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1033dd8415a282db52f14902e91de6e91868ac6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14c00080f97b9069ae3b4eb506ee8a633f8f5434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16cd38b1b54e7abf307cb2697e2d9321e843d5aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2878596427bfa6b52fa6d93b519a0c610bbdf00a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x352742b8c16bf83b83107283e151f843e80fdd97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41f064e85e2558171711b90cc95292d2f893f7f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x431dc3341f401451b3b42420d2571ae09e0234a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a44f77978daa3e92eb3d97210bd11645cf935ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e6955627e30660eca4bca2fb8ac09e0dbeb63c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62cba6dcdae5992d44cd9bd8989d27718eff5f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x656b80b667a46869144047e6e6c0000c81610253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65e4992250b296790c07fadf0f0723902a07e91d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x735ff13c7af33583b2c657680c2809464dbcae9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ab641e661a9728913a44e06f6a4879481142ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f27082eabdddc9dc3cc6632c9f594d210b9d43c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97b6897aad7aba3861c04c0e6388fc02af1f227f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c215206da4bf108ae5aeef9da7cad3352a36dad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-379165 | `0xa014a485d64efb236423004ab1a99c0aaa97a549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb1f2a25ffb2b095e99f430caf507cc31f9a3eaab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbdbdf128368de1cf6a3aa37f67bc19405c96f49f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc011882d0f7672d8942e7fe2248c174eed640c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc492fbae68ce6c5e14c7ed5cd8a59babd5c90e4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4df24680fe23ad109401a4a200de3994ad3c564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd8670b64b8ec2c4f7da9f8f6d1f757d107e1895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde725566fa2bafd175066943d8d50ae762058e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8426450d46f4ed4e667e96c7ea53bae518ff8eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9f183fc656656f1f17af1f2b0df79b8ff9ad8ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef66c906879ec3904ff441c4693b33f3b285325e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf04d3a8eb17b832fbebf43610e94bdc4fd5cf2dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc48e39fed51f2937c8ce7ee95ed9181c2790ab1` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 1548
- Live contracts: 35
- Unknown liveness contracts: 1513
- Source-verified contracts: 269
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=94, contamination review=21, exact address book overlap=6, source verified unclassified=153, unverified unclassified=1274

Showing first 200 of 1548 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | TransparentUpgradeableProxy<br>`0x4121a258674e507c990cdf390f74d4ef27592114` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| candidate review | TransparentUpgradeableProxy<br>`0x5d8d3ac6d21c016f9c935030480b7057b21ec804` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| candidate review | TransparentUpgradeableProxy<br>`0x98fdbc5497599eff830923ea1ee152adb9a4cea5` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| candidate review | TransparentUpgradeableProxy<br>`0xb3b209bb213a5da5b947c56f2c770b3e1015f1fe` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| candidate review | ANGLE<br>`0x58441e37255b09f9f545e9dc957f1c41658ff665` | external_dependency_or_infra | unknown | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | AngleRouter V2<br>`0x658286fc9605f6ff4d0311d0b58670e26ecb27e1` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | CoreBorrow<br>`0x1a7e4e63778b4f12a199c062f3efdd288afcbce8` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | FlashAngle<br>`0xf1ddcaca7d17f8030ab2eb54f2d9811365efe123` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | LayerZero ANGLE bridge<br>`0x9201cc18965792808549566e6b06b016d915313a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | LayerZero EURA bridge<br>`0x840b25c87b626a259ca5ac32124fa752f0230a72` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | LayerZero USDA bridge<br>`0xc69e66109943faf5cbda22f360b7eb7c27bb5c88` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | ProposalReceiver<br>`0xd6788102627462d1a679282e726125ccdebab514` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | ProxyAdmin governor<br>`0xc16b81af351ba9e64c1a069e3ab18c244a1e3049` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | ProxyAdmin guardian<br>`0xe14bfa5575d9906ba35beb15c9dbe5c77bfdd5b5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | Swapper<br>`0x3f125ecd51181af1f344adf76e4271d2923707ab` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | Timelock<br>`0x343902fe4d72e24b29f22d787b2e54eeea5e8227` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | ProxyAdmin<br>`0x9a5b060bd7b8f86c4c0d720a17367729670afb19` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | ProxyAdmin<br>`0xe6d9bd6796bdaf9b391fac2a2d34bae9c1c3c1c4` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TimelockControllerWithCounter<br>`0xc9025cef778a8032a689ac52798c66939c17c22f` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x075a2660901430dc5714ca50282e5a2a1eec4e59` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x16cd38b1b54e7abf307cb2697e2d9321e843d5aa` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x1a7e4e63778b4f12a199c062f3efdd288afcbce8` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x52f0c256e58c579bf9e41e4332669b4f7c7209c5` | non_address_book | proxy | unknown | verified | review: missing_fingerprint | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x59153e939c5b4721543251ff3049ea04c755373b` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x5ee94c25e3d5113cd055537340b9d19cfa4d9217` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x7ab641e661a9728913a44e06f6a4879481142ddb` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x9485aca5bbbe1667ad97c7fe7c4531a624c8b1ed` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x97b6897aad7aba3861c04c0e6388fc02af1f227f` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0xc16b81af351ba9e64c1a069e3ab18c244a1e3049` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0xc1f9266c6d3389e981639ee873121199a7acdb8f` | non_address_book | proxy | unknown | verified | review: missing_fingerprint | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0xe9f183fc656656f1f17af1f2b0df79b8ff9ad8ed` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | DistributionCreator<br>`0x79e4df078a06ac31bfaa0f672f1f6e9b7f38113e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | Distributor<br>`0x60157fc156063f73f4327cb78cd3e0a9de5948ab` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | ProxyAdmin<br>`0x2101f65a51d545cd51896160230bcc6a360a6671` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | ProxyAdmin<br>`0x50ecc9f45cac262c7edb78aa704f1320a904d067` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | ProxyAdmin<br>`0x9a5b060bd7b8f86c4c0d720a17367729670afb19` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TimelockController<br>`0xf929345e5a5ac2f86c7a5802c1ce4aa46f524b28` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TimelockControllerWithCounter<br>`0x0f2b510bfb0b83fc692b5601ef7a800d1d9d2fef` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TimelockControllerWithCounter<br>`0x20b63ccfdb926904c2cfa8c9424b28c4bfd8fb36` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TimelockControllerWithCounter<br>`0x64b478b7537395036c65468a6eb9b52fa6096a1f` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TimelockControllerWithCounter<br>`0x769a713bf0589d495008e5a7c78fabafb9c35f39` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TimelockControllerWithCounter<br>`0x7b979b965cd124501d87007b2421d0e585733525` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TimelockControllerWithCounter<br>`0x80d1cd24b10c0ba5d6ee5043cbdc80e00830381b` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TimelockControllerWithCounter<br>`0x85a61981669292e44250c6a1a1fed4ba0c5c6cf8` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TimelockControllerWithCounter<br>`0xb2ea590fcea142dcceaeb3912da4c1df721848ef` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TimelockControllerWithCounter<br>`0xd2a211acea98c799a67ac47c274ebdf7dee24396` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x3e399ae5b4d8bc0021e53b51c8bcdd66dd62c03b` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x3e9ea799c447b3c65702c82f8193085f330a1db0` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x4dd4758f594b60551dc64f30289204d34ccd077d` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x5addc89785d75c86ab939e9e15bfbbb7fc086a87` | retained_scope_excluded_inventory | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x67b9c7c45bbdd1a78aed4b8ff3b1bb3c8170bdab` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x9de6efe3454f8eff8c8c8d1314cd019af2432e59` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0xb8c1350c2fdbe2f652c6869c5cd48268d0b732a7` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0xfa5ed56a203466cbbc2430a43c66b9d8723528e7` | project_anchor | operational_periphery | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0xfd0dfc837fe7ed19b23df589b6f6da5a775f99e0` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | ANGLE<br>`0x900f717ea076e1e7a484ad9dd2db81ceec60ebf1` | external_dependency_or_infra | unknown | unknown | verified | review: no_fresh_structural_match | `0x48b30bd935aff9eff2740a58a08ecfbf94f19cb4` |
| candidate review | AngleRouter V2<br>`0x595ab88628cd1af06706e25f10c485b651c47aa8` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | CoreBorrow<br>`0x78754109cb73772d70a6560297037657c2af51b8` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | FlashAngle<br>`0x2878596427bfa6b52fa6d93b519a0c610bbdf00a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | LayerZero USDA bridge<br>`0xe70575daab2b1b3fa9658fa76cc506fcb0007169` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | ProposalReceiver<br>`0x2c159fcb745570de3ecd934cab92ae3085d19c04` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | ProxyAdmin governor<br>`0xbfca293e17e067e8abdca30a5d35addd0cbae6d6` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x48b30bd935aff9eff2740a58a08ecfbf94f19cb4` |
| candidate review | ProxyAdmin guardian<br>`0x10be886c0c93615d1d109be6c9415eea34fe8b57` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | Swapper<br>`0x516735bf9a517fc66f53a798b1910498a8a621c5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | Timelock<br>`0x0c24766a56732b85eee5a383ed6614abd34fb631` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | DistributionCreator<br>`0x0b3bf915eb02ceee25d2416b9721688dba9266f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | DistributionCreator<br>`0x10be886c0c93615d1d109be6c9415eea34fe8b57` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | DistributionCreator<br>`0x6450d62d135331f67541fa5d747701f66d0b2cca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | DistributionCreator<br>`0x7b2d773af5b00f4233a8366f0d1635094ffddcd3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | DistributionCreator<br>`0xc5a1368f1971aa6b19bd6a936476188020f6e05c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | Distributor<br>`0xc2aaba70df4450c413bfbe7a1baffaf25d93a5ae` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | Distributor<br>`0xc8b81f809cc59a17130997648a2b601320179494` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | ProxyAdmin<br>`0x9a5b060bd7b8f86c4c0d720a17367729670afb19` | project_anchor | governance | live | verified | review: missing_fingerprint | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | ProxyAdmin<br>`0xf2eda0829e8a9cf53ebcb8afcbb558d2eabcef64` | project_anchor | governance | live | verified | review: missing_fingerprint | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TimelockControllerWithCounter<br>`0x169487a55de79476125a56b07c36ca8dbf37a373` | project_anchor | governance | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x0d710512e100c171139d2cf5708f22c680eccf52` | retained_scope_excluded_inventory | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x16cd38b1b54e7abf307cb2697e2d9321e843d5aa` | project_anchor | operational_periphery | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x366cee609a64037a4910868c5b3cd62b9d019695` | project_anchor | operational_periphery | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x42dc54fb50db556fa6ffba765f1141536d4830ea` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x59153e939c5b4721543251ff3049ea04c755373b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x656b80b667a46869144047e6e6c0000c81610253` | external_dependency_or_infra | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x79e4df078a06ac31bfaa0f672f1f6e9b7f38113e` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x7f27082eabdddc9dc3cc6632c9f594d210b9d43c` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x8f4245d2efec45af24e5fa35f07172a830fc0ade` | project_anchor | operational_periphery | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0x9a33e690aa78a4c346e72f7a5e16e5d7278be835` | project_anchor | adapter | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0xa86cc1ae2d94c6ed2ab3bf68fb128c2825673267` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0xb38ba207d02f07653a37b53c1c0a250b04f97e82` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0xc16b81af351ba9e64c1a069e3ab18c244a1e3049` | retained_scope_excluded_inventory | adapter | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0xc8711b1206cd3e89799ec32973f583e696cb553c` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0xdd6a0a00fe3353e813f3b3864694d55d2a7ce11c` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0xe682aa5f491bd775c89b160462f7911d8a1b0297` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | TransparentUpgradeableProxy<br>`0xea8239fc12a1c9d075bfa61aa08a50dcdf38fee5` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | ANGLE<br>`0x5ee94c25e3d5113cd055537340b9d19cfa4d9217` | external_dependency_or_infra | unknown | unknown | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| candidate review | AngleRouter V2<br>`0xf530b844fb797d2c6863d56a94777c3e411cec86` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | OrchestratorOwnable<br>`0x2a3c75dc85f83a1bfa80fe304e6159ed4c4aac87` | non_address_book | governance | unknown | verified | n/a | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| contamination review | StakingRewards<br>`0x3d7e670d105e8fbcae3bf2bfc54324302cdb6ad5` | non_address_book | unknown | unknown | verified | n/a | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| contamination review | DiamondCut<br>`0x1d0cdcf2294e2e301d0a06d0ca59ed4c43396332` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | DiamondLoupe<br>`0xa013ee06ddc7073c1b6e84601ddffa237f5cc208` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | FakeGnosis<br>`0x029f049c59a6b56610a34ba01d0d28e26ed407a8` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | Getters<br>`0x2904a4d96f88ad4bd548507ba139e892083894f7` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | MockCoreBorrow<br>`0x210c6c3fbb709bfc68d4588b14317e319bed1276` | non_address_book | core_logic | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | Redeemer<br>`0x6f5e42be8d24255a376fffa8a3fffae8a77b8c6f` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | RewardHandler<br>`0x13bac78046b5625167c1c3542b0f8656df1d7164` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | SettersGovernor<br>`0x07573b3e99468d5d058f58ad54bfed449af83ec1` | non_address_book | governance | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | SettersGuardian<br>`0x2878596427bfa6b52fa6d93b519a0c610bbdf00a` | non_address_book | governance | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | SmartWalletWhitelist<br>`0x4b813c09ee83f6a308135d60658b22fbb8c0bf5f` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | VeANGLEVotingDelegation<br>`0xd622c71aba9060f393fec67d3e2b9335292bf23b` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | VyperDeployer<br>`0x39ce9cdad28d08d32fd94284070a8b0c8309393f` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | AngleBorrowHelpers<br>`0xc9cb5703c109d4fe46d2f29b0454c434e42a6947` | non_address_book | core_logic | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | AngleRouterArbitrum<br>`0x3ee021f6f91911b8a2af6047889c54cc4983f78d` | retained_scope_excluded_inventory | adapter | live | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | FlashAngle<br>`0x3e399ae5b4d8bc0021e53b51c8bcdd66dd62c03b` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | MultiCallWithFailure<br>`0x97b6897aad7aba3861c04c0e6388fc02af1f227f` | non_address_book | periphery | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | StakeDAOLevSwapper2Pool<br>`0xe6239baf1b79acfff180bf7dd8647ef9b0cf97f5` | non_address_book | adapter | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | Swapper<br>`0x2904a4d96f88ad4bd548507ba139e892083894f7` | project_anchor | adapter | live | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| contamination review | SwapperSidechain<br>`0x9c215206da4bf108ae5aeef9da7cad3352a36dad` | non_address_book | adapter | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| exact address book overlap | UnnamedContract<br>`0x2859a4ebcb58c8dd5cac1419c4f63a071b642b20` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| exact address book overlap | UnnamedContract<br>`0xe9f183fc656656f1f17af1f2b0df79b8ff9ad8ed` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| exact address book overlap | UnnamedContract<br>`0x2f2e0ba9746aae15888cf234c4eb5b301710927e` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| exact address book overlap | UnnamedContract<br>`0x892bf71463bd9fa57f3c2266ab74dbe1b96decea` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| exact address book overlap | ProposalReceiver<br>`0xcda39b74054effb230156f21b334e50295ca8df4` | project_anchor | unknown | live | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| exact address book overlap | UnnamedContract<br>`0xa014a485d64efb236423004ab1a99c0aaa97a549` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | FeeManager<br>`0x4a5e967100ca28566cb2a39216992c6db57e95a4` | non_address_book | governance | unknown | verified | n/a | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| source verified unclassified | FeeManager<br>`0x9c8438713cea5466125f0331d9d875ea43115bc9` | non_address_book | governance | unknown | verified | n/a | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| source verified unclassified | OracleDAI<br>`0x236d9032d96226b900b0d557ae6fd202f3a26b6a` | non_address_book | operational_periphery | unknown | verified | n/a | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| source verified unclassified | OracleDAI<br>`0xbf2a9659cb9f3e2e83a1a4d5a2d5e6efcdfc13d1` | non_address_book | operational_periphery | unknown | verified | n/a | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| source verified unclassified | StakingRewards<br>`0x7ee4a0f368681e4d97a8dbe78dbd756e097b6a76` | non_address_book | unknown | unknown | verified | n/a | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| source verified unclassified | StakingRewards<br>`0xbb9485e2b9b0da40db3874a144700e31bd9c40c2` | non_address_book | unknown | unknown | verified | n/a | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| source verified unclassified | StakingRewards<br>`0xbcb307f590972b1c3188b7916d2969cf75309dc6` | non_address_book | unknown | unknown | verified | n/a | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| source verified unclassified | Strategy<br>`0x2d78b6f5dc8985d90145f27c8f5a3782eb9deb2e` | non_address_book | core_logic | unknown | verified | n/a | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| source verified unclassified | Strategy<br>`0xb46a42427e412869f1bd7b9b3a2b5e5856a8907e` | non_address_book | core_logic | unknown | verified | n/a | `0xa2dee32662f6243da539bf6a8613f9a9e39843d3` |
| source verified unclassified | AgTokenSideChainMultiBridge<br>`0x3e399ae5b4d8bc0021e53b51c8bcdd66dd62c03b` | non_address_book | operational_periphery | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | AgTokenSideChainMultiBridge<br>`0x92d84b0687361cd0753e95f5a8746fbaf42e9135` | non_address_book | operational_periphery | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | CoreBorrow<br>`0x5183f032bf42109cd370b9559fd22207e432301e` | non_address_book | core_logic | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | ProposalReceiver<br>`0xb9807831b01ecb7b20d9fbe2b5454d066cd2de8e` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | Savings<br>`0x1e5b48c08d6b5efe0792d04f27602bd90026514a` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | TokenSideChainMultiBridge<br>`0x5efe48f8383921d950683c46b87e28e21dea9fb5` | non_address_book | operational_periphery | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | Treasury<br>`0x4b1e2c2762667331bc91648052f646d1b0d35984` | non_address_book | operational_periphery | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | AgTokenSideChainMultiBridge<br>`0x59153e939c5b4721543251ff3049ea04c755373b` | non_address_book | operational_periphery | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | AgTokenSideChainMultiBridge<br>`0xc63aaf16f1fa309e97cabe3937472d6ca16fb629` | non_address_book | operational_periphery | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | AngleGovernor<br>`0x29e496419fd2558aa66af23c63f4df8a6b431011` | non_address_book | governance | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | AngleGovernor<br>`0x566ec28dd2af956937bf9b7a6969fb6098cd1769` | non_address_book | governance | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | AngleGovernor<br>`0xf18303e2dd58cf29cad655b3bd2e1cc4582c6a16` | non_address_book | governance | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | AngleGovernor<br>`0xf990e3a34cdf3042186d253d364154faf862cf09` | non_address_book | governance | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | AngleRouterGnosis<br>`0xbdd9a43790bfe85da12a9efbf0eafd8135538c99` | non_address_book | adapter | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | AngleRouterGnosis<br>`0xe77edd217c589aba9887edf802e8ebe0a57a0578` | non_address_book | adapter | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondCut<br>`0x78754109cb73772d70a6560297037657c2af51b8` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondCut<br>`0xa5379675a758a55ccb8cf34a54022c7f76beed99` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondCut<br>`0xc9cb5703c109d4fe46d2f29b0454c434e42a6947` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondCut<br>`0xca7ee04ae36cf051780f3b7a8e67224ff82613d9` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondCut<br>`0xe14bfa5575d9906ba35beb15c9dbe5c77bfdd5b5` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondCut<br>`0xe9da5f4af9c89320780ffb9e970a3c9e915d5eba` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondEtherscan<br>`0x5506bc7ff32c33dbcb7012c1508d1242a34c15d2` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondEtherscan<br>`0x752de78fc09e730292b3dbca8c063ac63711deb1` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondEtherscan<br>`0xc2c7a0d9a9e0467090281c3a4f28d40504d08fb4` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondEtherscanFacet<br>`0xc492fbae68ce6c5e14c7ed5cd8a59babd5c90e4c` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondLoupe<br>`0xa31a7ee3bd17c114eebde49c2c1ef5a7fd5ef0a1` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondLoupe<br>`0xad96b6342e4ebbbfbaff0df248e84c7304fff5a5` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondLoupe<br>`0xc06481fc1d0196c138770fd2148dcb306cb24e20` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondLoupe<br>`0xd31d6e964f96b38b8e324212fc423b6b4e52e20b` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondLoupe<br>`0xdd6a0a00fe3353e813f3b3864694d55d2a7ce11c` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondLoupe<br>`0xfcc0bd6cb2fdc18637894b34bc4cd2d3355270d3` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondProxy<br>`0x02c4771ed8d48d0d01a16303bbe2e9f4369b67a8` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondProxy<br>`0x1a42a30dcba20a22b69c40098d89cb7304f429b9` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondProxy<br>`0x4a44f77978daa3e92eb3d97210bd11645cf935ab` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DiamondProxy<br>`0xff091a4fdbcddce68805183dffdea47cdbb9feac` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | DummyDiamondImplementation<br>`0x8911084ef979ac1b02d6d9aabfad86927c5b1589` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | FakeGnosis<br>`0x0331814f183d6a782e93e46810e76b5d21294b27` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | FakeGnosis<br>`0x0945de4f356de3569fe12850ab85a91f533b87a0` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | FakeGnosis<br>`0x456f478a7210e0dc35ed67a5fec1d86cdcdabd6b` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | FakeGnosis<br>`0x68c1c25c5dd3db1a6e5fe74e057ff8d4a264d89f` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | FakeGnosis<br>`0xa2875bc2e4d1567190fa7a045427041d51b7c2b1` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | FakeGnosis<br>`0xe0688a2fe90d0f93f17f273235031062a210d691` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | Getters<br>`0x600ab52922a37c06897816a59d7c22956c6bb739` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | Getters<br>`0x7ca73c7402e7c532546e27679623dc90e88a87a1` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | Getters<br>`0x82609811d2c3e9b8a32c690546953bd11f817a78` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | Getters<br>`0xb6b481d241171c4609ca61d514071b1e1240a82b` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | Getters<br>`0xc7f58335129561f37f3795a636c4d75b002c99d9` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | Getters<br>`0xf2eda0829e8a9cf53ebcb8afcbb558d2eabcef64` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockANGLE<br>`0xd08667fc2f323b7d64096e8ad79ff49e96cb75df` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockANGLE<br>`0xe09e56c778d24859aa12a731c430921ed811d38a` | non_address_book | unknown | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockCoreBorrow<br>`0x2b11d82caadd76985861e858029c28446de05a50` | non_address_book | core_logic | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockCoreBorrow<br>`0x2f2e0ba9746aae15888cf234c4eb5b301710927e` | non_address_book | core_logic | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockCoreBorrow<br>`0x4a5c6420d2efddea4579528e9659c8de54021cb0` | non_address_book | core_logic | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockCoreBorrow<br>`0xbdbdf128368de1cf6a3aa37f67bc19405c96f49f` | non_address_book | core_logic | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockCoreBorrow<br>`0xe1e6d7370fb8ea42cc9169d18571579c67141eea` | non_address_book | core_logic | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockCoreBorrow<br>`0xeb7c849eb9c2582fc6ec99847c501d90b49f1d4d` | non_address_book | core_logic | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockToken<br>`0x65a1dfb54cdec9011688b1818a27a8c687e6b1ed` | non_address_book | token | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockTokenPermit<br>`0x05214c5e95e756e4de26e12611495e260241f00a` | non_address_book | token | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockTokenPermit<br>`0x06486a422b8742218693f874cea95a69c92a004f` | non_address_book | token | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockTokenPermit<br>`0x1b0c95852fa547c44600f70ef473640e1b717ce4` | non_address_book | token | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockTokenPermit<br>`0x1e5b48c08d6b5efe0792d04f27602bd90026514a` | non_address_book | token | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockTokenPermit<br>`0x1ece8c666f104803f77c31d2a0a83264e22734b4` | non_address_book | token | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockTokenPermit<br>`0x28c5d220278429eaf720a4b51d4b9141599039ef` | non_address_book | token | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockTokenPermit<br>`0x3f125ecd51181af1f344adf76e4271d2923707ab` | non_address_book | token | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockTokenPermit<br>`0x4b81f51988cd6a9f44350cdabee9620d16359aa3` | non_address_book | token | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockTokenPermit<br>`0x58441e37255b09f9f545e9dc957f1c41658ff665` | non_address_book | token | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockTokenPermit<br>`0x5c6f17778fd036fc6b3db9f757f18b926a31156c` | non_address_book | token | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockTokenPermit<br>`0x5e6955627e30660eca4bca2fb8ac09e0dbeb63c1` | non_address_book | token | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockTokenPermit<br>`0x5f77974810617995f27bb4c91c88886df9c181ab` | non_address_book | token | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |
| source verified unclassified | MockTokenPermit<br>`0x5fe0e497ac676d8ba78598fc8016ebc1e6ce14a3` | non_address_book | token | unknown | verified | n/a | `0xfda462548ce04282f4b6d6619823a7c64fdc0185` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Chainsecurity Audit Report December 21.pdf](https://github.com/AngleProtocol/angle-core/blob/main/audits/Chainsecurity%20Audit%20Report%20December%2021.pdf) | yAudit | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Chainsecurity Audit Report July 21.pdf](https://github.com/AngleProtocol/angle-core/blob/main/audits/Chainsecurity%20Audit%20Report%20July%2021.pdf) | yAudit | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [Sigma Prime Audit Report July 21.pdf](https://github.com/AngleProtocol/angle-core/blob/main/audits/Sigma%20Prime%20Audit%20Report%20July%2021.pdf) | Sigma Prime | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14210] Chainsecurity Audit Report December 21.pdf — no match: Extracted 7 contracts from the scope table in section 2.1. Audit date from cover page: January 7, 2022.
- [14211] Chainsecurity Audit Report July 21.pdf — no match: No reason recorded
- [14212] Sigma Prime Audit Report July 21.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Chainsecurity Audit Report December 21.pdf | BaseSurplusConverter | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterSanTokens | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterUniV2Sushi | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterUniV3 | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | PoolManager | unmatched — not counted | — | listed in scope table (focusing on new functionality) | no |
| Chainsecurity Audit Report December 21.pdf | AngleDistributor | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | LiquidityGaugeV4 | unmatched — not counted | — | listed in scope table (the diff with Curve's LiquidityGaugeV4) | no |
| Chainsecurity Audit Report July 21.pdf | AgToken | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | BondingCurve | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | CollateralSettler | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | Core | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | FeeManager | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | GenericAave | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | ModuleChainlinkMulti | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | ModuleUniswapMulti | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | OracleAbstract | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | OracleChainlinkSingle | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | OracleMath | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | OracleMulti | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | PerpetualManager | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | PerpetualManagerFront | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | PerpetualManagerInternal | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | PoolManager | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | PoolManagerInternal | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | RewardsDistributor | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | SanToken | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | StableMaster | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | StableMasterStorage | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | StakingRewards | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | Strategy | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report July 21.pdf | UniswapUtils | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | ANGLE | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | AgToken | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | AgTokenEvents | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | BondingCurve | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | BondingCurveEvents | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | CollateralSettler | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | CollateralSettlerERC20 | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | Core | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | FeeManager | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | FunctionUtils | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | ModuleChainlinkMulti | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | ModuleUniswapMulti | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | Oracle | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | OracleChainlinkMulti | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | OracleChainlinkSingle | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | OracleMath | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | OracleMulti | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | PerpetualManager | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | PerpetualManagerEvents | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | PerpetualManagerFront | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | PerpetualManagerInternal | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | PoolManager | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | PoolManagerInternal | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | RewardsDistributor | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | SanToken | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | StableMaster | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | StableMasterFront | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | StableMasterInternal | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | StakingRewards | unmatched — not counted | — | — | no |
| Sigma Prime Audit Report July 21.pdf | UniswapUtils | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x3ee021f6f91911b8a2af6047889c54cc4983f78d` | AngleRouterArbitrum | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00253582b2a3fe112feec532221d9708c64cefab` | DummyDiamondImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x222222fd79264bbe280b4986f6fefbc3524d0137` | DummyDiamondImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x222222880e079445df703c0604706e71a538fd4f` | DummyDiamondImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd253b62108d1831aed298fc2434a5a8e4e418053` | DummyDiamondImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3e399ae5b4d8bc0021e53b51c8bcdd66dd62c03b` | FlashAngle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2904a4d96f88ad4bd548507ba139e892083894f7` | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 80 |
| upstream | 20 |
| standard_library | 59 |
| needs_review | 1384 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 61 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [14210] Chainsecurity Audit Report December 21.pdf
- [14211] Chainsecurity Audit Report July 21.pdf
- [14212] Sigma Prime Audit Report July 21.pdf

Fork inheritance lineage and inherited audits are included when available.
