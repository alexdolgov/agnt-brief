# Agentic Audit Brief: pNetwork

⚠️ Lifecycle status: DECLINING - TVL changed 0.0% over 90 days

## Project Overview

- Project: pNetwork (`pnetwork`)
- Website: [https://p.network](https://p.network)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-22T22:16:31.473Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, ethereum, gnosis, polygon
- Contract surface: 355 unique implementations (504 raw deployments)
- DeFi Llama TVL: $13,099,805.90
- On-chain TVL (included contracts): $1,818,987.51
- TVL by chain: Ethereum $1,693,824.09 | Arbitrum $125,163.42

## Project Description

pNetwork is a cross-chain bridge protocol that enables the transfer of assets between different blockchains. It also provides yield farming and staking mechanisms through various vaults and reward contracts.

### Architecture

The pNetwork family shares infrastructure through proxy contracts like ArcProxy and TransparentUpgradeableProxy, which manage upgradeable logic for tokens and gateways. Vaults and pools interact with reward contracts and external DeFi protocols to facilitate yield generation and cross-chain asset transfers.

## Audit Coverage Summary

- Verified implementations audited: 0/109 (0.0%)
- Verified + Unaudited implementations: 109
- Verified by bytecode match: 0
- Unverified implementations: 246
- Unique implementations: 355
- Raw deployments: 504
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,818,987.51
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,818,987.51 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (109)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ArcxTokenV2 | token | ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ⚠️ Unaudited |
| bVault | core_logic | ethereum | 6 deployments: ethereum [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/); ethereum `0x378388...a35153`; ethereum `0x3fb6b0...15a2cc`; ethereum `0x750d30...7996d0`; ethereum `0x801690...85dc0e`; ethereum `0x8d9a39...ec6108` | ⚠️ Unaudited |
| TokenStore | token | ethereum | 2 deployments: ethereum [`0x0440ae...25c87c`](./contracts/ethereum-1/0x0440ae12f329dbd7306b6d9edbb0e667c225c87c/); ethereum `0xa90e66...a79405` | ⚠️ Unaudited |
| BACDAIPool | core_logic | ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | ⚠️ Unaudited |
| BACUSDCPool | core_logic | ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | ⚠️ Unaudited |
| BACUSDTPool | core_logic | ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | ⚠️ Unaudited |
| MIMETHStrategy2 | core_logic | arbitrum | [`0x47a156...46a49b`](./contracts/arbitrum-42161/0x47a156668f1ecc659efbbf4910508ace1b46a49b/) | ⚠️ Unaudited |
| ArbisETHLPFarmStrategy | core_logic | arbitrum | [`0x303f12...b86a3e`](./contracts/arbitrum-42161/0x303f12da29fa6346361a9e4feb5db073c5b86a3e/) | ⚠️ Unaudited |
| StakingAccrualERC20V5 | token | ethereum | [`0x9bffad...fd7d9d`](./contracts/ethereum-1/0x9bffad7a6d5f52dbc51cae33e419793c72fd7d9d/) | ⚠️ Unaudited |
| StrategyArpa | core_logic | ethereum | [`0xa3063c...63095e`](./contracts/ethereum-1/0xa3063cf3a934068cbe8f55212577a1ffbe63095e/) | ⚠️ Unaudited |
| SwaprLPFarmStrategy | core_logic | arbitrum | [`0x1c3e7f...da1a56`](./contracts/arbitrum-42161/0x1c3e7f51a9d24e813fa7c2614713b727a4da1a56/) | ⚠️ Unaudited |
| BASPool | core_logic | ethereum | [`0x5859ad...8120c0`](./contracts/ethereum-1/0x5859adb05988946b9d08dce2e12ae29af58120c0/) | ⚠️ Unaudited |
| MIMETHARBISSHARESFarmStrategy | core_logic | arbitrum | [`0xaed29d...fd879d`](./contracts/arbitrum-42161/0xaed29d87da3e3294854c8b966b54ccae3bfd879d/) | ⚠️ Unaudited |
| MarinateStrategyFarm | core_logic | arbitrum | 2 deployments: arbitrum [`0x6a0f4a...8f339b`](./contracts/arbitrum-42161/0x6a0f4afb31e90c378fa2aaa40371a652578f339b/); arbitrum `0xd8a18e...01b72d` | ⚠️ Unaudited |
| HoneyETHLPStrategy | core_logic | arbitrum | [`0x9ab60e...37d41c`](./contracts/arbitrum-42161/0x9ab60e8db1ff7d1d18d03e8d821bd440c337d41c/) | ⚠️ Unaudited |
| SPELLETHStrategy | core_logic | arbitrum | 3 deployments: arbitrum [`0x5ec477...85a9fc`](./contracts/arbitrum-42161/0x5ec477eda75303450a4185b3557c2c2fbb85a9fc/); arbitrum `0xdc2d66...f2cd51`; arbitrum `0xe5eb0b...e0b562` | ⚠️ Unaudited |
| BACSUSDPool | core_logic | ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | ⚠️ Unaudited |
| ERC20Peg | token | ethereum | 2 deployments: ethereum [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/); ethereum `0x8f68fe...9900ec` | ⚠️ Unaudited |
| Airdrop | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x92f605...64923f`](./contracts/arbitrum-42161/0x92f6052f5c9efe4f7486e1a0a79cd8961964923f/); arbitrum `0xc4431d...2696b7` | ⚠️ Unaudited |
| ApeRewards | unknown | arbitrum | [`0xb970e2...e46655`](./contracts/arbitrum-42161/0xb970e280f9ddaa3349ab9f3ecf778970cde46655/) | ⚠️ Unaudited |
| ApeStrategy | core_logic | arbitrum | [`0xab4bf7...d2621a`](./contracts/arbitrum-42161/0xab4bf76a278fd67c649b41dd8f349ec87cd2621a/) | ⚠️ Unaudited |
| ArbiRewards | unknown | arbitrum | 2 deployments: arbitrum [`0xaafb61...006ad2`](./contracts/arbitrum-42161/0xaafb614b238bf003d35c97c4f46503e164006ad2/); arbitrum `0xb68c54...9de7d9` | ⚠️ Unaudited |
| ARBIS | unknown | arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ⚠️ Unaudited |
| ArbitrumWormholeGatewayUpgraded | unknown | arbitrum | [`0x1293a5...a15458`](./contracts/arbitrum-42161/0x1293a54e160d1cd7075487898d65266081a15458/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | polygon | 2 deployments: gnosis `0xfada8c...d4680e`; polygon [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | ⚠️ Unaudited |
| BACPool | core_logic | ethereum | [`0x7e7ae8...d6ed8c`](./contracts/ethereum-1/0x7e7ae8923876955d6dcb7285c04065a1b9d6ed8c/) | ⚠️ Unaudited |
| BACyCRVPool | core_logic | ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | ⚠️ Unaudited |
| BIP11 | unknown | ethereum | [`0xa6f889...c115a2`](./contracts/ethereum-1/0xa6f889c3cedbdf6cb524813da0ee0ffaddc115a2/) | ⚠️ Unaudited |
| BlackPoolToken | core_logic | ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | ⚠️ Unaudited |
| Boardroom | unknown | ethereum | 4 deployments: ethereum [`0x27c20f...96fd4f`](./contracts/ethereum-1/0x27c20f0b0ad78805084eeb8407291326e996fd4f/); ethereum `0x4b1824...0a342c`; ethereum `0xa01ffb...154a65`; ethereum `0xffd035...5d6118` | ⚠️ Unaudited |
| BoardroomV2 | unknown | ethereum | [`0xecf0dd...33e42a`](./contracts/ethereum-1/0xecf0dde35f6d895c065e7526348af1e79433e42a/) | ⚠️ Unaudited |
| Bond | unknown | ethereum | [`0xc36824...f5abc5`](./contracts/ethereum-1/0xc36824905dff2eaaee7ecc09fcc63abc0af5abc5/) | ⚠️ Unaudited |
| Bondroom | unknown | ethereum | [`0xd9a904...efe109`](./contracts/ethereum-1/0xd9a904a1320b5f0a1f742a9e431ded2a55efe109/) | ⚠️ Unaudited |
| CarbonRewards | unknown | arbitrum | [`0x2c5058...d49f45`](./contracts/arbitrum-42161/0x2c5058325373d02dfd6c08e48d91fcaf8fd49f45/) | ⚠️ Unaudited |
| CarbonStrategy | core_logic | arbitrum | [`0xbb6121...331fc2`](./contracts/arbitrum-42161/0xbb6121d3c929360ade1c1d4b515cf5c2fc331fc2/) | ⚠️ Unaudited |
| Cash | unknown | ethereum | [`0x3449fc...03a69a`](./contracts/ethereum-1/0x3449fc1cd036255ba1eb19d65ff4ba2b8903a69a/) | ⚠️ Unaudited |
| CENNZnetBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x369e22...0913ec`](./contracts/ethereum-1/0x369e2285ccf43483e76746cebbf3d1d6060913ec/); ethereum `0xf7997b...a53930` | ⚠️ Unaudited |
| ControlledAsset | unknown | ethereum | [`0x4c48fd...47d30c`](./contracts/ethereum-1/0x4c48fd8ed6f6a50bf03dbdefe7d74983f447d30c/) | ⚠️ Unaudited |
| Controller | governance | ethereum | [`0xd8c534...504d2a`](./contracts/ethereum-1/0xd8c5344e331d5f4161f03726870ce9da8b504d2a/) | ⚠️ Unaudited |
| DAIBACLPTokenSharePool | core_logic | ethereum | [`0x067d4d...f9db0f`](./contracts/ethereum-1/0x067d4d3ce63450e74f880f86b5b52ea3edf9db0f/) | ⚠️ Unaudited |
| DAIBASLPTokenSharePool | core_logic | ethereum | [`0x9569d4...fb0d0a`](./contracts/ethereum-1/0x9569d4cd7ac5b010da5697e952efb1ec0efb0d0a/) | ⚠️ Unaudited |
| Distribution | unknown | ethereum | [`0x818f83...402f2e`](./contracts/ethereum-1/0x818f83333244ba4bb72dab0b60b1901158402f2e/) | ⚠️ Unaudited |
| Distributor | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x14897d...dd40db`](./contracts/arbitrum-42161/0x14897d1510f60640f7c2e5a3eea48f21eddd40db/); arbitrum `0x7ff964...eed12a` | ⚠️ Unaudited |
| DPXStrategy | core_logic | arbitrum | [`0x0b9c52...98f427`](./contracts/arbitrum-42161/0x0b9c52febf284c4cfc20c6311e90cca0b198f427/) | ⚠️ Unaudited |
| ERC20VestingRescindable | operational_periphery | arbitrum | 4 deployments: arbitrum [`0x1d047d...ab149d`](./contracts/arbitrum-42161/0x1d047d01ff68188f4d2079d8f9119d7b33ab149d/); arbitrum `0x50ef42...0d3328`; arbitrum `0x61318c...3c1b3e`; arbitrum `0x812f04...59b050` | ⚠️ Unaudited |
| FarmList | unknown | arbitrum | 2 deployments: arbitrum [`0x78dddc...dbcd0f`](./contracts/arbitrum-42161/0x78dddc12ec57b3a80b9160cfaa4274e3d8dbcd0f/); arbitrum `0xdd7e7a...0cedca` | ⚠️ Unaudited |
| Feeder | unknown | ethereum | [`0x065894...8eb1b0`](./contracts/ethereum-1/0x06589479a31f826410bbd6d43410e7ff2d8eb1b0/) | ⚠️ Unaudited |
| GovernorBravoDelegate | governance | arbitrum | [`0xd4722a...70c673`](./contracts/arbitrum-42161/0xd4722a14d0b73edb948e9c96fa9278d8d870c673/) | ⚠️ Unaudited |
| GovernorBravoDelegator | governance | arbitrum | [`0x0ff9ea...ac3587`](./contracts/arbitrum-42161/0x0ff9eab68d3a17258d90796d2b328008e7ac3587/) | ⚠️ Unaudited |
| HoneyADOGELPStrategy | core_logic | arbitrum | [`0x1cc155...0b6266`](./contracts/arbitrum-42161/0x1cc1554b76acc2968d6ecb15681e7e95c80b6266/) | ⚠️ Unaudited |
| HoneyEscrow | operational_periphery | arbitrum | [`0x989f62...62c233`](./contracts/arbitrum-42161/0x989f625a4536f0710be11e7292a9f5e0d562c233/) | ⚠️ Unaudited |
| HoneyUSDCLPStrategy | core_logic | arbitrum | [`0xe91713...bae18d`](./contracts/arbitrum-42161/0xe91713db2fabfef98a882de9bb7c583b5ebae18d/) | ⚠️ Unaudited |
| InitialCashDistributor | operational_periphery | ethereum | [`0x666c2a...54c0cd`](./contracts/ethereum-1/0x666c2a4625ef5f8cf66a24fbff9f22437754c0cd/) | ⚠️ Unaudited |
| InitialShareDistributor | operational_periphery | ethereum | [`0x3c5323...e2f4bb`](./contracts/ethereum-1/0x3c53230875877321023f757c33d2faf71de2f4bb/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | 2 deployments: arbitrum [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/); arbitrum `0xda534b...681365` | ⚠️ Unaudited |
| LinearThreshold | unknown | ethereum | [`0xcdbae6...120b11`](./contracts/ethereum-1/0xcdbae6de88c7525369d6826ae1cdcab415120b11/) | ⚠️ Unaudited |
| LinearVester | operational_periphery | arbitrum | 5 deployments: arbitrum [`0x09eab9...e3200e`](./contracts/arbitrum-42161/0x09eab9c75152ee707b8da7595aa0b8c87be3200e/); arbitrum `0x5b39f5...84b5c1`; arbitrum `0x659c62...532e8f`; arbitrum `0x6f9e32...f47400`; arbitrum `0xe7a848...6151ae` | ⚠️ Unaudited |
| MagicETH2Strategy | core_logic | arbitrum | [`0xb31a8c...2b8d5f`](./contracts/arbitrum-42161/0xb31a8caac061206ea4be16a6fc547e8bd92b8d5f/) | ⚠️ Unaudited |
| MAGICStrategy | core_logic | arbitrum | [`0xee589b...ef8bce`](./contracts/arbitrum-42161/0xee589bc5e65e7e43199e9b0701768ada3cef8bce/) | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | ⚠️ Unaudited |
| MarinateV2 | unknown | arbitrum | 4 deployments: arbitrum [`0x28e8fb...c9bb9d`](./contracts/arbitrum-42161/0x28e8fbea79201a134bf9506c47926f179bc9bb9d/); arbitrum `0x2adabd...4a92a4`; arbitrum `0x5f6207...4da6b7`; arbitrum `0xaf2283...0e8032` | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | 2 deployments: ethereum [`0x01d41b...e3b40e`](./contracts/ethereum-1/0x01d41bb9964e95df586974fe68996e3bd4e3b40e/); ethereum `0xc2edad...a888cd` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | [`0x1b6043...ade677`](./contracts/ethereum-1/0x1b604349100a318e369b59a6d6c1b65a31ade677/) | ⚠️ Unaudited |
| Migrator | periphery | ethereum | 2 deployments: ethereum [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/); ethereum `0x820670...b7f154` | ⚠️ Unaudited |
| MultiSigPeriodicTimeLock | governance | arbitrum | [`0x53c9ca...4c675b`](./contracts/arbitrum-42161/0x53c9ca5d494b9a41c43637d12e8369db7b4c675b/) | ⚠️ Unaudited |
| NyanEscrow | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x211a39...d4ef63`](./contracts/arbitrum-42161/0x211a39dcbf67d3781af34a824c716ad0c8d4ef63/); arbitrum `0xce789f...b555be` | ⚠️ Unaudited |
| NYANETHStrategy | core_logic | arbitrum | 2 deployments: arbitrum [`0x6f7bf5...1840e6`](./contracts/arbitrum-42161/0x6f7bf5cb2b274e654a16e64f8259fceaf41840e6/); arbitrum `0xf28510...7ec7b9` | ⚠️ Unaudited |
| NyanRewards | unknown | arbitrum | 3 deployments: arbitrum [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/); arbitrum `0x62ff5b...d2da2c`; arbitrum `0xf6a377...4a703d` | ⚠️ Unaudited |
| NyanStrategy | core_logic | arbitrum | 4 deployments: arbitrum [`0x1ea9c7...e9e52f`](./contracts/arbitrum-42161/0x1ea9c72b8152c7fc0128351e42536f7b7be9e52f/); arbitrum `0x7864ba...920b3a`; arbitrum `0xb7cf07...45581c`; arbitrum `0xfa92f7...51c251` | ⚠️ Unaudited |
| Oracle | operational_periphery | ethereum | 6 deployments: ethereum [`0x1b3868...8ff7ed`](./contracts/ethereum-1/0x1b3868247dfbc155fa59b30ec03e63b10a8ff7ed/); ethereum `0x3e233a...7fdfec`; ethereum `0x6a8618...30ff44`; ethereum `0x751d0e...bf75ca`; ethereum `0x8a573c...1f9502`; ethereum `0xe4efd8...7debfa` | ⚠️ Unaudited |
| PEGGStrategy | core_logic | arbitrum | [`0x485e17...bd183d`](./contracts/arbitrum-42161/0x485e17a5b692134db279792054c6cc0b72bd183d/) | ⚠️ Unaudited |
| Pipeline | unknown | arbitrum | [`0x8b3b94...57d3c9`](./contracts/arbitrum-42161/0x8b3b94b035fee148e9d5955f025fcc2f2c57d3c9/) | ⚠️ Unaudited |
| PONGRewards | unknown | arbitrum | [`0xe34003...098bc2`](./contracts/arbitrum-42161/0xe340031b61a394c7811868ef81d2eacc79098bc2/) | ⚠️ Unaudited |
| PongStrategy | core_logic | arbitrum | [`0xe74e9f...50a7ec`](./contracts/arbitrum-42161/0xe74e9f3b9f862b7707531abf425621f53050a7ec/) | ⚠️ Unaudited |
| PonzuStrategy | core_logic | arbitrum | [`0x7a20ee...e36b24`](./contracts/arbitrum-42161/0x7a20ee66ca1696d516c1bb780ae153ee1de36b24/) | ⚠️ Unaudited |
| PoolMigrator | core_logic | ethereum | [`0x66d7fa...30b7bb`](./contracts/ethereum-1/0x66d7fa132b5550205d4d6a6645b66283e330b7bb/) | ⚠️ Unaudited |
| PoolProxy | core_logic | ethereum | 6 deployments: ethereum [`0x1fe765...b432c5`](./contracts/ethereum-1/0x1fe7656fa41eea50b0ee8591fd6b405c94b432c5/); ethereum `0x5312ec...2f6bf2`; ethereum `0x81ee0e...e71e96`; ethereum `0x824770...2fe192`; ethereum `0xa4210a...c58677`; ethereum `0xdebe83...f51b50` | ⚠️ Unaudited |
| PoolStore | core_logic | ethereum | 3 deployments: ethereum [`0x01592e...a00ae6`](./contracts/ethereum-1/0x01592e349258233a6f13685228060511eca00ae6/); ethereum `0x3855c2...658f7d`; ethereum `0x4bd3a0...689f10` | ⚠️ Unaudited |
| PoolWrapper | core_logic | ethereum | [`0x2e3d21...41510c`](./contracts/ethereum-1/0x2e3d21e2730b4e5d5ee7214d4723ea96d041510c/) | ⚠️ Unaudited |
| PPEGGEscrow | operational_periphery | arbitrum | [`0x2906c8...be1a95`](./contracts/arbitrum-42161/0x2906c88ae542deda106cb3e8e65071f99dbe1a95/) | ⚠️ Unaudited |
| PPEGGETHStrategy | core_logic | arbitrum | [`0x60ae12...ab3cf5`](./contracts/arbitrum-42161/0x60ae12b7999c5ced1c57230d2040fd1e5cab3cf5/) | ⚠️ Unaudited |
| PremiaETHStrategy | core_logic | arbitrum | 3 deployments: arbitrum [`0x38bfa7...d6bd1e`](./contracts/arbitrum-42161/0x38bfa71260b24e5f7d3ad0c28823820131d6bd1e/); arbitrum `0x9f1d08...da7bde`; arbitrum `0xa04d02...8ab96e` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | [`0x02612d...8a3db3`](./contracts/arbitrum-42161/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/) | ⚠️ Unaudited |
| Share | unknown | ethereum | [`0xa7ed29...b63696`](./contracts/ethereum-1/0xa7ed29b253d8b4e3109ce07c80fc570f81b63696/) | ⚠️ Unaudited |
| ShareV2 | unknown | ethereum | [`0x106538...875287`](./contracts/ethereum-1/0x106538cc16f938776c7c180186975bca23875287/) | ⚠️ Unaudited |
| SigmoidThreshold | unknown | ethereum | [`0xa72872...07f7f3`](./contracts/ethereum-1/0xa728721394084ea78f10cebb192323f50407f7f3/) | ⚠️ Unaudited |
| SimpleERC20 | token | ethereum | [`0x4849d2...01cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | ⚠️ Unaudited |
| SimpleERCFund | unknown | ethereum | [`0x7b075b...98fe22`](./contracts/ethereum-1/0x7b075b3aa2f1143775101986b52e32da9d98fe22/) | ⚠️ Unaudited |
| StakedBPT | token | ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | ⚠️ Unaudited |
| stARBIS | unknown | arbitrum | 8 deployments: arbitrum [`0x1ec62f...9062de`](./contracts/arbitrum-42161/0x1ec62f8367ad3ff61c3f3b0ab1d0297a539062de/); arbitrum `0x4446e4...bd0c6e`; arbitrum `0x7093e0...9d3a3d`; arbitrum `0xa8a07c...b3deb8`; arbitrum `0xbf0075...d2db86`; arbitrum `0xbf3e46...4d9f89`; arbitrum `0xde905e...9c288f`; arbitrum `0xef1f3f...276f16` | ⚠️ Unaudited |
| stARBISReceiver | unknown | arbitrum | 6 deployments: arbitrum [`0x26804f...785308`](./contracts/arbitrum-42161/0x26804fdd4d4d893686233f8399174f2d2a785308/); arbitrum `0x429ede...4975bb`; arbitrum `0x8abbcf...ef5511`; arbitrum `0xa3bf87...74d93b`; arbitrum `0xb5f6f3...b1c0dc`; arbitrum `0xe0cd92...4a266d` | ⚠️ Unaudited |
| StrategyBusd | core_logic | ethereum | [`0xcbc00c...a362d5`](./contracts/ethereum-1/0xcbc00cccbce9d798c412f568436901ff46a362d5/) | ⚠️ Unaudited |
| StrategyHbtc | core_logic | ethereum | [`0xf7f9c7...c68c0b`](./contracts/ethereum-1/0xf7f9c789852025862cc160f464d42ca18fc68c0b/) | ⚠️ Unaudited |
| StrategyUsdc | core_logic | ethereum | [`0x9db02f...cbad5a`](./contracts/ethereum-1/0x9db02f1d70ac934faca6bdef78a0fa080fcbad5a/) | ⚠️ Unaudited |
| StrategyUsdt | core_logic | ethereum | [`0x15e926...ecd695`](./contracts/ethereum-1/0x15e926954b0013ae37d4241fc6e7bcb1e0ecd695/) | ⚠️ Unaudited |
| StrategyWbtc | core_logic | ethereum | [`0x964a64...72bc36`](./contracts/ethereum-1/0x964a640e90fa759c1de9951ebddba730c872bc36/) | ⚠️ Unaudited |
| Timelock | governance | arbitrum | 4 deployments: ethereum `0x2b057a...b2b66b`; ethereum `0x9a8541...d47bd1`; ethereum `0xd98bc1...5d0e6a`; arbitrum [`0x1a5c34...411eda`](./contracts/arbitrum-42161/0x1a5c344db58b3d9094a1761272a27c08ba411eda/) | ⚠️ Unaudited |
| TimelockController | governance | polygon | 2 deployments: polygon [`0x643743...85d252`](./contracts/polygon-137/0x643743d396b8921ab353ef566653b8f4c685d252/); polygon `0xf40951...fa400d` | ⚠️ Unaudited |
| TimelockController_RewardsDistributor2 | operational_periphery | gnosis | [`0x1dc6cd...5449a1`](./contracts/gnosis-100/0x1dc6cd9f76972039cd8e071ec65cc4bd035449a1/) | ⚠️ Unaudited |
| TokenPool | core_logic | ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | [`0xf840f3...950935`](./contracts/ethereum-1/0xf840f3ee161756cec04a64d25eb497c557950935/) | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | 14 deployments: ethereum [`0x02957a...c877f5`](./contracts/ethereum-1/0x02957ae53173f58dc9989c4a09853f9528c877f5/); ethereum `0x0f5ecb...e0f7b3`; ethereum `0x121bae...1078bd`; ethereum `0x4e153d...5e19d3`; ethereum `0x67a883...f2117a`; ethereum `0x7715a2...df3430`; ethereum `0x88da51...4ee747`; ethereum `0x9dcea4...d3c216`; ethereum `0xa89572...8e2e22`; ethereum `0xaf7005...24ebe2`; ethereum `0xcd2dfe...8d1fba`; ethereum `0xe5fc22...b27884`; ethereum `0xf43775...28fb93`; ethereum `0xf8acea...d72dea` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x570242...6507e5`](./contracts/ethereum-1/0x57024267e8272618f9c5037d373043a8646507e5/); ethereum `0x9f624b...980808` | ⚠️ Unaudited |
| USDCETHStrategy | core_logic | arbitrum | [`0x62055d...01fe23`](./contracts/arbitrum-42161/0x62055dba1d132dbe91805062fb3dcfce3501fe23/) | ⚠️ Unaudited |
| Vesting | operational_periphery | arbitrum | [`0x6ffb81...6d2a79`](./contracts/arbitrum-42161/0x6ffb81770eb66d9d5e1ce6f6a48753e6c26d2a79/) | ⚠️ Unaudited |
| VoteProxy | unknown | ethereum | [`0x6bddf1...eb729b`](./contracts/ethereum-1/0x6bddf10f9956dcda89998c2e673f74a09deb729b/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 67 deployments: ethereum [`0x06364f...d6c763`](./contracts/ethereum-1/0x06364f10b501e868329afbc005b3492902d6c763/); ethereum `0x075b1b...e70fb3`; ethereum `0x0dfdc4...939a9d`; ethereum `0x14f9bd...0d7d15`; ethereum `0x179484...19762c`; ethereum `0x192092...3b36ef`; ethereum `0x1bd65c...ceaace`; ethereum `0x1f2a66...62b275`; ethereum `0x2088a8...2d8f6c`; ethereum `0x2146b0...f881b6`; ethereum `0x2b645a...8d1434`; ethereum `0x2e60cf...0ef419`; ethereum `0x319967...9cf3d7`; ethereum `0x3740fb...06f5fd`; ethereum `0x3b3ac5...24333b`; ethereum `0x45f783...055f51`; ethereum `0x49849c...fb3675`; ethereum `0x4e680f...357bd4`; ethereum `0x4f0e0e...053841`; ethereum `0x52ea46...35d85c`; ethereum `0x54ee22...68b800`; ethereum `0x5e71f0...cf0e8d`; ethereum `0x61dc3c...896e87`; ethereum `0x6812c0...50fc74`; ethereum `0x6ff57e...d4fa00`; ethereum `0x76827f...21f5c7`; ethereum `0x7771f7...cbc812`; ethereum `0x79a8c4...5a4f27`; ethereum `0x7adbf7...4456de`; ethereum `0x7b5a09...f5f55b`; ethereum `0x7fc77b...0a9714`; ethereum `0x7fe97b...44ecfd`; ethereum `0x7fffa7...7dfc7d`; ethereum `0x845838...37f8a2`; ethereum `0x8474c1...ba9f4f`; ethereum `0x849eab...f2bb2e`; ethereum `0x884be2...ceb75c`; ethereum `0x930541...f0895b`; ethereum `0x9726e9...97313e`; ethereum `0x97b7e9...b9f86d`; ethereum `0x9fc689...4a1f23`; ethereum `0xa27476...d0eadb`; ethereum `0xa2b47e...fb7a56`; ethereum `0xa50ccc...187287`; ethereum `0xa5407e...3efbfd`; ethereum `0xaaaeee...0e9c35`; ethereum `0xac795d...747a80`; ethereum `0xb10c49...2e23e2`; ethereum `0xb241a8...e7188f`; ethereum `0xb527c4...ec5a0b`; ethereum `0xb6a793...e2eb44`; ethereum `0xb6c057...b59edb`; ethereum `0xbbc81d...73a5d3`; ethereum `0xbc7e83...f40a35`; ethereum `0xc25a3a...72917f`; ethereum `0xc97ef4...0451db`; ethereum `0xd133d1...e2f778`; ethereum `0xd905e2...1db0d8`; ethereum `0xdc31f5...96838e`; ethereum `0xdf5e0e...d806a8`; ethereum `0xeb2120...b6bc06`; ethereum `0xebdd53...957f20`; ethereum `0xedf54b...16a966`; ethereum `0xf129d6...971bab`; ethereum `0xf79d92...324b8d`; ethereum `0xfcba3e...f12851`; ethereum `0xff1188...7d5b97` | ⚠️ Unaudited |
| WeightFeeder | unknown | ethereum | [`0x5800fc...816546`](./contracts/ethereum-1/0x5800fc35f004c1218b18a22940ee7e8be4816546/) | ⚠️ Unaudited |
| WhiteList | unknown | ethereum | [`0x19f35c...8e493e`](./contracts/ethereum-1/0x19f35ce3c3875c120ab602386c8d6a59e88e493e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (246)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x04af91...b5303d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ada83...2e401f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ed872...2fc25c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x45d9a3...cc145b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c5395...0c013b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ed2d6...71c79a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x776968...83516c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x80caaa...c89af2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb43593...45efd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbb805...b35b8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbee53...b86fd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xced2c6...24cdc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdbe281...b1a0a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe146dc...f3cf36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5fdba...95cba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfef6ee...6d1135` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0aec91...4b4443` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x140f38...be8c76` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x143371...8653bf` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1a40a8...ff0d48` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2dcc0c...7bfcd0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x438587...a65b11` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x51ad82...592d8d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x53c3b1...1cce01` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x67cc99...0a4436` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6b88b0...f43b73` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x704fcd...6aad1b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7e8503...d35b13` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8eadda...d0f2a2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x95ef70...a239ca` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x996145...d6fc7c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9ba2a9...b6f55b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9c83f0...0f8c20` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9c9d29...377ebe` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xacc391...e397a6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xaea5f4...77e800` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xaf03df...d3c063` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb55b06...68e423` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbb0bb4...264399` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbbda48...916723` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc9a950...39f6d4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd5d0e3...9f4437` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd92b9c...930cff` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xdbb5f3...f4e46e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe0ccde...7a850a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe3fa2f...af879e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe8c9dd...8ca48c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xed2ce4...69a8fd` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xefe8fb...4653d0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf06a06...36e663` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf97b1f...7f8c73` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfbd73f...904359` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfd4371...304c56` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xffcdb4...e6cf3e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x027da2...830a71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x02a124...95194e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x086efc...e574c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0eaa78...53bd04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x11e963...cd8033` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x143371...8653bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x144c0c...2f9f22` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x17f619...60172f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1cae78...253067` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1deaee...32ef38` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x20e260...73ceeb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x31c818...c494eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x36ac93...dab483` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x37da0f...bea1ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x38d409...21c8a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x39acf8...68a98e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3b4e26...fc0c5b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3c7a4e...fc2d32` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x495682...e21b29` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x49a215...a3d89b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4a9e97...f9ced2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4e176b...40be01` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x51567c...aabc80` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x533152...f60e6f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x53bae3...036d17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x582cc1...91deab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5d4346...055dee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5dd9ba...654572` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5eb8ae...dcfa27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5fa81b...d0242e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x602817...525f4b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x61989e...a9372a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x61b7bd...e60874` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x654776...e88733` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x65620c...187b62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x67030a...1eb409` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6841c2...fa34d9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7347c5...2aeaa0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7d29b5...558113` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7ea728...f22681` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7f7b23...563ff1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x807c4d...03cc10` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x88bf81...760643` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x89d829...c48206` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x99c1de...98d27e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9c5765...d13eea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9c9d29...377ebe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9e98b8...ff5f8f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa92c75...04b04d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xadb1c7...2c0297` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xae9720...4868e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb09a88...2f36f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb43ad6...ea7877` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb6dddf...947499` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbc8722...4b8db2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbe12ff...0b0395` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xca4b64...b3509a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd3be99...5dd0ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd69fb7...fe7079` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd717db...f8296b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xda4f3e...e4f86a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdbb5f3...f4e46e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe457cd...0ef170` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe5d2b9...fe6060` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xeba805...5fccfb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xeca70a...9c3556` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xeeee27...222c95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf75687...9a2158` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfbc177...2a3d1a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfbd96c...b63047` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x015ac2...3268f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0167b6...72f668` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x02edb9...831606` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x062af6...db41f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x08e353...878e2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0bcc62...890ac3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0dc368...58ec5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0e01c2...bcd8b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1dd0aa...f208be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1e5ed8...5ce8cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1fe31e...d89b97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x207505...1a831f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x214520...b22c6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x21d1cd...6be8ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x227dda...5d9733` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x256f25...2ac50e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x257950...b2da83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x26b93f...04e0fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x280073...024f29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2b878c...066c2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2ccacc...1d8574` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2fedaf...332eaf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x30d698...44a402` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x316702...f04282` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x317f3b...8f936e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3294be...1ac197` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x35b555...074e65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x35d8f3...ef0eae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x374e9f...3af13a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x375d70...a62914` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3894f7...7c01f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3a6ec7...de2020` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3dd098...a6a9f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x42b524...f72b7a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x437928...740db5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4628d8...e0847f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x49ba5e...1176d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4cd20c...554ab9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d12ae...3881e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d70d7...bb42b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4deb14...7e63e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4f0de3...6f1376` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x50dcb0...389dd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x580961...2553fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x581aed...088a76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5b4cd8...914762` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5d0ea9...a09427` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5f315a...12ea15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5fa520...bb9266` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x618794...95e09e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x652065...526d3b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x65ebc2...6be78e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x676428...3c625e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x687094...a9d748` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x68bfc0...868716` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6b004d...ac3726` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6c3171...100897` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6fb5bd...8ffdc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6fe46f...f558ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x70aa88...690889` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x72adb5...f0e7a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x72c5e7...b87297` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x747ea3...3c33be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x75e90d...2d448e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x77b4aa...92508a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8016fa...02dd26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x808e25...899c9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x87c171...188d3e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x892e01...611c96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x89c416...26f593` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8aec9a...eca989` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c26c8...79bc3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c4983...ac916e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8d2cdc...f98b48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8dafe1...1e6b32` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8ef7d0...05ca09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9551ba...6a33d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x96d15d...53acd6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9e343b...c1f05e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa2dfa5...2dd7a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa4ca55...c1b999` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa56061...75e99f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa5d7f1...799838` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa85391...765e67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xad31a9...cc8fe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaeaa3d...fc4a77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb176e0...f6a921` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb45f49...c4341d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb590e9...f018c3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb69752...ce7481` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb6b01f...fc8883` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb760c9...b48b8f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb7a103...44c393` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb82d97...2ccd73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbb910e...d8f3d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbef14c...b1c9a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc1060d...fa5439` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc114fb...9864e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc17b78...3736be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xce0eaf...95b9ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd10051...5ff860` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd1f5e0...d2e779` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd20e33...634ad0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd7d486...5ad709` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdc11d4...926a6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdcc1d3...16cf2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdef2b3...0dc044` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdfff87...3de01e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe3d0d4...72abb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe8e7d0...d1786c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe9ed4e...6ba5f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeb4891...fc1c8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xec15d1...a95270` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xecb083...058f69` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xed75fa...1ca123` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xef2c65...3b05cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xefc66a...212663` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf26dee...325293` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf279ad...f0621f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf46df4...ef17aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf77752...1563e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfb86ae...6a1b0d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ArcxTokenV2 | token | $949,182.70 | Verified native implementation with $949,182.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/) | bVault | core_logic | $301,168.74 | Verified native implementation with $301,168.74 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0440ae...25c87c`](./contracts/ethereum-1/0x0440ae12f329dbd7306b6d9edbb0e667c225c87c/) | TokenStore | token | $178,787.26 | Verified native implementation with $178,787.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | BACDAIPool | core_logic | $88,280.57 | Verified native implementation with $88,280.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | BACUSDCPool | core_logic | $86,330.94 | Verified native implementation with $86,330.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | BACUSDTPool | core_logic | $71,162.70 | Verified native implementation with $71,162.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x47a156...46a49b`](./contracts/arbitrum-42161/0x47a156668f1ecc659efbbf4910508ace1b46a49b/) | MIMETHStrategy2 | core_logic | $68,301.69 | Verified native implementation with $68,301.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x303f12...b86a3e`](./contracts/arbitrum-42161/0x303f12da29fa6346361a9e4feb5db073c5b86a3e/) | ArbisETHLPFarmStrategy | core_logic | $51,204.18 | Verified native implementation with $51,204.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bffad...fd7d9d`](./contracts/ethereum-1/0x9bffad7a6d5f52dbc51cae33e419793c72fd7d9d/) | StakingAccrualERC20V5 | token | $12,500.28 | Verified native implementation with $12,500.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3063c...63095e`](./contracts/ethereum-1/0xa3063cf3a934068cbe8f55212577a1ffbe63095e/) | StrategyArpa | core_logic | $5,002.21 | Verified native implementation with $5,002.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c3e7f...da1a56`](./contracts/arbitrum-42161/0x1c3e7f51a9d24e813fa7c2614713b727a4da1a56/) | SwaprLPFarmStrategy | core_logic | $4,529.62 | Verified native implementation with $4,529.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5859ad...8120c0`](./contracts/ethereum-1/0x5859adb05988946b9d08dce2e12ae29af58120c0/) | BASPool | core_logic | $1,396.70 | Verified native implementation with $1,396.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaed29d...fd879d`](./contracts/arbitrum-42161/0xaed29d87da3e3294854c8b966b54ccae3bfd879d/) | MIMETHARBISSHARESFarmStrategy | core_logic | $905.94 | Verified native implementation with $905.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a0f4a...8f339b`](./contracts/arbitrum-42161/0x6a0f4afb31e90c378fa2aaa40371a652578f339b/) | MarinateStrategyFarm | core_logic | $154.29 | Verified native implementation with $154.29 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9ab60e...37d41c`](./contracts/arbitrum-42161/0x9ab60e8db1ff7d1d18d03e8d821bd440c337d41c/) | HoneyETHLPStrategy | core_logic | $35.76 | Verified native implementation with $35.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5ec477...85a9fc`](./contracts/arbitrum-42161/0x5ec477eda75303450a4185b3557c2c2fbb85a9fc/) | SPELLETHStrategy | core_logic | $31.93 | Verified native implementation with $31.93 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | BACSUSDPool | core_logic | $10.00 | Verified native implementation with $10.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ERC20Peg | token | $2.00 | Verified native implementation with $2.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x92f605...64923f`](./contracts/arbitrum-42161/0x92f6052f5c9efe4f7486e1a0a79cd8961964923f/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb970e2...e46655`](./contracts/arbitrum-42161/0xb970e280f9ddaa3349ab9f3ecf778970cde46655/) | ApeRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xab4bf7...d2621a`](./contracts/arbitrum-42161/0xab4bf76a278fd67c649b41dd8f349ec87cd2621a/) | ApeStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaafb61...006ad2`](./contracts/arbitrum-42161/0xaafb614b238bf003d35c97c4f46503e164006ad2/) | ArbiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e7ae8...d6ed8c`](./contracts/ethereum-1/0x7e7ae8923876955d6dcb7285c04065a1b9d6ed8c/) | BACPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | BACyCRVPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6f889...c115a2`](./contracts/ethereum-1/0xa6f889c3cedbdf6cb524813da0ee0ffaddc115a2/) | BIP11 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | BlackPoolToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27c20f...96fd4f`](./contracts/ethereum-1/0x27c20f0b0ad78805084eeb8407291326e996fd4f/) | Boardroom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xecf0dd...33e42a`](./contracts/ethereum-1/0xecf0dde35f6d895c065e7526348af1e79433e42a/) | BoardroomV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc36824...f5abc5`](./contracts/ethereum-1/0xc36824905dff2eaaee7ecc09fcc63abc0af5abc5/) | Bond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9a904...efe109`](./contracts/ethereum-1/0xd9a904a1320b5f0a1f742a9e431ded2a55efe109/) | Bondroom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c5058...d49f45`](./contracts/arbitrum-42161/0x2c5058325373d02dfd6c08e48d91fcaf8fd49f45/) | CarbonRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbb6121...331fc2`](./contracts/arbitrum-42161/0xbb6121d3c929360ade1c1d4b515cf5c2fc331fc2/) | CarbonStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3449fc...03a69a`](./contracts/ethereum-1/0x3449fc1cd036255ba1eb19d65ff4ba2b8903a69a/) | Cash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x369e22...0913ec`](./contracts/ethereum-1/0x369e2285ccf43483e76746cebbf3d1d6060913ec/) | CENNZnetBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c48fd...47d30c`](./contracts/ethereum-1/0x4c48fd8ed6f6a50bf03dbdefe7d74983f447d30c/) | ControlledAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8c534...504d2a`](./contracts/ethereum-1/0xd8c5344e331d5f4161f03726870ce9da8b504d2a/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x067d4d...f9db0f`](./contracts/ethereum-1/0x067d4d3ce63450e74f880f86b5b52ea3edf9db0f/) | DAIBACLPTokenSharePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9569d4...fb0d0a`](./contracts/ethereum-1/0x9569d4cd7ac5b010da5697e952efb1ec0efb0d0a/) | DAIBASLPTokenSharePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x818f83...402f2e`](./contracts/ethereum-1/0x818f83333244ba4bb72dab0b60b1901158402f2e/) | Distribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14897d...dd40db`](./contracts/arbitrum-42161/0x14897d1510f60640f7c2e5a3eea48f21eddd40db/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b9c52...98f427`](./contracts/arbitrum-42161/0x0b9c52febf284c4cfc20c6311e90cca0b198f427/) | DPXStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d047d...ab149d`](./contracts/arbitrum-42161/0x1d047d01ff68188f4d2079d8f9119d7b33ab149d/) | ERC20VestingRescindable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x78dddc...dbcd0f`](./contracts/arbitrum-42161/0x78dddc12ec57b3a80b9160cfaa4274e3d8dbcd0f/) | FarmList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x065894...8eb1b0`](./contracts/ethereum-1/0x06589479a31f826410bbd6d43410e7ff2d8eb1b0/) | Feeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd4722a...70c673`](./contracts/arbitrum-42161/0xd4722a14d0b73edb948e9c96fa9278d8d870c673/) | GovernorBravoDelegate | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1cc155...0b6266`](./contracts/arbitrum-42161/0x1cc1554b76acc2968d6ecb15681e7e95c80b6266/) | HoneyADOGELPStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x989f62...62c233`](./contracts/arbitrum-42161/0x989f625a4536f0710be11e7292a9f5e0d562c233/) | HoneyEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe91713...bae18d`](./contracts/arbitrum-42161/0xe91713db2fabfef98a882de9bb7c583b5ebae18d/) | HoneyUSDCLPStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x666c2a...54c0cd`](./contracts/ethereum-1/0x666c2a4625ef5f8cf66a24fbff9f22437754c0cd/) | InitialCashDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c5323...e2f4bb`](./contracts/ethereum-1/0x3c53230875877321023f757c33d2faf71de2f4bb/) | InitialShareDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdbae6...120b11`](./contracts/ethereum-1/0xcdbae6de88c7525369d6826ae1cdcab415120b11/) | LinearThreshold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09eab9...e3200e`](./contracts/arbitrum-42161/0x09eab9c75152ee707b8da7595aa0b8c87be3200e/) | LinearVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb31a8c...2b8d5f`](./contracts/arbitrum-42161/0xb31a8caac061206ea4be16a6fc547e8bd92b8d5f/) | MagicETH2Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xee589b...ef8bce`](./contracts/arbitrum-42161/0xee589bc5e65e7e43199e9b0701768ada3cef8bce/) | MAGICStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | MarinateAutoCompounder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28e8fb...c9bb9d`](./contracts/arbitrum-42161/0x28e8fbea79201a134bf9506c47926f179bc9bb9d/) | MarinateV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d41b...e3b40e`](./contracts/ethereum-1/0x01d41bb9964e95df586974fe68996e3bd4e3b40e/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6043...ade677`](./contracts/ethereum-1/0x1b604349100a318e369b59a6d6c1b65a31ade677/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/) | Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x53c9ca...4c675b`](./contracts/arbitrum-42161/0x53c9ca5d494b9a41c43637d12e8369db7b4c675b/) | MultiSigPeriodicTimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x211a39...d4ef63`](./contracts/arbitrum-42161/0x211a39dcbf67d3781af34a824c716ad0c8d4ef63/) | NyanEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6f7bf5...1840e6`](./contracts/arbitrum-42161/0x6f7bf5cb2b274e654a16e64f8259fceaf41840e6/) | NYANETHStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/) | NyanRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ea9c7...e9e52f`](./contracts/arbitrum-42161/0x1ea9c72b8152c7fc0128351e42536f7b7be9e52f/) | NyanStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b3868...8ff7ed`](./contracts/ethereum-1/0x1b3868247dfbc155fa59b30ec03e63b10a8ff7ed/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x485e17...bd183d`](./contracts/arbitrum-42161/0x485e17a5b692134db279792054c6cc0b72bd183d/) | PEGGStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8b3b94...57d3c9`](./contracts/arbitrum-42161/0x8b3b94b035fee148e9d5955f025fcc2f2c57d3c9/) | Pipeline | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe34003...098bc2`](./contracts/arbitrum-42161/0xe340031b61a394c7811868ef81d2eacc79098bc2/) | PONGRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe74e9f...50a7ec`](./contracts/arbitrum-42161/0xe74e9f3b9f862b7707531abf425621f53050a7ec/) | PongStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7a20ee...e36b24`](./contracts/arbitrum-42161/0x7a20ee66ca1696d516c1bb780ae153ee1de36b24/) | PonzuStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66d7fa...30b7bb`](./contracts/ethereum-1/0x66d7fa132b5550205d4d6a6645b66283e330b7bb/) | PoolMigrator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fe765...b432c5`](./contracts/ethereum-1/0x1fe7656fa41eea50b0ee8591fd6b405c94b432c5/) | PoolProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01592e...a00ae6`](./contracts/ethereum-1/0x01592e349258233a6f13685228060511eca00ae6/) | PoolStore | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e3d21...41510c`](./contracts/ethereum-1/0x2e3d21e2730b4e5d5ee7214d4723ea96d041510c/) | PoolWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2906c8...be1a95`](./contracts/arbitrum-42161/0x2906c88ae542deda106cb3e8e65071f99dbe1a95/) | PPEGGEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x60ae12...ab3cf5`](./contracts/arbitrum-42161/0x60ae12b7999c5ced1c57230d2040fd1e5cab3cf5/) | PPEGGETHStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x38bfa7...d6bd1e`](./contracts/arbitrum-42161/0x38bfa71260b24e5f7d3ad0c28823820131d6bd1e/) | PremiaETHStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7ed29...b63696`](./contracts/ethereum-1/0xa7ed29b253d8b4e3109ce07c80fc570f81b63696/) | Share | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x106538...875287`](./contracts/ethereum-1/0x106538cc16f938776c7c180186975bca23875287/) | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa72872...07f7f3`](./contracts/ethereum-1/0xa728721394084ea78f10cebb192323f50407f7f3/) | SigmoidThreshold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4849d2...01cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | SimpleERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b075b...98fe22`](./contracts/ethereum-1/0x7b075b3aa2f1143775101986b52e32da9d98fe22/) | SimpleERCFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | StakedBPT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ec62f...9062de`](./contracts/arbitrum-42161/0x1ec62f8367ad3ff61c3f3b0ab1d0297a539062de/) | stARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x26804f...785308`](./contracts/arbitrum-42161/0x26804fdd4d4d893686233f8399174f2d2a785308/) | stARBISReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbc00c...a362d5`](./contracts/ethereum-1/0xcbc00cccbce9d798c412f568436901ff46a362d5/) | StrategyBusd | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf7f9c7...c68c0b`](./contracts/ethereum-1/0xf7f9c789852025862cc160f464d42ca18fc68c0b/) | StrategyHbtc | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9db02f...cbad5a`](./contracts/ethereum-1/0x9db02f1d70ac934faca6bdef78a0fa080fcbad5a/) | StrategyUsdc | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15e926...ecd695`](./contracts/ethereum-1/0x15e926954b0013ae37d4241fc6e7bcb1e0ecd695/) | StrategyUsdt | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x964a64...72bc36`](./contracts/ethereum-1/0x964a640e90fa759c1de9951ebddba730c872bc36/) | StrategyWbtc | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x1dc6cd...5449a1`](./contracts/gnosis-100/0x1dc6cd9f76972039cd8e071ec65cc4bd035449a1/) | TimelockController_RewardsDistributor2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | TokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf840f3...950935`](./contracts/ethereum-1/0xf840f3ee161756cec04a64d25eb497c557950935/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02957a...c877f5`](./contracts/ethereum-1/0x02957ae53173f58dc9989c4a09853f9528c877f5/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x62055d...01fe23`](./contracts/arbitrum-42161/0x62055dba1d132dbe91805062fb3dcfce3501fe23/) | USDCETHStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6ffb81...6d2a79`](./contracts/arbitrum-42161/0x6ffb81770eb66d9d5e1ce6f6a48753e6c26d2a79/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bddf1...eb729b`](./contracts/ethereum-1/0x6bddf10f9956dcda89998c2e673f74a09deb729b/) | VoteProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5800fc...816546`](./contracts/ethereum-1/0x5800fc35f004c1218b18a22940ee7e8be4816546/) | WeightFeeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19f35c...8e493e`](./contracts/ethereum-1/0x19f35ce3c3875c120ab602386c8d6a59e88e493e/) | WhiteList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 167 |
| upstream | 1 |
| standard_library | 6 |
| needs_review | 181 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
