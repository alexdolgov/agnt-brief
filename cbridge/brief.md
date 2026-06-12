# Agentic Audit Brief: cBridge

## Project Overview

- Project: cBridge (`cbridge`)
- Website: [https://cbridge.celer.network/#/transfer](https://cbridge.celer.network/#/transfer)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-12T15:05:35.100Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-769a
- Chains: arbitrum, aurora, avalanche, base, boba, bsc, celo, ethereum, fantom, gnosis, harmony, heco, linea, metis, moonbeam, moonriver, optimism, polygon, polygon-zkevm, scroll, zksync-era
- Contract surface: 1348 unique implementations (2382 raw deployments)
- DeFi Llama TVL: $15,020,171.14
- On-chain TVL (included contracts): $50,157,969.17
- TVL by chain: Arbitrum $50,091,983.41 | Avalanche $48,873.25 | Bsc $17,112.51

## Project Description

cBridge is Celer Network's cross-chain asset bridge for transferring tokens across supported blockchains, using bridge/liquidity mechanisms together with Celer SGN and messaging infrastructure. Specific on-chain contract roles should be treated as unknown unless verified from official deployment records, source code, or documentation.

### Architecture

The cBridge family consists of a single product line where core bridge contracts (liquidity pools, relay nodes) are deployed across multiple chains and share a common architecture. Supporting contracts include token adapters and access control modules that facilitate asset transfers and governance across the bridge network.

## Audit Coverage Summary

- Verified implementations audited: 0/557 (0.0%)
- Verified + Unaudited implementations: 554
- Verified by bytecode match: 3
- Unverified implementations: 791
- Unique implementations: 1348
- Raw deployments: 2382
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $50,157,969.17
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (554)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ArbFiatToken | token | arbitrum | 2 deployments: arbitrum [`0x1efb3f...f5ded8`](./contracts/arbitrum-42161/0x1efb3f88bc88f03fd1804a5c53b7141bbef5ded8/); arbitrum `0xff970a...db5cc8` | ⚠️ Unaudited |
| LQTYToken | token | avalanche | [`0x094bd7...0fddcc`](./contracts/avalanche-43114/0x094bd7b2d99711a1486fb94d4395801c6d0fddcc/) | ⚠️ Unaudited |
| OriginalTokenVaultV2 | core_logic | bsc | 6 deployments: ethereum `0x751079...f2bae1`; optimism `0x6e380a...13be4f`; bsc [`0x11a0c9...44a980`](./contracts/bsc-56/0x11a0c9270d88c99e221360bca50c2f6fda44a980/); arbitrum `0xea4b1b...a4a58b`; avalanche `0xb51541...4502bb`; aurora `0xbcfef6...40aa11` | ⚠️ Unaudited |
| ActivePool | core_logic | avalanche | 2 deployments: avalanche [`0x23ad4c...fc9a86`](./contracts/avalanche-43114/0x23ad4cb653813c319b18a63300e54df4a6fc9a86/); avalanche `0x604f96...b34271` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | avalanche | 2 deployments: avalanche [`0xbc6c16...fbca36`](./contracts/avalanche-43114/0xbc6c16283c1260ce5cf72c951b4d399e81fbca36/); avalanche `0xc063e2...353f91` | ⚠️ Unaudited |
| StabilityPool | core_logic | avalanche | 2 deployments: avalanche [`0x19530a...1c0c78`](./contracts/avalanche-43114/0x19530a26c2eab34aec6adaef678f333b8f1c0c78/); avalanche `0x7aed63...607522` | ⚠️ Unaudited |
| MappingTokenV2 | unknown | moonriver | 6 deployments: moonriver [`0x31d459...96c2d5`](./contracts/moonriver-1285/0x31d45973e7428251a69d767e077dc50bf696c2d5/); moonriver `0x900f1e...802667`; avalanche `0x8d9dcc...eb70b6`; avalanche `0x9e529b...1448e5`; avalanche `0xd38bfd...21fff9`; avalanche `0xea6887...5cddef` | ⚠️ Unaudited |
| L2WethGateway | token | arbitrum | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | ⚠️ Unaudited |
| DefaultPool | core_logic | avalanche | 2 deployments: avalanche [`0x0d3d0d...8b054b`](./contracts/avalanche-43114/0x0d3d0dc2cedc60ac0a08c8d5677180eafd8b054b/); avalanche `0x43f9cd...576c7a` | ⚠️ Unaudited |
| AaveHandler | unknown | ethereum | [`0xbb7d75...316953`](./contracts/ethereum-1/0xbb7d75be4dc8eb15ff90422137c0a5bcbd316953/) | ⚠️ Unaudited |
| Address | unknown | ethereum | [`0x03e488...7456d9`](./contracts/ethereum-1/0x03e48857621881ebbd986b6763c1505ff17456d9/) | ⚠️ Unaudited |
| AdvanceAggregator | unknown | ethereum | [`0xa6d3da...fa6fd8`](./contracts/ethereum-1/0xa6d3da5ef0057542e151d8aab9ef818008fa6fd8/) | ⚠️ Unaudited |
| AdvisorTokenClaimer | unknown | ethereum | [`0x1e30d9...c5700e`](./contracts/ethereum-1/0x1e30d98e07fb1097c9d4d841df5b855fdcc5700e/) | ⚠️ Unaudited |
| AdvisorTokenClaimer2 | unknown | ethereum | 2 deployments: ethereum [`0x36a9e9...1deb60`](./contracts/ethereum-1/0x36a9e98ea581a4d59d7025bc008ebed1771deb60/); ethereum `0x85bb70...e06499` | ⚠️ Unaudited |
| AelinDeal | unknown | optimism | 4 deployments: optimism [`0x02b9e9...5a0d04`](./contracts/optimism-10/0x02b9e99a05458d763256b977e61c1d947a5a0d04/); optimism `0x3c8bef...3d8dad`; optimism `0x722969...88f853`; optimism `0xbca527...deeae0` | ⚠️ Unaudited |
| AelinPool | unknown | optimism | 5 deployments: optimism [`0x2569f6...990742`](./contracts/optimism-10/0x2569f66b7acd8954a7b3a48481823e30c4990742/); optimism `0x29e146...ffb15e`; optimism `0x528d21...dda296`; optimism `0x689b7d...8536be`; optimism `0xe30bd5...09521d` | ⚠️ Unaudited |
| AelinPoolFactory | unknown | optimism | 5 deployments: optimism [`0x3c312a...4c0cec`](./contracts/optimism-10/0x3c312abcef37e63e8ca3ac0c370fb1f8e74c0cec/); optimism `0x875253...3ebb10`; optimism `0x914ffc...4da20f`; optimism `0x9219f9...531a31`; optimism `0xcc2a48...cde6a8` | ⚠️ Unaudited |
| AelinToken | unknown | optimism | 3 deployments: optimism [`0x04432a...c08363`](./contracts/optimism-10/0x04432a6fd94e8bc8559d10ac1d98f15cd9c08363/); optimism `0x61baad...5e0b76`; optimism `0xfa0de0...84215d` | ⚠️ Unaudited |
| AggregationVerifier | periphery | linea | [`0x1cd353...8f3654`](./contracts/linea-59144/0x1cd3530f69a85b826b952033365adc4a008f3654/) | ⚠️ Unaudited |
| AggregatorProxy | unknown | polygon | 3 deployments: optimism `0xc9d1cb...77c627`; optimism `0xd7a23b...6fca38`; polygon [`0x7d25d2...a87aea`](./contracts/polygon-137/0x7d25d250fbd63b0dac4a38c661075930c9a87aea/) | ⚠️ Unaudited |
| Airdrop | unknown | optimism | 6 deployments: ethereum `0x4f896a...4a2771`; optimism [`0x1071f3...bb70c0`](./contracts/optimism-10/0x1071f3b2893f41094b1c84f090ea023042bb70c0/); optimism `0x19c185...dcb781`; optimism `0x1f8e52...a3caef`; optimism `0x256592...ddb4a2`; optimism `0xafd4df...0a285e` | ⚠️ Unaudited |
| AllowlistCollectorForLunarNFT | unknown | ethereum | [`0xd38143...a7e413`](./contracts/ethereum-1/0xd3814346f232ac7493b8e266276920455aa7e413/) | ⚠️ Unaudited |
| AMM | unknown | ethereum | 9 deployments: ethereum [`0x028fb0...8cf25e`](./contracts/ethereum-1/0x028fb01ffafe25e278ebb467f69bd79a928cf25e/); ethereum `0x5378b0...1eac18`; ethereum `0x7230d6...a7605a`; ethereum `0x942df6...53b52c`; ethereum `0xa38934...00dae6`; ethereum `0xaaac84...625520`; ethereum `0xbe8394...1a42dc`; ethereum `0xc82a6a...66a06f`; ethereum `0xf4ce6d...9bb7bf` | ⚠️ Unaudited |
| AMMModule | unknown | arbitrum | 2 deployments: arbitrum [`0x03f991...656009`](./contracts/arbitrum-42161/0x03f99130225a3e8f73ee2a22685c188686656009/); arbitrum `0x834df2...23d736` | ⚠️ Unaudited |
| AmmVault | unknown | optimism | 13 deployments: optimism [`0x0d1098...cfb7a9`](./contracts/optimism-10/0x0d1098469d651161cc8211e2973afd5ad1cfb7a9/); optimism `0x1dc1a6...829fac`; optimism `0x43318d...649c83`; optimism `0x5d68d6...2e741f`; optimism `0x63d6dd...d29f4b`; optimism `0x643e43...a1c83c`; optimism `0x6a763c...ab16ac`; optimism `0x6c7fd4...bca29f`; optimism `0x76711e...c22beb`; optimism `0x9a2017...557973`; optimism `0x9d3abe...3be41f`; optimism `0xb48402...196f93`; optimism `0xfb1d1a...e9a1f9` | ⚠️ Unaudited |
| AmmVaultData | unknown | optimism | 2 deployments: optimism [`0x70164a...03286b`](./contracts/optimism-10/0x70164a1ec9d21c4dba2b4f9b23750f9c7d03286b/); optimism `0xb5bec3...d4c4ad` | ⚠️ Unaudited |
| AmyFinanceToken | unknown | arbitrum | [`0x8fbd42...f2389c`](./contracts/arbitrum-42161/0x8fbd420956fdd301f4493500fd0bcaaa80f2389c/) | ⚠️ Unaudited |
| AnchorBlocks | unknown | linea | [`0xc4ba1c...8b8399`](./contracts/linea-59144/0xc4ba1cc6897ff08bbeab20b4c691077daa8b8399/) | ⚠️ Unaudited |
| Animal | unknown | ethereum | [`0x38b0e3...f003e2`](./contracts/ethereum-1/0x38b0e3a59183814957d83df2a97492aed1f003e2/) | ⚠️ Unaudited |
| ApexConsumer | unknown | optimism | 5 deployments: optimism [`0x0a6851...b75325`](./contracts/optimism-10/0x0a6851c7d112a27019d84dccb9ce0c0cd8b75325/); optimism `0x2db778...844703`; optimism `0x93714e...952f62`; optimism `0x9712ef...813646`; optimism `0xfd0740...c73ca9` | ⚠️ Unaudited |
| ApexConsumerWrapper | unknown | optimism | 4 deployments: optimism [`0x20612e...36210e`](./contracts/optimism-10/0x20612e6a0ddadc322b7b48e3c4246fb23836210e/); optimism `0x7a07c2...a2cad8`; optimism `0x8f9869...ca52b2`; optimism `0xb0dd7b...d8f29c` | ⚠️ Unaudited |
| ArbMCBv2 | unknown | arbitrum | 6 deployments: arbitrum [`0x4e352c...a4ce42`](./contracts/arbitrum-42161/0x4e352cf164e64adcbad318c3a1e222e9eba4ce42/); arbitrum `0x637010...14b1e5`; arbitrum `0x7019f7...320521`; arbitrum `0x80a267...a87001`; arbitrum `0x97797f...6f1f8a`; arbitrum `0xf0d6c7...e799b9` | ⚠️ Unaudited |
| ArbStip | unknown | arbitrum | [`0x403fd3...e72fb8`](./contracts/arbitrum-42161/0x403fd39cbb6f1a1b5a842a29a88b2d262ce72fb8/) | ⚠️ Unaudited |
| ASVA | unknown | polygon | [`0xe7e0ba...a0caa1`](./contracts/polygon-137/0xe7e0ba6f84d843d17cb8410810bf3e8bcda0caa1/) | ⚠️ Unaudited |
| Attack | unknown | ethereum | 2 deployments: ethereum [`0x5f4120...8d3782`](./contracts/ethereum-1/0x5f4120787e3d39b77cd18954f10099c7aa8d3782/); ethereum `0xdc39a2...ea48c5` | ⚠️ Unaudited |
| Authenticator | unknown | arbitrum | [`0x737da8...67acf2`](./contracts/arbitrum-42161/0x737da8533e4fa59c1292545d8d155c199567acf2/) | ⚠️ Unaudited |
| AvocadoDAOToken | unknown | ethereum | [`0xa41f14...2f311f`](./contracts/ethereum-1/0xa41f142b6eb2b164f8164cae0716892ce02f311f/) | ⚠️ Unaudited |
| BActions | unknown | ethereum | [`0x438bdd...5a028b`](./contracts/ethereum-1/0x438bdde67caa7271ef41357c11cf8637365a028b/) | ⚠️ Unaudited |
| BDeployer | unknown | ethereum | [`0x31864b...6de9eb`](./contracts/ethereum-1/0x31864bc58a47a4fc8782b4135873788e876de9eb/) | ⚠️ Unaudited |
| BeaconProxyFactory | registry | arbitrum | [`0x3fe380...11000f`](./contracts/arbitrum-42161/0x3fe38087a94903a9d946fa1915e1772fe611000f/) | ⚠️ Unaudited |
| BeaconVerifier | registry | linea | [`0x0c8936...555544`](./contracts/linea-59144/0x0c89365bac13eeb8adb131f213275edfd6555544/) | ⚠️ Unaudited |
| BFactory | unknown | ethereum | 2 deployments: ethereum [`0x54c297...3a8330`](./contracts/ethereum-1/0x54c2971978e9147c62445da45bbabe94d53a8330/); ethereum `0xb794be...7faab8` | ⚠️ Unaudited |
| BinaryOptionMarketData | unknown | optimism | [`0xe2881c...0c0fa0`](./contracts/optimism-10/0xe2881cad27db4c27fb3814ad97cca694b80c0fa0/) | ⚠️ Unaudited |
| BinaryOptionMarketFactory | unknown | optimism | [`0xe0b316...86dd63`](./contracts/optimism-10/0xe0b31640b07e4bcfafc190d7dde951ba3286dd63/) | ⚠️ Unaudited |
| BinaryOptionMarketManager | unknown | optimism | [`0xbe086e...d6a6f3`](./contracts/optimism-10/0xbe086e0a2c588ad64c8530048ce4356190d6a6f3/) | ⚠️ Unaudited |
| BinaryOptionMarketMastercopy | unknown | optimism | [`0x89df50...033cdb`](./contracts/optimism-10/0x89df505c693ac7e07d8d5d6308fe0bd041033cdb/) | ⚠️ Unaudited |
| BinaryOptionMastercopy | unknown | optimism | [`0x8947da...a8c3c5`](./contracts/optimism-10/0x8947da500eb47f82df21143d0c01a29862a8c3c5/) | ⚠️ Unaudited |
| BlankToken | unknown | ethereum | [`0xaec7e1...c48966`](./contracts/ethereum-1/0xaec7e1f531bb09115103c53ba76829910ec48966/) | ⚠️ Unaudited |
| BMIToken | unknown | polygon | 3 deployments: ethereum `0x725c26...1ee688`; ethereum `0x9b5fe7...0b20cd`; polygon [`0x3e1b4f...7da2b6`](./contracts/polygon-137/0x3e1b4ff4ae3ab8f0cb40a34a6ad3fc817f7da2b6/) | ⚠️ Unaudited |
| BMITokenVesting | unknown | ethereum | 3 deployments: ethereum [`0x428618...f540ce`](./contracts/ethereum-1/0x428618972b38d1d33f2c153bf620158599f540ce/); ethereum `0x9a9460...0fdfaf`; ethereum `0xd3e6ff...c675b1` | ⚠️ Unaudited |
| BMITokenVestingV2 | unknown | ethereum | [`0x339d1c...ed3574`](./contracts/ethereum-1/0x339d1c142f113e7b910668aa6cba8ae3bbed3574/) | ⚠️ Unaudited |
| BMITokenVestingV4 | unknown | ethereum | [`0xa6d84f...8f09e2`](./contracts/ethereum-1/0xa6d84f96685b719439f1203cc85d3bb58a8f09e2/) | ⚠️ Unaudited |
| BMIVesting | unknown | ethereum | 2 deployments: ethereum [`0xda6a8b...9c7b02`](./contracts/ethereum-1/0xda6a8b079a0f8fcf30f3558e9205ed02829c7b02/); ethereum `0xe2289e...f865a4` | ⚠️ Unaudited |
| Bn128SchnorrVerifier | periphery | avalanche | [`0xe162d7...0887b5`](./contracts/avalanche-43114/0xe162d75452f357cb95b8867e06174d9c410887b5/) | ⚠️ Unaudited |
| BOBA | unknown | ethereum | [`0x42bbfa...53efbc`](./contracts/ethereum-1/0x42bbfa2e77757c645eeaad1655e0911a7553efbc/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | avalanche | 2 deployments: avalanche [`0xa47c35...e24f67`](./contracts/avalanche-43114/0xa47c35375d99a20318653b011b0e3fef85e24f67/); avalanche `0xf582ca...be0307` | ⚠️ Unaudited |
| BrevisProof | unknown | linea | [`0x7abd76...079222`](./contracts/linea-59144/0x7abd76eb305263b044acce44491010cdc3079222/) | ⚠️ Unaudited |
| BrevisRequest | unknown | linea | [`0xfa78cb...2752b3`](./contracts/linea-59144/0xfa78cba4ebbf8fe28b4fc1468948f16fda2752b3/) | ⚠️ Unaudited |
| Bridge | unknown | arbitrum | 17 deployments: ethereum `0x5427fe...da1820`; ethereum `0xc578cb...4ad062`; optimism `0x9d39fc...cc3401`; bsc `0xdd90e5...81a1af`; gnosis `0x3795c3...b60283`; polygon `0x88dcdc...958a78`; polygon `0xa251c4...d8ac5c`; metis `0x841ce4...d0738c`; moonbeam `0x841ce4...d0738c`; moonriver `0x841ce4...d0738c`; arbitrum [`0x1619de...63feca`](./contracts/arbitrum-42161/0x1619de6b6b20ed217a58d00f37b9d47c7663feca/); celo `0xbb7684...1ad573`; avalanche `0xbb7684...1ad573`; avalanche `0xef3c71...82e5d4`; linea `0x9b36f1...8f3a1f`; scroll `0x9b36f1...8f3a1f`; aurora `0x841ce4...d0738c` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | avalanche | 19 deployments: avalanche [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/); avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xabc954...58d083`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70` | ⚠️ Unaudited |
| Broker | unknown | arbitrum | [`0xf985ca...7d87d9`](./contracts/arbitrum-42161/0xf985ca33b8b787599de77e4ccf2d0ecbf27d87d9/) | ⚠️ Unaudited |
| CapitalFreeLiquidate | unknown | ethereum | [`0xbb9227...4064d6`](./contracts/ethereum-1/0xbb92270716c8c424849f17ccc12f4f24ad4064d6/) | ⚠️ Unaudited |
| CapitalFreeLiquidate02 | unknown | ethereum | [`0xeac319...b88ec2`](./contracts/ethereum-1/0xeac319b32c332c233b9abc96ac648fbae0b88ec2/) | ⚠️ Unaudited |
| CBridge | unknown | polygon | 2 deployments: polygon [`0x841ce4...d0738c`](./contracts/polygon-137/0x841ce48f9446c8e281d3f1444cb859b4a6d0738c/); arbitrum [`0x841ce4...d0738c`](./contracts/arbitrum-42161/0x841ce48f9446c8e281d3f1444cb859b4a6d0738c/) | ⚠️ Unaudited |
| CBTMigrator | unknown | ethereum | 2 deployments: ethereum [`0x44d33a...1dda36`](./contracts/ethereum-1/0x44d33aba0f8edd5fc4dd73da27f09b03711dda36/); ethereum `0x8240ad...c24579` | ⚠️ Unaudited |
| CBTToken | unknown | ethereum | 2 deployments: ethereum [`0x10a5c4...258164`](./contracts/ethereum-1/0x10a5c4d02f5baecd1001bad654a9c12bae258164/); ethereum `0x8e1912...a03b06` | ⚠️ Unaudited |
| CDeployer | unknown | ethereum | [`0xc12e00...47fb6c`](./contracts/ethereum-1/0xc12e00de204d58ead5b5ce9054e94aee7747fb6c/) | ⚠️ Unaudited |
| CECMigrator | unknown | ethereum | 2 deployments: ethereum [`0x46351a...8d13be`](./contracts/ethereum-1/0x46351afaef9ca4475f5dbe85855fa746bc8d13be/); ethereum `0x526436...81c86e` | ⚠️ Unaudited |
| CECToken | unknown | ethereum | 3 deployments: ethereum [`0x0b1993...e38b77`](./contracts/ethereum-1/0x0b19935d38be66214eddfd44fe19968645e38b77/); ethereum `0x9e564e...661bdc`; ethereum `0xa98fc5...2bbbb3` | ⚠️ Unaudited |
| CelerToken | unknown | ethereum | [`0x4f9254...81c667`](./contracts/ethereum-1/0x4f9254c83eb525f9fcf346490bbb3ed28a81c667/) | ⚠️ Unaudited |
| CGGToken | unknown | ethereum | [`0x1fe24f...fa5e43`](./contracts/ethereum-1/0x1fe24f25b1cf609b9c4e7e12d802e3640dfa5e43/) | ⚠️ Unaudited |
| ChainGuardiansToken900 | unknown | ethereum | [`0x2a2ad5...ff0379`](./contracts/ethereum-1/0x2a2ad5a2eacf35194d39afe1d727c39710ff0379/) | ⚠️ Unaudited |
| Claim | unknown | ethereum | [`0x637c91...22ad31`](./contracts/ethereum-1/0x637c9190b013829c6b9c0fa585d08253dd22ad31/) | ⚠️ Unaudited |
| ClaimAggregator | unknown | ethereum | [`0x5287ca...264b69`](./contracts/ethereum-1/0x5287cac629be59997602b4177cb4420165264b69/) | ⚠️ Unaudited |
| Claimer | unknown | ethereum | [`0xdc4baf...296f60`](./contracts/ethereum-1/0xdc4baf3b4b1df79083eedf3e46ec2c4ec1296f60/) | ⚠️ Unaudited |
| ClaimProxy | unknown | arbitrum | [`0xcf08d1...8c383c`](./contracts/arbitrum-42161/0xcf08d18cec66b57a27fd19106c5fe246118c383c/) | ⚠️ Unaudited |
| ClonableBeaconProxy | unknown | arbitrum | 3 deployments: arbitrum [`0x753d22...1d3dac`](./contracts/arbitrum-42161/0x753d224bcf9aafacd81558c32341416df61d3dac/); arbitrum `0xd8083e...211ab6`; arbitrum `0xf0a571...735fba` | ⚠️ Unaudited |
| CloutArtToken | unknown | polygon | [`0x262b8a...02b728`](./contracts/polygon-137/0x262b8aa7542004f023b0eb02bc6b96350a02b728/) | ⚠️ Unaudited |
| CollateralModule | unknown | arbitrum | 2 deployments: arbitrum [`0x6a25f5...24a51e`](./contracts/arbitrum-42161/0x6a25f5494c285ef5510c55f0aa5d32b54724a51e/); arbitrum `0xcead75...804a99` | ⚠️ Unaudited |
| CommunityIssuance | unknown | avalanche | [`0xb4fbc7...b6f982`](./contracts/avalanche-43114/0xb4fbc7839ce88029c8c1c6274660118e27b6f982/) | ⚠️ Unaudited |
| CompoundVault | unknown | arbitrum | [`0x67dd2f...27197c`](./contracts/arbitrum-42161/0x67dd2f4d6e6d6d8d17b4839e6bff4fec2627197c/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | 2 deployments: ethereum [`0x7d9986...d1dc31`](./contracts/ethereum-1/0x7d99869f4a9cb386ce1995929b352e0fabd1dc31/); ethereum `0xf05e7e...bb382a` | ⚠️ Unaudited |
| ContributorVesting | unknown | arbitrum | 4 deployments: arbitrum [`0x19ea65...c724f5`](./contracts/arbitrum-42161/0x19ea653256e79abaf90b4586632463d4b3c724f5/); arbitrum `0x47acb7...e83dda`; arbitrum `0xa506a3...e92207`; arbitrum `0xa99096...ce68c8` | ⚠️ Unaudited |
| ControllerStock | unknown | optimism | 4 deployments: optimism [`0x054a30...e19b4c`](./contracts/optimism-10/0x054a30b4fe877b0b92c3f1f4952a26ccdde19b4c/); optimism `0x4870fc...edb892`; optimism `0xdf0e11...af06f5`; polygon `0xb4de37...85a628` | ⚠️ Unaudited |
| ControllerV2BLP | unknown | polygon | 3 deployments: optimism `0xa300a8...d8bcf4`; polygon [`0x52eacd...025f37`](./contracts/polygon-137/0x52eacd19e38d501d006d2023c813d7e37f025f37/); arbitrum `0x8e7e9e...1e5408` | ⚠️ Unaudited |
| ConvergenceToken | unknown | ethereum | [`0xc834fa...aa8b50`](./contracts/ethereum-1/0xc834fa996fa3bec7aad3693af486ae53d8aa8b50/) | ⚠️ Unaudited |
| COTIETHSLPStakingRewards | unknown | ethereum | [`0x8eed31...b62abd`](./contracts/ethereum-1/0x8eed31c1b0e147e56db836c40129eeb03cb62abd/) | ⚠️ Unaudited |
| COTIETHStakingRewards | unknown | ethereum | [`0xe6e522...15c64b`](./contracts/ethereum-1/0xe6e5220291cf78b6d93bd1d08d746abbc115c64b/) | ⚠️ Unaudited |
| CrazyBunny | unknown | ethereum | [`0x9f4564...213aae`](./contracts/ethereum-1/0x9f4564b85cb77ce76cc725f29758cbfe20213aae/) | ⚠️ Unaudited |
| CrazyBunnyDistributor | unknown | ethereum | [`0x261fc7...81177b`](./contracts/ethereum-1/0x261fc7dae53b4c7d9d4fc44360695c226481177b/) | ⚠️ Unaudited |
| Create2Ownable | unknown | ethereum | [`0x0fd5ce...9667d4`](./contracts/ethereum-1/0x0fd5cece155619efc5e20432e7d8296fb19667d4/) | ⚠️ Unaudited |
| CrossChainRouter | unknown | optimism | [`0x1cc2a5...96a02a`](./contracts/optimism-10/0x1cc2a5a1f7c4ea9c29be62a58a5591e82f96a02a/) | ⚠️ Unaudited |
| CrossProxy | proxy | avalanche | 2 deployments: avalanche [`0x079ae7...81099e`](./contracts/avalanche-43114/0x079ae74b9ebd1d4f51ce2d1848565829b081099e/); avalanche `0x74e121...037c3a` | ⚠️ Unaudited |
| CVIOracleV3 | unknown | ethereum | [`0x6fc8cc...293ace`](./contracts/ethereum-1/0x6fc8cc3e6d3da8b29c4480e77e24dea298293ace/) | ⚠️ Unaudited |
| Cvp | unknown | ethereum | [`0x38e4ad...e7dca1`](./contracts/ethereum-1/0x38e4adb44ef08f22f5b5b76a8f0c2d0dcbe7dca1/) | ⚠️ Unaudited |
| CvpBridgeLocker | unknown | ethereum | 4 deployments: ethereum [`0x1f8eb3...4a8337`](./contracts/ethereum-1/0x1f8eb3cbb05166921d8204e6a1d8e5f9844a8337/); ethereum `0x94c8d7...468e2e`; ethereum `0x9d23d4...deeb4b`; ethereum `0xf11bd9...589bab` | ⚠️ Unaudited |
| CVPMaker | unknown | ethereum | 3 deployments: ethereum [`0x17cb2d...326de1`](./contracts/ethereum-1/0x17cb2de4e9e05a15d6a7e52abb00854081326de1/); ethereum `0x8c22e5...e5e047`; ethereum `0x9d9d0e...ca1afb` | ⚠️ Unaudited |
| CVPMakerVaultStrategy | unknown | ethereum | [`0x425054...b09b18`](./contracts/ethereum-1/0x425054cf8e12b0ab314ca7c1bb3807942db09b18/) | ⚠️ Unaudited |
| CVPMakerZapStrategy | unknown | ethereum | [`0x1eb5eb...5e593b`](./contracts/ethereum-1/0x1eb5eb4c6e8458f628646ac235e1760a665e593b/) | ⚠️ Unaudited |
| DeciMath | unknown | optimism | 3 deployments: optimism [`0x5c779c...60fb14`](./contracts/optimism-10/0x5c779cfae4b6b7a02c32938ddabdada8ab60fb14/); optimism `0xb6bec9...b9f86e`; optimism `0xf6a6e6...039aa8` | ⚠️ Unaudited |
| DefaultLiquidityProvider | unknown | optimism | 2 deployments: optimism [`0x0565b1...8fb898`](./contracts/optimism-10/0x0565b1ab5cee7075b32c2d6a5b9da44b708fb898/); optimism `0x0bac9e...c396b5` | ⚠️ Unaudited |
| DFCollateral | unknown | ethereum | [`0x617bed...1f5235`](./contracts/ethereum-1/0x617bed8699f71fe830a50469bd474bc8481f5235/) | ⚠️ Unaudited |
| DFDispatcher | unknown | ethereum | 3 deployments: ethereum [`0x5738e2...49bec6`](./contracts/ethereum-1/0x5738e22bace1f51b50c140684c02dd604a49bec6/); ethereum `0x6bac35...d868fa`; ethereum `0x6c1101...f30e91` | ⚠️ Unaudited |
| DFEngine | unknown | ethereum | [`0x8dc753...b60202`](./contracts/ethereum-1/0x8dc753d30b9f9f86dac3380e37d5bc03d6b60202/) | ⚠️ Unaudited |
| DFEngineV2 | unknown | ethereum | 2 deployments: ethereum [`0x071b49...4613d5`](./contracts/ethereum-1/0x071b49f6a26ffa31f67e833d3dfec500cc4613d5/); ethereum `0x3ea496...2c7d7c` | ⚠️ Unaudited |
| DFFunds | unknown | ethereum | [`0xd54780...54ce6d`](./contracts/ethereum-1/0xd5478011ccb79189a240a96ec913a8021b54ce6d/) | ⚠️ Unaudited |
| DForce | unknown | arbitrum | [`0x5d8063...a15ba1`](./contracts/arbitrum-42161/0x5d8063df0319457f777a353efef0dc0189a15ba1/) | ⚠️ Unaudited |
| DForceLendingHandler | unknown | ethereum | 4 deployments: ethereum [`0x10a49c...219c08`](./contracts/ethereum-1/0x10a49c54babef0d39f5531f0d1a5d98fbe219c08/); ethereum `0x1ec23c...42229f`; ethereum `0xe3412d...5ee5ff`; ethereum `0xeeeaf7...d3aeaa` | ⚠️ Unaudited |
| DFPool | unknown | ethereum | [`0x786bf5...23d895`](./contracts/ethereum-1/0x786bf554473f9ab733fd683c528212492a23d895/) | ⚠️ Unaudited |
| DFProtocol | unknown | ethereum | [`0x5843f1...d1a1e8`](./contracts/ethereum-1/0x5843f1ccc5baa448528eb0e8bc567cda7ed1a1e8/) | ⚠️ Unaudited |
| DFProtocolView | unknown | ethereum | 2 deployments: ethereum [`0x097dd2...f3396f`](./contracts/ethereum-1/0x097dd22173f0e382dae42baaeb9bdbc9fdf3396f/); ethereum `0x1351e1...6bf55e` | ⚠️ Unaudited |
| DFProxy | unknown | ethereum | [`0x7fdcda...4f57ba`](./contracts/ethereum-1/0x7fdcdad3b4a67e00d9fd5f22f4fd89a5fa4f57ba/) | ⚠️ Unaudited |
| DFSetting | unknown | ethereum | [`0x801c4a...48a32e`](./contracts/ethereum-1/0x801c4a04aad875b6aa91a2ec1346393ee348a32e/) | ⚠️ Unaudited |
| DFStore | unknown | ethereum | [`0xd30d06...91ba8d`](./contracts/ethereum-1/0xd30d06b276867cfa2266542791242ff37c91ba8d/) | ⚠️ Unaudited |
| Dispatcher | unknown | ethereum | 6 deployments: ethereum [`0x097647...c263e6`](./contracts/ethereum-1/0x097647b49c56318a28e4856f52ace0d26fc263e6/); ethereum `0x1cc565...2832a1`; ethereum `0x3fcf75...2b49e0`; ethereum `0x83d333...97472c`; ethereum `0xd733d0...a63670`; ethereum `0xf36004...ecee29` | ⚠️ Unaudited |
| DispatcherEntrance | unknown | ethereum | 2 deployments: ethereum [`0x8ab51f...e6ec93`](./contracts/ethereum-1/0x8ab51f2f409ff239aac0a477e1b5e68a7de6ec93/); ethereum `0xecd103...9a6638` | ⚠️ Unaudited |
| Distribution | unknown | optimism | 9 deployments: ethereum `0x924897...2e6291`; optimism [`0x1e634e...46455a`](./contracts/optimism-10/0x1e634e9622808a53f3e9a9c87a1ff9dabc46455a/); optimism `0x1fa677...c3a7c6`; optimism `0x24fa2b...5dcaf3`; optimism `0x2d662b...ed659e`; optimism `0x906d23...9162ec`; optimism `0xef1c0b...df66d9`; polygon `0x97af4e...e004cb`; polygon `0xa485b3...d81a5b` | ⚠️ Unaudited |
| DODO | unknown | ethereum | [`0x887681...2b4b2d`](./contracts/ethereum-1/0x8876819535b48b551c9e97ebc07332c7482b4b2d/) | ⚠️ Unaudited |
| DODOMine | unknown | ethereum | 2 deployments: ethereum [`0x5df860...a8945d`](./contracts/ethereum-1/0x5df8603b461d536bf6095c73d9857c14d1a8945d/); ethereum `0xa951ed...732b8c` | ⚠️ Unaudited |
| DODOToken | unknown | ethereum | [`0x43dfc4...7d4ddd`](./contracts/ethereum-1/0x43dfc4159d86f3a37a5a4b3d4580b888ad7d4ddd/) | ⚠️ Unaudited |
| DomiToken | unknown | ethereum | [`0x45c2f8...fef83f`](./contracts/ethereum-1/0x45c2f8c9b4c0bdc76200448cc26c48ab6ffef83f/) | ⚠️ Unaudited |
| DopexArbEthSsovWrapper | unknown | arbitrum | 2 deployments: arbitrum [`0x5bc65f...2c31c1`](./contracts/arbitrum-42161/0x5bc65f20abceada2c54140b2bb55962bba2c31c1/); arbitrum `0xa91322...d66a20` | ⚠️ Unaudited |
| DopexDpxSsovWrapper | unknown | arbitrum | 2 deployments: arbitrum [`0x39cd5f...914ea0`](./contracts/arbitrum-42161/0x39cd5f935cd7af62f6b74606484af7bbd4914ea0/); arbitrum `0xb2f4db...76da95` | ⚠️ Unaudited |
| DopexFarmWrapper | unknown | arbitrum | 2 deployments: arbitrum [`0x315e79...d8d0f3`](./contracts/arbitrum-42161/0x315e79536b0bd3617293ba4f68ef5772b7d8d0f3/); arbitrum `0xe5c24a...eb8a2b` | ⚠️ Unaudited |
| DopexGohmSsovWrapper | unknown | arbitrum | 2 deployments: arbitrum [`0x1dbccb...92c8ae`](./contracts/arbitrum-42161/0x1dbccb7bd0676df77574b702b61d4af44f92c8ae/); arbitrum `0x3b42b5...e6ebb6` | ⚠️ Unaudited |
| DSGuard | unknown | ethereum | 5 deployments: ethereum [`0x7f0ac3...d0a375`](./contracts/ethereum-1/0x7f0ac31162b38ab566e7552ab7b9a2b944d0a375/); ethereum `0x9121d1...014d6c`; ethereum `0x94874d...72cf8b`; ethereum `0xe4bf7d...0373c5`; ethereum `0xeabbf7...c5d24f` | ⚠️ Unaudited |
| DSToken | unknown | ethereum | 6 deployments: ethereum [`0x1cbd0c...5f7344`](./contracts/ethereum-1/0x1cbd0c8d16dd9c8f450c781b5c3e3623f95f7344/); ethereum `0x431ad2...f7dbe0`; ethereum `0x6199cc...5af9e5`; ethereum `0x6f4073...1ee957`; ethereum `0x9d2437...2e5ddd`; ethereum `0xeb2697...a83549` | ⚠️ Unaudited |
| DToken | unknown | ethereum | 10 deployments: ethereum [`0x02285a...df9224`](./contracts/ethereum-1/0x02285acaafeb533e03a7306c55ec031297df9224/); ethereum `0x109917...3e1f72`; ethereum `0x16c9cf...0f3179`; ethereum `0x331bcc...5f28ea`; ethereum `0x55bcf7...fb9f2b`; ethereum `0x868277...1d9fc8`; ethereum `0x90af4e...bd1ae8`; ethereum `0x9fe725...8f0d64`; ethereum `0xdd23a5...e1c443`; ethereum `0xf4dfc3...4f438a` | ⚠️ Unaudited |
| DTokenCommonData | unknown | ethereum | 4 deployments: ethereum [`0x3c7134...8a665b`](./contracts/ethereum-1/0x3c7134e3cbfa0f28dec60984e30419ab7a8a665b/); ethereum `0x675d92...345311`; ethereum `0x8ac0ff...69fc94`; ethereum `0xbd27ce...dfcf72` | ⚠️ Unaudited |
| DTokenController | unknown | ethereum | 2 deployments: ethereum [`0x0168e2...0a5ca6`](./contracts/ethereum-1/0x0168e2cc53d069876ff0a8963f91a9c4900a5ca6/); ethereum `0x9b6ba9...07967b` | ⚠️ Unaudited |
| DTokenProxy | unknown | ethereum | [`0xbcdd2a...ce6aee`](./contracts/ethereum-1/0xbcdd2a069a46e9b5d032d2f99725418508ce6aee/) | ⚠️ Unaudited |
| EmiFactory | unknown | ethereum | [`0x1771df...6cbf48`](./contracts/ethereum-1/0x1771dff85160768255f0a44d20965665806cbf48/) | ⚠️ Unaudited |
| EmiList | unknown | ethereum | [`0x99e401...01c73b`](./contracts/ethereum-1/0x99e401f9f825822f005d68b7d903038cc601c73b/) | ⚠️ Unaudited |
| EmiPrice2 | unknown | ethereum | [`0xb051f7...281340`](./contracts/ethereum-1/0xb051f7defd9ed3fbcb8cf911c01b06dbd7281340/) | ⚠️ Unaudited |
| EmiRouter | unknown | ethereum | [`0x22b8cc...d79f01`](./contracts/ethereum-1/0x22b8ccdeeeacb1f3879e36e06af413d44fd79f01/) | ⚠️ Unaudited |
| EmiVamp | unknown | ethereum | [`0xe629c4...e1a3af`](./contracts/ethereum-1/0xe629c4dc9538614019d17d09f54617ef89e1a3af/) | ⚠️ Unaudited |
| EnforceHub | unknown | arbitrum | 2 deployments: arbitrum [`0xb978d9...dd6e54`](./contracts/arbitrum-42161/0xb978d9d8e92fe060fd058a9ed106665db6dd6e54/); arbitrum `0xc14308...44088e` | ⚠️ Unaudited |
| EpicToken | unknown | ethereum | 2 deployments: ethereum [`0x66e6f7...4ee217`](./contracts/ethereum-1/0x66e6f738a835d1ad412dca933fb4fcd7a84ee217/); ethereum `0xe0a8f1...f80280` | ⚠️ Unaudited |
| ERC1155OrdersFeature | unknown | ethereum | [`0xa525c1...17f03c`](./contracts/ethereum-1/0xa525c126ea633221c3958525fab7aa73c217f03c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | 3 deployments: ethereum [`0x12f74e...ca68d1`](./contracts/ethereum-1/0x12f74e2eab982853e34a9f1515833fc64aca68d1/); ethereum `0x36895f...c25184`; ethereum `0x40c4d6...2fd23a` | ⚠️ Unaudited |
| ERC20 | unknown | ethereum | [`0x41a3db...c29666`](./contracts/ethereum-1/0x41a3dba3d677e573636ba691a70ff2d606c29666/) | ⚠️ Unaudited |
| ERC20DividendReward | token | avalanche | 4 deployments: avalanche [`0x211524...68b792`](./contracts/avalanche-43114/0x211524938f670659dbc3c7604effc86b4168b792/); avalanche `0x57bb67...fbe138`; avalanche `0x659194...ec2bc9`; avalanche `0xda60fa...72c5d6` | ⚠️ Unaudited |
| Erc20Mock | unknown | ethereum | [`0x902f7d...0a3b7e`](./contracts/ethereum-1/0x902f7d304ccf03e83deb279673b9b458ec0a3b7e/) | ⚠️ Unaudited |
| ERC20OrderRouter | unknown | moonriver | [`0xf77007...b046ee`](./contracts/moonriver-1285/0xf77007137ee5e95187e98fe10955708da1b046ee/) | ⚠️ Unaudited |
| Erc20PiptSwap | unknown | ethereum | 7 deployments: ethereum [`0x471868...23c67d`](./contracts/ethereum-1/0x471868211e03f0da24f8576cb546d4276623c67d/); ethereum `0x4a323f...076f36`; ethereum `0x56fa42...ccf7cb`; ethereum `0x57a47a...9284d1`; ethereum `0xa60052...ea3d7d`; ethereum `0xaeada2...5afd63`; ethereum `0xe65040...25588b` | ⚠️ Unaudited |
| ERC20PoolReward | core_logic | avalanche | 5 deployments: avalanche [`0x06ae93...b1007b`](./contracts/avalanche-43114/0x06ae936800330696f8b614796ad998e913b1007b/); avalanche `0x2dd0d0...1b83d6`; avalanche `0x8bdeb3...0bbd04`; avalanche `0xb12693...ad1042`; avalanche `0xda5339...980c0e` | ⚠️ Unaudited |
| ERC20PresetMinterPauserUpgradeSafe | unknown | ethereum | [`0xc9f6db...0cabc3`](./contracts/ethereum-1/0xc9f6db2d12c3ad65570e09cb98190330d20cabc3/) | ⚠️ Unaudited |
| ERC20Token | unknown | polygon | 4 deployments: polygon [`0x097a98...cb578d`](./contracts/polygon-137/0x097a98998473147777f9ed5d99961c5bdccb578d/); polygon `0x54fda0...9680bb`; polygon `0xb8681a...7ccfc4`; polygon `0xbdef2b...867142` | ⚠️ Unaudited |
| Erc20VaultPoolSwap | unknown | ethereum | 3 deployments: ethereum [`0x0cba3f...9b07ac`](./contracts/ethereum-1/0x0cba3ff4c6b04bc68d4dc33f836158044d9b07ac/); ethereum `0x13832e...40bb76`; ethereum `0x3d256e...6c0576` | ⚠️ Unaudited |
| ERC721OrdersFeature | unknown | ethereum | [`0x7e3519...241eb8`](./contracts/ethereum-1/0x7e351934bb84bbc4d8c483335f83991cb6241eb8/) | ⚠️ Unaudited |
| ERC721Token | unknown | polygon | 2 deployments: polygon [`0x176128...96efa4`](./contracts/polygon-137/0x176128a11c6ab02e5f43173cb29e7f89d296efa4/); polygon `0xa5c2c3...ae4377` | ⚠️ Unaudited |
| EscrowThales | unknown | optimism | 2 deployments: optimism [`0x566d35...aac9c2`](./contracts/optimism-10/0x566d358f3386abac32cbe750489306c73caac9c2/); optimism `0xb2d2c6...ad82ac` | ⚠️ Unaudited |
| ESW | unknown | aurora | 5 deployments: ethereum `0x5a75a0...18031d`; ethereum `0x75aaed...fc740d`; ethereum `0xb6e27e...4c9975`; polygon `0xd2a2a3...4a7d8f`; aurora [`0x18f383...7fd89b`](./contracts/aurora-1313161554/0x18f38359551258c35e8593d775cb6fe8d27fd89b/) | ⚠️ Unaudited |
| EthereumLightClient | unknown | linea | [`0x7636e5...54e0d1`](./contracts/linea-59144/0x7636e517daf7eb3c7bf74bb982e9e0e55554e0d1/) | ⚠️ Unaudited |
| ETHLPStakingRewards | unknown | ethereum | 2 deployments: ethereum [`0x40d203...25a6f6`](./contracts/ethereum-1/0x40d203332b0a262f1a371ae9da1788fe6825a6f6/); ethereum `0xe31424...f7e5f8` | ⚠️ Unaudited |
| EthMCBv2 | unknown | ethereum | 10 deployments: ethereum [`0x0544b7...7319c9`](./contracts/ethereum-1/0x0544b78760aab5db937d230a444da7ef9f7319c9/); ethereum `0x0a7f9e...5bd7d2`; ethereum `0x1a5bd8...ab831a`; ethereum `0x4e352c...a4ce42`; ethereum `0x504559...021ba0`; ethereum `0x775cec...0773e8`; ethereum `0x99abe3...3de42a`; ethereum `0xcbe10a...89a7cf`; ethereum `0xcead75...804a99`; ethereum `0xe31b53...749b81` | ⚠️ Unaudited |
| EthPiptSwap | unknown | ethereum | 5 deployments: ethereum [`0x0228e1...ab0c05`](./contracts/ethereum-1/0x0228e1074bd0d089719e69f7c3bf0a97b6ab0c05/); ethereum `0x333efd...b0b456`; ethereum `0x91aa1d...7b832f`; ethereum `0xa22604...57e458`; ethereum `0xe7a0f1...f8bb52` | ⚠️ Unaudited |
| ETHPlatform | unknown | ethereum | 3 deployments: ethereum [`0x145e6d...6d47a7`](./contracts/ethereum-1/0x145e6df857b241efdcb9b78a1b97a032606d47a7/); ethereum `0x5005e8...cf0e79`; ethereum `0xbe857e...52be72` | ⚠️ Unaudited |
| ETHStakingProxy | unknown | ethereum | 2 deployments: ethereum [`0x287839...a5b6de`](./contracts/ethereum-1/0x287839632973f7754c04a9e23d393aa09fa5b6de/); ethereum `0x78bb4b...cef929` | ⚠️ Unaudited |
| ETHVOL_USDCLPStakingRewards | unknown | ethereum | [`0x967440...df1a6d`](./contracts/ethereum-1/0x967440f87132008184c25b9c385860e908df1a6d/) | ⚠️ Unaudited |
| Exchange | unknown | ethereum | 2 deployments: ethereum [`0xb95b9f...a4e8b3`](./contracts/ethereum-1/0xb95b9fb0539ec84ded2855ed1c9c686af9a4e8b3/); ethereum `0xbf5c98...8d2650` | ⚠️ Unaudited |
| Excursions | unknown | moonriver | [`0xa66535...8253a1`](./contracts/moonriver-1285/0xa66535f73ca247e1b2e2b97149ca381be18253a1/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | 2 deployments: ethereum [`0x8c3736...5b767b`](./contracts/ethereum-1/0x8c3736e2fe63cc2cd89ee228d9dbcab6ce5b767b/); moonbeam `0xf49255...f92fef` | ⚠️ Unaudited |
| FarmController | unknown | arbitrum | 2 deployments: arbitrum [`0x0d3fdd...58f0c0`](./contracts/arbitrum-42161/0x0d3fdd45706bec4077725bf691bbb4770958f0c0/); arbitrum `0x5a8546...3c87cc` | ⚠️ Unaudited |
| Farming | unknown | moonbeam | [`0xa22687...918c2d`](./contracts/moonbeam-1284/0xa226877393fc4e3b5f2b43a1bae3c5d72c918c2d/) | ⚠️ Unaudited |
| FarmingPool | unknown | ethereum | 34 deployments: ethereum [`0x064aa6...d17fc6`](./contracts/ethereum-1/0x064aa6fd8d407da9a4e39d09aaa74a445fd17fc6/); ethereum `0x06eecf...adbf77`; ethereum `0x0a5a31...dac31d`; ethereum `0x0e1a3b...1323d9`; ethereum `0x0e60b6...d5b67e`; ethereum `0x18cb23...7b55ea`; ethereum `0x1e4cf6...498dc7`; ethereum `0x29d5ce...f1ddea`; ethereum `0x352527...343a16`; ethereum `0x44121f...91e83d`; ethereum `0x58fde5...93dce2`; ethereum `0x59af72...3ba8a3`; ethereum `0x5b87c4...fa839f`; ethereum `0x5ce1a9...f4f84d`; ethereum `0x6418bd...e3ab5b`; ethereum `0x69cc62...61a8ab`; ethereum `0x69de2d...01f24e`; ethereum `0x718cd1...9a0c98`; ethereum `0x72fe32...6c6a47`; ethereum `0x75218d...f59b3f`; ethereum `0x7aff0b...72ee9f`; ethereum `0x8485e1...85e420`; ethereum `0x8ce9fd...c51d53`; ethereum `0x99cf05...3451f5`; ethereum `0x9b2ab7...d6c297`; ethereum `0xb10ae9...8506e1`; ethereum `0xb2a139...9029bc`; ethereum `0xb5c04c...11596c`; ethereum `0xccddd7...0d12a4`; ethereum `0xcf6d10...44db79`; ethereum `0xd13fbc...932da9`; ethereum `0xde1439...88440f`; ethereum `0xfa3eb9...0fc2ff`; ethereum `0xfcdf28...6e145c` | ⚠️ Unaudited |
| FeesCalculator | unknown | ethereum | 3 deployments: ethereum [`0x1ff443...546f23`](./contracts/ethereum-1/0x1ff4434e0a41dbf903aa68923d6da76904546f23/); ethereum `0x78852f...d8b93c`; ethereum `0xc19cdd...29e70d` | ⚠️ Unaudited |
| FeesCalculatorV3 | unknown | ethereum | 2 deployments: ethereum [`0x05ba52...6cd94f`](./contracts/ethereum-1/0x05ba528f40feb3347f14af3bb6d97bf4826cd94f/); ethereum `0x5c2324...7b1184` | ⚠️ Unaudited |
| FeesModel | unknown | ethereum | [`0xf5ebf5...c10601`](./contracts/ethereum-1/0xf5ebf50661ee5b128dad3d71050520ccccc10601/) | ⚠️ Unaudited |
| FINN | unknown | moonriver | [`0x9a92b5...35a756`](./contracts/moonriver-1285/0x9a92b5ebf1f6f6f7d93696fcd44e5cf75035a756/) | ⚠️ Unaudited |
| FinnBar | unknown | moonriver | [`0x37619c...c9210b`](./contracts/moonriver-1285/0x37619cc85325afea778830e184cb60a3abc9210b/) | ⚠️ Unaudited |
| FixedInterestRateModel | unknown | polygon | 3 deployments: optimism `0xc5b1ec...09cf59`; polygon [`0x369da8...3526f9`](./contracts/polygon-137/0x369da886fc07b6d5ee5f1bb471d4f8e7833526f9/); arbitrum `0x96429f...6ce2fd` | ⚠️ Unaudited |
| FucDao | unknown | polygon | [`0x24164b...d28b2a`](./contracts/polygon-137/0x24164bba6efe2b92559d78d5393b609e0ad28b2a/) | ⚠️ Unaudited |
| Funds | unknown | ethereum | [`0xfc75b1...7fa9be`](./contracts/ethereum-1/0xfc75b11b0d753b2392637197b6d4cd31717fa9be/) | ⚠️ Unaudited |
| GamerCoin | unknown | ethereum | [`0x728f30...b1387d`](./contracts/ethereum-1/0x728f30fa2f100742c7949d1961804fa8e0b1387d/) | ⚠️ Unaudited |
| GamesOddsObtainer | unknown | optimism | [`0xc647ab...b7c03c`](./contracts/optimism-10/0xc647ab2cab7d6da6081703382ecf2814d8b7c03c/) | ⚠️ Unaudited |
| GasPool | core_logic | avalanche | 2 deployments: avalanche [`0x0d8d21...1cc665`](./contracts/avalanche-43114/0x0d8d21b2da99320af54b72ac0d3fce90921cc665/); avalanche `0x65b70a...547e3b` | ⚠️ Unaudited |
| GiantToken | unknown | ethereum | 2 deployments: ethereum [`0xb27f33...945800`](./contracts/ethereum-1/0xb27f33682418c52b1dcca1300b4982e3f6945800/); ethereum `0xfce6cd...ec373b` | ⚠️ Unaudited |
| GlobalConfig | unknown | ethereum | [`0x71e77f...187f64`](./contracts/ethereum-1/0x71e77ffbbfd4418ed47981927738b5425c187f64/) | ⚠️ Unaudited |
| GmxLibrary | unknown | arbitrum | [`0x405775...7f5d2a`](./contracts/arbitrum-42161/0x405775be91aab1d06a3afbb5a1a6d2a5cf7f5d2a/) | ⚠️ Unaudited |
| GOLDx | unknown | ethereum | 2 deployments: ethereum [`0x09a52b...4bb97a`](./contracts/ethereum-1/0x09a52b4c749d006f7fc0c3f316aeca54d74bb97a/); ethereum `0x355c66...ef20c0` | ⚠️ Unaudited |
| GOLDxProxy | unknown | ethereum | [`0x0effcb...eacc4f`](./contracts/ethereum-1/0x0effcb66871fcc97f074a901f69b1367d2eacc4f/) | ⚠️ Unaudited |
| GovernorAlpha | unknown | ethereum | 4 deployments: ethereum [`0x547b94...af0792`](./contracts/ethereum-1/0x547b94c527a343e07927f4b2ab602d7c63af0792/); ethereum `0xefe147...8e3ddf`; arbitrum `0x8597eb...abfe60`; arbitrum `0xb1bfc2...e994d2` | ⚠️ Unaudited |
| GOVI | unknown | ethereum | [`0xeeaa40...6c6107`](./contracts/ethereum-1/0xeeaa40b28a2d1b0b08f6f97bb1dd4b75316c6107/) | ⚠️ Unaudited |
| GOVIAirdrop | unknown | ethereum | [`0x21032c...7cb077`](./contracts/ethereum-1/0x21032cce4b54a2e856a0a006552e593d627cb077/) | ⚠️ Unaudited |
| GOVIETHSLPStakingRewards | unknown | ethereum | [`0xcf05a6...8f466a`](./contracts/ethereum-1/0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a/) | ⚠️ Unaudited |
| GOVIETHStakingRewards | unknown | ethereum | [`0x936dd3...975fb7`](./contracts/ethereum-1/0x936dd3112a9d39af39adda798503d9e7e7975fb7/) | ⚠️ Unaudited |
| HatDistributionCenter | unknown | arbitrum | 4 deployments: arbitrum [`0x1c208c...df48d7`](./contracts/arbitrum-42161/0x1c208cb30838cc3fd492627321624ce87cdf48d7/); arbitrum `0x808a84...dfdf86`; arbitrum `0x8c197b...a82eb4`; arbitrum `0xa35724...c4bf8c` | ⚠️ Unaudited |
| HatDistributionCenterV2 | unknown | arbitrum | [`0x4c163b...757bca`](./contracts/arbitrum-42161/0x4c163b64fd2c777bd0752cfc4312c7bbea757bca/) | ⚠️ Unaudited |
| HintHelpers | periphery | avalanche | 2 deployments: avalanche [`0xd6693d...56a89d`](./contracts/avalanche-43114/0xd6693dbd2fac496e7becd8319dda12ba7c56a89d/); avalanche `0xe90a06...d7d4fc` | ⚠️ Unaudited |
| HuckleberryFarm | unknown | moonriver | [`0x1f4b76...e343e6`](./contracts/moonriver-1285/0x1f4b7660b6adc3943b5038e3426b33c1c0e343e6/) | ⚠️ Unaudited |
| HuckleberryOracle | unknown | moonriver | [`0x063bf3...4262cf`](./contracts/moonriver-1285/0x063bf33bb0ac1bde7e0b8e0cfe625556844262cf/) | ⚠️ Unaudited |
| HuhToken | unknown | polygon | 2 deployments: ethereum `0x86d49f...5002ab`; polygon [`0x086484...c37786`](./contracts/polygon-137/0x08648471b5aad25feeeb853d6829048f3fc37786/) | ⚠️ Unaudited |
| iETH | unknown | arbitrum | 4 deployments: optimism `0x92273a...733b33`; polygon `0x00f970...4e0490`; arbitrum [`0x002cea...96e861`](./contracts/arbitrum-42161/0x002cea80a95e71859eec829d6d0ca4771596e861/); arbitrum `0xf5854a...5cad61` | ⚠️ Unaudited |
| iETHV2BLP | unknown | polygon | 3 deployments: optimism `0xa7a084...a7b3b4`; polygon [`0x6a3fe5...678c74`](./contracts/polygon-137/0x6a3fe5342a4bd09efcd44ac5b9387475a0678c74/); arbitrum `0xee3383...5dcc15` | ⚠️ Unaudited |
| ImpossibleFinance | unknown | ethereum | [`0xb0e1fc...614af1`](./contracts/ethereum-1/0xb0e1fc65c1a741b4662b813eb787d369b8614af1/) | ⚠️ Unaudited |
| iMSD | unknown | arbitrum | 3 deployments: optimism `0x0c9261...d81740`; arbitrum [`0x062465...c72c96`](./contracts/arbitrum-42161/0x06246560298c5ebdda06ab8be6731b9cf8c72c96/); arbitrum `0xd7ede5...3d247f` | ⚠️ Unaudited |
| iMSDMiniPool | unknown | optimism | 2 deployments: optimism [`0xb24912...d978ef`](./contracts/optimism-10/0xb249124bab33f78dd975e4e725e6a20868d978ef/); optimism `0xb6ef2c...eaa4c0` | ⚠️ Unaudited |
| iMSDV2BLP | unknown | arbitrum | 3 deployments: optimism `0x94a14b...45876a`; arbitrum [`0x5be49b...322021`](./contracts/arbitrum-42161/0x5be49b2e04ac55a17c72ac37e3a85d9602322021/); arbitrum `0xe8c85b...fea56c` | ⚠️ Unaudited |
| iMUSX | unknown | optimism | [`0xabf7fc...213f07`](./contracts/optimism-10/0xabf7fc467846923a9e3c573725daa1e6fb213f07/) | ⚠️ Unaudited |
| Imx | unknown | ethereum | [`0x7b35ce...764a00`](./contracts/ethereum-1/0x7b35ce522cb72e4077baeb96cb923a5529764a00/) | ⚠️ Unaudited |
| IndicesSupplyRedeemZap | unknown | ethereum | 4 deployments: ethereum [`0x42c1e2...130b93`](./contracts/ethereum-1/0x42c1e21b04549e44a78c7c6e5e80b6f36d130b93/); ethereum `0x49e4c5...0c6e54`; ethereum `0x85c6d6...36b9e9`; ethereum `0xb6d77b...4743d3` | ⚠️ Unaudited |
| InitialClaim | unknown | ethereum | [`0x2ad3cf...a17a11`](./contracts/ethereum-1/0x2ad3cf980eb7cd382ebaf12c7c8d995bfea17a11/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | [`0x99a4c9...6be75a`](./contracts/ethereum-1/0x99a4c9e302ce95562df9064542ad8698006be75a/) | ⚠️ Unaudited |
| InternalHandler | unknown | ethereum | 2 deployments: ethereum [`0x3c5732...eb7f8b`](./contracts/ethereum-1/0x3c573234e1a9e47e0cac56db543e1ca153eb7f8b/); ethereum `0x885dd1...4cf592` | ⚠️ Unaudited |
| IntervalResolverJobMock | unknown | ethereum | 2 deployments: ethereum [`0xb947a0...832ffb`](./contracts/ethereum-1/0xb947a08a04ae0f196a0a53c5f130cab15f832ffb/); ethereum `0xfdf4b2...95362d` | ⚠️ Unaudited |
| InverseStateService | unknown | arbitrum | [`0x129ad0...6453d3`](./contracts/arbitrum-42161/0x129ad040bd127c00d6de9051b3cfe9f3e36453d3/) | ⚠️ Unaudited |
| iToken | unknown | arbitrum | 4 deployments: optimism `0x52eacd...025f37`; optimism `0xb98024...67e58f`; polygon `0xfe5ad9...b1fa3c`; arbitrum [`0x45b563...4a0772`](./contracts/arbitrum-42161/0x45b5636b01091336f02194d327374924d54a0772/) | ⚠️ Unaudited |
| iTokenAggregatorModel | unknown | optimism | [`0x838614...52eea4`](./contracts/optimism-10/0x8386145dd223d7f23a14490079d40627b252eea4/) | ⚠️ Unaudited |
| iTokenV2BLP | unknown | arbitrum | 31 deployments: optimism `0x1f144c...8e2ed7`; optimism `0x24d302...06eb27`; optimism `0x4b3488...e09a16`; optimism `0x5bede6...78564c`; optimism `0x5d05c1...48fc44`; optimism `0x683236...4a6ce6`; optimism `0x7702dc...f1d725`; optimism `0x7e7e1d...44ce43`; optimism `0xb34479...1a2cc2`; optimism `0xd65a18...1288d5`; optimism `0xdd40bb...b28ece`; optimism `0xed3c20...aff36f`; polygon `0x0c9261...d81740`; polygon `0x159624...31ad6d`; polygon `0x38d0c4...1cd6f9`; polygon `0x5268b3...b65234`; polygon `0x7d86ee...691b68`; polygon `0x94a14b...45876a`; polygon `0xb3ab71...6a504e`; polygon `0xc171eb...a29882`; polygon `0xcb5d9b...f939b2`; polygon `0xec85f7...96d95b`; arbitrum [`0x013ee4...9802c8`](./contracts/arbitrum-42161/0x013ee4934ecbfa5723933c4b08ea5e47449802c8/); arbitrum `0x0385f8...56cbaa`; arbitrum `0x46eca1...feb17a`; arbitrum `0x567554...3b0b8b`; arbitrum `0x8dc331...4d4ae0`; arbitrum `0xaea8e2...9c4a63`; arbitrum `0xd3204e...ee0acc`; arbitrum `0xf52f07...9692a9`; arbitrum `0xf69959...12b628` | ⚠️ Unaudited |
| izumiToken | unknown | ethereum | [`0x9ad372...c5c200`](./contracts/ethereum-1/0x9ad37205d608b8b219e6a2573f922094cec5c200/) | ⚠️ Unaudited |
| JobKeeper | unknown | ethereum | 3 deployments: ethereum [`0xa1d9ad...710be2`](./contracts/ethereum-1/0xa1d9adefa5a8fcef1e5b7fe166455f4329710be2/); ethereum `0xb27659...25eba7`; ethereum `0xef7d74...bf50c4` | ⚠️ Unaudited |
| JonesAirdrop | unknown | arbitrum | [`0x5444c7...e7944d`](./contracts/arbitrum-42161/0x5444c71cdd5ed85b6d51a297175bf71914e7944d/) | ⚠️ Unaudited |
| JonesArbETHVaultV2 | unknown | arbitrum | 3 deployments: arbitrum [`0x6be861...8b1354`](./contracts/arbitrum-42161/0x6be861aa87009331bf62e22d418ab666e88b1354/); arbitrum `0xd126f3...7535f8`; arbitrum `0xd38e5d...0e7b2d` | ⚠️ Unaudited |
| JonesAsset | unknown | arbitrum | 5 deployments: arbitrum [`0x1f6fa7...eccb23`](./contracts/arbitrum-42161/0x1f6fa7a58701b3773b08a1a16d06b656b0eccb23/); arbitrum `0x537561...dce421`; arbitrum `0x662d0f...ac08a3`; arbitrum `0xc38687...f4768c`; arbitrum `0xf01886...b9ea19` | ⚠️ Unaudited |
| JonesAssetVaultV1 | unknown | arbitrum | [`0xeefd6b...dd2281`](./contracts/arbitrum-42161/0xeefd6ba4f562330a3ba35badce2210a2e6dd2281/) | ⚠️ Unaudited |
| JonesBuybacks | unknown | arbitrum | 2 deployments: arbitrum [`0x2d067a...16c0c3`](./contracts/arbitrum-42161/0x2d067a1dc49f4b5809619bdbd2289d067016c0c3/); arbitrum `0xa00523...0cad24` | ⚠️ Unaudited |
| JonesDpxCallStrategy | unknown | arbitrum | [`0x6ecaa3...ed7c24`](./contracts/arbitrum-42161/0x6ecaa3203aeb4d0cc21745f2752a73b41ced7c24/) | ⚠️ Unaudited |
| JonesDpxPutStrategy | unknown | arbitrum | [`0x504764...d9d31f`](./contracts/arbitrum-42161/0x504764add41632c460924456074aa62c1bd9d31f/) | ⚠️ Unaudited |
| JonesDPXVaultV2 | unknown | arbitrum | 3 deployments: arbitrum [`0x1c8db7...7612ba`](./contracts/arbitrum-42161/0x1c8db76703ad7e33551e6e022bf429fd857612ba/); arbitrum `0x211c70...f7c221`; arbitrum `0xba3386...80f7b4` | ⚠️ Unaudited |
| JonesDPXVaultV3 | unknown | arbitrum | [`0x5ba98a...0e1246`](./contracts/arbitrum-42161/0x5ba98ad75ab87eb90ffc2b680bcfc6b9030e1246/) | ⚠️ Unaudited |
| JonesERC20VaultV3 | unknown | arbitrum | 3 deployments: arbitrum [`0x42448f...0e88e5`](./contracts/arbitrum-42161/0x42448fddcec02124cf6db19a9f91dea7bb0e88e5/); arbitrum `0x8883e5...73f3f5`; arbitrum `0xf46ce0...755346` | ⚠️ Unaudited |
| JonesEthCallStrategy | unknown | arbitrum | [`0xba0563...c1f1dc`](./contracts/arbitrum-42161/0xba0563ffe3c7abe915d3dc404f1667682bc1f1dc/) | ⚠️ Unaudited |
| JonesEthPutStrategy | unknown | arbitrum | 2 deployments: arbitrum [`0x02017a...43674e`](./contracts/arbitrum-42161/0x02017a8334196537fd1933de833b3ece9a43674e/); arbitrum `0x6266d3...c77f81` | ⚠️ Unaudited |
| JonesETHVaultV1 | unknown | arbitrum | [`0x50744d...2d561c`](./contracts/arbitrum-42161/0x50744d5e6d138aca596f7d36e659d097be2d561c/) | ⚠️ Unaudited |
| JonesGohmCallStrategy | unknown | arbitrum | [`0x68798c...41bf04`](./contracts/arbitrum-42161/0x68798c683dbd43c3a16ae8c3e02c37999641bf04/) | ⚠️ Unaudited |
| JonesGohmPutStrategy | unknown | arbitrum | [`0xe5a8ab...ccba61`](./contracts/arbitrum-42161/0xe5a8ab24dc1b0f54dc3803cb33098879f8ccba61/) | ⚠️ Unaudited |
| JonesgOHMVaultV2 | unknown | arbitrum | 2 deployments: arbitrum [`0x9a62e4...69c814`](./contracts/arbitrum-42161/0x9a62e407028961eac4538453cb5d97038b69c814/); arbitrum `0xa0f154...4d76ba` | ⚠️ Unaudited |
| JonesGuardedLaunch | unknown | arbitrum | [`0x39c144...007ddb`](./contracts/arbitrum-42161/0x39c1442223a30e14066302b2c80aa660ab007ddb/) | ⚠️ Unaudited |
| JonesHedgingV3Strategy | unknown | arbitrum | 5 deployments: arbitrum [`0x211187...b6beb9`](./contracts/arbitrum-42161/0x2111875f2e37d98c0b00bc66099b1bfb07b6beb9/); arbitrum `0xb9bd05...7543e6`; arbitrum `0xc8d6d2...d12725`; arbitrum `0xe36fa7...77d349`; arbitrum `0xe98f68...d02939` | ⚠️ Unaudited |
| JonesRdpxCallStrategy | unknown | arbitrum | [`0xb98976...3aabc5`](./contracts/arbitrum-42161/0xb98976a008191948a6857df824034d3c5f3aabc5/) | ⚠️ Unaudited |
| JonesRdpxPutStrategy | unknown | arbitrum | [`0x261287...84e823`](./contracts/arbitrum-42161/0x2612870b2a96f43430e19bb6873a74295684e823/) | ⚠️ Unaudited |
| JonesRefund | unknown | arbitrum | [`0x9e74c8...b9e307`](./contracts/arbitrum-42161/0x9e74c867198e2c46bc3f365ac3b401d67cb9e307/) | ⚠️ Unaudited |
| JonesSaleClaim | unknown | arbitrum | [`0x5a81ab...19829b`](./contracts/arbitrum-42161/0x5a81abb52d96241d15d8b2bdcd76034e4119829b/) | ⚠️ Unaudited |
| JonesSSOVCallV3Strategy | unknown | arbitrum | 10 deployments: arbitrum [`0x1304e5...c897dd`](./contracts/arbitrum-42161/0x1304e5a0e6fff1556cf8f8dcc346c7dbd2c897dd/); arbitrum `0x30f3cd...1a083f`; arbitrum `0x37a15b...607c05`; arbitrum `0x5faa93...4bf437`; arbitrum `0x67b99b...510e57`; arbitrum `0xc298d6...5a1637`; arbitrum `0xc54562...b42538`; arbitrum `0xcb75dd...637d86`; arbitrum `0xcb9423...91044c`; arbitrum `0xd74645...7520a5` | ⚠️ Unaudited |
| JonesSSOVPutV3Strategy | unknown | arbitrum | 8 deployments: arbitrum [`0x220890...ebeb34`](./contracts/arbitrum-42161/0x22089039a813aedde848ac5876c1492fd2ebeb34/); arbitrum `0x34c471...6529b6`; arbitrum `0x43c952...35a6cd`; arbitrum `0xa151fe...49f1d0`; arbitrum `0xb3994c...a54fc1`; arbitrum `0xbd2c07...3e7545`; arbitrum `0xdedc5d...376ffa`; arbitrum `0xe2bfe2...1d6110` | ⚠️ Unaudited |
| JonesToken | unknown | arbitrum | [`0x10393c...cd67da`](./contracts/arbitrum-42161/0x10393c20975cf177a3513071bc110f7962cd67da/) | ⚠️ Unaudited |
| JonesTokenSale | unknown | arbitrum | [`0x6580f4...36f79a`](./contracts/arbitrum-42161/0x6580f41efc34e6d49ab692bd338d2a0e0636f79a/) | ⚠️ Unaudited |
| JonesTokenSaleV3 | unknown | arbitrum | [`0x8a0027...4f1cf5`](./contracts/arbitrum-42161/0x8a0027152ad2781c0cbabda0cc53290bf04f1cf5/) | ⚠️ Unaudited |
| JonesWETHVaultV3Adapter | unknown | arbitrum | 2 deployments: arbitrum [`0x086d9a...be7772`](./contracts/arbitrum-42161/0x086d9abc69c60b75470e620221cd857bcdbe7772/); arbitrum `0xbcb55b...6f3c2d` | ⚠️ Unaudited |
| JPEGv4AVAX | unknown | avalanche | 2 deployments: avalanche [`0x5fcc1d...3eeeed`](./contracts/avalanche-43114/0x5fcc1d790f5dc8affd4863f541cab0845d3eeeed/); avalanche `0x6241af...36d275` | ⚠️ Unaudited |
| JPEGvaultDAOTokenV2 | unknown | ethereum | [`0xa309c7...27754e`](./contracts/ethereum-1/0xa309c7c5e48e75ed39841ac4448953c4fb27754e/) | ⚠️ Unaudited |
| JPEGvaultDAOTokenV3 | unknown | ethereum | 2 deployments: ethereum [`0x2dd0d0...1b83d6`](./contracts/ethereum-1/0x2dd0d0a011e77cbcb6f1330f4decbb073e1b83d6/); ethereum `0x4bfce5...e66fb7` | ⚠️ Unaudited |
| JPEGvaultDAOTokenV3AVAX | core_logic | avalanche | [`0xa309c7...27754e`](./contracts/avalanche-43114/0xa309c7c5e48e75ed39841ac4448953c4fb27754e/) | ⚠️ Unaudited |
| KOLTokenClaimer | unknown | ethereum | [`0x1cc833...eb3a83`](./contracts/ethereum-1/0x1cc8337b764d566c34ea0b2575a294239aeb3a83/) | ⚠️ Unaudited |
| Kromatika | unknown | ethereum | [`0x3af33b...a4d789`](./contracts/ethereum-1/0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789/) | ⚠️ Unaudited |
| KUNBridge | unknown | ethereum | [`0xdeade6...82e32a`](./contracts/ethereum-1/0xdeade6772b00b8e09914da41556f6b0b6182e32a/) | ⚠️ Unaudited |
| L2CustomGateway | unknown | arbitrum | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | ⚠️ Unaudited |
| L2ERC20Gateway | token | arbitrum | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | ⚠️ Unaudited |
| L2GatewayRouter | adapter | arbitrum | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | ⚠️ Unaudited |
| L2StandardERC20 | unknown | optimism | 2 deployments: optimism [`0x9e1028...6840e0`](./contracts/optimism-10/0x9e1028f5f1d5ede59748ffcee5532509976840e0/); optimism `0xf98dcd...590b07` | ⚠️ Unaudited |
| L2USXTokenBridge | unknown | optimism | 3 deployments: optimism [`0x0f1894...3aa029`](./contracts/optimism-10/0x0f18940db877d3fd173af087349ee87b853aa029/); optimism `0xc76cbf...4d5d67`; optimism `0xe8db80...8b3465` | ⚠️ Unaudited |
| LandsaleDistributor | unknown | ethereum | [`0xb488b0...3b50f5`](./contracts/ethereum-1/0xb488b04e5e804676e3ab085f0fb9c3d9633b50f5/) | ⚠️ Unaudited |
| LandsaleNFT_ESTATE | unknown | ethereum | [`0x28cd29...8dc654`](./contracts/ethereum-1/0x28cd2990f34db387d011d7cc693a2bcedd8dc654/) | ⚠️ Unaudited |
| LargeToken | unknown | ethereum | [`0x206059...693d7a`](./contracts/ethereum-1/0x2060599f7a1523b65b23aac59570c8984e693d7a/) | ⚠️ Unaudited |
| lendFMeHandler | unknown | ethereum | 6 deployments: ethereum [`0x0e56cf...dd7ee3`](./contracts/ethereum-1/0x0e56cfe3cbc7051952efc4a9a7dc531eecdd7ee3/); ethereum `0x28ffc9...0d7c27`; ethereum `0x5d3789...4f6fb5`; ethereum `0x77153f...d97a89`; ethereum `0xab1692...68d7a1`; ethereum `0xc8c975...dba9be` | ⚠️ Unaudited |
| LendingDataV2 | unknown | optimism | 5 deployments: optimism [`0x0c0adb...a59173`](./contracts/optimism-10/0x0c0adb03423c8232a0b7785433919eaf62a59173/); optimism `0xa89ebe...0399b7`; polygon `0xeb339b...834182`; arbitrum `0x3b7d9a...ac776e`; arbitrum `0x9ddbb2...a39941` | ⚠️ Unaudited |
| LendingHelper | unknown | optimism | 2 deployments: optimism [`0x9a0b57...f30b80`](./contracts/optimism-10/0x9a0b57024ff206a658e46ffe9f60c7c14cf30b80/); polygon `0xf21fc8...6f1543` | ⚠️ Unaudited |
| LimitOrders | unknown | moonriver | [`0x5e9e18...3415c2`](./contracts/moonriver-1285/0x5e9e18692884d8371d690a2844c4495a4c3415c2/) | ⚠️ Unaudited |
| Liquidation | unknown | ethereum | [`0xbb2a89...36ba1a`](./contracts/ethereum-1/0xbb2a8986f1feb41c374658bcd4a5e0b6b536ba1a/) | ⚠️ Unaudited |
| LiquidationV2 | unknown | ethereum | [`0x8d55c2...e62573`](./contracts/ethereum-1/0x8d55c22ea6610e3fa4659d3d5f4d751ca1e62573/) | ⚠️ Unaudited |
| LiquidityPool | unknown | arbitrum | 6 deployments: arbitrum [`0x1ee631...8e642e`](./contracts/arbitrum-42161/0x1ee6312b2d861d367299e99f87212306ad8e642e/); arbitrum `0x96d014...12bf8e`; arbitrum `0xcbe10a...89a7cf`; arbitrum `0xd60a59...e434b1`; arbitrum `0xef5d60...e5fee6`; arbitrum `0xf1791e...94539e` | ⚠️ Unaudited |
| LiquidityPoolModule | unknown | arbitrum | 3 deployments: arbitrum [`0x02893c...55f286`](./contracts/arbitrum-42161/0x02893cc1e23b1270db033bc87f607d292455f286/); arbitrum `0xe31b53...749b81`; arbitrum `0xfb159a...a0901c` | ⚠️ Unaudited |
| LiquidityPoolProxy | unknown | ethereum | [`0xcfb047...17ca8a`](./contracts/ethereum-1/0xcfb0470b8d31c99f9998800c4ffb3b83c917ca8a/) | ⚠️ Unaudited |
| LiquidityPoolShutdown | core_logic | arbitrum | [`0xca19b8...12315d`](./contracts/arbitrum-42161/0xca19b8678a278dfb5db02ebb9b65448ff112315d/) | ⚠️ Unaudited |
| LiquidityPoolShutdownModule | core_logic | arbitrum | [`0xbec03e...78fec4`](./contracts/arbitrum-42161/0xbec03e567e7446f3ab51e5afae53e955de78fec4/) | ⚠️ Unaudited |
| LockedTokenVault | unknown | ethereum | 8 deployments: ethereum [`0x0e504d...673be4`](./contracts/ethereum-1/0x0e504d3e053885a82bd1cb5c29cbaae5b3673be4/); ethereum `0x29c960...6a17a8`; ethereum `0x3fefa4...8c4909`; ethereum `0x5c37d4...6cf4ab`; ethereum `0x9224fc...fb9802`; ethereum `0xbd07db...b8a167`; ethereum `0xdb9119...cfff5f`; ethereum `0xde25ce...b769b4` | ⚠️ Unaudited |
| LockingContract | unknown | ethereum | 7 deployments: ethereum [`0x08e5d6...3353f4`](./contracts/ethereum-1/0x08e5d6e7c61e675e5a9b4eee9c1dd2ce113353f4/); ethereum `0x366f52...8ac83a`; ethereum `0x3e07ad...a16e71`; ethereum `0x543895...eba293`; ethereum `0x6e1f65...53f3c2`; ethereum `0xdcd84a...4a4b45`; ethereum `0xee88e0...bfadb0` | ⚠️ Unaudited |
| LockNFT | unknown | moonriver | [`0xb53625...fc1470`](./contracts/moonriver-1285/0xb5362525b3a1b11cee2328e85040982aaefc1470/) | ⚠️ Unaudited |
| LockToken | unknown | moonriver | [`0x959890...dfe7c4`](./contracts/moonriver-1285/0x95989005cdc3d128a5a3c706797d5e408cdfe7c4/) | ⚠️ Unaudited |
| LockupContractFactory | registry | avalanche | 2 deployments: avalanche [`0x51f985...133fc9`](./contracts/avalanche-43114/0x51f985066d4fe1d75a4375b07a9bc65bc1133fc9/); avalanche `0xdd6e1b...981106` | ⚠️ Unaudited |
| LpGovernor | unknown | arbitrum | 2 deployments: arbitrum [`0x2baac8...cbdf4e`](./contracts/arbitrum-42161/0x2baac806cb2b7a07f8f73db1329767e5a3cbdf4e/); arbitrum `0x53ed04...02467e` | ⚠️ Unaudited |
| LPMining | unknown | ethereum | 2 deployments: ethereum [`0xc0b5c7...c68dcc`](./contracts/ethereum-1/0xc0b5c7f2f5b5c6cdcc75aebb73ac8b5d87c68dcc/); ethereum `0xf3ab38...845189` | ⚠️ Unaudited |
| LPStakingRewards | unknown | optimism | 4 deployments: optimism [`0x31a20e...c1f6bf`](./contracts/optimism-10/0x31a20e5b7b1b067705419d57ab4f72e81cc1f6bf/); optimism `0x38f148...613c6e`; optimism `0x63a634...869c90`; optimism `0xa143e0...08dd6f` | ⚠️ Unaudited |
| LPT | unknown | ethereum | [`0x0eae2f...fecdb0`](./contracts/ethereum-1/0x0eae2f2e2604e4a9043658077e23e2f422fecdb0/) | ⚠️ Unaudited |
| LQTYStaking | unknown | avalanche | 2 deployments: avalanche [`0xb4387d...e1053c`](./contracts/avalanche-43114/0xb4387d93b5a9392f64963cd44389e7d9d2e1053c/); avalanche `0xbf2fac...e41102` | ⚠️ Unaudited |
| LSR | unknown | polygon | 2 deployments: optimism `0xaf7cbb...702478`; polygon [`0x7702dc...f1d725`](./contracts/polygon-137/0x7702dc73e8f8d9ae95cf50933adbee68e9f1d725/) | ⚠️ Unaudited |
| LSRFactory | unknown | polygon | 4 deployments: optimism `0xd7656c...dea038`; optimism `0xd8150d...8abf26`; polygon [`0x5f01f8...3e8bff`](./contracts/polygon-137/0x5f01f88a6b6c33de5668dc2de983abe84b3e8bff/); polygon `0x662da3...639c0d` | ⚠️ Unaudited |
| LSRSupport | unknown | optimism | [`0x4653fc...ae6c3c`](./contracts/optimism-10/0x4653fc730e3c8b7eeb2faec65458c6f927ae6c3c/) | ⚠️ Unaudited |
| LUSDToken | unknown | avalanche | [`0x4fbf04...066095`](./contracts/avalanche-43114/0x4fbf0429599460d327bd5f55625e30e4fc066095/) | ⚠️ Unaudited |
| Lyra | unknown | ethereum | [`0x01ba67...5105bf`](./contracts/ethereum-1/0x01ba67aac7f75f647d94220cc98fb30fcc5105bf/) | ⚠️ Unaudited |
| LyraSafetyModule | unknown | ethereum | 6 deployments: ethereum [`0x6c5bc6...3438aa`](./contracts/ethereum-1/0x6c5bc62e9a1fe03446a7d7755703af11b53438aa/); ethereum `0x857bc2...ccbbfa`; ethereum `0x88e7e5...e30afc`; ethereum `0xb7e28a...af857a`; ethereum `0xcb9f85...c77d49`; ethereum `0xdb0493...69c3de` | ⚠️ Unaudited |
| LyraSafetyModuleMigration | unknown | ethereum | 2 deployments: ethereum [`0xb9619d...19a219`](./contracts/ethereum-1/0xb9619d73c08076bc5d4f0470593e98b9eb19a219/); ethereum `0xc6ece7...aae87b` | ⚠️ Unaudited |
| LyraUsdcSafetyModule | unknown | ethereum | [`0xcf9ef4...706b52`](./contracts/ethereum-1/0xcf9ef4ec906d92447682828d3fd87db8a9706b52/) | ⚠️ Unaudited |
| LyraUsdcSafetyModuleMigration | unknown | ethereum | 5 deployments: ethereum [`0x54d59c...6f5472`](./contracts/ethereum-1/0x54d59c4596c7ea66fd62188ba1e16db39e6f5472/); ethereum `0x625cde...a995d6`; ethereum `0x71e65f...943294`; ethereum `0x79eb08...6d1a75`; ethereum `0xfc1ab6...8982d8` | ⚠️ Unaudited |
| MainPrimaryInterestModel | unknown | polygon | 3 deployments: optimism `0xec85f7...96d95b`; polygon [`0x428e19...d181be`](./contracts/polygon-137/0x428e1914404dbff52bd8c7baed9719cc5ed181be/); arbitrum `0xbffa37...ee6d50` | ⚠️ Unaudited |
| MainSecondaryInterestModel | unknown | optimism | 3 deployments: optimism [`0x1ee116...1265cf`](./contracts/optimism-10/0x1ee116b869ecc7cd13c629a8a2ae39fa361265cf/); polygon `0xa2c399...346059`; arbitrum `0x8e59f1...f0bb9c` | ⚠️ Unaudited |
| MarchMadness | unknown | optimism | 3 deployments: optimism [`0x3b05d4...2a4c31`](./contracts/optimism-10/0x3b05d4c58de4e96ea093032c6d70c7e4212a4c31/); optimism `0xd24f79...e2745d`; optimism `0xf1299a...0d96de` | ⚠️ Unaudited |
| Market | unknown | ethereum | 4 deployments: ethereum [`0x1191b3...59668f`](./contracts/ethereum-1/0x1191b35728a2843658650d61560db99a6e59668f/); ethereum `0x5191f6...ac22db`; ethereum `0xbc0d79...c5228b`; ethereum `0xf0cb06...89fcbd` | ⚠️ Unaudited |
| MarketProxy | unknown | ethereum | 3 deployments: ethereum [`0x1c6b58...422b70`](./contracts/ethereum-1/0x1c6b58c03880f952c91c3628aec63a48a8422b70/); ethereum `0x56f926...c96801`; ethereum `0x652cc6...6f437d` | ⚠️ Unaudited |
| MaskToken | unknown | ethereum | [`0x69af81...623074`](./contracts/ethereum-1/0x69af81e73a73b40adf4f3d4223cd9b1ece623074/) | ⚠️ Unaudited |
| MBusSupport | unknown | optimism | [`0x4b72e3...8026ed`](./contracts/optimism-10/0x4b72e30c9bd7e42186d28455b8493cc9b28026ed/) | ⚠️ Unaudited |
| MCapWeightStrategy | unknown | ethereum | 6 deployments: ethereum [`0x1bef9e...be04ad`](./contracts/ethereum-1/0x1bef9e0bfbeaf14cd496a4063b75b98614be04ad/); ethereum `0x25be31...7e034e`; ethereum `0x54c2f1...713e57`; ethereum `0xabb3e2...36cb54`; ethereum `0xbc8390...29cc14`; ethereum `0xc2c1e2...0617da` | ⚠️ Unaudited |
| MCapWeightStrategyRebinder | unknown | ethereum | [`0xa6f874...0852d8`](./contracts/ethereum-1/0xa6f874a39636b4ec694552fd3a2e1fe5b90852d8/) | ⚠️ Unaudited |
| MCB | unknown | ethereum | [`0x1021b7...906d3c`](./contracts/ethereum-1/0x1021b725c8c10dc6240c9f1f151095d798906d3c/) | ⚠️ Unaudited |
| MCBStaking | unknown | arbitrum | 2 deployments: arbitrum [`0x892a59...fec36f`](./contracts/arbitrum-42161/0x892a59337f66b1c1a04f38543a6074cfd7fec36f/); arbitrum `0xb3500f...928e85` | ⚠️ Unaudited |
| MCBVestingUpgradeable | unknown | arbitrum | 4 deployments: arbitrum [`0x0e800f...054040`](./contracts/arbitrum-42161/0x0e800fa85f922be53379b6cdb337c65b62054040/); arbitrum `0x2953b2...04e986`; arbitrum `0x80eefa...63326e`; arbitrum `0x9f24f9...2dda39` | ⚠️ Unaudited |
| MCDEXMultiOracle | unknown | arbitrum | 2 deployments: arbitrum [`0x574695...69b291`](./contracts/arbitrum-42161/0x57469550b9a42d2fd964e67a9dd1de3d9169b291/); arbitrum `0x5b8bae...5458c6` | ⚠️ Unaudited |
| MCDEXSingleOracle | unknown | arbitrum | 2 deployments: arbitrum [`0x1021b7...906d3c`](./contracts/arbitrum-42161/0x1021b725c8c10dc6240c9f1f151095d798906d3c/); arbitrum `0xf80a28...2808d6` | ⚠️ Unaudited |
| Medianizer | unknown | ethereum | [`0x2b897b...c7b36c`](./contracts/ethereum-1/0x2b897b9b3507c43a5b1026b277bb838c12c7b36c/) | ⚠️ Unaudited |
| MediumToken | unknown | ethereum | [`0xdcb620...53d23b`](./contracts/ethereum-1/0xdcb620d7e340c11919d580f1959d0c770f53d23b/) | ⚠️ Unaudited |
| MELOS | unknown | ethereum | [`0x1afb69...19e647`](./contracts/ethereum-1/0x1afb69dbc9f54d08dab1bd3436f8da1af819e647/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | 4 deployments: ethereum [`0x2011b5...9e3c1d`](./contracts/ethereum-1/0x2011b5d4d5287cc9d3462b4e8af0e4daf29e3c1d/); optimism `0x26b657...f581b6`; optimism `0x64839d...b03924`; optimism `0x7abdc2...0969a5` | ⚠️ Unaudited |
| MerkleFeeDistributor | unknown | optimism | [`0xa621ee...3469e6`](./contracts/optimism-10/0xa621eefaa0a6b23fa4c0111e9316cca4b53469e6/) | ⚠️ Unaudited |
| MerkleRedeem | operational_periphery | arbitrum | 2 deployments: arbitrum [`0xdbf04b...10b612`](./contracts/arbitrum-42161/0xdbf04bed11158a3a416a69eb01fbb742b710b612/); arbitrum `0xfb7265...8c6cd4` | ⚠️ Unaudited |
| MessageBus | operational_periphery | linea | 7 deployments: ethereum `0x4066d1...4e200c`; bsc `0x957148...aeea6b`; polygon `0xafdb9c...093fe6`; linea [`0x0dfabd...15674c`](./contracts/linea-59144/0x0dfabdd2dc27cf93910f7bd4bc3860d5af15674c/); linea `0x6f2bd3...8c7c28`; linea `0x82b498...7d1213`; linea `0xea716c...d9acbd` | ⚠️ Unaudited |
| MetavaultRefund | unknown | arbitrum | 2 deployments: arbitrum [`0x287bfe...d60b09`](./contracts/arbitrum-42161/0x287bfe9ee929842d1af340814332e7548ad60b09/); arbitrum `0x7139bb...583c2b` | ⚠️ Unaudited |
| MigrationBSC | unknown | ethereum | 2 deployments: ethereum [`0xdcf084...711071`](./contracts/ethereum-1/0xdcf08427aad1c0e7d31dfd5846aaacae5f711071/); ethereum `0xe72d93...eb702d` | ⚠️ Unaudited |
| MillinerV2 | unknown | arbitrum | 2 deployments: arbitrum [`0x018b44...900717`](./contracts/arbitrum-42161/0x018b44c923a567205caee45b882fd61394900717/); arbitrum `0xb94d19...0fd756` | ⚠️ Unaudited |
| MiniChefV2 | unknown | arbitrum | 3 deployments: arbitrum [`0x0aefad...6fac38`](./contracts/arbitrum-42161/0x0aefad19aa454bcc1b1dd86e18a7d58d0a6fac38/); arbitrum `0x68f81a...7120c7`; arbitrum `0x7522e6...6c7c74` | ⚠️ Unaudited |
| MiniMeToken | unknown | ethereum | [`0x8765b1...203656`](./contracts/ethereum-1/0x8765b1a0eb57ca49be7eacd35b24a574d0203656/) | ⚠️ Unaudited |
| MintSwapCanonicalToken | token | avalanche | 2 deployments: ethereum `0xf3c969...a6d0f6`; avalanche [`0x7af0a3...d43637`](./contracts/avalanche-43114/0x7af0a3f5bcd7b37439fa6b888617043d92d43637/) | ⚠️ Unaudited |
| MockCVP | unknown | ethereum | [`0xa993d7...4d8eed`](./contracts/ethereum-1/0xa993d7bb4397f0e18fd292c4bb1bd75e504d8eed/) | ⚠️ Unaudited |
| MoneyMarket | unknown | ethereum | [`0xf64226...b8b881`](./contracts/ethereum-1/0xf64226501afa402488384cecaa37fe62d1b8b881/) | ⚠️ Unaudited |
| MSActivityCenter | unknown | ethereum | 2 deployments: ethereum [`0x27a7a1...6099f5`](./contracts/ethereum-1/0x27a7a10b8f52d67fbf6facdb8bf7c530696099f5/); ethereum `0x7cb6de...f7c81d` | ⚠️ Unaudited |
| MSD | unknown | polygon | 11 deployments: optimism `0xbfd291...4848b9`; optimism `0xcf66eb...7aa752`; polygon [`0x1ee116...1265cf`](./contracts/polygon-137/0x1ee116b869ecc7cd13c629a8a2ae39fa361265cf/); polygon `0x448bbb...d3a4a8`; polygon `0xcf66eb...7aa752`; arbitrum `0x632a42...707f7f`; arbitrum `0x641441...6b4edb`; arbitrum `0x68ed08...28105f`; arbitrum `0xc21258...2f3abd`; arbitrum `0xd4ef0d...f46b44`; arbitrum `0xe386af...57a299` | ⚠️ Unaudited |
| MSDController | unknown | arbitrum | [`0xb8e6c1...481302`](./contracts/arbitrum-42161/0xb8e6c1712d9ac05d98d62c46bcf2e052ae481302/) | ⚠️ Unaudited |
| MSDControllerV2 | unknown | arbitrum | 6 deployments: optimism `0x428e19...d181be`; optimism `0x9e8b68...94767c`; polygon `0x3a5985...5c617c`; polygon `0x40be37...01c499`; arbitrum [`0x38a558...d7c5ff`](./contracts/arbitrum-42161/0x38a5585d347e8dfc3965c1914498eafbded7c5ff/); arbitrum `0x5b8856...3dcf39` | ⚠️ Unaudited |
| MSNFT | unknown | ethereum | [`0xf38ee8...833d32`](./contracts/ethereum-1/0xf38ee864e36650f8c0abd14622a55bb1f6833d32/) | ⚠️ Unaudited |
| MSStaking | unknown | ethereum | [`0xed148e...5aa9ba`](./contracts/ethereum-1/0xed148ecdb3658388ddeca2a9ca19b569ef5aa9ba/) | ⚠️ Unaudited |
| MSU | unknown | ethereum | [`0xdfd8d6...43992b`](./contracts/ethereum-1/0xdfd8d604951ebf1b2297285f1b68de140c43992b/) | ⚠️ Unaudited |
| MToken | unknown | ethereum | [`0x9e32b1...d6ed8e`](./contracts/ethereum-1/0x9e32b13ce7f2e80a01932b42553652e053d6ed8e/) | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | linea | 4 deployments: linea [`0x265b25...7567e8`](./contracts/linea-59144/0x265b25e22bcd7f10a5bd6e6410f10537cc7567e8/); linea `0x5471ea...a953e4`; linea `0x7d43aa...42c0ad`; linea `0xf5c682...3476f5` | ⚠️ Unaudited |
| Multicall2 | unknown | metis | 3 deployments: optimism `0x7e2dc2...90076b`; metis [`0x32960f...d771ed`](./contracts/metis-1088/0x32960f513727b54876d8974bcb3f107b07d771ed/); arbitrum `0x842ec2...c54eb2` | ⚠️ Unaudited |
| MultiTunableOracleSetter | unknown | arbitrum | 3 deployments: arbitrum [`0x55f1da...ab947d`](./contracts/arbitrum-42161/0x55f1da2618d3cecb55b6f0543b04c13c7aab947d/); arbitrum `0x600b82...6a53c7`; arbitrum `0xfbb1c0...c31145` | ⚠️ Unaudited |
| MyTransparentUpgradeableProxy | unknown | optimism | [`0xfcdb1a...b7053f`](./contracts/optimism-10/0xfcdb1a1afaab60230bbc55d8b3de27f47fb7053f/) | ⚠️ Unaudited |
| NFTToolsFeature | unknown | ethereum | [`0x8ccd45...3f3f27`](./contracts/ethereum-1/0x8ccd45af7e8cd2c7a9f7d33df225cd15603f3f27/) | ⚠️ Unaudited |
| OneinchSupport | unknown | optimism | [`0xb173cf...774c08`](./contracts/optimism-10/0xb173cf446a3aa3420c780d4a034d0e06b1774c08/) | ⚠️ Unaudited |
| OneInchZapLib | unknown | arbitrum | [`0x38b700...95300d`](./contracts/arbitrum-42161/0x38b700f33daa663de0e05a487c41aa070c95300d/) | ⚠️ Unaudited |
| OneTokenV1 | unknown | ethereum | [`0xca3753...deaf90`](./contracts/ethereum-1/0xca37530e7c5968627be470081d1c993eb1deaf90/) | ⚠️ Unaudited |
| OnlySelectorTestJob | unknown | ethereum | 3 deployments: ethereum [`0x494a36...f148d9`](./contracts/ethereum-1/0x494a364b5b89674fcd0ddd0461f2900839f148d9/); ethereum `0x65ff28...85b80f`; ethereum `0xa030f1...125b79` | ⚠️ Unaudited |
| OpenDAO | unknown | ethereum | [`0x3b484b...c0aee0`](./contracts/ethereum-1/0x3b484b82567a09e2588a13d54d032153f0c0aee0/) | ⚠️ Unaudited |
| OpenDAOCombined | unknown | ethereum | 2 deployments: ethereum [`0x41cbac...54447e`](./contracts/ethereum-1/0x41cbac56ea5ec878135082f0f8d9a232a854447e/); ethereum `0x8744cd...d723eb` | ⚠️ Unaudited |
| OpenDAOLock | unknown | ethereum | [`0x2121e4...b662b1`](./contracts/ethereum-1/0x2121e4d93e3352b812a5b3fd7fbd194c4bb662b1/) | ⚠️ Unaudited |
| OpenDAOMembershipNFT | unknown | ethereum | [`0xd22f83...abc44d`](./contracts/ethereum-1/0xd22f83e8a1502b1d41c0b40cf64b291a6eabc44d/) | ⚠️ Unaudited |
| OpenDAOStaking | unknown | ethereum | [`0xedd27c...90d7d1`](./contracts/ethereum-1/0xedd27c961ce6f79afc16fd287d934ee31a90d7d1/) | ⚠️ Unaudited |
| OperatorProxy | unknown | arbitrum | 2 deployments: arbitrum [`0xc3789c...9324e6`](./contracts/arbitrum-42161/0xc3789cf96edb7e3a6e85e14c72e5159c899324e6/); arbitrum `0xe9e606...2aa856` | ⚠️ Unaudited |
| OpThales | unknown | optimism | 2 deployments: ethereum `0x8947da...a8c3c5`; optimism [`0x217d47...a5bb11`](./contracts/optimism-10/0x217d47011b23bb961eb6d93ca9945b7501a5bb11/) | ⚠️ Unaudited |
| OptimismTreasury | unknown | optimism | [`0x55c168...5296e7`](./contracts/optimism-10/0x55c1688587e6dfd52e44bf8b7028a8f7525296e7/) | ⚠️ Unaudited |
| Oracle | unknown | polygon | 4 deployments: optimism `0x480798...89c4c1`; optimism `0xb92e07...f97f70`; polygon [`0x40a33f...f47c65`](./contracts/polygon-137/0x40a33fb67b8dafe88a5b1930be03c82157f47c65/); polygon `0xd2de88...cbe1df` | ⚠️ Unaudited |
| OracleDelegate | operational_periphery | avalanche | 2 deployments: avalanche [`0x69f3cd...3a0fbb`](./contracts/avalanche-43114/0x69f3cd9ccd1e06c4152f0979546cabf4263a0fbb/); avalanche `0x716f88...ebd035` | ⚠️ Unaudited |
| OracleRouterCreator | operational_periphery | arbitrum | [`0xc3e272...e14ff3`](./contracts/arbitrum-42161/0xc3e272f76b3740c2acf8e5272cbef06d70e14ff3/) | ⚠️ Unaudited |
| OrderModule | unknown | arbitrum | 2 deployments: arbitrum [`0x1a5bd8...ab831a`](./contracts/arbitrum-42161/0x1a5bd84091481e49c9cadaeb47b11fa4e6ab831a/); arbitrum `0xb04e11...e42435` | ⚠️ Unaudited |
| OriginalTokenVault | unknown | avalanche | 6 deployments: ethereum `0xb37d31...518595`; optimism `0xbcfef6...40aa11`; polygon `0xc1a2d9...d51eea`; arbitrum `0xfe31bf...040f76`; celo `0xd9d103...66752c`; avalanche [`0x5427fe...da1820`](./contracts/avalanche-43114/0x5427fefa711eff984124bfbb1ab6fbf5e3da1820/) | ⚠️ Unaudited |
| OvertimeVoucher | unknown | optimism | 3 deployments: optimism [`0x5442ff...a3c671`](./contracts/optimism-10/0x5442ff0573fd54a4f6c02a7a0d8e22bdc1a3c671/); optimism `0xbac6c6...f51069`; optimism `0xc9183e...152536` | ⚠️ Unaudited |
| OwnableFeature | unknown | ethereum | [`0x30a2db...62ecf4`](./contracts/ethereum-1/0x30a2db8e7dbc4aa0dc8a098e04a5e07a5162ecf4/) | ⚠️ Unaudited |
| OwnedDistributor | unknown | ethereum | 3 deployments: ethereum [`0x0f528f...fec29e`](./contracts/ethereum-1/0x0f528f19521fde0140668b9eb14025054bfec29e/); ethereum `0x34c8f7...99de59`; ethereum `0x8a966c...336335` | ⚠️ Unaudited |
| OwnerRelayOnOptimism | unknown | optimism | [`0x88fdc7...c6c5ca`](./contracts/optimism-10/0x88fdc711eff5877b464d299c7ac3077135c6c5ca/) | ⚠️ Unaudited |
| ParaswapToken | unknown | ethereum | [`0x200345...523e38`](./contracts/ethereum-1/0x200345a5821dd742bf135cb6520fd38a7e523e38/) | ⚠️ Unaudited |
| ParlayMarketsAMM | unknown | optimism | [`0x912f88...1e4d4e`](./contracts/optimism-10/0x912f889034ddd593a087c4e59061e549891e4d4e/) | ⚠️ Unaudited |
| ParlayVault | unknown | optimism | [`0x0a9397...08aacd`](./contracts/optimism-10/0x0a9397378c427e39bde0c53e6626523b7d08aacd/) | ⚠️ Unaudited |
| ParlayVerifier | unknown | optimism | [`0x146444...8017b6`](./contracts/optimism-10/0x146444d363028c5495f7d57a4c49e641ce8017b6/) | ⚠️ Unaudited |
| Payroll | unknown | arbitrum | 2 deployments: arbitrum [`0x04f4f0...c0c744`](./contracts/arbitrum-42161/0x04f4f0c6c09370576a8f22fd5f8838abecc0c744/); arbitrum `0x88ae90...6ea855` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | ethereum | [`0x16365b...9b95eb`](./contracts/ethereum-1/0x16365b45eb269b5b5dacb34b4a15399ec79b95eb/) | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | unknown | bsc | 8 deployments: ethereum `0x52e4f2...4de084`; optimism `0xc3c5b9...d9699a`; bsc [`0x26c76f...1e1e4b`](./contracts/bsc-56/0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b/); polygon `0xb51541...4502bb`; base `0x5471ea...a953e4`; arbitrum `0xc72e7f...3aaf6b`; avalanche `0xb774c6...fed195`; linea `0x9bb46d...233f4d` | ⚠️ Unaudited |
| Perlin | unknown | ethereum | [`0xeca821...860318`](./contracts/ethereum-1/0xeca82185adce47f39c684352b0439f030f860318/) | ⚠️ Unaudited |
| PerlinXRewards | unknown | ethereum | [`0x5fa19f...589dd4`](./contracts/ethereum-1/0x5fa19f612dfd39e6754bb2e8300e681d1c589dd4/) | ⚠️ Unaudited |
| PermanentVotingPowerV1 | unknown | ethereum | [`0xd13297...8de430`](./contracts/ethereum-1/0xd132973eaebbd6d7ca7b88e9170f2cca058de430/) | ⚠️ Unaudited |
| Perpetual | unknown | ethereum | 8 deployments: ethereum [`0x220a9f...777f76`](./contracts/ethereum-1/0x220a9f0dd581cbc58fcfb907de0454cbf3777f76/); ethereum `0x4cc899...12b434`; ethereum `0x5365d6...427ec2`; ethereum `0x92c506...2c607d`; ethereum `0xa04197...a967aa`; ethereum `0xd48c88...65e8ac`; ethereum `0xe3c29c...ebaa0a`; ethereum `0xfa203e...6cae9e` | ⚠️ Unaudited |
| PerpetualModule | unknown | arbitrum | 2 deployments: arbitrum [`0x1d23e3...e361b6`](./contracts/arbitrum-42161/0x1d23e3f71d4ca21e837adcaea04ffaab98e361b6/); arbitrum `0x99abe3...3de42a` | ⚠️ Unaudited |
| PerpToken | unknown | ethereum | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | ⚠️ Unaudited |
| PineCore | unknown | moonriver | [`0x9fdda7...af09cd`](./contracts/moonriver-1285/0x9fdda73e48b15c1b2e167ceb25a6b7ee7aaf09cd/) | ⚠️ Unaudited |
| Platform | unknown | ethereum | [`0xe0437b...0bd1da`](./contracts/ethereum-1/0xe0437beb5bb7cf980e90983f6029033d710bd1da/) | ⚠️ Unaudited |
| PlatformMigrator | unknown | ethereum | [`0xf2cab8...f18642`](./contracts/ethereum-1/0xf2cab8d689c8cdf7cb7927c8eddc65d5cef18642/) | ⚠️ Unaudited |
| Pluto | unknown | ethereum | [`0xdfe3ac...ed5447`](./contracts/ethereum-1/0xdfe3ac769b2d8e382cb86143e0b0b497e1ed5447/) | ⚠️ Unaudited |
| PlutoDistributor | unknown | ethereum | [`0xe4122b...951c07`](./contracts/ethereum-1/0xe4122b32213221508f4b49f54c79a08e28951c07/) | ⚠️ Unaudited |
| PolkaExToken | unknown | ethereum | [`0xe6f143...206920`](./contracts/ethereum-1/0xe6f143a0e0a8f24f6294ce3432ea10fad0206920/) | ⚠️ Unaudited |
| PoolCreator | unknown | arbitrum | 3 deployments: arbitrum [`0x592c6a...69f590`](./contracts/arbitrum-42161/0x592c6a6419fb86bad15926c840a9f9306f69f590/); arbitrum `0xa017b8...50ce65`; arbitrum `0xde3a17...1849ff` | ⚠️ Unaudited |
| PooledMappingToken | core_logic | avalanche | [`0xae110a...2b7534`](./contracts/avalanche-43114/0xae110a0e6e5ddb0108f6d752f754b575d62b7534/) | ⚠️ Unaudited |
| PoolRestrictions | unknown | ethereum | 2 deployments: ethereum [`0x3885c4...132fff`](./contracts/ethereum-1/0x3885c4e1107b445dd370d09008d90b5153132fff/); ethereum `0x698967...c5fcdc` | ⚠️ Unaudited |
| PositionalMarketData | unknown | optimism | [`0x63f072...5e9a84`](./contracts/optimism-10/0x63f072928cac9ffd799c6d0f985f9ee3985e9a84/) | ⚠️ Unaudited |
| PositionalMarketManager | unknown | optimism | 5 deployments: optimism [`0x734c6c...38fdc2`](./contracts/optimism-10/0x734c6c0fb8068afc4d795af32b65ba31bb38fdc2/); optimism `0x79599f...6e48f8`; optimism `0xc0201e...cfd26d`; optimism `0xe2f77e...378332`; optimism `0xefe06b...c64d26` | ⚠️ Unaudited |
| PositionalMarketMastercopy | unknown | optimism | 2 deployments: optimism [`0x470a69...9564ff`](./contracts/optimism-10/0x470a69afec851c1c4022b4a1b9d3a729389564ff/); optimism `0xfb6527...eb8335` | ⚠️ Unaudited |
| PositionRewards | unknown | ethereum | [`0xe9d634...492ab4`](./contracts/ethereum-1/0xe9d634d2767079a2bff2ced1584f8f5623492ab4/) | ⚠️ Unaudited |
| PositionRewardsV2 | unknown | ethereum | 2 deployments: ethereum [`0x6d48b9...e8736d`](./contracts/ethereum-1/0x6d48b988d8c206939d3ae08896bac8e0f6e8736d/); ethereum `0xd5c0a6...027c99` | ⚠️ Unaudited |
| PowerIndexPool | unknown | ethereum | 4 deployments: ethereum [`0x5f6f0f...563104`](./contracts/ethereum-1/0x5f6f0f7d35f98c928edb935d5af8bea74e563104/); ethereum `0x7a227e...563ef0`; ethereum `0x7fe960...e74169`; ethereum `0xdd7366...909280` | ⚠️ Unaudited |
| PowerIndexPoolActions | unknown | ethereum | 2 deployments: ethereum [`0xc25875...da16d2`](./contracts/ethereum-1/0xc258754c7b2f77eb6c5b2c5e87569a9533da16d2/); ethereum `0xc282f9...2a7109` | ⚠️ Unaudited |
| PowerIndexPoolController | unknown | ethereum | 2 deployments: ethereum [`0x750f97...7dcb33`](./contracts/ethereum-1/0x750f973f8f2dfe0999321243bf67fa36df7dcb33/); ethereum `0x996556...9e7d2f` | ⚠️ Unaudited |
| PowerIndexPoolFactory | unknown | ethereum | 3 deployments: ethereum [`0x0ba2e7...429441`](./contracts/ethereum-1/0x0ba2e75fe1368d8d517be1db5c39ca50a1429441/); ethereum `0x967d77...3020d1`; ethereum `0xea70c5...c77ce4` | ⚠️ Unaudited |
| PowerIndexRouter | unknown | ethereum | 4 deployments: ethereum [`0x0a6aa1...897c7c`](./contracts/ethereum-1/0x0a6aa119c58ce6e7733da6ece7fba5668d897c7c/); ethereum `0x0d0b8d...8c3094`; ethereum `0xd24e3d...93be61`; ethereum `0xdaf584...38d655` | ⚠️ Unaudited |
| PowerIndexWrapper | unknown | ethereum | [`0x43fa8e...562abe`](./contracts/ethereum-1/0x43fa8ef8e334720b80367cf94e438cf90c562abe/) | ⚠️ Unaudited |
| PowerOracle | unknown | ethereum | 10 deployments: ethereum [`0x019e14...6181fb`](./contracts/ethereum-1/0x019e14da4538ae1bf0bcd8608ab8595c6c6181fb/); ethereum `0x0f730d...5519cc`; ethereum `0x213e54...62c2ec`; ethereum `0x3359bb...51a0f0`; ethereum `0x4b6e55...2184b4`; ethereum `0x50f8d7...edb988`; ethereum `0x8e7e51...79a677`; ethereum `0xa39492...5d8807`; ethereum `0xe8672c...1e03c9`; ethereum `0xf0d676...90c6d2` | ⚠️ Unaudited |
| PowerOracleStaking | unknown | ethereum | 2 deployments: ethereum [`0xb10f9b...32834c`](./contracts/ethereum-1/0xb10f9bb26eabb1f64e45eb0e0910f29efd32834c/); ethereum `0xf05532...2cfe21` | ⚠️ Unaudited |
| PowerPoke | unknown | ethereum | 2 deployments: ethereum [`0x04d7aa...be5b96`](./contracts/ethereum-1/0x04d7aa22ef7181ee3142f5063e026af1bbbe5b96/); ethereum `0xfe53ad...a5b059` | ⚠️ Unaudited |
| PowerPokeStaking | unknown | ethereum | 2 deployments: ethereum [`0x646e84...f425f5`](./contracts/ethereum-1/0x646e846b6ee143bde4f329d4165929bbdcf425f5/); ethereum `0xc0cd31...eb74b2` | ⚠️ Unaudited |
| PowerPoolSecretSanta | unknown | ethereum | [`0xe09411...64e7f7`](./contracts/ethereum-1/0xe09411a7574ffb682b822e3e6452df7f8764e7f7/) | ⚠️ Unaudited |
| PPAgentV2ExternalLens | unknown | ethereum | [`0xbb8dac...a54f07`](./contracts/ethereum-1/0xbb8dac006c8b6f67c4bc2563b64ed669faa54f07/) | ⚠️ Unaudited |
| PPAgentV2Randao | unknown | ethereum | 3 deployments: ethereum [`0x269c0e...7538dc`](./contracts/ethereum-1/0x269c0ef2a33e9c09c8dbe387b004da65e57538dc/); ethereum `0x317790...16eda3`; ethereum `0xaa635a...de4a96` | ⚠️ Unaudited |
| PPGovernorL1 | unknown | ethereum | 4 deployments: ethereum [`0x1872b9...d79261`](./contracts/ethereum-1/0x1872b9692bd7ceabbefd30e40b03c548a9d79261/); ethereum `0x8234d0...c72b45`; ethereum `0x88a6ce...bd8f98`; ethereum `0xdc27ad...d50901` | ⚠️ Unaudited |
| PPTimedVesting | unknown | ethereum | 2 deployments: ethereum [`0x60842a...6b28b3`](./contracts/ethereum-1/0x60842a6b44cca5eb7685d1135acf69b1336b28b3/); ethereum `0x9a4d7a...05f114` | ⚠️ Unaudited |
| PPVesting | unknown | ethereum | [`0xfd28be...af754b`](./contracts/ethereum-1/0xfd28be82e453860f41c36029175377f470af754b/) | ⚠️ Unaudited |
| PriceFeed | unknown | ethereum | 10 deployments: ethereum [`0x060d67...b6e0b1`](./contracts/ethereum-1/0x060d6784d770d54dcb37fc2cb2d896d929b6e0b1/); optimism `0x22e12a...de9e0c`; optimism `0x5d3174...642d4e`; optimism `0x6b33b9...51f803`; optimism `0x9434bd...c72bcc`; optimism `0xbf7f22...87f6ac`; optimism `0xcd9c0e...828d3e`; optimism `0xf4aef2...6390dd`; avalanche `0x146552...29a8de`; avalanche `0x404433...fde993` | ⚠️ Unaudited |
| PriceOracle | unknown | optimism | [`0x4f9312...860161`](./contracts/optimism-10/0x4f9312a21f8853384e0f6141f3f9fb855d860161/) | ⚠️ Unaudited |
| PriceProxy | unknown | ethereum | 6 deployments: ethereum [`0x3b5eed...d9c126`](./contracts/ethereum-1/0x3b5eeddd55df0136f6d659769ffdcc0ab9d9c126/); ethereum `0x704980...acfc63`; ethereum `0x769c38...008487`; ethereum `0x8d35b8...52e578`; ethereum `0xe7bfda...0466de`; ethereum `0xf51e13...51eb37` | ⚠️ Unaudited |
| PrivateVesting | unknown | arbitrum | [`0xf164ac...c63d4c`](./contracts/arbitrum-42161/0xf164acdb5dcf5f855b98f9ba8ca73ca300c63d4c/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | optimism | 25 deployments: ethereum `0x2eab10...e7eeab`; ethereum `0x35a367...8990cb`; ethereum `0x3a2d0d...f1ba1a`; ethereum `0x4194cb...3b192e`; ethereum `0x4bb5a5...deac68`; ethereum `0x54ff0b...47ac79`; ethereum `0x56feb5...0bd8dc`; ethereum `0x5f9934...3c08aa`; ethereum `0x6241af...36d275`; ethereum `0x7696f9...8c42bb`; ethereum `0x858d7c...249e11`; ethereum `0xbe8eff...162fae`; ethereum `0xd18019...f3c173`; ethereum `0xe2881c...0c0fa0`; optimism [`0x1c4d5e...6ed1c9`](./contracts/optimism-10/0x1c4d5ecfbf2af57251f20a524d0f0c1b4f6ed1c9/); optimism `0x57faad...fa4fd0`; polygon `0x66d1c3...ee2019`; polygon `0x7e2dc2...90076b`; arbitrum `0x2a0027...72dd81`; arbitrum `0x93a918...0cd151`; arbitrum `0xc9aa79...bfee47`; arbitrum `0xd570ac...c22a86`; arbitrum `0xe58917...c89a4d`; arbitrum `0xf3b070...773368`; linea `0x6f8493...6be119` | ⚠️ Unaudited |
| ProxyBuilder | unknown | ethereum | [`0x54d861...53c56d`](./contracts/ethereum-1/0x54d8614c4fda84480e6452fec29e74452053c56d/) | ⚠️ Unaudited |
| ProxyFactory | unknown | ethereum | [`0x3c8c3c...6d595e`](./contracts/ethereum-1/0x3c8c3c0a1ee8296e41a0b735a7a58c179a6d595e/) | ⚠️ Unaudited |
| PrvTokenClaimer | unknown | ethereum | 2 deployments: ethereum [`0x1339ec...1cc5f7`](./contracts/ethereum-1/0x1339ec7d0d68a664690cc000623e5b6a841cc5f7/); ethereum `0x212d94...51ae99` | ⚠️ Unaudited |
| PSP | unknown | ethereum | [`0xcafe00...7f3de5`](./contracts/ethereum-1/0xcafe001067cdef266afb7eb5a286dcfd277f3de5/) | ⚠️ Unaudited |
| PSPToken | unknown | ethereum | [`0xbbdba6...dc4259`](./contracts/ethereum-1/0xbbdba695be29a043881c74d288797f50e0dc4259/) | ⚠️ Unaudited |
| QiStablecoin | unknown | polygon | [`0xa3fa99...6997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | ⚠️ Unaudited |
| QuotaDelegate | unknown | avalanche | 2 deployments: avalanche [`0x3c84ef...28281b`](./contracts/avalanche-43114/0x3c84ef5880102a2424ce87837ec2e524e228281b/); avalanche `0x4c4ca7...40c845` | ⚠️ Unaudited |
| RamsesClaimer | unknown | arbitrum | [`0xe14e75...1f75c6`](./contracts/arbitrum-42161/0xe14e7506a70781bc36a6e72d46ef2b028d1f75c6/) | ⚠️ Unaudited |
| RangedMarketMastercopy | unknown | optimism | 3 deployments: optimism [`0x6d53c8...2c39c4`](./contracts/optimism-10/0x6d53c852fe7e0b60d54c70e454cbbccbce2c39c4/); optimism `0x6fe6ec...5436fc`; optimism `0xe5109c...dddc84` | ⚠️ Unaudited |
| RangedMarketsAMM | unknown | optimism | 22 deployments: optimism [`0x086cc1...49e89d`](./contracts/optimism-10/0x086cc1c04ef1aa4797c18a946c5688bf3949e89d/); optimism `0x094892...7efa9a`; optimism `0x112249...51279d`; optimism `0x11e6ad...b26821`; optimism `0x16012e...5c6c38`; optimism `0x236057...d6c6d2`; optimism `0x2d356b...4fe1df`; optimism `0x3898b3...f2f47d`; optimism `0x57ddc5...531032`; optimism `0x64cb6e...328cc5`; optimism `0x8ad0b6...2381e8`; optimism `0x8b2e97...bdead7`; optimism `0x9530c1...2f0c1d`; optimism `0x99a63e...f2b4d9`; optimism `0xa484e2...2eb404`; optimism `0xbe4c77...0f6882`; optimism `0xc1f313...9cc62a`; optimism `0xc6bd48...3379d1`; optimism `0xcb933e...7d0113`; optimism `0xd77cc5...9bfcc9`; optimism `0xeaedb2...dae6ae`; optimism `0xee3e5a...1e0fbf` | ⚠️ Unaudited |
| RangedPositionMastercopy | unknown | optimism | 3 deployments: optimism [`0x34ed3d...0c5658`](./contracts/optimism-10/0x34ed3d919ad7f533bfafe9295363d9f37c0c5658/); optimism `0x7801ef...fdad5c`; optimism `0x897563...7c814a` | ⚠️ Unaudited |
| Reader | unknown | arbitrum | 3 deployments: arbitrum [`0x708c17...fd8641`](./contracts/arbitrum-42161/0x708c17d0901b76cc5cf8f67e1a2e198077fd8641/); arbitrum `0xc2da61...1066a9`; arbitrum `0xf7d17c...41b8a5` | ⚠️ Unaudited |
| Rebaser | unknown | ethereum | [`0x284c03...87133b`](./contracts/ethereum-1/0x284c036d52c4fd52af1cedeea5efc9160587133b/) | ⚠️ Unaudited |
| ReefLiquidityBond | unknown | ethereum | 4 deployments: ethereum [`0x3713a4...394d56`](./contracts/ethereum-1/0x3713a4e37a2fdc230a44cd6bfc99a183af394d56/); ethereum `0x484b08...463f96`; ethereum `0x7a23ce...2de9b4`; ethereum `0xa4ce45...5514a6` | ⚠️ Unaudited |
| ReefToken | unknown | ethereum | [`0xfe3e6a...735acf`](./contracts/ethereum-1/0xfe3e6a25e6b192a42a44ecddcd13796471735acf/) | ⚠️ Unaudited |
| Referrals | unknown | optimism | 3 deployments: optimism [`0x1a59ac...530d57`](./contracts/optimism-10/0x1a59ac5d4bdf35b5255c6d301ad23f6eb1530d57/); optimism `0xab4b1c...e2a840`; optimism `0xcde1c5...38ba00` | ⚠️ Unaudited |
| RequestFeesCalculator | unknown | ethereum | [`0xd966f0...ee7c88`](./contracts/ethereum-1/0xd966f0235ca332e92809f9aeed0fe615a9ee7c88/) | ⚠️ Unaudited |
| ReservesDistributor | unknown | ethereum | [`0xa6f3c2...fb3160`](./contracts/ethereum-1/0xa6f3c27f1b503221f3a3c9d34f587252ecfb3160/) | ⚠️ Unaudited |
| Reservoir | unknown | ethereum | 3 deployments: ethereum [`0x53e1f1...f4161c`](./contracts/ethereum-1/0x53e1f11890f858d09a16829e649e59c674f4161c/); ethereum `0x8ebc56...f4e79e`; ethereum `0xc9854f...37ea6c` | ⚠️ Unaudited |
| RevenueController | unknown | ethereum | 9 deployments: ethereum [`0x1b6275...8b672c`](./contracts/ethereum-1/0x1b627540ab32e771cd50b19aeb50a90fff8b672c/); ethereum `0x2641c5...254f35`; ethereum `0x2bb153...95290f`; ethereum `0x37310e...dbcfc3`; ethereum `0x622a1c...ccf04e`; ethereum `0x8451d9...c74919`; ethereum `0xbbb2dd...873a0c`; ethereum `0xbc36d8...35cc3c`; ethereum `0xfdc0d2...c11a4d` | ⚠️ Unaudited |
| RewardController | unknown | ethereum | 2 deployments: ethereum [`0x18e79b...550317`](./contracts/ethereum-1/0x18e79b8200f0346b615088a3bf160c9985550317/); ethereum `0x95b6d1...97c653` | ⚠️ Unaudited |
| RewardDistribution | unknown | arbitrum | [`0xcc8a88...0c7353`](./contracts/arbitrum-42161/0xcc8a884396a7b3a6e61591d5f8949076ed0c7353/) | ⚠️ Unaudited |
| RewardDistributor | unknown | optimism | 9 deployments: ethereum `0xc15e89...f1e9b2`; optimism [`0x6a2631...adbbf7`](./contracts/optimism-10/0x6a26318cbfec1e3e15cf5a64b0a326bae6adbbf7/); optimism `0x7b5981...11d5ad`; optimism `0xf5923d...11cdce`; polygon `0x784235...80cba7`; polygon `0x79010b...014935`; polygon `0x958b01...304d0d`; arbitrum `0xc0dc7c...69a739`; arbitrum `0xdcf837...445891` | ⚠️ Unaudited |
| RewardDistributorSecondV3 | unknown | polygon | 3 deployments: optimism `0x870ac6...9b71a2`; polygon [`0x47c19a...f4022f`](./contracts/polygon-137/0x47c19a2ab52da26551a22e2b2aeed5d19ef4022f/); arbitrum `0xf45e2a...6786c3` | ⚠️ Unaudited |
| RewardEscrow | unknown | ethereum | 2 deployments: ethereum [`0x2ac34f...2a45bb`](./contracts/ethereum-1/0x2ac34f8327aced80cfc04085972ee06be72a45bb/); ethereum `0xa2ecc4...4c1c27` | ⚠️ Unaudited |
| RewardPool | unknown | ethereum | [`0x673f7a...715952`](./contracts/ethereum-1/0x673f7a16b2d696a987383921292e8f46da715952/) | ⚠️ Unaudited |
| RewardReceiver | unknown | arbitrum | 2 deployments: arbitrum [`0x35da35...24a52a`](./contracts/arbitrum-42161/0x35da35b309cbd41dfaee1bbbca81b469cf24a52a/); arbitrum `0x621c8e...92c1d8` | ⚠️ Unaudited |
| Rewards | unknown | ethereum | [`0x6c5f18...9131d0`](./contracts/ethereum-1/0x6c5f18b0f37cd18871c67378c2478565779131d0/) | ⚠️ Unaudited |
| RewardTracker | unknown | arbitrum | 2 deployments: arbitrum [`0x124b6a...7d0458`](./contracts/arbitrum-42161/0x124b6aef712f9b2f8e239c01ce251287457d0458/); arbitrum `0x3c3e0a...f7db2b` | ⚠️ Unaudited |
| RoleController | unknown | arbitrum | 2 deployments: arbitrum [`0xa7ce1a...00fbdf`](./contracts/arbitrum-42161/0xa7ce1ab769dc8a9274f91254cefc0e817a00fbdf/); arbitrum `0xba5c01...59c838` | ⚠️ Unaudited |
| Router | unknown | arbitrum | 3 deployments: moonbeam `0x7a3909...fcab71`; arbitrum [`0x4b5cf3...18cabe`](./contracts/arbitrum-42161/0x4b5cf363f3f0fc82678d347fbff9ec2d8118cabe/); arbitrum `0x51c079...8a8314` | ⚠️ Unaudited |
| Router01 | unknown | ethereum | [`0x5e1690...43127d`](./contracts/ethereum-1/0x5e169082fff23cee6766062b96051a78c543127d/) | ⚠️ Unaudited |
| SafeBox | unknown | optimism | 8 deployments: optimism [`0x15c9ea...27e9db`](./contracts/optimism-10/0x15c9eae416c2e3fbecf2248003a2b2677127e9db/); optimism `0x3094b8...19e8d7`; optimism `0x4063bf...55cd49`; optimism `0x6d3705...b62ba7`; optimism `0x83a6a8...b5a175`; optimism `0xb30e97...de1ade`; optimism `0xe412f4...78c0e9`; optimism `0xe85320...32978c` | ⚠️ Unaudited |
| SafeBoxBuyback | unknown | optimism | 4 deployments: optimism [`0x1b0ed6...8cf0e4`](./contracts/optimism-10/0x1b0ed6567a53eac1fe6d859d3fb2be11738cf0e4/); optimism `0x679c01...7c59e7`; optimism `0x84e964...a55006`; optimism `0x955f10...59114d` | ⚠️ Unaudited |
| SafeBoxRetriever | unknown | ethereum | 5 deployments: ethereum [`0x059b6e...69e25b`](./contracts/ethereum-1/0x059b6e919e83a338f1fd96e69e6d5f501369e25b/); ethereum `0x6cea4b...355cf1`; ethereum `0xc2204d...f15fd4`; ethereum `0xca493b...c29aaa`; ethereum `0xf8e176...8585ed` | ⚠️ Unaudited |
| SafleToken | unknown | polygon | [`0x04b330...8ea126`](./contracts/polygon-137/0x04b33078ea1aef29bf3fb29c6ab7b200c58ea126/) | ⚠️ Unaudited |
| ShareBondToken | unknown | ethereum | 7 deployments: ethereum [`0x00db02...4104de`](./contracts/ethereum-1/0x00db02e7041e025d24894aa9be9dbf85014104de/); ethereum `0x2a104b...57de6d`; ethereum `0x424faf...c27434`; ethereum `0x5837d8...17946f`; ethereum `0x765630...d6a1d7`; ethereum `0x832e99...9be0f9`; ethereum `0xa0b277...42e847` | ⚠️ Unaudited |
| ShareToken | unknown | ethereum | 7 deployments: ethereum [`0x3d4b40...c261e8`](./contracts/ethereum-1/0x3d4b40ca0f98fcce38aa1704cbdf134496c261e8/); ethereum `0x887c87...720b4d`; ethereum `0x9ec638...bd6958`; ethereum `0xae694f...b26ff2`; ethereum `0xd78ba1...6ec79b`; ethereum `0xdcd1aa...26977b`; ethereum `0xf37781...0a286f` | ⚠️ Unaudited |
| SignatureVerifier | periphery | avalanche | [`0x4f1d3d...12345c`](./contracts/avalanche-43114/0x4f1d3d9ce4bb7646c35dcd05d3296f106f12345c/) | ⚠️ Unaudited |
| SimpleFunctionRegistryFeature | unknown | ethereum | [`0xbc033d...a78233`](./contracts/ethereum-1/0xbc033d0946c2950e67476878b6bb46079da78233/) | ⚠️ Unaudited |
| SimpleVoting | unknown | ethereum | 2 deployments: ethereum [`0x54ebaf...af13ac`](./contracts/ethereum-1/0x54ebaf8c34d4ada5a1d0936ca11394d858af13ac/); ethereum `0x62e9c8...227d10` | ⚠️ Unaudited |
| SmallToken | unknown | ethereum | [`0x7fa384...23d2f2`](./contracts/ethereum-1/0x7fa38443e5caec9f8d9c3fc37cd1dae2a523d2f2/) | ⚠️ Unaudited |
| SMT | unknown | linea | 2 deployments: linea [`0x3b152e...df2e82`](./contracts/linea-59144/0x3b152ec4f1534947fafb9edce9c7cb4bf8df2e82/); linea `0x90a85d...ca9ca8` | ⚠️ Unaudited |
| SMTUpdateCircuitProofVerifier | periphery | linea | [`0x2167fc...7c4e27`](./contracts/linea-59144/0x2167fc3fab0c65ebf658d0c6ce0e670f497c4e27/) | ⚠️ Unaudited |
| SortedTroves | unknown | avalanche | 2 deployments: avalanche [`0x5272df...965f40`](./contracts/avalanche-43114/0x5272dfb4851723328da7730be944502e5c965f40/); avalanche `0xef1acf...fd5683` | ⚠️ Unaudited |
| SportAMMLiquidityPool | unknown | optimism | 9 deployments: optimism [`0x14c50f...938636`](./contracts/optimism-10/0x14c50f2527ff4c68fac12394883233c701938636/); optimism `0x2a928a...211700`; optimism `0x303067...ed8486`; optimism `0x6c2e00...01d91c`; optimism `0x6c36ce...9de189`; optimism `0x842e89...e0eba5`; optimism `0xc1a135...cb0cad`; optimism `0xcaa383...9eb7b6`; optimism `0xd2bc26...d05689` | ⚠️ Unaudited |
| SportAMMLiquidityPoolData | unknown | optimism | 7 deployments: optimism [`0x022ca1...76e385`](./contracts/optimism-10/0x022ca1d3570f6c258ed47c381541d8225176e385/); optimism `0x1d9477...fc58b0`; optimism `0x42c6a5...d21ebc`; optimism `0x49e458...dfe340`; optimism `0xabde2d...d39996`; optimism `0xd59cad...3c99ad`; optimism `0xe070a4...08561c` | ⚠️ Unaudited |
| SportAMMLiquidityPoolRoundMastercopy | unknown | optimism | [`0xaea1be...93952a`](./contracts/optimism-10/0xaea1be15adb75a49aceef392a6d37625d993952a/) | ⚠️ Unaudited |
| SportPositionalMarketData | unknown | optimism | 3 deployments: optimism [`0xef9865...ebff4a`](./contracts/optimism-10/0xef9865a2d2dc2322d8b4e6ac84b13d4121ebff4a/); optimism `0xfa2a9d...06b815`; optimism `0xfc050b...8db266` | ⚠️ Unaudited |
| SportPositionalMarketManager | unknown | optimism | 3 deployments: optimism [`0x46b1ec...18e154`](./contracts/optimism-10/0x46b1ec25e5e7696ecbae9441d3f79d01b118e154/); optimism `0xccf4fd...741a19`; optimism `0xf958a0...1ac945` | ⚠️ Unaudited |
| SportsAMM | unknown | optimism | 19 deployments: optimism [`0x08e2c2...f4e5ae`](./contracts/optimism-10/0x08e2c2ba4f48e1dd103c12a38d515ba980f4e5ae/); optimism `0x0e4641...0bddcf`; optimism `0x0eeff6...eb0840`; optimism `0x2c59ce...629370`; optimism `0x375177...3e3650`; optimism `0x48e298...13e22f`; optimism `0x5ed430...d31c2a`; optimism `0x6c96d3...ce07de`; optimism `0x7ad35a...c59d3c`; optimism `0x7bb0a8...87d754`; optimism `0x7c3f72...80e0e0`; optimism `0x93b192...d1d465`; optimism `0xb1414f...5432aa`; optimism `0xba6f3a...bfb2bf`; optimism `0xcdaa51...73ebfc`; optimism `0xd47e43...b0005a`; optimism `0xe0fa68...135356`; optimism `0xed2917...532ab0`; optimism `0xee97fc...68eeeb` | ⚠️ Unaudited |
| SportsAMMUtils | unknown | optimism | 6 deployments: optimism [`0x060112...aa2344`](./contracts/optimism-10/0x06011212ec56b65133b13c4ad3f11f1d40aa2344/); optimism `0x3a537c...266f04`; optimism `0x565ce8...56c4a2`; optimism `0x79a121...05f18d`; optimism `0x7f8047...f6f89a`; optimism `0xf10424...82a8e8` | ⚠️ Unaudited |
| SportVault | unknown | optimism | 14 deployments: optimism [`0x0b8f39...7be900`](./contracts/optimism-10/0x0b8f398d8dbb74bf2dc475d02e802334777be900/); optimism `0x0c09f6...00f62e`; optimism `0x0e12de...093b74`; optimism `0x15983b...2b0e77`; optimism `0x1757cf...90f904`; optimism `0x43d198...16d98e`; optimism `0x51b774...485abe`; optimism `0x5e2b49...632d3f`; optimism `0xbaac54...65fd5f`; optimism `0xc922f4...f6cecd`; optimism `0xf089f0...465d30`; optimism `0xf270bb...c065a7`; optimism `0xf307ef...efdd34`; optimism `0xfd99fc...b1536a` | ⚠️ Unaudited |
| SportVaultData | unknown | optimism | 5 deployments: optimism [`0x474499...33326d`](./contracts/optimism-10/0x474499e5202d8cc7898358526c8d00b43333326d/); optimism `0x606b55...bc6073`; optimism `0x741ad2...95321c`; optimism `0xbf8523...705ac2`; optimism `0xdc1885...a9d512` | ⚠️ Unaudited |
| SsovAdapter | unknown | arbitrum | [`0x634ae8...fe18c2`](./contracts/arbitrum-42161/0x634ae8e6267debe4f67948657e6b903b19fe18c2/) | ⚠️ Unaudited |
| SsovV3Wrapper | unknown | arbitrum | 2 deployments: arbitrum [`0x7487c1...65052f`](./contracts/arbitrum-42161/0x7487c19df56b7ea764fc269468b5d3014565052f/); arbitrum `0xe098e7...c248e2` | ⚠️ Unaudited |
| StablecoinInterestRateModel | unknown | arbitrum | [`0x4a523c...15433e`](./contracts/arbitrum-42161/0x4a523cc2f334eca221ebfc7cbc935ae8d315433e/) | ⚠️ Unaudited |
| StablePrimaryInterestModel | unknown | optimism | 3 deployments: optimism [`0x40be37...01c499`](./contracts/optimism-10/0x40be37096ce3b8a2e9ec002468ab91071501c499/); polygon `0x6bf21b...d0c45a`; arbitrum `0xaf7232...a49efb` | ⚠️ Unaudited |
| StableSecondaryInterestModel | unknown | optimism | 2 deployments: optimism [`0x5f7ca1...885c35`](./contracts/optimism-10/0x5f7ca155cd53f552e60f8d1b088d6e4ca5885c35/); polygon `0xa300a8...d8bcf4` | ⚠️ Unaudited |
| StableToken | unknown | ethereum | 7 deployments: ethereum [`0x07aaa2...1a3bb2`](./contracts/ethereum-1/0x07aaa29e63ffeb2ebf59b33ee61437e1a91a3bb2/); ethereum `0x0d1a54...2fd9c5`; ethereum `0x1fd7bb...4931f9`; ethereum `0x397bc7...207858`; ethereum `0x4a94d8...f9df44`; ethereum `0xcb06d2...a725e2`; ethereum `0xe5e706...50f2f8` | ⚠️ Unaudited |
| Staking | unknown | avalanche | 4 deployments: ethereum `0xdb3130...9beacb`; avalanche [`0x0f6297...879192`](./contracts/avalanche-43114/0x0f6297bf8fbcfa704da0d6d45440a5d857879192/); avalanche `0x0ffd21...6724dc`; avalanche `0x4cfd15...0687b6` | ⚠️ Unaudited |
| StakingData | unknown | optimism | 2 deployments: optimism [`0xab599b...e0995a`](./contracts/optimism-10/0xab599b2697d836e665706dc59566363e2fe0995a/); optimism `0xcc1342...0c087c` | ⚠️ Unaudited |
| StakingPool | unknown | optimism | [`0x58c9e3...256b0e`](./contracts/optimism-10/0x58c9e3b0ec4c37732ff269b605cda0ee3d256b0e/) | ⚠️ Unaudited |
| StakingPools | unknown | ethereum | [`0x37c7c2...36d6ee`](./contracts/ethereum-1/0x37c7c2ae51e968cefb82cff2102727256d36d6ee/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | 15 deployments: ethereum [`0x113414...7c0e4f`](./contracts/ethereum-1/0x11341455ff53af5fb1194680f20d932c287c0e4f/); ethereum `0x18011c...5a2aec`; ethereum `0x1a364a...613f07`; ethereum `0x493a9f...a7cd17`; ethereum `0x8baa83...ba9466`; ethereum `0x9481dd...e0b295`; ethereum `0xb47ec1...495ef4`; ethereum `0xb55cdd...1b6b18`; ethereum `0xc90aff...54b235`; ethereum `0xd7d241...88ccaa`; ethereum `0xdf0045...739c6e`; ethereum `0xe0cf53...fa786f`; ethereum `0xf4f3d1...6c5111`; optimism `0x4aec98...83f4f8`; optimism `0xfe757a...986a4d` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | arbitrum | [`0x2c2082...1a1cf3`](./contracts/arbitrum-42161/0x2c2082e4062bfd02141adc86cbd5e437201a1cf3/) | ⚠️ Unaudited |
| StakingRouter | unknown | ethereum | 2 deployments: ethereum [`0x6032e0...ed0bfd`](./contracts/ethereum-1/0x6032e07e5117907af8b8d24426c4a99647ed0bfd/); ethereum `0xde182e...c86266` | ⚠️ Unaudited |
| StakingThales | unknown | optimism | 6 deployments: optimism [`0x0886e6...08d9cd`](./contracts/optimism-10/0x0886e6bea150ed770b2ee3341332339c5c08d9cd/); optimism `0x2113a7...673389`; optimism `0x65682e...da0176`; optimism `0xd47285...a1b823`; optimism `0xed8519...97a85e`; optimism `0xf9ea58...905d4a` | ⚠️ Unaudited |
| StakingThalesBonusRewardsManager | unknown | optimism | 2 deployments: optimism [`0x5830e9...6afb49`](./contracts/optimism-10/0x5830e9e30b55cb5fd6102805fea2cf951f6afb49/); optimism `0xc07520...9b4271` | ⚠️ Unaudited |
| Standard | unknown | ethereum | [`0x9040e2...2b999d`](./contracts/ethereum-1/0x9040e237c3bf18347bb00957dc22167d0f2b999d/) | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | 8 deployments: arbitrum [`0x3a8b78...f345ab`](./contracts/arbitrum-42161/0x3a8b787f78d775aecfeea15706d4221b40f345ab/); arbitrum `0x55ff62...a4bf70`; arbitrum `0x69eb4f...59a581`; arbitrum `0x9c67ee...7dd39c`; arbitrum `0xa72159...1e9b87`; arbitrum `0xae6aab...aba689`; arbitrum `0xcafcd8...efd07b`; arbitrum `0xe72ba9...a37333` | ⚠️ Unaudited |
| StandardInterestRateModel | unknown | arbitrum | [`0x6c3580...dbaef2`](./contracts/arbitrum-42161/0x6c35809f1aec28fc45c462b36a8ad2b1aadbaef2/) | ⚠️ Unaudited |
| SwapNFT | unknown | optimism | 2 deployments: optimism [`0x19305f...f60226`](./contracts/optimism-10/0x19305fa7b4832b7f7545cc752c71f8cdf9f60226/); optimism `0x460979...9513e7` | ⚠️ Unaudited |
| SymbolService | unknown | arbitrum | 3 deployments: arbitrum [`0x2842c5...f05811`](./contracts/arbitrum-42161/0x2842c57c2736bb459bdac97baa22596e71f05811/); arbitrum `0x34a993...2ee42e`; arbitrum `0xe9b15e...1a035c` | ⚠️ Unaudited |
| TaleOfThalesNFTs | unknown | optimism | 4 deployments: optimism [`0x41cccb...486d1f`](./contracts/optimism-10/0x41cccb4935386e0471922d460d9194b7db486d1f/); optimism `0x890b55...0cf505`; optimism `0xa9218c...be7021`; optimism `0xae19f4...49e41e` | ⚠️ Unaudited |
| TeamTokenClaimer | unknown | ethereum | [`0xcf6cf0...8c24c9`](./contracts/ethereum-1/0xcf6cf0043c30c1b8d6d28ac85faf6ad96f8c24c9/) | ⚠️ Unaudited |
| TeamVesting | unknown | arbitrum | [`0xc1d968...da55b7`](./contracts/arbitrum-42161/0xc1d9682db60955d64f263025b282acbf8cda55b7/) | ⚠️ Unaudited |
| TemporaryViewer | unknown | arbitrum | [`0xedf0f9...fe9a59`](./contracts/arbitrum-42161/0xedf0f9be0ef62ed60522682ddd3aaf5ae9fe9a59/) | ⚠️ Unaudited |
| ThalesAMM | unknown | optimism | 42 deployments: optimism [`0x129e14...554c2f`](./contracts/optimism-10/0x129e14f5e79f1423b79d309a2a7ee43121554c2f/); optimism `0x266b5d...46bb22`; optimism `0x278b5a...dc1a1a`; optimism `0x2b8927...d21505`; optimism `0x30efe4...8f1815`; optimism `0x32d742...b2c20f`; optimism `0x38f84c...4647bf`; optimism `0x3dfe6f...9de2ae`; optimism `0x3e238a...cd82b1`; optimism `0x453858...b26391`; optimism `0x457c4f...53b511`; optimism `0x4726b4...6c56f6`; optimism `0x516c96...f2d644`; optimism `0x5ae745...4ef1b1`; optimism `0x5b76e9...e384fe`; optimism `0x5ca2e5...a84281`; optimism `0x5f8b6a...a6bba6`; optimism `0x64c9c8...7bc8dc`; optimism `0x653c6a...fd83eb`; optimism `0x69941c...d48b79`; optimism `0x705d97...ec04f5`; optimism `0x729182...ffaab0`; optimism `0x7cafbe...a1f38e`; optimism `0x803201...a0fe79`; optimism `0x87de14...b12a56`; optimism `0x9043cf...64e0ca`; optimism `0x95486a...1bcb34`; optimism `0xa8fbb9...d24349`; optimism `0xaf8871...150b67`; optimism `0xb193e7...c684e1`; optimism `0xbf40da...b91cd9`; optimism `0xd0418b...e5197c`; optimism `0xd51721...b61cdb`; optimism `0xde4f54...98451f`; optimism `0xe1fd1c...b0ff92`; optimism `0xe69473...421530`; optimism `0xebd11d...032b3f`; optimism `0xef9e3a...219e72`; optimism `0xf3b63b...fc369a`; optimism `0xf74c34...0d8cbc`; optimism `0xfa4eb2...03e6ac`; optimism `0xfdbf68...9717c2` | ⚠️ Unaudited |
| ThalesAMMDefaultLiquidityProvider | unknown | optimism | 2 deployments: optimism [`0x6ab00f...51d39d`](./contracts/optimism-10/0x6ab00f0b713fd6288fc849b25e580ed2ad51d39d/); optimism `0xb47fb0...a2d6fe` | ⚠️ Unaudited |
| ThalesAMMLiquidityPool | unknown | optimism | 4 deployments: optimism [`0x092e6b...d58b70`](./contracts/optimism-10/0x092e6b8dfddb4b732c89deb4a700868cc5d58b70/); optimism `0x33425d...bddc01`; optimism `0xc10a0a...85ea40`; optimism `0xc33cab...b44cc4` | ⚠️ Unaudited |
| ThalesAMMLiquidityPoolData | unknown | optimism | 4 deployments: optimism [`0x1e95fa...c1e0a1`](./contracts/optimism-10/0x1e95faca5f99dcc8e517fea193a3c3b0aac1e0a1/); optimism `0x23823f...8150c2`; optimism `0x8ee4f3...1b376c`; optimism `0xb23ea6...420608` | ⚠️ Unaudited |
| ThalesAMMLiquidityPoolRoundMastercopy | unknown | optimism | [`0x8f8cc3...132018`](./contracts/optimism-10/0x8f8cc357aaa401cb6f7e01d56c59aa8cb2132018/) | ⚠️ Unaudited |
| ThalesAMMUtils | unknown | optimism | 5 deployments: optimism [`0x279c0d...341373`](./contracts/optimism-10/0x279c0d239d0c036e74aadf872d604af37e341373/); optimism `0x4986e1...36b02c`; optimism `0x6acc55...7c3184`; optimism `0xc9fd24...fd3dcb`; optimism `0xe1095d...815f2c` | ⚠️ Unaudited |
| ThalesExchanger | unknown | ethereum | 2 deployments: ethereum [`0x3124a1...3d9701`](./contracts/ethereum-1/0x3124a11216273018c8f37181b4505d36573d9701/); ethereum `0xe0b316...86dd63` | ⚠️ Unaudited |
| ThalesRoyale | unknown | optimism | 2 deployments: optimism [`0x3198ab...a2e579`](./contracts/optimism-10/0x3198ab211cdf3e4d13a698e1fb819507bca2e579/); optimism `0xf238b9...46cbc4` | ⚠️ Unaudited |
| ThalesStakingRewardsPool | unknown | optimism | 2 deployments: optimism [`0x0abc94...7a4ee3`](./contracts/optimism-10/0x0abc94987f6b98bfe6fd40f749e445a2857a4ee3/); optimism `0xd671dd...43a91e` | ⚠️ Unaudited |
| TherundownConsumer | unknown | optimism | 2 deployments: optimism [`0x2447ce...9f9985`](./contracts/optimism-10/0x2447ce55d230c01fc430725a8613d852289f9985/); optimism `0xbc4bbd...9bb1f7` | ⚠️ Unaudited |
| Tickets | unknown | ethereum | [`0x7a58c0...736c71`](./contracts/ethereum-1/0x7a58c0be72be218b41c608b7fe7c5bb630736c71/) | ⚠️ Unaudited |
| Timelock | unknown | optimism | 9 deployments: ethereum `0x0e05a5...84325e`; ethereum `0x34776a...334ad8`; ethereum `0x6415ce...e08a7a`; ethereum `0xa40522...a2c4e3`; ethereum `0xb712ab...83e548`; optimism [`0x0d535c...16bafe`](./contracts/optimism-10/0x0d535ca4c27f0c25a20e2d474ee3e99c1316bafe/); polygon `0x1c4d5e...6ed1c9`; arbitrum `0xde62ad...be2233`; arbitrum `0xdf00c3...ed0248` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | governance | avalanche | [`0xf06d72...5e8355`](./contracts/avalanche-43114/0xf06d72375d3bf5ab1a8222858e2098b16e5e8355/) | ⚠️ Unaudited |
| TokenVesting | unknown | ethereum | 44 deployments: ethereum [`0x072fbb...59ce45`](./contracts/ethereum-1/0x072fbb7232bf368899827011c51df03a1d59ce45/); ethereum `0x0da2ad...72c484`; ethereum `0x17ec35...969408`; ethereum `0x205285...514271`; ethereum `0x21c09c...3585ab`; ethereum `0x21c6e6...de1bcb`; ethereum `0x278d33...37a036`; ethereum `0x2b79e1...7659ea`; ethereum `0x348aa8...245aab`; ethereum `0x34a99c...2adae3`; ethereum `0x42ff3d...6dc926`; ethereum `0x490a11...a3eaea`; ethereum `0x4add71...2d1892`; ethereum `0x51d2f2...94609f`; ethereum `0x532fe5...c6e1db`; ethereum `0x574695...69b291`; ethereum `0x5910a9...0f8011`; ethereum `0x5bbbaf...2c2923`; ethereum `0x65a097...51f0bc`; ethereum `0x69f8ad...fe2633`; ethereum `0x6a3cca...2a07b9`; ethereum `0x6ae6be...516239`; ethereum `0x6ecc9d...de6461`; ethereum `0x786455...3c5df4`; ethereum `0x7dbcc4...786d85`; ethereum `0x89108a...f03323`; ethereum `0x92d873...40d04c`; ethereum `0x978d98...efd9ba`; ethereum `0x97bc53...0b2aa7`; ethereum `0x9cc56b...555902`; ethereum `0xa5ff91...a37347`; ethereum `0xa8f13a...b6ca21`; ethereum `0xa9e238...85f977`; ethereum `0xb07409...46e081`; ethereum `0xb0f0e4...eddd63`; ethereum `0xb7f09d...0b5075`; ethereum `0xba9a70...da171c`; ethereum `0xd72a41...fc4952`; ethereum `0xdca445...b1ee02`; ethereum `0xdd35bd...18fdc3`; ethereum `0xe078be...c1494e`; ethereum `0xe26b8a...73927e`; ethereum `0xe87352...cceedd`; ethereum `0xf6e88d...97a369` | ⚠️ Unaudited |
| TomHelper | unknown | moonriver | 2 deployments: moonriver [`0x5c0ae7...7a3139`](./contracts/moonriver-1285/0x5c0ae7c31a3fd60f0ea6d65f7b1aa185687a3139/); moonriver `0xbbd595...961ae4` | ⚠️ Unaudited |
| TomOracle | unknown | moonriver | 2 deployments: moonriver [`0x0aa1c4...bed6ae`](./contracts/moonriver-1285/0x0aa1c433cbd49dedec4e53c89bae0c2716bed6ae/); moonriver `0xbe4852...1a171f` | ⚠️ Unaudited |
| TomVault | unknown | moonriver | [`0xd90a92...c00fe7`](./contracts/moonriver-1285/0xd90a92bd23b30dc3a69403e00651ff6d08c00fe7/) | ⚠️ Unaudited |
| TORN | unknown | ethereum | [`0x77777f...6a116c`](./contracts/ethereum-1/0x77777feddddffc19ff86db637967013e6c6a116c/) | ⚠️ Unaudited |
| TornPowerIndexConnector | unknown | ethereum | 3 deployments: ethereum [`0x0a5527...853780`](./contracts/ethereum-1/0x0a5527eaacb1605bf8801c5fcee4e8ffc8853780/); ethereum `0x4930a6...bf3b79`; ethereum `0x887d87...3d95b7` | ⚠️ Unaudited |
| TracerDAO | unknown | ethereum | [`0x515f28...aa259a`](./contracts/ethereum-1/0x515f2815c950c8385c1c3c30b63adf3207aa259a/) | ⚠️ Unaudited |
| TracerMultisigDAO | unknown | ethereum | [`0xa84918...6b6cba`](./contracts/ethereum-1/0xa84918f3280d488eb3369cb713ec53ce386b6cba/) | ⚠️ Unaudited |
| TracerToken | unknown | ethereum | [`0x9c4a42...22f050`](./contracts/ethereum-1/0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050/) | ⚠️ Unaudited |
| TradeAccounting | unknown | ethereum | 2 deployments: ethereum [`0x9a8433...f5568c`](./contracts/ethereum-1/0x9a84333f3521207589b180e343a700ba48f5568c/); ethereum `0xf449ca...033356` | ⚠️ Unaudited |
| TradeModule | unknown | arbitrum | 2 deployments: arbitrum [`0x504559...021ba0`](./contracts/arbitrum-42161/0x504559ced7950bf397609b17fe28d55a16021ba0/); arbitrum `0x538c25...ef2fdf` | ⚠️ Unaudited |
| TransferAgent | unknown | bsc | 2 deployments: ethereum `0x9b274b...661a0b`; bsc [`0x3d85b5...5da541`](./contracts/bsc-56/0x3d85b598b734a0e7c8c1b62b00e972e9265da541/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | 53 deployments: ethereum [`0x0e0da4...e0bc60`](./contracts/ethereum-1/0x0e0da40101d8f6eb1b1d6b0215327e8452e0bc60/); ethereum `0x2167ee...1f4fbc`; ethereum `0x244472...6599a0`; ethereum `0x2878f5...37f7a1`; ethereum `0x337f91...b93728`; ethereum `0x36bab6...ee5399`; ethereum `0x57c884...e392ef`; ethereum `0x8b50a7...b2681e`; ethereum `0x9ad0e2...b0219d`; ethereum `0x9cf73e...a68f2b`; ethereum `0xf3d22b...2ff9bd`; optimism `0x16888e...f0e279`; optimism `0x21382a...07e23c`; optimism `0x356163...e508e7`; optimism `0x3ea2c9...35f10a`; optimism `0x40a33f...f47c65`; optimism `0x4779f4...32f128`; optimism `0x662695...64c99c`; optimism `0x663f82...172f24`; optimism `0x70a354...413bd4`; optimism `0x78088a...22345c`; optimism `0xa6a9ea...9aebec`; optimism `0xa84cab...e49e5d`; optimism `0xc462ff...6f0fc8`; optimism `0xdfec2e...e0ecf2`; optimism `0xf329b8...b91731`; polygon `0x271479...4eebd3`; polygon `0x3ea2c9...35f10a`; polygon `0x538bdc...a6cc4e`; polygon `0x53bf3c...f1aff9`; polygon `0x565704...54c3ca`; polygon `0x9150e1...c0943d`; polygon `0x99e835...fe372c`; polygon `0xb7e0b3...f1fd85`; polygon `0xc61707...178e78`; polygon `0xc9d1cb...77c627`; moonriver `0xe31a0d...7c994f`; moonriver `0xfc7883...2270de`; arbitrum `0x1284c7...88b4cc`; arbitrum `0x209113...ee3aab`; arbitrum `0x547529...c319c5`; arbitrum `0x560ec1...07367e`; arbitrum `0x694baa...db01e6`; arbitrum `0x6d5b33...b763ef`; arbitrum `0x7230d6...a7605a`; arbitrum `0x784819...1ebc04`; arbitrum `0x786391...4dea7d`; arbitrum `0x9a691e...782e20`; arbitrum `0x9aa4ec...672205`; arbitrum `0xa04adc...7fd77f`; arbitrum `0xc1d816...c2735e`; arbitrum `0xcb0a40...022740`; arbitrum `0xe865df...aa2db8` | ⚠️ Unaudited |
| Treasury | unknown | optimism | [`0x2ce498...1f75ea`](./contracts/optimism-10/0x2ce498b79c499c6bb64934042eba487bd31f75ea/) | ⚠️ Unaudited |
| TroveManager | governance | avalanche | 2 deployments: avalanche [`0x0537bf...c8cad4`](./contracts/avalanche-43114/0x0537bf1c874985a456733abfaa744c0a3cc8cad4/); avalanche `0xd22b04...776194` | ⚠️ Unaudited |
| TSTokenClaimer | unknown | ethereum | [`0x98db84...fc41cc`](./contracts/ethereum-1/0x98db847ed84ef8bd6e5c4f593fe0341869fc41cc/) | ⚠️ Unaudited |
| TSTokenClaimer_Suplementory | unknown | ethereum | 2 deployments: ethereum [`0x3d4acc...8d6a4c`](./contracts/ethereum-1/0x3d4acc81369c65d77648762f2dbe846b328d6a4c/); ethereum `0xb329c1...708a27` | ⚠️ Unaudited |
| TunableOracle | operational_periphery | arbitrum | [`0xad6237...e14a86`](./contracts/arbitrum-42161/0xad62379a605f1b5151478274ac3a202ad5e14a86/) | ⚠️ Unaudited |
| TunableOracleRegister | unknown | arbitrum | 2 deployments: arbitrum [`0x43800d...26cdeb`](./contracts/arbitrum-42161/0x43800d850c87d5d585d8ddf3dfb23152a826cdeb/); arbitrum `0x58228d...a93b5a` | ⚠️ Unaudited |
| UCG | unknown | ethereum | [`0x7d92a0...a85fe1`](./contracts/ethereum-1/0x7d92a06808b4c4833623f809218ed403e4a85fe1/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | 5 deployments: polygon [`0x08c15f...47e0a3`](./contracts/polygon-137/0x08c15fa26e519a78a666d19ce5c646d55047e0a3/); polygon `0x14af1f...63b83c`; polygon `0x1b815d...a8c603`; polygon `0x60bb3d...c5bd05`; polygon `0xecc417...c4f09d` | ⚠️ Unaudited |
| UnderlyingVault | unknown | arbitrum | 2 deployments: arbitrum [`0x0b5ddf...d73c40`](./contracts/arbitrum-42161/0x0b5ddfc404aa13e2f9c53f6a3f5126075ad73c40/); arbitrum `0xd657df...abcd23` | ⚠️ Unaudited |
| Unipool | unknown | ethereum | 10 deployments: ethereum [`0x308777...2fe874`](./contracts/ethereum-1/0x308777ddec61f5000d8394626d55dbb0312fe874/); ethereum `0x324eeb...8538df`; ethereum `0x5e84fc...dc41c1`; ethereum `0xa94e20...600c48`; ethereum `0xb71def...3fd3b5`; ethereum `0xd26033...0ccadf`; ethereum `0xd2fa07...adba8b`; ethereum `0xdc7a84...9a8adc`; avalanche `0x5e552f...11155a`; avalanche `0x9717ff...af8370` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | arbitrum | [`0xf68bb2...167ec1`](./contracts/arbitrum-42161/0xf68bb2d1aa914a4c43f00dfbe765bb7dc8167ec1/) | ⚠️ Unaudited |
| UpgradeableIncentiveReceiver | unknown | arbitrum | 2 deployments: arbitrum [`0x2a5cc1...105ad6`](./contracts/arbitrum-42161/0x2a5cc190854cd078b2b0ca2a357faf0073105ad6/); arbitrum `0x53ce52...220c26` | ⚠️ Unaudited |
| USDCLPStakingRewards | unknown | ethereum | [`0x717508...ac4dbd`](./contracts/ethereum-1/0x717508a974cca423343d8c2a71d257f799ac4dbd/) | ⚠️ Unaudited |
| USDCVesting | unknown | arbitrum | [`0xa0ed02...7a9073`](./contracts/arbitrum-42161/0xa0ed021cf3ad897181c23e20aa5ffb8f607a9073/) | ⚠️ Unaudited |
| USDTLPStakingRewards | unknown | ethereum | 2 deployments: ethereum [`0x4ee7d2...9e1db3`](./contracts/ethereum-1/0x4ee7d2a5e155b721282065279e76da908d9e1db3/); ethereum `0xdb14a3...edc915` | ⚠️ Unaudited |
| USRHandler | unknown | ethereum | 2 deployments: ethereum [`0x8916a9...9ed12d`](./contracts/ethereum-1/0x8916a9b0064feab04b3bf3729adbb0be119ed12d/); ethereum `0xbde39e...42c8f9` | ⚠️ Unaudited |
| USRProxy | unknown | ethereum | 2 deployments: ethereum [`0x2cd4e8...96a13a`](./contracts/ethereum-1/0x2cd4e8d82f62a91b2299b083ba08532a6a96a13a/); ethereum `0xef004c...5f20d0` | ⚠️ Unaudited |
| VAelinConverter | unknown | optimism | [`0xf02a67...1c9bc9`](./contracts/optimism-10/0xf02a67988adb4b92365911cd2522ef4deb1c9bc9/) | ⚠️ Unaudited |
| ValueCapture | unknown | arbitrum | 2 deployments: arbitrum [`0x5fcdfd...0379df`](./contracts/arbitrum-42161/0x5fcdfd5634c50cccef6275a239207b09bd0379df/); arbitrum `0xa04197...a967aa` | ⚠️ Unaudited |
| Vault | unknown | ethereum | 6 deployments: ethereum [`0x3978a7...bb81f6`](./contracts/ethereum-1/0x3978a74a0b1fa165a404157c40f62c25babb81f6/); ethereum `0x3ab286...f2ccc6`; ethereum `0x46c723...dd3869`; ethereum `0x5a0b79...44d832`; arbitrum `0xc34419...681503`; arbitrum `0xd78ba1...6ec79b` | ⚠️ Unaudited |
| VelodromeSupport | unknown | optimism | [`0x433322...b873b5`](./contracts/optimism-10/0x4333227e5a2ed1c439b1fc5ca0c025af6cb873b5/) | ⚠️ Unaudited |
| VestedLPMining | unknown | ethereum | 11 deployments: ethereum [`0x0b4d74...aa69da`](./contracts/ethereum-1/0x0b4d7443c0299aebdc629df6076139c3fcaa69da/); ethereum `0x2dc6b1...f995c8`; ethereum `0x5ccbf7...df3335`; ethereum `0x61a542...d8e0ba`; ethereum `0x6aa927...73ec3f`; ethereum `0x93cedc...6d1321`; ethereum `0x9e008f...b4765e`; ethereum `0xacd09e...c583ac`; ethereum `0xb52eb6...c1ac18`; ethereum `0xe1ad7f...b6ada5`; ethereum `0xf09232...e58507` | ⚠️ Unaudited |
| Vester | unknown | ethereum | 4 deployments: ethereum [`0x03f75e...17e3c7`](./contracts/ethereum-1/0x03f75e626cacb190e0f6072cf5ec5b304517e3c7/); ethereum `0xc65d78...e40bec`; ethereum `0xccb284...9376c7`; optimism `0xa27a77...9898b8` | ⚠️ Unaudited |
| VesterSale | unknown | ethereum | [`0xcf8a53...21363c`](./contracts/ethereum-1/0xcf8a533d12bdb051cfbb3f41a08a090b3021363c/) | ⚠️ Unaudited |
| VesterStepped | unknown | ethereum | [`0x073271...72214e`](./contracts/ethereum-1/0x073271a5da4e9ee4afde9ff08801feb2c672214e/) | ⚠️ Unaudited |
| VestingEscrow | unknown | ethereum | [`0xc3655e...dc92e0`](./contracts/ethereum-1/0xc3655ee7a32695804434247ddbcc9348dadc92e0/) | ⚠️ Unaudited |
| VestingEscrowProxy | unknown | ethereum | 2 deployments: ethereum [`0x088c6a...dae39f`](./contracts/ethereum-1/0x088c6ad16ba124f1d40fd2a3ede63ef2e8dae39f/); ethereum `0xca52bc...e0f912` | ⚠️ Unaudited |
| VestingEscrowV2 | unknown | ethereum | [`0x176a3c...3e354e`](./contracts/ethereum-1/0x176a3c8f81e91de22da62fb48d563e67263e354e/) | ⚠️ Unaudited |
| VestingEscrowV3 | unknown | ethereum | [`0x1e52a5...54e703`](./contracts/ethereum-1/0x1e52a56e964415dae4e00210f1569a74db54e703/) | ⚠️ Unaudited |
| VestingEscrowV4 | unknown | ethereum | [`0xeeae13...ede51c`](./contracts/ethereum-1/0xeeae1397e3a879dc2e5edd89727ea05f9dede51c/) | ⚠️ Unaudited |
| VestingEscrowV5 | unknown | ethereum | 3 deployments: ethereum [`0x5d71d8...464fed`](./contracts/ethereum-1/0x5d71d8385af217d48dc112909754da9d3b464fed/); ethereum `0x8e4c90...e9d1f2`; ethereum `0xe2a0b1...3b670e` | ⚠️ Unaudited |
| VestingFactory | unknown | moonriver | [`0x1713cb...e09016`](./contracts/moonriver-1285/0x1713cb6081871227f1ecc8cceb34d1ec85e09016/) | ⚠️ Unaudited |
| VestingWallet | unknown | ethereum | 3 deployments: ethereum [`0x5a20e7...023d1c`](./contracts/ethereum-1/0x5a20e71378bc770d1cd0b9a30d96bf911f023d1c/); ethereum `0x7cf2c7...97c90a`; ethereum `0x836e76...89bab0` | ⚠️ Unaudited |
| Viewer | unknown | arbitrum | 2 deployments: arbitrum [`0x329ba0...a69df0`](./contracts/arbitrum-42161/0x329ba09997f91812a833039cce58411400a69df0/); arbitrum `0x63fc93...87d253` | ⚠️ Unaudited |
| VirtualAelinToken | unknown | optimism | 8 deployments: optimism [`0x07aa6c...9622a2`](./contracts/optimism-10/0x07aa6cfd846ff4e39178f414dc27ec890d9622a2/); optimism `0x25855b...d668b5`; optimism `0x2c0979...95951e`; optimism `0x780f70...24748a`; optimism `0x8e8e28...682e9d`; optimism `0x91fcea...ed7b5e`; optimism `0x98acc7...313022`; optimism `0xf1f2fb...e65a81` | ⚠️ Unaudited |
| VoteBox | unknown | ethereum | 3 deployments: ethereum [`0x6ee936...e85221`](./contracts/ethereum-1/0x6ee936bdbd329063e8ce1d13f42efef912e85221/); ethereum `0xafffa0...edc0c4`; ethereum `0xb44a29...6c6c31` | ⚠️ Unaudited |
| WirexToken | unknown | ethereum | [`0xa02120...b0e915`](./contracts/ethereum-1/0xa02120696c7b8fe16c09c749e4598819b2b0e915/) | ⚠️ Unaudited |
| WootradeNetwork | unknown | ethereum | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | ⚠️ Unaudited |
| WrappedPiErc20 | unknown | ethereum | 2 deployments: ethereum [`0x65ca07...63a44b`](./contracts/ethereum-1/0x65ca07a894e00b6a264c897de956cb0afb63a44b/); ethereum `0xa1ebc8...b14345` | ⚠️ Unaudited |
| WrappedPiErc20Factory | unknown | ethereum | [`0x9cdda9...6982e3`](./contracts/ethereum-1/0x9cdda9f8a4533d829b424f47ac9a7850e46982e3/) | ⚠️ Unaudited |
| xBNT | unknown | ethereum | 2 deployments: ethereum [`0x6eb826...506b75`](./contracts/ethereum-1/0x6eb826e9c7393b82d8c72a6652d6d13301506b75/); ethereum `0xc17786...268a38` | ⚠️ Unaudited |
| xCVP | unknown | ethereum | [`0x9ae236...c2c204`](./contracts/ethereum-1/0x9ae236653325b29d5ab4a2c8cb285e8059c2c204/) | ⚠️ Unaudited |
| xIMX | unknown | ethereum | [`0x363b2d...96bf59`](./contracts/ethereum-1/0x363b2deac84f0100d63c7427335f8350f596bf59/) | ⚠️ Unaudited |
| xKNC | unknown | ethereum | 3 deployments: ethereum [`0x0c8bcc...4b20b3`](./contracts/ethereum-1/0x0c8bccc8eada871656266a1f7ad37aaffc4b20b3/); ethereum `0xb088b2...12ce75`; ethereum `0xbcd99e...66e595` | ⚠️ Unaudited |
| XMCB | unknown | arbitrum | [`0x369878...9b537e`](./contracts/arbitrum-42161/0x369878ecc69b7148b7cc151d1a03dbcbfd9b537e/) | ⚠️ Unaudited |
| xSNXCore | unknown | ethereum | 2 deployments: ethereum [`0x293444...2ea6c3`](./contracts/ethereum-1/0x2934443c1749dcc0cdcabbd77098eea31d2ea6c3/); ethereum `0x83b496...848856` | ⚠️ Unaudited |
| XSwap | unknown | ethereum | 3 deployments: ethereum [`0x03ef3f...9b60f2`](./contracts/ethereum-1/0x03ef3f37856bd08eb47e2de7abc4ddd2c19b60f2/); ethereum `0x2db845...f81014`; ethereum `0x8313fd...6796b0` | ⚠️ Unaudited |
| XSwapProxy | unknown | ethereum | 3 deployments: ethereum [`0x4ec6a4...103305`](./contracts/ethereum-1/0x4ec6a46ba91fd089db5833aefe980cd341103305/); ethereum `0x79414b...045692`; ethereum `0xe669b5...1b5f48` | ⚠️ Unaudited |
| XTK | unknown | ethereum | 2 deployments: ethereum [`0x7f3edc...b3adeb`](./contracts/ethereum-1/0x7f3edcdd180dbe4819bd98fee8929b5cedb3adeb/); ethereum `0x8b6873...dfe14b` | ⚠️ Unaudited |
| XTKManagementStakingModule | unknown | ethereum | 2 deployments: ethereum [`0x314022...0d9cfc`](./contracts/ethereum-1/0x314022e24ced941781dc295682634b37bd0d9cfc/); ethereum `0xf9f01c...af52a3` | ⚠️ Unaudited |
| XTKRetroactiveClaimsContract | unknown | ethereum | [`0x11f103...5c6dfd`](./contracts/ethereum-1/0x11f10378fc56277eedbc0c3309c457b0fd5c6dfd/) | ⚠️ Unaudited |
| YearnVaultInstantRebindStrategy | unknown | ethereum | [`0xea20d1...5e5b99`](./contracts/ethereum-1/0xea20d1d24bd9ae0e4ad3982f302d8441ca5e5b99/) | ⚠️ Unaudited |
| ZenlinkToken | unknown | moonriver | 2 deployments: moonbeam `0x3fd9b6...39100c`; moonriver [`0x0f47ba...a1173b`](./contracts/moonriver-1285/0x0f47ba9d9bde3442b42175e51d6a367928a1173b/) | ⚠️ Unaudited |
| ZeroEx | unknown | ethereum | [`0x729c53...8ed9a0`](./contracts/ethereum-1/0x729c53408210b729805bf1ae4a6991c5828ed9a0/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Controller | unknown | optimism | 4 deployments: optimism [`0x369da8...3526f9`](./contracts/optimism-10/0x369da886fc07b6d5ee5f1bb471d4f8e7833526f9/); optimism `0xcf427e...92e488`; polygon `0xbfd291...4848b9`; arbitrum `0xbfb0b7...99f872` | ⚠️ Unaudited (bytecode match) |
| PriceOracleV2 | unknown | optimism | 3 deployments: optimism [`0x2b575c...8cbd2b`](./contracts/optimism-10/0x2b575cfe387667b0a0b59ca5dd877a387d8cbd2b/); optimism `0xb7e0b3...f1fd85`; polygon `0x9e8b68...94767c` | ⚠️ Unaudited (bytecode match) |
| RewardDistributorV3 | unknown | optimism | 6 deployments: optimism [`0x03d489...35c0eb`](./contracts/optimism-10/0x03d489d99998fc45d4a14ae260f537a2c435c0eb/); optimism `0x0dc976...2821bb`; optimism `0x515e0b...6b4515`; optimism `0x7d25d2...a87aea`; polygon `0xd39b6f...0cbe42`; arbitrum `0x7b6f77...0c9893` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (791)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ChainlinkAdaptor | unknown | arbitrum | `0xb2f4cd...c46942` | ❓ Unverified |
| Proxy (impl: 0x5442765087f5015a85887ab8e2598305b64420d0) | unknown | ethereum | `0x5d067d...8ee5aa` | ❓ Unverified |
| Proxy (impl: 0x603065084bacb2e780185ead1e5d605388cea8e3) | unknown | ethereum | `0xe3e3f8...a8ed72` | ❓ Unverified |
| Proxy (impl: 0xb5c9aeba968c2948f0d842f009e0e170da5d01c3) | unknown | ethereum | `0x8f015c...0c2b81` | ❓ Unverified |
| Proxy (impl: 0xb5c9aeba968c2948f0d842f009e0e170da5d01c3) | unknown | ethereum | `0xd29822...4243cf` | ❓ Unverified |
| Proxy (impl: 0xd80c8ff02ac8917891c47559d415ab513b44dcb6) | proxy | arbitrum | `0xbccf6c...9be4a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x044a70...a7f29a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x051140...eedfee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x05c363...214678` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0a281e...869435` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0a6bb1...3f6a7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0a84a9...2c852a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b38d9...725619` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b71b3...b52211` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0c0502...196155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d8879...939223` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f3ce8...860195` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0fd23e...163a3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x11b8c0...44f220` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x130d6a...57aa99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x133223...17276b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x133906...cbd903` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x15599d...0e8a8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x15cee5...780dbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16677f...333187` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x177f43...b4b57d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x17e870...4ff07f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x18468d...2c1d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1868ce...e1edbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x18d1e7...5acf88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x197c25...72e8e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1a3cff...ac3ed5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1c7464...a32c8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d752c...18ce4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1e32ca...8f08f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1e618d...985042` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1fff08...42c584` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x213fc2...c66d55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2200ef...881c49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x255ab1...986b64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x26472c...8933f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x26798d...1a05fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2694f5...0aff62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x274491...d74742` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x27f57f...49151f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x27faf9...b30e59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x284bfc...e697c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x298bad...8e35a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x29f748...b6365b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2a26e3...09a8a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d05ba...e16c6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d40bc...8b1e5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d5b63...4f21de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e5069...231732` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2fe9e6...7dca99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x30b33e...040488` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x31b1d6...cd5d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3271cc...fa05d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x332e1d...36830b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3380a2...50d3ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3397cc...2b5473` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x33afb8...f64964` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x345b7a...4859de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x358211...12336f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x369dff...bfdfc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x375619...107f19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x376539...7b6b41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38465e...c15a23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x389d62...858843` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3aac7e...75fcb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b8b96...c98262` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3c7046...ab44d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3cb8eb...d78f8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d1607...de77b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d2934...c1c865` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d37c2...3ede5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3e207b...923e44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x404cd4...44d8a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x40651e...8860c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x406830...6fb0ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x40f599...e737e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4105c6...c20f48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4120b8...e733d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x412c95...55e02b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x41d9f6...658693` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x42148b...97436e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x434547...b7686c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x435e96...c8d167` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x43b576...a4a912` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x43ebba...8cabed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4452f7...1916e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x44f671...caeba2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x46a1ef...a08141` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47992a...50e434` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x480155...0a424b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4856bb...3a6a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4ad9d4...8aac38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b1fc3...42bf69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b77a7...db9316` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4bcb48...c1de9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e0b5b...096f99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e7ec6...2a99e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4f6cd4...180111` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4fde21...05491f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x518d9b...3413a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x528930...a23e71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x538fab...3086b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x53c9df...735052` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x53e6ae...0ef675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x540a4b...585ed9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x544276...4420d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x544d18...923cd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x545486...464f93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x54c2c1...ae9ced` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5581ab...07444c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x558de8...b7b249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55ab07...f5053a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55be7f...561943` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x56d502...9750a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x57271b...b3eec0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x57ffb2...4b8476` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x581ed3...b222ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x593499...d0ab62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x593e88...a68216` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b8503...5d4623` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c4365...072bdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c8d48...ffd4dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e5b3c...04ca18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e7190...35cea5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x603065...cea8e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x624a0f...03cd0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63cdf1...4b3b2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x64aafb...00ee56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x65f0a0...227711` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x666ed8...eff1e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x672d60...6103b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x67ea2c...991cf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x692fb4...b10f5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6941d1...ddbf27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x694baa...db01e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x69f3eb...d8a9d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6a203e...17c226` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6cdd3d...c404d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6d5b33...b763ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x70a18d...79cc00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x70d458...f9bde6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x724df5...b64fcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x744724...f77d23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7502b4...6f7530` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7597d9...79091d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x76384f...9bb918` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x778309...f831da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x77c073...2d552d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x77c264...174de0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x79ef26...1b4f46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a2177...098c1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7b1e5d...748363` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7d3810...0b1406` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f15bf...e6c9eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x818dd0...3c75fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x85204b...9319ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x870643...531758` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x879a3d...58eda4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x87da8b...c2a845` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88872b...dde6ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8a7624...e83c6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8ec3a1...46cca1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f0400...58bd73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x904fda...5a0e5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x93ae5e...7b8dc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x959fde...a51ec4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x95ef0e...0d9a25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9758b0...5b9008` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9796a0...9a717d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x99b0a9...f53544` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9a6755...9bd935` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9ad290...0ee56d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9bc99e...62a19e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9ffb2b...86db42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa3ffe5...26e54d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa487e8...81bbfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa57c1b...45f374` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa57cf7...2caca7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa78fd9...12874e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa95a72...33385a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa9f875...a506c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae81b6...277ae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaee6ae...ae67ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaf54dc...d9b1c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xafd7d1...c78506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb04dc0...9cc1b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0dda6...54bc0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb122dc...51f554` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb18db0...eba751` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb3fd83...0d8da7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb46954...d5a48a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb4e50d...22a468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb54e1a...8ed199` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5663c...caea6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5b935...736b19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5c9ae...5d01c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb9ac73...572f9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb9d264...a6e114` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba2398...4d365d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba67c8...a0c0ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb2f53...cc4446` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc4e98...17797e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbd14ef...1c6a94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbdfe39...7f9a03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc1d816...c2735e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2e079...fdb234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc32e18...78e3f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc46751...abf975` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc5a09d...88a710` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc8f6bb...97b3e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc94b34...85d081` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc9529c...805e21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcab605...e90ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb8791...4cc2a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcba132...bf9290` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd3d11...09b197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xce1479...5729f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xce80b3...5f76c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcecfd8...55f93d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xceeea8...7d466c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcf672f...d4a53a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcfd8b0...a13960` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd1a838...0eb69c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd2a2a3...4a7d8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd40788...9b270e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd45ccd...606f8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd4eef2...8009c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd5a222...43f1b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd6017d...13e332` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd86423...89cb04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xda9f6f...e91f21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdb7ce9...c849a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdd134d...fc8379` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xde399d...42cc5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdea478...533f44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe06d91...8b74a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe06ec5...903f24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe112a9...3ef227` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe124b1...2b6cce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe2cf60...cd8abc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe2f9c4...1485c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe32b0f...61f867` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe46be3...28e053` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5586f...11a5c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5f877...8fe472` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe6a82a...09521e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe7b11d...881cf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe90d44...9cb83d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec9749...05701d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed1051...2c7796` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed1c44...c459be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xee3308...4de47c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf14f98...269cff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf2c0b3...cd7f77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf359e1...b64922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf3ffa7...d53b08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4e153...f972fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf65821...759a25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf665f8...a8ddc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7c8a4...e4a230` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf85ff6...91ad9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf86237...098dca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf9057e...b31f8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf927d6...d6ffc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf97d1a...e07a3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfa0458...9b2c79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfa838c...c63c4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfa953d...f4ad7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfb7207...faeb05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfce9b6...b5bfb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe1185...74177e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x07ab01...0eab20` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x08ea9c...05e021` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x102f55...90cbdf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x10ca65...6ba0f7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x159624...31ad6d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x213f77...f959eb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x24ad43...1643dc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x26493c...e44fab` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x271479...4eebd3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x2f1b03...b72c87` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x31eef1...832f86` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x40f841...0a213a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4257de...7b203f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x46e803...233cbd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x507d6c...8ccf4b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5385bc...f9b1d6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x569099...8bb141` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5a1f81...1267c5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x61cfb1...7bc7cb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x783f80...fc3f47` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x7c64ca...761bcf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x7d1dbb...263e35` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x7ec1f0...e815dd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x841714...342390` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x86d9b4...bc4c4e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x8d4eed...3a44af` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x8e1d30...392982` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x8ec747...707969` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x922d21...d518f6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x92fa0d...15bf9e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x947e46...9be420` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x94ad30...0e71c7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x995b83...cdd714` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9b216a...b718bb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9bdead...42abc6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9ecd3c...780bb5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xa45d7f...bf4d19` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xa7a86e...1697a7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xaf52ac...ecd3f2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xb32fe0...d0b9e5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xb50f07...07fa84` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xc40c93...342ac8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd2de88...cbe1df` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xdb196e...d2b570` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xdd3b71...3adfcf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xdde8c6...29ba7d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe247ac...cb75e6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe2886f...3d1c74` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe30657...844041` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xef535d...cd50e5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xef5e00...de18bd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf56f63...b8f0de` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf6c307...0f1157` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf9dcbe...239deb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xfeb753...b8030c` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x4668e0...c0924b` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x5d96d4...79bfc6` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x779a81...1a8fdc` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0xbb7684...1ad573` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x037355...43ddd6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0595e6...4264d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0a6941...c20cdd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0eab18...f3ecbb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1357ee...1d485c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x181948...96fab7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x197ce4...1816f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x24ec9a...2ab868` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2dae9d...f605f8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x40f841...0a213a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x486beb...b3565a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5a5c9a...7c5ff0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x663f82...172f24` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x71173e...7e8f63` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7ec1f0...e815dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7ed49d...a8bfab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa11583...70426e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa7c262...edf673` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa935fa...9acf70` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbca6aa...0dd217` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbffebf...7e19f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcbcef1...520358` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd760c3...42a1d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd8d07a...e701ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe3bd74...36be2f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe64a94...f20a62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf56f63...b8f0de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf613e2...6c17ee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfb2eea...10311a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x374b8a...1c57ef` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x6626c4...5e8d8a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x74b238...58c76d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x7d9160...8f03e9` | ❓ Unverified |
| UnnamedContract | unknown | boba | `0x4c882e...8a7c0c` | ❓ Unverified |
| UnnamedContract | unknown | boba | `0x5008f8...5a9610` | ❓ Unverified |
| UnnamedContract | unknown | boba | `0x841ce4...d0738c` | ❓ Unverified |
| UnnamedContract | unknown | boba | `0x8db213...073da0` | ❓ Unverified |
| UnnamedContract | unknown | boba | `0xce055e...be8197` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x0d72be...c9ee46` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x54069e...1cd66c` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x0090eb...7c9081` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x0253ee...44b331` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x056e1e...e3e480` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x0aef44...5f4aa8` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x124f71...0adb9a` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x141133...19e3a1` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x234232...8bec28` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x2f57a0...aaf9f9` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x307dd1...f09716` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x375ec6...6ddabb` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x3a7bff...99f603` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x4d7168...b4ec76` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x5b5ef5...0b4f19` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x670cf2...bd7b78` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x6dc265...82eae0` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x722377...3c4cb4` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x78d6c2...79bb43` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x80620e...df67ce` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x813195...48388b` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x8347b8...100857` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x8b3d37...3f0225` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x8f17b4...657fc7` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x98b4b1...5ec533` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x99965f...c14ca8` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xa0a9b4...b5bd57` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xa1341d...3269a2` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xb1662f...6048a7` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xb4938b...2c8633` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xb8d67e...c1b68b` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xbf4dd7...56a8a9` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xbf5979...9f3912` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xc0012a...2148ed` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xc12cac...6ee58e` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xc34372...ff2b92` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xcc9b8e...df58fe` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xcdfd49...8a001e` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xd2d802...ba5f9e` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xd9b5a5...911b9f` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xdb19e9...9ce589` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xe0f5f1...ce2639` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xed026c...aa067c` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xf4dde0...52d5b6` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xf81bd6...bb8658` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xfa68ba...ddca53` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xfc4e82...a8b67c` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xfc7611...5baebe` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xfcc0a9...7d2d1b` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xfde96c...1c1a66` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xd46f8e...7388d1` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x133f8a...62fde7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x2b720e...5ab3a9` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x2dc678...95d129` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x39d409...698455` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x53b039...3b0074` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x6aea6a...5c02f3` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x6ee0f9...f22dd9` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x71221b...13b322` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x793120...f96c50` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x7a2763...5bd4fc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x83da23...0c67bd` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x972570...827a0b` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x98726d...f31974` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x9dd7cd...ef9bb5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x9eaee3...e30774` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xa14df7...01b743` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xab4c61...c4d2e5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xc5aa91...d7207d` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xc5f0c1...d7a5fb` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xcfd6b6...301186` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xd8e076...b324b7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xeed18d...a39d16` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xeed359...7ac73e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x049ed2...8384fc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x0673aa...451334` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x151368...395a24` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x1d10b1...575161` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x2425b3...100d17` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x256252...f017f4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x28c376...68a67c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x421cda...032ec0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x425880...a9e263` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x47cf33...59af2b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x487b37...3821df` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x494b0a...b50714` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x4953e0...435f94` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x49c692...4e1d89` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x4daa4b...775db3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x59cd36...0e975e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x5a63e1...86c206` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x5b8c57...09253d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x5c4c64...6b9578` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x5f95f6...7955bc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x6b2b20...e62ff5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x6b8c38...42f037` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x758c94...041351` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x7dc84f...fd7531` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x8b99c8...6bdecc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x9d2d0b...704244` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xa2fea7...ae0839` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xa472a6...bd9ab1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xa82d81...63f0b7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xad3cad...2c181d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xb0f14a...91345b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xb4a936...88cdcd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc16525...e396b8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc18059...0e5bb4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc35f7e...862837` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc3ee1e...9aa2c8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc51f97...df0ad6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc6d0cd...00bfc7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc6dbeb...efd62a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xd35bd6...a903b1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xd42884...4075bc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xd66ffc...4e2169` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xdad38c...e431ff` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xde1e57...d738c2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xe0ea24...1b1c46` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xe62a58...58f86c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xf23cd7...d20e1f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xfe2704...76ed9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x009b14...934e85` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x028fb0...8cf25e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x032610...adcd98` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x07378a...62d73e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x07f5ed...499c22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x080bf9...71cd4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x09039a...e3634e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x094228...1a6428` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x09e605...0ca061` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0be26d...e409a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0c9483...05ca5d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0e535a...4ed97c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0e5bc4...1412af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0ff97e...108ae0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x101b61...60763b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x118e41...0f0557` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x11bd95...21395a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x132203...c62602` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x133906...cbd903` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x148928...d14198` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x14c9e2...c0d9c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x15710d...006751` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x178c19...f1ca2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x17b3ba...15f9f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x180ca7...96bc84` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1895d2...60b5d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1a2836...ac7e23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1b193b...d2e170` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1b27be...299cae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1cf22b...91399e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1f6a5a...716535` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x205285...514271` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x20f463...3effce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x231b08...eecbca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x23e865...d57d56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x24e0cc...2bfcbb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2611b5...ea2758` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2681df...ab16d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x27bedb...d1019d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x286a76...ea4b1e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x289502...158967` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x298bad...8e35a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x29f748...b6365b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2af172...ad3ba9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2c1d90...34f4f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2dec40...d3913f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2e6595...b1cea6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x30de6a...f24042` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x310d3c...43e8ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x316701...85c97c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x34129b...3ce806` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x375152...cadd7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x38465e...c15a23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3938da...56d574` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3945ef...8c3cdd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x39f632...a3710d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3b4163...a9a90c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3b532d...a605f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3d4b40...c261e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3d782b...f136c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3dd1e5...40f4b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3f0001...ad3dac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3fb552...2f82a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3fc4b2...560035` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x41d093...089e95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x44d3bd...ad603f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x45071e...e0a1c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x455644...b13a03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4691cb...f1fc2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x470b57...9b6ddf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4bf636...84eaeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d2254...d2bd96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d379e...0b49fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4f80f1...a5b9d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x520409...70f041` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x522018...6004eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5378b0...1eac18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x548608...4cd131` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5661eb...78fac2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5745b6...1ef631` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x595a72...8ab7f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5a7305...fd0da4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5ab18d...3a8723` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5c4df8...508eb5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5cf981...9d64a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5ea61a...33d6f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x60d41f...f16975` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6251d1...d9c091` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6289b6...cace26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x649706...970dfd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x64deca...7f8c58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x682bc8...95669d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x688d04...5d0bfd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x69f8ad...fe2633` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6b848f...6a36ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6e423f...6aecee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6ee936...e85221` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7023b0...3e6ea1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7059d0...67f96b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x70a209...70083d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x711dd1...f5818a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x73c111...387ef7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x753219...d9934d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x758e2a...078db4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x775cec...0773e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x77c073...2d552d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7828a4...e7ff8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x786455...3c5df4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x78963e...cdbbd3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x79070c...6b7dc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7963e7...01dc5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7a3afc...15db38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7af6cc...12d6ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7b7049...809294` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7c55f0...789992` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7caedf...d4d0f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7cb0ad...c60d0f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7ebd26...df86cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x80c16c...d0fe61` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x812d69...992d5f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x82050a...19d3cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x89e6c9...3fad71` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8a1142...2eebd0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c7f82...920eff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8ea790...e989d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x904a9b...576fcd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x92b747...c7cacf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x931ebb...b3e651` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x94d8b7...2216cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x954fd9...af5b83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x978d98...efd9ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x97bc53...0b2aa7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9958bc...8cfb00` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9a01ae...bc8db4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9a2b7b...c8542a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9a6729...673c6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9c986a...42331c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9ec638...bd6958` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9ef543...84ac1b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9ffb2b...86db42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa22b60...2793c6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa48823...dbbb57` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa4f2ff...fe0d14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa4f6b7...59654a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa718d2...02d10a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa8adb7...4b5d94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa9a9b8...ef7abb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaaad5d...6b9943` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaaf4d5...213867` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xacad19...b820f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xacf6eb...dca22f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xad0325...c45a69` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaf57b7...c5810c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb01db0...9575e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb3501f...eb4414` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb3fc54...fd9af7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb62070...bda149` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb8d948...904409` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb8f091...b41236` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb9553f...b218f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb95b9f...a4e8b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbbdbda...180c42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbc99e1...f31eae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbd0d8d...57c979` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbe0e08...95d236` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbe1e0f...25ac1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbe7bd5...58b560` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbe8394...1a42dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc1f844...775082` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc32413...aa62c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc3fed5...0e259a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc522e7...a817d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc5d92a...797e74` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc82480...c73321` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc82a6a...66a06f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc849a4...cb9aaf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xca6e22...75eba0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcd2229...056c24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xce4da2...7b9515` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xce7822...49b387` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xce80b3...5f76c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcfffcd...f26375` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd16f93...9d475e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd18def...ffa12e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd1a97d...89d673` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd43316...e377b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd48c88...65e8ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd6a78b...89f0e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd72345...d4a7b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd80c8f...44dcb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd86423...89cb04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdb131c...a1ed76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdc226e...5a6ac2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdc28cb...090b1f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdca445...b1ee02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdccf53...106b89` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdd3414...2f4259` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdd9190...c98ac8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe0245d...d66b2b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe05cd3...b87ea6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe1383d...60bbd7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe2dd46...466a04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe2f6fb...b1794a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe59423...b2fba7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe7b8dc...06a58a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe815dc...c51473` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe88443...5cedfa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe8b94d...1e3452` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe9717e...6f89d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xed064e...def932` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xed19f5...2946c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeda109...4bf90d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf0cb96...a3c861` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf1456c...e91dc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf2deea...7b35c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf3919f...40d1c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf5648d...f3de14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf63f1b...9137e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf7e800...08bd58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf7f85a...7bad74` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfa203e...6cae9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfa91fb...7644d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfb4cd1...f5ec87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfcf041...1a096c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfd7b81...bf6a88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xff446c...b7ea5e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x841ce4...d0738c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x00e3a5...b83ba5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0a7cdb...2c6aa7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0c522c...c35c45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x128d19...2ab761` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x21bdd3...033413` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x230709...7c8a8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x265fc6...d2c114` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x26834c...d64576` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x297c28...67a397` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3a0e43...339d3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4780be...fd02f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4ad64a...5ecdbe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4cbce6...8434fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x52f447...fdbcaa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x563e71...926c3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x574d44...940dcb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6051a3...8895a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x621be1...96af7b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x62ac82...1aab71` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6473af...3f0a19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x686fbb...b972d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x69e9fb...77c5cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6cf187...ce294e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6e4354...d4f27d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x77beaa...9d1b9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7ee34c...375e77` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x822c43...c8c379` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x841ce4...d0738c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x841d89...5183ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x911d9a...3c345d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x944dc1...bdceb5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x965bd8...9d9aaf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa2dd99...e42efd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa47267...7dfc88` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xac8144...e15c5d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xae7b24...f80894` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb24999...89d969` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb4230d...5aaf4a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb58078...39aeef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb59755...1de669` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbf779b...64b7b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc3e5b8...9a2e4a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc7160d...cabf8b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc72928...10e9a1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc92352...6e024d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc9ea89...056c9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xccf619...818e24` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce6fa7...a4aac9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd321ac...890da4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe0866e...03047f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe423e7...b23a9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe6261a...4e0f8c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe98856...500449` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeef934...2a11a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf1ea78...110200` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf23965...5d506d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf586f3...46f5c7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf5fae9...42eee4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf78cc8...fb8b70` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf7b28f...69bbcb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf88555...698f09` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfb8401...7c4245` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfe6317...75b249` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfe6b1a...2cd15b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb361da...8a531f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd2fa7c...d7902b` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0x78a21c...20ceec` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0x985458...9dfab4` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0xbd8064...7b8b96` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 1345 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
