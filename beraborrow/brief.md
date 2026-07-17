# Agentic Audit Brief: Beraborrow

## Project Overview

- Project: Beraborrow (`beraborrow`)
- Website: [https://app.beraborrow.com/](https://app.beraborrow.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:06.708Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: berachain
- Contract surface: 101 unique implementations (101 raw deployments)
- DeFi Llama TVL: $312,961.98
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 101 project-authored contract(s) across 1 chain(s); 5 ERC4626 vaults, 12 ERC20 tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 22 common project-authored base contract(s) (managedleveragedvaultgettersv1, basemanagedleveragedvaultgetters, erc4626upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 101; live-surface contracts included: 101 (101 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 43/95 (45.3%)
- Deployed-live implementations: 101 of 101 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 43/101
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 101
- Raw deployments: 101
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 11 aging, 0 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 43 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 42.1% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 39 | 38.6% | 2025-05 |
| Halborn | Tier 2 | 16 | 15.8% | 2024-11 |
| Unknown | Tier 2 | 14 | 13.9% | 2024-12 |
| Spearbit | Tier 1 | 10 | 9.9% | 2025-07 |
| Recon | Tier 2 | 6 | 5.9% | n/a |

## Contract Surface

### ✅ Verified + Audited (43)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeraborrowCore | unknown | berachain | n/a | [`0x12347caf4300b1c4a9bf0ae7de2531a2bcfb93e9`](./contracts/berachain-80094/0x12347caf4300b1c4a9bf0ae7de2531a2bcfb93e9/) | ✅ Audited |
| BorrowerOperations | unknown | berachain | n/a | [`0x29589a06e7fb66204637f9f1b5f32046341ef5e9`](./contracts/berachain-80094/0x29589a06e7fb66204637f9f1b5f32046341ef5e9/) | ✅ Audited |
| BrimeDen | unknown | berachain | n/a | [`0x8faf95fecd6e106808636c767e5c6f8b92dd1363`](./contracts/berachain-80094/0x8faf95fecd6e106808636c767e5c6f8b92dd1363/) | ✅ Audited |
| ChronicleWrapper | unknown | berachain | n/a | [`0x15fd574fa0410e9d5ffc961e23030b6ca5ff7cbf`](./contracts/berachain-80094/0x15fd574fa0410e9d5ffc961e23030b6ca5ff7cbf/) | ✅ Audited |
| CollVaultRouter | unknown | berachain | n/a | [`0x0e74a665ba183ccb60002fed4e30c3bc63cd53b0`](./contracts/berachain-80094/0x0e74a665ba183ccb60002fed4e30c3bc63cd53b0/) | ✅ Audited |
| DebtToken | unknown | berachain | n/a | [`0x1ce0a25d13ce4d52071ae7e02cf1f6606f4c79d3`](./contracts/berachain-80094/0x1ce0a25d13ce4d52071ae7e02cf1f6606f4c79d3/) | ✅ Audited |
| DeleverageRouter | unknown | berachain | n/a | [`0x0c161cb87f8255e76beddfbb8e0036d2fb463313`](./contracts/berachain-80094/0x0c161cb87f8255e76beddfbb8e0036d2fb463313/) | ✅ Audited |
| DenManager | unknown | berachain | n/a | [`0x43808f9cca7a5a26d101cf36fd9b5acec316fc72`](./contracts/berachain-80094/0x43808f9cca7a5a26d101cf36fd9b5acec316fc72/) | ✅ Audited |
| DenManagerGetters | unknown | berachain | n/a | [`0xa2ecbe7a6bbfb0f14abbcfe3c19fe54dc7878588`](./contracts/berachain-80094/0xa2ecbe7a6bbfb0f14abbcfe3c19fe54dc7878588/) | ✅ Audited |
| Factory | unknown | berachain | n/a | [`0x8c2bc6ed330ce174c27487cc1ea15ba2ace4d3be`](./contracts/berachain-80094/0x8c2bc6ed330ce174c27487cc1ea15ba2ace4d3be/) | ✅ Audited |
| GasPool | unknown | berachain | n/a | [`0x088d80a806b015a3047baf3e8d0a391b3d13e0c8`](./contracts/berachain-80094/0x088d80a806b015a3047baf3e8d0a391b3d13e0c8/) | ✅ Audited |
| IBGTVault | unknown | berachain | n/a | [`0x1a29c90fa2f2f8d8744b4a8c2856035c37b772cc`](./contracts/berachain-80094/0x1a29c90fa2f2f8d8744b4a8c2856035c37b772cc/) | ✅ Audited |
| KodiakIslandFeed | unknown | berachain | n/a | [`0x160407ee86904e0a83d916e586b8a2fe7c213e6e`](./contracts/berachain-80094/0x160407ee86904e0a83d916e586b8a2fe7c213e6e/) | ✅ Audited |
| KodiakIslandVault | unknown | berachain | n/a | [`0x0c426f0fbd0dbed3d61e1199b9687822d6b573b1`](./contracts/berachain-80094/0x0c426f0fbd0dbed3d61e1199b9687822d6b573b1/) | ✅ Audited |
| LeverageRouter | unknown | berachain | n/a | [`0x75ebdc9eb1759707cfde27788ba3a00fce3daea3`](./contracts/berachain-80094/0x75ebdc9eb1759707cfde27788ba3a00fce3daea3/) | ✅ Audited |
| LiquidationManager | unknown | berachain | n/a | [`0x3ef448417c5174ca917dc284ffd39b1e30b10b79`](./contracts/berachain-80094/0x3ef448417c5174ca917dc284ffd39b1e30b10b79/) | ✅ Audited |
| LiquidStabilityPool | unknown | berachain | n/a | [`0x2a63e2b30e5169486c1c1b4356e1ec87be1628bd`](./contracts/berachain-80094/0x2a63e2b30e5169486c1c1b4356e1ec87be1628bd/) | ✅ Audited |
| LiquidStabilityPoolGetters | unknown | berachain | n/a | [`0x39cd51974c13f0603e525f01638570aa72d20cb9`](./contracts/berachain-80094/0x39cd51974c13f0603e525f01638570aa72d20cb9/) | ✅ Audited |
| LpRewardDistributor | unknown | berachain | n/a | [`0x251161ab4908b10aab540bc495bbb900edacdd83`](./contracts/berachain-80094/0x251161ab4908b10aab540bc495bbb900edacdd83/) | ✅ Audited |
| LSPOracle | unknown | berachain | n/a | [`0x115652923309b78795506a418185ff425c303de2`](./contracts/berachain-80094/0x115652923309b78795506a418185ff425c303de2/) | ✅ Audited |
| LSPRouter | unknown | berachain | n/a | [`0x3a7ed65b35fdfaacc9f0e881846a9f4e57181446`](./contracts/berachain-80094/0x3a7ed65b35fdfaacc9f0e881846a9f4e57181446/) | ✅ Audited |
| ManagedLeveragedVault | unknown | berachain | n/a | [`0x0167ee2069cfb3f25cf8f77a2d20e14f655d55eb`](./contracts/berachain-80094/0x0167ee2069cfb3f25cf8f77a2d20e14f655d55eb/) | ✅ Audited |
| MetaBeraborrowCore | unknown | berachain | n/a | [`0x27393e8a6f8f2e32b870903279999c820e984dc7`](./contracts/berachain-80094/0x27393e8a6f8f2e32b870903279999c820e984dc7/) | ✅ Audited |
| MultiCollateralHintHelpers | unknown | berachain | n/a | [`0x27474198c951790b92d02f3aad511ad87bad75c8`](./contracts/berachain-80094/0x27474198c951790b92d02f3aad511ad87bad75c8/) | ✅ Audited |
| MultiDenGetter | unknown | berachain | n/a | [`0x0690d8b07eac444c76d6a0d8af660f1cc4d1b73c`](./contracts/berachain-80094/0x0690d8b07eac444c76d6a0d8af660f1cc4d1b73c/) | ✅ Audited |
| PermissionedDenManager | unknown | berachain | n/a | [`0x359ba3964ed09e9570ce47b56e2d831d503db0a6`](./contracts/berachain-80094/0x359ba3964ed09e9570ce47b56e2d831d503db0a6/) | ✅ Audited |
| PermissionlessPSM | unknown | berachain | n/a | [`0x47877226fd0b1a84649b39db7f1c865dce05c96c`](./contracts/berachain-80094/0x47877226fd0b1a84649b39db7f1c865dce05c96c/) | ✅ Audited |
| PriceFeed | unknown | berachain | n/a | [`0xa686dc84330b1b3787816de2daca485d305c8589`](./contracts/berachain-80094/0xa686dc84330b1b3787816de2daca485d305c8589/) | ✅ Audited |
| SortedDens | unknown | berachain | n/a | [`0x312711c156a8808d1bfb09c7d0ca3a553affc3e6`](./contracts/berachain-80094/0x312711c156a8808d1bfb09c7d0ca3a553affc3e6/) | ✅ Audited |
| SPollen | unknown | berachain | n/a | [`0x9a96efae49d672f63599f99f9ec7fb4388587a60`](./contracts/berachain-80094/0x9a96efae49d672f63599f99f9ec7fb4388587a60/) | ✅ Audited |
| SPollenRewardDistributor | unknown | berachain | n/a | [`0x068c3c9034ac7c4f6b08362e31f0c1f7d5059221`](./contracts/berachain-80094/0x068c3c9034ac7c4f6b08362e31f0c1f7d5059221/) | ✅ Audited |
| UpgradeableProxy | unknown | berachain | n/a | [`0x0314af1a5ba30ed0fed91abdafb46af751e42f74`](./contracts/berachain-80094/0x0314af1a5ba30ed0fed91abdafb46af751e42f74/) | ✅ Audited |
| UpgradeableProxy | unknown | berachain | n/a | [`0x03bbb5bef75e62c8278526c5e49ebfc0b06c433f`](./contracts/berachain-80094/0x03bbb5bef75e62c8278526c5e49ebfc0b06c433f/) | ✅ Audited |
| UpgradeableProxy | unknown | berachain | n/a | [`0x0430f05228e3a471c8c79b62835b967cf707060f`](./contracts/berachain-80094/0x0430f05228e3a471c8c79b62835b967cf707060f/) | ✅ Audited |
| UpgradeableProxy | unknown | berachain | n/a | [`0x073a8abf476c0cff473300d09dbe411b686ae05b`](./contracts/berachain-80094/0x073a8abf476c0cff473300d09dbe411b686ae05b/) | ✅ Audited |
| UpgradeableProxy | unknown | berachain | n/a | [`0x0934de7e66cf6c1c3bcbdb22bfb0dd96737fe086`](./contracts/berachain-80094/0x0934de7e66cf6c1c3bcbdb22bfb0dd96737fe086/) | ✅ Audited |
| UpgradeableProxy | unknown | berachain | n/a | [`0x24d46605fb299140c271cfb4dbab1c6f556807ba`](./contracts/berachain-80094/0x24d46605fb299140c271cfb4dbab1c6f556807ba/) | ✅ Audited |
| UpgradeableProxy | unknown | berachain | n/a | [`0x3a930e253fb0164e4b72c7ce374f2c631a5562fa`](./contracts/berachain-80094/0x3a930e253fb0164e4b72c7ce374f2c631a5562fa/) | ✅ Audited |
| UpgradeableProxy | unknown | berachain | n/a | [`0x5623554ece4e1fd78e8a4ce13d588a8e0053825d`](./contracts/berachain-80094/0x5623554ece4e1fd78e8a4ce13d588a8e0053825d/) | ✅ Audited |
| UpgradeableProxy | unknown | berachain | n/a | [`0x672bf09ef2cef1a72fdde5dcfc76675e669d4b4c`](./contracts/berachain-80094/0x672bf09ef2cef1a72fdde5dcfc76675e669d4b4c/) | ✅ Audited |
| UpgradeableProxy | unknown | berachain | n/a | [`0x8eb569b75aa34a75e495a4a2783824b025eea0af`](./contracts/berachain-80094/0x8eb569b75aa34a75e495a4a2783824b025eea0af/) | ✅ Audited |
| UpgradeableProxy | unknown | berachain | n/a | [`0xf37cc04925d20a0a350b3ff77ef35781ea0869e2`](./contracts/berachain-80094/0xf37cc04925d20a0a350b3ff77ef35781ea0869e2/) | ✅ Audited |
| ValidatorPool | unknown | berachain | n/a | [`0x6f801d4610c5ae21ea28e255fb7c9c20480ba07a`](./contracts/berachain-80094/0x6f801d4610c5ae21ea28e255fb7c9c20480ba07a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ALMGetters | unknown | berachain | n/a | [`0x97b0cf88e94ba81f42bb3c8934dd78b487d19b28`](./contracts/berachain-80094/0x97b0cf88e94ba81f42bb3c8934dd78b487d19b28/) | ⚠️ Unaudited |
| ALMPeriphery | unknown | berachain | n/a | [`0x1c1dbcde0a4f9c556f81ca5a9b108cf4f52568a1`](./contracts/berachain-80094/0x1c1dbcde0a4f9c556f81ca5a9b108cf4f52568a1/) | ⚠️ Unaudited |
| AlphaProPeriphery | unknown | berachain | n/a | [`0x05bf488e3688dbf220ba8649818bbc7408883913`](./contracts/berachain-80094/0x05bf488e3688dbf220ba8649818bbc7408883913/) | ⚠️ Unaudited |
| AlphaProVaultFeed | unknown | berachain | n/a | [`0x28ebfea8a4ab8149608cc7fb5ca5892fee9869a7`](./contracts/berachain-80094/0x28ebfea8a4ab8149608cc7fb5ca5892fee9869a7/) | ⚠️ Unaudited |
| BeraborrowManagedLeveragedVault | unknown | berachain | n/a | [`0x0541603655961aecadfe62972681e458008ff87d`](./contracts/berachain-80094/0x0541603655961aecadfe62972681e458008ff87d/) | ⚠️ Unaudited |
| BeraborrowManagedLeveragedVaultGetters | unknown | berachain | n/a | [`0x27cc7c97485d79ff75d3e77c4ce7c169d1a758e8`](./contracts/berachain-80094/0x27cc7c97485d79ff75d3e77c4ce7c169d1a758e8/) | ⚠️ Unaudited |
| BerachainDexAggregator | unknown | berachain | n/a | [`0xddf59f0d4158b63cc656d7f0700ebed86e6dfba9`](./contracts/berachain-80094/0xddf59f0d4158b63cc656d7f0700ebed86e6dfba9/) | ⚠️ Unaudited |
| BPTStableOracle | unknown | berachain | n/a | [`0xb060ef95aee9f3ac66cf8747ec64644e600d9341`](./contracts/berachain-80094/0xb060ef95aee9f3ac66cf8747ec64644e600d9341/) | ⚠️ Unaudited |
| BribeCollector | unknown | berachain | n/a | [`0x61bd35fbec49b144a1953f48f84ef8d2b321da40`](./contracts/berachain-80094/0x61bd35fbec49b144a1953f48f84ef8d2b321da40/) | ⚠️ Unaudited |
| CharmDeleverageRouter | unknown | berachain | n/a | [`0x04564e95f5349e47220adaf91870600d98135071`](./contracts/berachain-80094/0x04564e95f5349e47220adaf91870600d98135071/) | ⚠️ Unaudited |
| CharmLeverageRouter | unknown | berachain | n/a | [`0x06aa449c4f9dfbbda11cc87361b41a27f2bc78a8`](./contracts/berachain-80094/0x06aa449c4f9dfbbda11cc87361b41a27f2bc78a8/) | ⚠️ Unaudited |
| CharmManagedLeveragedVaultGettersV1 | unknown | berachain | n/a | [`0x00dfb80df8d1d297e0661894f8177abe69064395`](./contracts/berachain-80094/0x00dfb80df8d1d297e0661894f8177abe69064395/) | ⚠️ Unaudited |
| CollateralVaultRegistry | unknown | berachain | n/a | [`0xce997ac8fd015a2b3c3950cb33e9e6bb962e35e1`](./contracts/berachain-80094/0xce997ac8fd015a2b3c3950cb33e9e6bb962e35e1/) | ⚠️ Unaudited |
| CollRedeemer | unknown | berachain | n/a | [`0x2bb1fb640c59917d73be47512afa3dde5fedb1d1`](./contracts/berachain-80094/0x2bb1fb640c59917d73be47512afa3dde5fedb1d1/) | ⚠️ Unaudited |
| DLVRegistry | unknown | berachain | n/a | [`0x4724654e1b6e663a7bb07cb6edfd5ffc339a35e1`](./contracts/berachain-80094/0x4724654e1b6e663a7bb07cb6edfd5ffc339a35e1/) | ⚠️ Unaudited |
| DolomiteERC4626Feed | unknown | berachain | n/a | [`0x4583f6954cb76103ae522f9243c7d876c9037230`](./contracts/berachain-80094/0x4583f6954cb76103ae522f9243c7d876c9037230/) | ⚠️ Unaudited |
| EmptySwapper | unknown | berachain | n/a | [`0x3cf60e61251ce82a883a48bf55aa837d6a7dd848`](./contracts/berachain-80094/0x3cf60e61251ce82a883a48bf55aa837d6a7dd848/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | berachain | n/a | [`0x04cddc538ea65908106416986adaecefd4cab7d7`](./contracts/berachain-80094/0x04cddc538ea65908106416986adaecefd4cab7d7/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | berachain | n/a | [`0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6`](./contracts/berachain-80094/0x1fad980dfaff71e3fdd9bef643ab2ff2bdc4ccd6/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | berachain | n/a | [`0x8c0e122960dc2e97dc0059c07d6901dce72818e1`](./contracts/berachain-80094/0x8c0e122960dc2e97dc0059c07d6901dce72818e1/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | berachain | n/a | [`0x8d44170e120b80a7e898bfba8cb26b01ad21298c`](./contracts/berachain-80094/0x8d44170e120b80a7e898bfba8cb26b01ad21298c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | berachain | n/a | [`0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5`](./contracts/berachain-80094/0x9b6761bf2397bb5a6624a856cc84a3a14dcd3fe5/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | berachain | n/a | [`0xb71b3daea39012fb0f2b14d2a9c86da9292fc126`](./contracts/berachain-80094/0xb71b3daea39012fb0f2b14d2a9c86da9292fc126/) | ⚠️ Unaudited |
| EverlongALMFeed | unknown | berachain | n/a | [`0xf92d1c97e73e1f087cc8ee9e0e13a207bf219cc6`](./contracts/berachain-80094/0xf92d1c97e73e1f087cc8ee9e0e13a207bf219cc6/) | ⚠️ Unaudited |
| EverlongCore | unknown | berachain | n/a | [`0xba665e5aecd91acf0b03924cb6c825a26341a59a`](./contracts/berachain-80094/0xba665e5aecd91acf0b03924cb6c825a26341a59a/) | ⚠️ Unaudited |
| EverlongDeleverageRouter | unknown | berachain | n/a | [`0x29b4b632e1ae60ecf21bccd67b675fce3b210321`](./contracts/berachain-80094/0x29b4b632e1ae60ecf21bccd67b675fce3b210321/) | ⚠️ Unaudited |
| EverlongLeverageRouter | unknown | berachain | n/a | [`0xef8ef3d6cacee43d0e72306049a31ffa7f2faf24`](./contracts/berachain-80094/0xef8ef3d6cacee43d0e72306049a31ffa7f2faf24/) | ⚠️ Unaudited |
| FeeHook | unknown | berachain | n/a | [`0x0b3d1f4f567caa0b046c3ed0fa83ddf933b17207`](./contracts/berachain-80094/0x0b3d1f4f567caa0b046c3ed0fa83ddf933b17207/) | ⚠️ Unaudited |
| Infrared | unknown | berachain | n/a | [`0x559d1347242f350bdc44f99c729984bfb188092f`](./contracts/berachain-80094/0x559d1347242f350bdc44f99c729984bfb188092f/) | ⚠️ Unaudited |
| InfraredBERA | unknown | berachain | n/a | [`0x94b5d53483117fe3832c8e08d2a71ab8ab546d81`](./contracts/berachain-80094/0x94b5d53483117fe3832c8e08d2a71ab8ab546d81/) | ⚠️ Unaudited |
| InfraredBERADepositor | unknown | berachain | n/a | [`0xef26bcfb9ce4e807465a46087e9dd73b652fef87`](./contracts/berachain-80094/0xef26bcfb9ce4e807465a46087e9dd73b652fef87/) | ⚠️ Unaudited |
| InfraredBERAFeeReceivor | unknown | berachain | n/a | [`0xab2dadd15af962b036d361849c024a3f70b18254`](./contracts/berachain-80094/0xab2dadd15af962b036d361849c024a3f70b18254/) | ⚠️ Unaudited |
| InfraredBERAWithdraworLite | unknown | berachain | n/a | [`0x725a5576232220132f129f08e4a9eb7d4be92444`](./contracts/berachain-80094/0x725a5576232220132f129f08e4a9eb7d4be92444/) | ⚠️ Unaudited |
| InfraredBGT | unknown | berachain | n/a | [`0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b`](./contracts/berachain-80094/0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b/) | ⚠️ Unaudited |
| InfraredWrapper | unknown | berachain | n/a | [`0x17ecd2889427b90121fc1f3815179d133c2735ff`](./contracts/berachain-80094/0x17ecd2889427b90121fc1f3815179d133c2735ff/) | ⚠️ Unaudited |
| InfraredWrapperFeed | unknown | berachain | n/a | [`0x0be8b01ee2a3a0d6ffcbfaa130d8f995c1296cb3`](./contracts/berachain-80094/0x0be8b01ee2a3a0d6ffcbfaa130d8f995c1296cb3/) | ⚠️ Unaudited |
| LeverageHelper | unknown | berachain | n/a | [`0x6251c29f381d8e1881a8a223e5dc819d16bfd245`](./contracts/berachain-80094/0x6251c29f381d8e1881a8a223e5dc819d16bfd245/) | ⚠️ Unaudited |
| LSPRouterEnso | unknown | berachain | n/a | [`0x7c4465a43c358dc60f9d9739f9a322a48bd0430c`](./contracts/berachain-80094/0x7c4465a43c358dc60f9d9739f9a322a48bd0430c/) | ⚠️ Unaudited |
| ManagedLeveragedVaultGetters | unknown | berachain | n/a | [`0x06405db1f27c21f088ec77d5f3fa75522c20302b`](./contracts/berachain-80094/0x06405db1f27c21f088ec77d5f3fa75522c20302b/) | ⚠️ Unaudited |
| MLVRegistry | unknown | berachain | n/a | [`0xd1e6070af5d434129fc284894f7cd32a132ec34d`](./contracts/berachain-80094/0xd1e6070af5d434129fc284894f7cd32a132ec34d/) | ⚠️ Unaudited |
| MLVSwapper | unknown | berachain | n/a | [`0x5397aa04c3a2109d7fca3646557e3a709f71f7ff`](./contracts/berachain-80094/0x5397aa04c3a2109d7fca3646557e3a709f71f7ff/) | ⚠️ Unaudited |
| NectarFeed | unknown | berachain | n/a | [`0x6cfe96da45275cf8632e84b35c3b49afbe08542e`](./contracts/berachain-80094/0x6cfe96da45275cf8632e84b35c3b49afbe08542e/) | ⚠️ Unaudited |
| OriBGTFeed | unknown | berachain | n/a | [`0xedd33a66f15d66722dde90fc0691ceb7c31f0d14`](./contracts/berachain-80094/0xedd33a66f15d66722dde90fc0691ceb7c31f0d14/) | ⚠️ Unaudited |
| POLLEN | unknown | berachain | n/a | [`0x44b74a70cefdd7f9b26737bc7ab5e05b55175d8d`](./contracts/berachain-80094/0x44b74a70cefdd7f9b26737bc7ab5e05b55175d8d/) | ⚠️ Unaudited |
| PollenStaking | unknown | berachain | n/a | [`0x09d076744bdf9baadd96d310e8c527a779e0a165`](./contracts/berachain-80094/0x09d076744bdf9baadd96d310e8c527a779e0a165/) | ⚠️ Unaudited |
| PollenStakingRouter | unknown | berachain | n/a | [`0x02b1ecff81c40eeee4b8c9cc80a13ad7921ad54b`](./contracts/berachain-80094/0x02b1ecff81c40eeee4b8c9cc80a13ad7921ad54b/) | ⚠️ Unaudited |
| PollenSwapper | unknown | berachain | n/a | [`0x805867de0af4affc132e4de2b7966b41ceab6dab`](./contracts/berachain-80094/0x805867de0af4affc132e4de2b7966b41ceab6dab/) | ⚠️ Unaudited |
| RewardsFeed | unknown | berachain | n/a | [`0xa0b5d546c0a63631b7c5b532ed4a77838de7e624`](./contracts/berachain-80094/0xa0b5d546c0a63631b7c5b532ed4a77838de7e624/) | ⚠️ Unaudited |
| Router | unknown | berachain | n/a | [`0x149f8c724b5acf46afb9d30ec266b45b6d34d85d`](./contracts/berachain-80094/0x149f8c724b5acf46afb9d30ec266b45b6d34d85d/) | ⚠️ Unaudited |
| SolvBTC_BNB_Feed | unknown | berachain | n/a | [`0x17f57ac0f44e30ecb29400b6ad23b89027f44248`](./contracts/berachain-80094/0x17f57ac0f44e30ecb29400b6ad23b89027f44248/) | ⚠️ Unaudited |
| TargetICRHook | unknown | berachain | n/a | [`0x2f1309c9160419e6e1f85aee4251e7c7c48a30e4`](./contracts/berachain-80094/0x2f1309c9160419e6e1f85aee4251e7c7c48a30e4/) | ⚠️ Unaudited |
| TriBPTStableOracle | unknown | berachain | n/a | [`0xe121e0e04bf79fdbf6c38fc996d17302b4af4257`](./contracts/berachain-80094/0xe121e0e04bf79fdbf6c38fc996d17302b4af4257/) | ⚠️ Unaudited |
| VaultFeed | unknown | berachain | n/a | [`0x747b0316aeeeae3b938ba035a019bbda03d7321c`](./contracts/berachain-80094/0x747b0316aeeeae3b938ba035a019bbda03d7321c/) | ⚠️ Unaudited |
| VePollenFeeDistributor | unknown | berachain | n/a | [`0x1d20f90d22cece5113905eb78c60617c3b1a1c0c`](./contracts/berachain-80094/0x1d20f90d22cece5113905eb78c60617c3b1a1c0c/) | ⚠️ Unaudited |
| VotingEscrowPollen | unknown | berachain | n/a | [`0x0d08496ea7c3a532e4b434f4f659fe3e9d27426b`](./contracts/berachain-80094/0x0d08496ea7c3a532e4b434f4f659fe3e9d27426b/) | ⚠️ Unaudited |
| WBYUSDFeed | unknown | berachain | n/a | [`0x78ca38231f49e0509b891f6d5fd1093a7db19270`](./contracts/berachain-80094/0x78ca38231f49e0509b891f6d5fd1093a7db19270/) | ⚠️ Unaudited |
| WrappedVault | unknown | berachain | n/a | [`0x021f62d74f97f63575f8c608ab7cc3c591eccb0d`](./contracts/berachain-80094/0x021f62d74f97f63575f8c608ab7cc3c591eccb0d/) | ⚠️ Unaudited |
| ylstETHFeed | unknown | berachain | n/a | [`0x7cfab014be04d69556950cbdfafa9b5ff8e0e4ef`](./contracts/berachain-80094/0x7cfab014be04d69556950cbdfafa9b5ff8e0e4ef/) | ⚠️ Unaudited |

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
| [Beraborrow_Report.pdf](https://github.com/santipu03/santipu03/blob/main/private-audits/Beraborrow_Report.pdf) | Unknown | Audit | 2024-12 | aging | Direct | contract_name | 11 | high |
| [Cantina_Beraborrow.pdf](https://github.com/santipu03/santipu03/blob/main/private-audits/Cantina_Beraborrow.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | 9 | medium |
| [Sherlock_Beraborrow_Update.pdf](https://github.com/santipu03/santipu03/blob/main/private-audits/Sherlock_Beraborrow_Update.pdf) | Sherlock | Contest | 2025-05 | aging | Direct | contract_name | 4 | high |
| [- [Audits](): Beraborrow has undergone several audits fro each part of the protocol, below you can find all the reports for each respective feature:](https://beraborrow.gitbook.io/docs/audits/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [- [Contract address & Audits]()](https://beraborrow.gitbook.io/docs/pollen/vepollen/contract-address-and-audits.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | medium |
| [CDP protocol private audit Halborn .pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FyMggcGsUSRbnQWRepNsS%2FCDP%20protocol%20private%20audit%20Halborn%20.pdf) | Halborn | Audit | 2024-11 | aging | Direct | contract_name | 16 | high |
| [CDP protocol private audit Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2F6Dqc3dUpShsp5KUa26IS%2F%20CDP%20protocol%20private%20audit%20Sherlock.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name | 9 | high |
| [CDP protocol public audit competition Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FQWVZuONAgFlu6WKnvMD2%2FCDP%20protocol%20public%20audit%20competition%20Sherlock.pdf) | Sherlock | Contest | 2025-01 | aging | Direct | contract_name | 35 | high |
| [CDP protocol public audit competition Cantina (1).pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FmxZQ0WeLKd6haJRL3ohF%2FCDP%20protocol%20public%20audit%20competition%20Cantina%20(1).pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | 8 | medium |
| [Invariant Testing CDP protocol Recon.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FNcoDAsYQi9wt7W9eA9wS%2FInvariant%20Testing%20CDP%20protocol%20Recon.pdf) | Recon | Audit | n/a | unknown | Direct | contract_name | 6 | low |
| [BoycoVault private audit Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FU3O3q3LdCRT0zlsItfKJ%2FBoycoVault%20private%20audit%20Sherlock.pdf) | Sherlock | Contest | 2025-01 | aging | Direct | contract_name | 6 | high |
| [BoycoVault private audit Cantina.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FuYxauDnQwxY5czbtX5Sk%2FBoycoVault%20private%20audit%20Cantina.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 3 | medium |
| [Managed Leverage Vaults v0 private audit Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FUKDtjc6Dkn6P6i35j5H1%2FManaged%20Leverage%20Vaults%20v0%20private%20audit%20Sherlock.pdf) | Sherlock | Contest | 2025-04 | aging | Direct | contract_name | 1 | high |
| [Periphery and feeds extension private audit Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FS9FcsWw1G8YNzsJcbXLg%2FPeriphery%20and%20feeds%20extension%20private%20audit%20Sherlock.pdf) | Sherlock | Contest | 2025-05 | aging | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x97b0cf88e94ba81f42bb3c8934dd78b487d19b28`](./contracts/berachain-80094/0x97b0cf88e94ba81f42bb3c8934dd78b487d19b28/) | ALMGetters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1c1dbcde0a4f9c556f81ca5a9b108cf4f52568a1`](./contracts/berachain-80094/0x1c1dbcde0a4f9c556f81ca5a9b108cf4f52568a1/) | ALMPeriphery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x05bf488e3688dbf220ba8649818bbc7408883913`](./contracts/berachain-80094/0x05bf488e3688dbf220ba8649818bbc7408883913/) | AlphaProPeriphery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x28ebfea8a4ab8149608cc7fb5ca5892fee9869a7`](./contracts/berachain-80094/0x28ebfea8a4ab8149608cc7fb5ca5892fee9869a7/) | AlphaProVaultFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x0541603655961aecadfe62972681e458008ff87d`](./contracts/berachain-80094/0x0541603655961aecadfe62972681e458008ff87d/) | BeraborrowManagedLeveragedVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x27cc7c97485d79ff75d3e77c4ce7c169d1a758e8`](./contracts/berachain-80094/0x27cc7c97485d79ff75d3e77c4ce7c169d1a758e8/) | BeraborrowManagedLeveragedVaultGetters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xddf59f0d4158b63cc656d7f0700ebed86e6dfba9`](./contracts/berachain-80094/0xddf59f0d4158b63cc656d7f0700ebed86e6dfba9/) | BerachainDexAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xb060ef95aee9f3ac66cf8747ec64644e600d9341`](./contracts/berachain-80094/0xb060ef95aee9f3ac66cf8747ec64644e600d9341/) | BPTStableOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x61bd35fbec49b144a1953f48f84ef8d2b321da40`](./contracts/berachain-80094/0x61bd35fbec49b144a1953f48f84ef8d2b321da40/) | BribeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x04564e95f5349e47220adaf91870600d98135071`](./contracts/berachain-80094/0x04564e95f5349e47220adaf91870600d98135071/) | CharmDeleverageRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x06aa449c4f9dfbbda11cc87361b41a27f2bc78a8`](./contracts/berachain-80094/0x06aa449c4f9dfbbda11cc87361b41a27f2bc78a8/) | CharmLeverageRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x00dfb80df8d1d297e0661894f8177abe69064395`](./contracts/berachain-80094/0x00dfb80df8d1d297e0661894f8177abe69064395/) | CharmManagedLeveragedVaultGettersV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xce997ac8fd015a2b3c3950cb33e9e6bb962e35e1`](./contracts/berachain-80094/0xce997ac8fd015a2b3c3950cb33e9e6bb962e35e1/) | CollateralVaultRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x2bb1fb640c59917d73be47512afa3dde5fedb1d1`](./contracts/berachain-80094/0x2bb1fb640c59917d73be47512afa3dde5fedb1d1/) | CollRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x4724654e1b6e663a7bb07cb6edfd5ffc339a35e1`](./contracts/berachain-80094/0x4724654e1b6e663a7bb07cb6edfd5ffc339a35e1/) | DLVRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x4583f6954cb76103ae522f9243c7d876c9037230`](./contracts/berachain-80094/0x4583f6954cb76103ae522f9243c7d876c9037230/) | DolomiteERC4626Feed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x3cf60e61251ce82a883a48bf55aa837d6a7dd848`](./contracts/berachain-80094/0x3cf60e61251ce82a883a48bf55aa837d6a7dd848/) | EmptySwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xf92d1c97e73e1f087cc8ee9e0e13a207bf219cc6`](./contracts/berachain-80094/0xf92d1c97e73e1f087cc8ee9e0e13a207bf219cc6/) | EverlongALMFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xba665e5aecd91acf0b03924cb6c825a26341a59a`](./contracts/berachain-80094/0xba665e5aecd91acf0b03924cb6c825a26341a59a/) | EverlongCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x29b4b632e1ae60ecf21bccd67b675fce3b210321`](./contracts/berachain-80094/0x29b4b632e1ae60ecf21bccd67b675fce3b210321/) | EverlongDeleverageRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xef8ef3d6cacee43d0e72306049a31ffa7f2faf24`](./contracts/berachain-80094/0xef8ef3d6cacee43d0e72306049a31ffa7f2faf24/) | EverlongLeverageRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x0b3d1f4f567caa0b046c3ed0fa83ddf933b17207`](./contracts/berachain-80094/0x0b3d1f4f567caa0b046c3ed0fa83ddf933b17207/) | FeeHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x559d1347242f350bdc44f99c729984bfb188092f`](./contracts/berachain-80094/0x559d1347242f350bdc44f99c729984bfb188092f/) | Infrared | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x94b5d53483117fe3832c8e08d2a71ab8ab546d81`](./contracts/berachain-80094/0x94b5d53483117fe3832c8e08d2a71ab8ab546d81/) | InfraredBERA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xef26bcfb9ce4e807465a46087e9dd73b652fef87`](./contracts/berachain-80094/0xef26bcfb9ce4e807465a46087e9dd73b652fef87/) | InfraredBERADepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xab2dadd15af962b036d361849c024a3f70b18254`](./contracts/berachain-80094/0xab2dadd15af962b036d361849c024a3f70b18254/) | InfraredBERAFeeReceivor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x725a5576232220132f129f08e4a9eb7d4be92444`](./contracts/berachain-80094/0x725a5576232220132f129f08e4a9eb7d4be92444/) | InfraredBERAWithdraworLite | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b`](./contracts/berachain-80094/0xac03caba51e17c86c921e1f6cbfbdc91f8bb2e6b/) | InfraredBGT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x17ecd2889427b90121fc1f3815179d133c2735ff`](./contracts/berachain-80094/0x17ecd2889427b90121fc1f3815179d133c2735ff/) | InfraredWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x0be8b01ee2a3a0d6ffcbfaa130d8f995c1296cb3`](./contracts/berachain-80094/0x0be8b01ee2a3a0d6ffcbfaa130d8f995c1296cb3/) | InfraredWrapperFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x6251c29f381d8e1881a8a223e5dc819d16bfd245`](./contracts/berachain-80094/0x6251c29f381d8e1881a8a223e5dc819d16bfd245/) | LeverageHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x7c4465a43c358dc60f9d9739f9a322a48bd0430c`](./contracts/berachain-80094/0x7c4465a43c358dc60f9d9739f9a322a48bd0430c/) | LSPRouterEnso | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x06405db1f27c21f088ec77d5f3fa75522c20302b`](./contracts/berachain-80094/0x06405db1f27c21f088ec77d5f3fa75522c20302b/) | ManagedLeveragedVaultGetters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xd1e6070af5d434129fc284894f7cd32a132ec34d`](./contracts/berachain-80094/0xd1e6070af5d434129fc284894f7cd32a132ec34d/) | MLVRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x5397aa04c3a2109d7fca3646557e3a709f71f7ff`](./contracts/berachain-80094/0x5397aa04c3a2109d7fca3646557e3a709f71f7ff/) | MLVSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x6cfe96da45275cf8632e84b35c3b49afbe08542e`](./contracts/berachain-80094/0x6cfe96da45275cf8632e84b35c3b49afbe08542e/) | NectarFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xedd33a66f15d66722dde90fc0691ceb7c31f0d14`](./contracts/berachain-80094/0xedd33a66f15d66722dde90fc0691ceb7c31f0d14/) | OriBGTFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x44b74a70cefdd7f9b26737bc7ab5e05b55175d8d`](./contracts/berachain-80094/0x44b74a70cefdd7f9b26737bc7ab5e05b55175d8d/) | POLLEN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x09d076744bdf9baadd96d310e8c527a779e0a165`](./contracts/berachain-80094/0x09d076744bdf9baadd96d310e8c527a779e0a165/) | PollenStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x02b1ecff81c40eeee4b8c9cc80a13ad7921ad54b`](./contracts/berachain-80094/0x02b1ecff81c40eeee4b8c9cc80a13ad7921ad54b/) | PollenStakingRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x805867de0af4affc132e4de2b7966b41ceab6dab`](./contracts/berachain-80094/0x805867de0af4affc132e4de2b7966b41ceab6dab/) | PollenSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xa0b5d546c0a63631b7c5b532ed4a77838de7e624`](./contracts/berachain-80094/0xa0b5d546c0a63631b7c5b532ed4a77838de7e624/) | RewardsFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x149f8c724b5acf46afb9d30ec266b45b6d34d85d`](./contracts/berachain-80094/0x149f8c724b5acf46afb9d30ec266b45b6d34d85d/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x17f57ac0f44e30ecb29400b6ad23b89027f44248`](./contracts/berachain-80094/0x17f57ac0f44e30ecb29400b6ad23b89027f44248/) | SolvBTC_BNB_Feed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x2f1309c9160419e6e1f85aee4251e7c7c48a30e4`](./contracts/berachain-80094/0x2f1309c9160419e6e1f85aee4251e7c7c48a30e4/) | TargetICRHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xe121e0e04bf79fdbf6c38fc996d17302b4af4257`](./contracts/berachain-80094/0xe121e0e04bf79fdbf6c38fc996d17302b4af4257/) | TriBPTStableOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x747b0316aeeeae3b938ba035a019bbda03d7321c`](./contracts/berachain-80094/0x747b0316aeeeae3b938ba035a019bbda03d7321c/) | VaultFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1d20f90d22cece5113905eb78c60617c3b1a1c0c`](./contracts/berachain-80094/0x1d20f90d22cece5113905eb78c60617c3b1a1c0c/) | VePollenFeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x0d08496ea7c3a532e4b434f4f659fe3e9d27426b`](./contracts/berachain-80094/0x0d08496ea7c3a532e4b434f4f659fe3e9d27426b/) | VotingEscrowPollen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x78ca38231f49e0509b891f6d5fd1093a7db19270`](./contracts/berachain-80094/0x78ca38231f49e0509b891f6d5fd1093a7db19270/) | WBYUSDFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x021f62d74f97f63575f8c608ab7cc3c591eccb0d`](./contracts/berachain-80094/0x021f62d74f97f63575f8c608ab7cc3c591eccb0d/) | WrappedVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x7cfab014be04d69556950cbdfafa9b5ff8e0e4ef`](./contracts/berachain-80094/0x7cfab014be04d69556950cbdfafa9b5ff8e0e4ef/) | ylstETHFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 95 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8, low=1, medium=4
- Match method counts: extraction_exact=115

Zero-match audit list:

- [16854] - [Audits](): Beraborrow has undergone several audits fro each part of the protocol, below you can find all the reports for each respective feature:

Fork inheritance lineage and inherited audits are included when available.
