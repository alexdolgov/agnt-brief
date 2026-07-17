# Agentic Audit Brief: Float

## Project Overview

- Project: Float (`float`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.375Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: avalanche, polygon
- Contract surface: 68 unique implementations (68 raw deployments)
- DeFi Llama TVL: $145,106.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 68 project-authored contract(s) across 2 chain(s); 14 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 34 common project-authored base contract(s) (accesscontrolledandupgradeable, staker, boringownabledata). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 68; live-surface contracts included: 68 (63 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/59 (5.1%)
- Deployed-live implementations: 63 of 68 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/68
- Verified + Unaudited implementations: 65
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 68
- Raw deployments: 68
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 5.1% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 3 | 4.4% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LongShort | unknown | polygon | n/a | [`0x45bdab6840929937619d44fd2e8def962d8d2882`](./contracts/polygon-137/0x45bdab6840929937619d44fd2e8def962d8d2882/) | ✅ Audited |
| LongShortPolygon | unknown | polygon | n/a | [`0x16488343e508c2bfb7f180185848f924184c9c9f`](./contracts/polygon-137/0x16488343e508c2bfb7f180185848f924184c9c9f/) | ✅ Audited |
| Staker | unknown | polygon | n/a | [`0x11bf56dee7f3627985552a8b7aa6845a6636e3b7`](./contracts/polygon-137/0x11bf56dee7f3627985552a8b7aa6845a6636e3b7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (65)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlphaTestFLT | unknown | polygon | n/a | [`0x01309a1ec476871760d9ea454628500bccc1e011`](./contracts/polygon-137/0x01309a1ec476871760d9ea454628500bccc1e011/) | ⚠️ Unaudited |
| BadBuildersClubSoulbound | unknown | avalanche | n/a | [`0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42`](./contracts/avalanche-43114/0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42/) | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | avalanche | n/a | [`0x217945d4cb3386420252da73743f1730f38266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/) | ⚠️ Unaudited |
| BoringHelperV1 | unknown | avalanche | n/a | [`0x1dd4d86180eee39ac4fb35eca67cacf608ab5741`](./contracts/avalanche-43114/0x1dd4d86180eee39ac4fb35eca67cacf608ab5741/) | ⚠️ Unaudited |
| Cliff | unknown | avalanche | n/a | [`0xaff90532e2937ff290009521e7e120ed062d4f34`](./contracts/avalanche-43114/0xaff90532e2937ff290009521e7e120ed062d4f34/) | ⚠️ Unaudited |
| Comptroller | unknown | avalanche | n/a | [`0x179c3c9105f7f99038c3dafe89d3e24b4569d7ae`](./contracts/avalanche-43114/0x179c3c9105f7f99038c3dafe89d3e24b4569d7ae/) | ⚠️ Unaudited |
| ConnectV2BenqiAvalanche | unknown | avalanche | n/a | [`0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8`](./contracts/avalanche-43114/0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8/) | ⚠️ Unaudited |
| ConnectV2QiAvalanche | unknown | avalanche | n/a | [`0xac33e98174a897ecf21bd5c6e67696007aa58527`](./contracts/avalanche-43114/0xac33e98174a897ecf21bd5c6e67696007aa58527/) | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | unknown | avalanche | n/a | [`0xadaf18d79f316005542da4ecb1624b59c4e6e398`](./contracts/avalanche-43114/0xadaf18d79f316005542da4ecb1624b59c4e6e398/) | ⚠️ Unaudited |
| DeprecatedSyntheticTokenUpgradeable | unknown | polygon | n/a | [`0x01829f1fa8512ca54b2709faea59e155ce4c03e4`](./contracts/polygon-137/0x01829f1fa8512ca54b2709faea59e155ce4c03e4/) | ⚠️ Unaudited |
| ERC20Mock | unknown | avalanche | n/a | [`0x72281a435fe5a9945e04ef4d0a32771430106587`](./contracts/avalanche-43114/0x72281a435fe5a9945e04ef4d0a32771430106587/) | ⚠️ Unaudited |
| FloatCapital_v0 | unknown | polygon | n/a | [`0x443908279dee487e70b46f25401a64343adbe04b`](./contracts/polygon-137/0x443908279dee487e70b46f25401a64343adbe04b/) | ⚠️ Unaudited |
| GemCollectorNFT | unknown | avalanche | n/a | [`0x5cdbfcdab16a3b17516cdcbd0df582cbe30edb33`](./contracts/avalanche-43114/0x5cdbfcdab16a3b17516cdcbd0df582cbe30edb33/) | ⚠️ Unaudited |
| GEMS | unknown | avalanche | n/a | [`0x2d56f047805aea38062f248a05d3157c961bf287`](./contracts/avalanche-43114/0x2d56f047805aea38062f248a05d3157c961bf287/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | avalanche | n/a | [`0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a`](./contracts/avalanche-43114/0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a/) | ⚠️ Unaudited |
| InstaBenqiMappingAvalanche | unknown | avalanche | n/a | [`0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6`](./contracts/avalanche-43114/0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | avalanche | n/a | [`0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2`](./contracts/avalanche-43114/0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | unknown | avalanche | n/a | [`0x102011863cc4f506d1387cd6b22c522602ae0fbf`](./contracts/avalanche-43114/0x102011863cc4f506d1387cd6b22c522602ae0fbf/) | ⚠️ Unaudited |
| JoeBar | unknown | avalanche | n/a | [`0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | ⚠️ Unaudited |
| JoeFactory | unknown | avalanche | n/a | [`0x9ad6c38be94206ca50bb0d90783181662f0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/) | ⚠️ Unaudited |
| JoeHatToken | unknown | avalanche | n/a | [`0x82fe038ea4b50f9c957da326c412ebd73462077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | ⚠️ Unaudited |
| JoeLens | unknown | avalanche | n/a | [`0xfdf50fea3527fad31fa840b748fd3694ae8a47cc`](./contracts/avalanche-43114/0xfdf50fea3527fad31fa840b748fd3694ae8a47cc/) | ⚠️ Unaudited |
| JoeMaker | unknown | avalanche | n/a | [`0x4247c5dbac51a135939cc904c34e4913b6bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/) | ⚠️ Unaudited |
| JoeMakerV3 | unknown | avalanche | n/a | [`0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3`](./contracts/avalanche-43114/0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3/) | ⚠️ Unaudited |
| JoeRoll | unknown | avalanche | n/a | [`0xacff0fbf56baeb9ef677de19aded8f7a950bcb58`](./contracts/avalanche-43114/0xacff0fbf56baeb9ef677de19aded8f7a950bcb58/) | ⚠️ Unaudited |
| JoeRouter02 | unknown | avalanche | n/a | [`0x60ae616a2155ee3d9a68541ba4544862310933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | ⚠️ Unaudited |
| JoeToken | unknown | avalanche | n/a | [`0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | ⚠️ Unaudited |
| Joetroller | unknown | avalanche | n/a | [`0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb`](./contracts/avalanche-43114/0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb/) | ⚠️ Unaudited |
| JumpRateModel | unknown | avalanche | n/a | [`0x363637833d110f86e47311e4c54e520982721f3b`](./contracts/avalanche-43114/0x363637833d110f86e47311e4c54e520982721f3b/) | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | avalanche | n/a | [`0x267a4576293d55b53c769606e886e1f343149df5`](./contracts/avalanche-43114/0x267a4576293d55b53c769606e886e1f343149df5/) | ⚠️ Unaudited |
| KeeperExperiment | unknown | avalanche | n/a | [`0x661c9a1ad0dc7c7f1d8da87239c952479fc56df2`](./contracts/avalanche-43114/0x661c9a1ad0dc7c7f1d8da87239c952479fc56df2/) | ⚠️ Unaudited |
| LongShortAvalanche | unknown | avalanche | n/a | [`0x284c8f5802157902619289726963985cb0551f84`](./contracts/avalanche-43114/0x284c8f5802157902619289726963985cb0551f84/) | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | avalanche | n/a | [`0xd6a4f121ca35509af06a0be99093d08462f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | avalanche | n/a | [`0x188bed1968b795d5c9022f6a0bb5931ac4c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/) | ⚠️ Unaudited |
| Maximillion | unknown | avalanche | n/a | [`0x10338ee9417260b486a4d1452ee2496338b05348`](./contracts/avalanche-43114/0x10338ee9417260b486a4d1452ee2496338b05348/) | ⚠️ Unaudited |
| OracleManagerFlipp3ning | unknown | polygon | n/a | [`0x70a760acd5503a8d6746bc7f00571f570ae0ad44`](./contracts/polygon-137/0x70a760acd5503a8d6746bc7f00571f570ae0ad44/) | ⚠️ Unaudited |
| PglStakingContract | unknown | avalanche | n/a | [`0xe59988d947f80b59ff1de7bd413e5e5517906cb2`](./contracts/avalanche-43114/0xe59988d947f80b59ff1de7bd413e5e5517906cb2/) | ⚠️ Unaudited |
| PglStakingContractProxy | unknown | avalanche | n/a | [`0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a`](./contracts/avalanche-43114/0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a/) | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | avalanche | n/a | [`0x107b31d84bf6cec672f3af924471bb6f4fb8555a`](./contracts/avalanche-43114/0x107b31d84bf6cec672f3af924471bb6f4fb8555a/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | [`0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784`](./contracts/avalanche-43114/0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784/) | ⚠️ Unaudited |
| Qi | unknown | avalanche | n/a | [`0x8729438eb15e2c8b576fcc6aecda6a148776c0f5`](./contracts/avalanche-43114/0x8729438eb15e2c8b576fcc6aecda6a148776c0f5/) | ⚠️ Unaudited |
| QiAvax | unknown | avalanche | n/a | [`0x5c0401e81bc07ca70fad469b451682c0d747ef1c`](./contracts/avalanche-43114/0x5c0401e81bc07ca70fad469b451682c0d747ef1c/) | ⚠️ Unaudited |
| QiErc20Delegator | unknown | avalanche | n/a | [`0x334ad834cd4481bb02d09615e7c11a00579a7909`](./contracts/avalanche-43114/0x334ad834cd4481bb02d09615e7c11a00579a7909/) | ⚠️ Unaudited |
| QiErc20Delegator | unknown | avalanche | n/a | [`0x4c9f0140fad0c93009a8ea123eaf6b1a3d0ddd30`](./contracts/avalanche-43114/0x4c9f0140fad0c93009a8ea123eaf6b1a3d0ddd30/) | ⚠️ Unaudited |
| QiTokenSaleDistributor | unknown | avalanche | n/a | [`0x23de2004592b04d594d23c9a928d0552e29d6bea`](./contracts/avalanche-43114/0x23de2004592b04d594d23c9a928d0552e29d6bea/) | ⚠️ Unaudited |
| QiTokenSaleDistributorProxy | unknown | avalanche | n/a | [`0xa1f5ae0ce9308750ed0c2da5283ab2ad5d6bb618`](./contracts/avalanche-43114/0xa1f5ae0ce9308750ed0c2da5283ab2ad5d6bb618/) | ⚠️ Unaudited |
| RewardDistributor | unknown | avalanche | n/a | [`0x2274491950b2d6d79b7e69b683b482282ba14885`](./contracts/avalanche-43114/0x2274491950b2d6d79b7e69b683b482282ba14885/) | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | avalanche | n/a | [`0x05d06afb994047acee8c205500ab1aa25c5a3388`](./contracts/avalanche-43114/0x05d06afb994047acee8c205500ab1aa25c5a3388/) | ⚠️ Unaudited |
| SlowTradeSyntheticTokenUpgradeable | unknown | avalanche | n/a | [`0x048858971030b416e41c74e641f8432c8921b24d`](./contracts/avalanche-43114/0x048858971030b416e41c74e641f8432c8921b24d/) | ⚠️ Unaudited |
| StakerAvalanche | unknown | avalanche | n/a | [`0x45b24d45e8111680232a617e1c44597981216fec`](./contracts/avalanche-43114/0x45b24d45e8111680232a617e1c44597981216fec/) | ⚠️ Unaudited |
| StakerPolygon | unknown | polygon | n/a | [`0x3750b2f732e2c58c348b731deeb50bc651c5d91b`](./contracts/polygon-137/0x3750b2f732e2c58c348b731deeb50bc651c5d91b/) | ⚠️ Unaudited |
| SyntheticTokenUpgradeable | unknown | polygon | n/a | [`0x03e76b81bb69bdcb4e34e12a9e77fd4f9e41aa17`](./contracts/polygon-137/0x03e76b81bb69bdcb4e34e12a9e77fd4f9e41aa17/) | ⚠️ Unaudited |
| TokenVesting | unknown | avalanche | n/a | [`0x0147c0212ca4aba29d26dffd3c800893080ef296`](./contracts/avalanche-43114/0x0147c0212ca4aba29d26dffd3c800893080ef296/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x2f4391579839c5e3bcd6d471ea4aab3de0bb5140`](./contracts/avalanche-43114/0x2f4391579839c5e3bcd6d471ea4aab3de0bb5140/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17`](./contracts/avalanche-43114/0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17/) | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | avalanche | n/a | [`0x3c5486b85faae29b071f2a616a59ca7bf8f73682`](./contracts/avalanche-43114/0x3c5486b85faae29b071f2a616a59ca7bf8f73682/) | ⚠️ Unaudited |
| UUPSProxy | unknown | polygon | n/a | [`0x595b1408c9c2bf121c7674e270ca7acc0bbf100c`](./contracts/polygon-137/0x595b1408c9c2bf121c7674e270ca7acc0bbf100c/) | ⚠️ Unaudited |
| UUPSProxy | unknown | polygon | n/a | [`0xce5da4bebba980bec39da5b118750a47a23d4b85`](./contracts/polygon-137/0xce5da4bebba980bec39da5b118750a47a23d4b85/) | ⚠️ Unaudited |
| UUPSProxy | unknown | avalanche | n/a | [`0x01829f1fa8512ca54b2709faea59e155ce4c03e4`](./contracts/avalanche-43114/0x01829f1fa8512ca54b2709faea59e155ce4c03e4/) | ⚠️ Unaudited |
| UUPSProxy | unknown | avalanche | n/a | [`0x0db3c59c187ecfa36a9c9f6cfa3664d06c2b5556`](./contracts/avalanche-43114/0x0db3c59c187ecfa36a9c9f6cfa3664d06c2b5556/) | ⚠️ Unaudited |
| UUPSProxy | unknown | avalanche | n/a | [`0x4e813624e1e0906e23fa22e2d120b4c4e2f89e4e`](./contracts/avalanche-43114/0x4e813624e1e0906e23fa22e2d120b4c4e2f89e4e/) | ⚠️ Unaudited |
| UUPSProxy | unknown | avalanche | n/a | [`0xcd62196cc117ea7fd9525ade37e44d01209e8ebb`](./contracts/avalanche-43114/0xcd62196cc117ea7fd9525ade37e44d01209e8ebb/) | ⚠️ Unaudited |
| UUPSProxy | unknown | avalanche | n/a | [`0xd2eeaaff35281757f87e4d535763c3d4c35b62c1`](./contracts/avalanche-43114/0xd2eeaaff35281757f87e4d535763c3d4c35b62c1/) | ⚠️ Unaudited |
| YieldManagerAaveBasic | unknown | polygon | n/a | [`0x1372276638bfc1fce909b05783d91e526b801669`](./contracts/polygon-137/0x1372276638bfc1fce909b05783d91e526b801669/) | ⚠️ Unaudited |
| Zap | unknown | avalanche | n/a | [`0x2c7b8e971c704371772edaf16e0db381a8d02027`](./contracts/avalanche-43114/0x2c7b8e971c704371772edaf16e0db381a8d02027/) | ⚠️ Unaudited |

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
| [code423n4.com/reports/2021-08-floatcapital](https://code4rena.com/reports/2021-08-floatcapital) | Code4rena | Contest | 2021-08 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x01309a1ec476871760d9ea454628500bccc1e011`](./contracts/polygon-137/0x01309a1ec476871760d9ea454628500bccc1e011/) | AlphaTestFLT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42`](./contracts/avalanche-43114/0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42/) | BadBuildersClubSoulbound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x217945d4cb3386420252da73743f1730f38266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/) | BoostedMasterChefJoe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1dd4d86180eee39ac4fb35eca67cacf608ab5741`](./contracts/avalanche-43114/0x1dd4d86180eee39ac4fb35eca67cacf608ab5741/) | BoringHelperV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaff90532e2937ff290009521e7e120ed062d4f34`](./contracts/avalanche-43114/0xaff90532e2937ff290009521e7e120ed062d4f34/) | Cliff | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x179c3c9105f7f99038c3dafe89d3e24b4569d7ae`](./contracts/avalanche-43114/0x179c3c9105f7f99038c3dafe89d3e24b4569d7ae/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8`](./contracts/avalanche-43114/0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8/) | ConnectV2BenqiAvalanche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xac33e98174a897ecf21bd5c6e67696007aa58527`](./contracts/avalanche-43114/0xac33e98174a897ecf21bd5c6e67696007aa58527/) | ConnectV2QiAvalanche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xadaf18d79f316005542da4ecb1624b59c4e6e398`](./contracts/avalanche-43114/0xadaf18d79f316005542da4ecb1624b59c4e6e398/) | CustomMasterChefJoeV2Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x01829f1fa8512ca54b2709faea59e155ce4c03e4`](./contracts/polygon-137/0x01829f1fa8512ca54b2709faea59e155ce4c03e4/) | DeprecatedSyntheticTokenUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x72281a435fe5a9945e04ef4d0a32771430106587`](./contracts/avalanche-43114/0x72281a435fe5a9945e04ef4d0a32771430106587/) | ERC20Mock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x443908279dee487e70b46f25401a64343adbe04b`](./contracts/polygon-137/0x443908279dee487e70b46f25401a64343adbe04b/) | FloatCapital_v0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5cdbfcdab16a3b17516cdcbd0df582cbe30edb33`](./contracts/avalanche-43114/0x5cdbfcdab16a3b17516cdcbd0df582cbe30edb33/) | GemCollectorNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2d56f047805aea38062f248a05d3157c961bf287`](./contracts/avalanche-43114/0x2d56f047805aea38062f248a05d3157c961bf287/) | GEMS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6`](./contracts/avalanche-43114/0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6/) | InstaBenqiMappingAvalanche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2`](./contracts/avalanche-43114/0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2/) | JCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x102011863cc4f506d1387cd6b22c522602ae0fbf`](./contracts/avalanche-43114/0x102011863cc4f506d1387cd6b22c522602ae0fbf/) | JCollateralCapErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | JoeBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9ad6c38be94206ca50bb0d90783181662f0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/) | JoeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x82fe038ea4b50f9c957da326c412ebd73462077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | JoeHatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xfdf50fea3527fad31fa840b748fd3694ae8a47cc`](./contracts/avalanche-43114/0xfdf50fea3527fad31fa840b748fd3694ae8a47cc/) | JoeLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4247c5dbac51a135939cc904c34e4913b6bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/) | JoeMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3`](./contracts/avalanche-43114/0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3/) | JoeMakerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xacff0fbf56baeb9ef677de19aded8f7a950bcb58`](./contracts/avalanche-43114/0xacff0fbf56baeb9ef677de19aded8f7a950bcb58/) | JoeRoll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x60ae616a2155ee3d9a68541ba4544862310933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | JoeRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | JoeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb`](./contracts/avalanche-43114/0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb/) | Joetroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x363637833d110f86e47311e4c54e520982721f3b`](./contracts/avalanche-43114/0x363637833d110f86e47311e4c54e520982721f3b/) | JumpRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x267a4576293d55b53c769606e886e1f343149df5`](./contracts/avalanche-43114/0x267a4576293d55b53c769606e886e1f343149df5/) | JWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x661c9a1ad0dc7c7f1d8da87239c952479fc56df2`](./contracts/avalanche-43114/0x661c9a1ad0dc7c7f1d8da87239c952479fc56df2/) | KeeperExperiment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x284c8f5802157902619289726963985cb0551f84`](./contracts/avalanche-43114/0x284c8f5802157902619289726963985cb0551f84/) | LongShortAvalanche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd6a4f121ca35509af06a0be99093d08462f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | MasterChefJoeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x188bed1968b795d5c9022f6a0bb5931ac4c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/) | MasterChefJoeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x10338ee9417260b486a4d1452ee2496338b05348`](./contracts/avalanche-43114/0x10338ee9417260b486a4d1452ee2496338b05348/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x70a760acd5503a8d6746bc7f00571f570ae0ad44`](./contracts/polygon-137/0x70a760acd5503a8d6746bc7f00571f570ae0ad44/) | OracleManagerFlipp3ning | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe59988d947f80b59ff1de7bd413e5e5517906cb2`](./contracts/avalanche-43114/0xe59988d947f80b59ff1de7bd413e5e5517906cb2/) | PglStakingContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a`](./contracts/avalanche-43114/0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a/) | PglStakingContractProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x107b31d84bf6cec672f3af924471bb6f4fb8555a`](./contracts/avalanche-43114/0x107b31d84bf6cec672f3af924471bb6f4fb8555a/) | PriceOracleProxyUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8729438eb15e2c8b576fcc6aecda6a148776c0f5`](./contracts/avalanche-43114/0x8729438eb15e2c8b576fcc6aecda6a148776c0f5/) | Qi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5c0401e81bc07ca70fad469b451682c0d747ef1c`](./contracts/avalanche-43114/0x5c0401e81bc07ca70fad469b451682c0d747ef1c/) | QiAvax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x334ad834cd4481bb02d09615e7c11a00579a7909`](./contracts/avalanche-43114/0x334ad834cd4481bb02d09615e7c11a00579a7909/) | QiErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4c9f0140fad0c93009a8ea123eaf6b1a3d0ddd30`](./contracts/avalanche-43114/0x4c9f0140fad0c93009a8ea123eaf6b1a3d0ddd30/) | QiErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x23de2004592b04d594d23c9a928d0552e29d6bea`](./contracts/avalanche-43114/0x23de2004592b04d594d23c9a928d0552e29d6bea/) | QiTokenSaleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa1f5ae0ce9308750ed0c2da5283ab2ad5d6bb618`](./contracts/avalanche-43114/0xa1f5ae0ce9308750ed0c2da5283ab2ad5d6bb618/) | QiTokenSaleDistributorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2274491950b2d6d79b7e69b683b482282ba14885`](./contracts/avalanche-43114/0x2274491950b2d6d79b7e69b683b482282ba14885/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x05d06afb994047acee8c205500ab1aa25c5a3388`](./contracts/avalanche-43114/0x05d06afb994047acee8c205500ab1aa25c5a3388/) | SimpleRewarderPerSec | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x048858971030b416e41c74e641f8432c8921b24d`](./contracts/avalanche-43114/0x048858971030b416e41c74e641f8432c8921b24d/) | SlowTradeSyntheticTokenUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x45b24d45e8111680232a617e1c44597981216fec`](./contracts/avalanche-43114/0x45b24d45e8111680232a617e1c44597981216fec/) | StakerAvalanche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3750b2f732e2c58c348b731deeb50bc651c5d91b`](./contracts/polygon-137/0x3750b2f732e2c58c348b731deeb50bc651c5d91b/) | StakerPolygon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x03e76b81bb69bdcb4e34e12a9e77fd4f9e41aa17`](./contracts/polygon-137/0x03e76b81bb69bdcb4e34e12a9e77fd4f9e41aa17/) | SyntheticTokenUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0147c0212ca4aba29d26dffd3c800893080ef296`](./contracts/avalanche-43114/0x0147c0212ca4aba29d26dffd3c800893080ef296/) | TokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3c5486b85faae29b071f2a616a59ca7bf8f73682`](./contracts/avalanche-43114/0x3c5486b85faae29b071f2a616a59ca7bf8f73682/) | TripleSlopeRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x595b1408c9c2bf121c7674e270ca7acc0bbf100c`](./contracts/polygon-137/0x595b1408c9c2bf121c7674e270ca7acc0bbf100c/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xce5da4bebba980bec39da5b118750a47a23d4b85`](./contracts/polygon-137/0xce5da4bebba980bec39da5b118750a47a23d4b85/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x01829f1fa8512ca54b2709faea59e155ce4c03e4`](./contracts/avalanche-43114/0x01829f1fa8512ca54b2709faea59e155ce4c03e4/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0db3c59c187ecfa36a9c9f6cfa3664d06c2b5556`](./contracts/avalanche-43114/0x0db3c59c187ecfa36a9c9f6cfa3664d06c2b5556/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4e813624e1e0906e23fa22e2d120b4c4e2f89e4e`](./contracts/avalanche-43114/0x4e813624e1e0906e23fa22e2d120b4c4e2f89e4e/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcd62196cc117ea7fd9525ade37e44d01209e8ebb`](./contracts/avalanche-43114/0xcd62196cc117ea7fd9525ade37e44d01209e8ebb/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd2eeaaff35281757f87e4d535763c3d4c35b62c1`](./contracts/avalanche-43114/0xd2eeaaff35281757f87e4d535763c3d4c35b62c1/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1372276638bfc1fce909b05783d91e526b801669`](./contracts/polygon-137/0x1372276638bfc1fce909b05783d91e526b801669/) | YieldManagerAaveBasic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2c7b8e971c704371772edaf16e0db381a8d02027`](./contracts/avalanche-43114/0x2c7b8e971c704371772edaf16e0db381a8d02027/) | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 64 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
