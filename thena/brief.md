# Agentic Audit Brief: THENA

⚠️ Lifecycle status: DECLINING - TVL dropped 45.4% over 90 days

## Project Overview

- Project: THENA (`thena`)
- Website: [https://www.thena.fi](https://www.thena.fi)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-23T21:01:20.832Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: bsc
- Contract surface: 358 unique implementations (867 raw deployments)
- DeFi Llama TVL: $4,501,649.00
- On-chain TVL (included contracts): $208.89
- TVL by chain: Bsc $208.89

## Project Description

THENA is a decentralized exchange and liquidity layer on BSC that combines spot trading, concentrated liquidity, and derivatives. It uses a ve(3,3) tokenomics model where users lock THE tokens to vote on gauge emissions and earn trading fees and bribes.

### Architecture

The THENA governance family controls upgrades across all product lines via proxy contracts. THENA INTEGRAL provides the base liquidity and token, while THENA PERPS extends the protocol with derivatives, reusing some PancakeSwap infrastructure and staking contracts.

## Audit Coverage Summary

- Verified implementations audited: 11/155 (7.1%)
- Verified + Unaudited implementations: 144
- Verified by bytecode match: 0
- Unverified implementations: 203
- Unique implementations: 358
- Raw deployments: 867
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $208.89
- Latest audit: 2026-03 (fresh)
- Staleness: 1 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: 1.9% (OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of $208.89 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 8 | 5.2% | 2023-03 |
| OpenZeppelin | Tier 1 | 3 | 1.9% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AirdropClaim | operational_periphery | bsc | 5 deployments: bsc [`0x049eea...49a923`](./contracts/bsc-56/0x049eea15a10db9bc6e201edc2904841eef49a923/); bsc `0x5c35b4...66beee`; bsc `0xb50dc7...a87b55`; bsc `0xdb8070...e678b6`; bsc `0xf780fd...1ac70a` | ✅ Audited |
| AirdropClaimTheNFT | operational_periphery | bsc | [`0xf04ca8...95fed4`](./contracts/bsc-56/0xf04ca87fe55f413b027ce01d8c9dcd662495fed4/) | ✅ Audited |
| GaugeExtraRewarder | operational_periphery | bsc | 6 deployments: bsc [`0x1a30f9...82a53c`](./contracts/bsc-56/0x1a30f982c8f0c95bfabff0715db0513ace82a53c/); bsc `0x28bb19...287af7`; bsc `0x4a4207...75faf3`; bsc `0x5aa7a6...6a940c`; bsc `0x9dbf10...927278`; bsc `0xa7266b...ea5c9c` | ✅ Audited |
| MerkleTree | operational_periphery | bsc | 3 deployments: bsc [`0x4259b9...143cd7`](./contracts/bsc-56/0x4259b99c7c6121d0cce4c9b7c5d8bce731143cd7/); bsc `0xf25d35...1ba31f`; bsc `0xfd502f...f74b11` | ✅ Audited |
| MerkleTreeTHENFT | operational_periphery | bsc | 2 deployments: bsc [`0xd6ecbd...b51404`](./contracts/bsc-56/0xd6ecbd4771cb66743ecba33a545b20a90bb51404/); bsc `0xd73179...4aa78a` | ✅ Audited |
| NFTSalesSplitter | operational_periphery | bsc | 7 deployments: bsc [`0x02308f...40e1f7`](./contracts/bsc-56/0x02308f4455cd6d2109092c7903d1ed843440e1f7/); bsc `0x0c6e17...119ac4`; bsc `0x36792f...adf507`; bsc `0x760156...91cd0b`; bsc `0x85c5c8...f772de`; bsc `0x880a58...7d6628`; bsc `0xdd9520...8ec78e` | ✅ Audited |
| PermissionsRegistry | registry | bsc | 2 deployments: bsc [`0xdf46b8...5e3749`](./contracts/bsc-56/0xdf46b89e7dd49195fcdab37c3843f6ecbc5e3749/); bsc `0xe3db58...f3e0eb` | ✅ Audited |
| RewardsDistributor | operational_periphery | bsc | 4 deployments: bsc [`0x3eb5ef...9196e9`](./contracts/bsc-56/0x3eb5ef1ef1c85af63d0d4b0856803732239196e9/); bsc `0x9a6a78...79bbb4`; bsc `0xa6e0e7...18727d`; bsc `0xe9fe83...de730e` | ✅ Audited |
| VoterV2_1 | unknown | bsc | 2 deployments: bsc [`0x62ee96...2d7b26`](./contracts/bsc-56/0x62ee96e6365ab515ec647c065c2707d1122d7b26/); bsc `0xfdacbe...dfff34` | ✅ Audited |
| VoterV3 | unknown | bsc | 10 deployments: bsc [`0x374cc2...73ede1`](./contracts/bsc-56/0x374cc2276b842fecd65af36d7c60a5b78373ede1/); bsc `0x3a1d09...2c4fcb`; bsc `0x410c01...b2e0ee`; bsc `0x5647ab...596ba6`; bsc `0x69cca7...37db41`; bsc `0xa47741...c17ff0`; bsc `0xbd87e2...64f30c`; bsc `0xd2c9e0...adb83f`; bsc `0xf1194d...276d92`; bsc `0xf96cf5...e28f33` | ✅ Audited |
| VotingEscrow | operational_periphery | bsc | 3 deployments: bsc [`0x6a3a07...a20ce2`](./contracts/bsc-56/0x6a3a07151997b056a81b1f58ba78beb546a20ce2/); bsc `0xd9693e...adae7c`; bsc `0xfbbf37...1c070d` | ✅ Audited |

### ⚠️ Verified + Unaudited (144)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FeeVaultSimple | core_logic | bsc | 6 deployments: bsc [`0x69db43...db61a0`](./contracts/bsc-56/0x69db437f1a773f4c1c95ce7c3c6b7229c2db61a0/); bsc `0xbdf004...dd62cc`; bsc `0xbdf7f1...aee171`; bsc `0xbe1e4c...2c9d99`; bsc `0xbf5359...9bd095`; bsc `0xe3dd9c...74f2ab` | ⚠️ Unaudited |
| AlgebraVault | core_logic | bsc | 10 deployments: bsc [`0x2d2f25...6f5cfa`](./contracts/bsc-56/0x2d2f254c0624297af92b42f7258075c4e36f5cfa/); bsc `0x31c933...903b11`; bsc `0x3b5513...183eb5`; bsc `0x53a3d4...3710fb`; bsc `0x64b374...98ce53`; bsc `0x6cba11...f9a6f9`; bsc `0x84d362...cf234f`; bsc `0x931f53...833a7d`; bsc `0xb0ecbc...76203e`; bsc `0xd4fc50...3f09c8` | ⚠️ Unaudited |
| AtmosSoftToken | token | bsc | 7 deployments: bsc [`0x093933...5c7b24`](./contracts/bsc-56/0x0939334570c289f70ab5c63b9387d6f0845c7b24/); bsc `0x12b514...829bb8`; bsc `0x33eba2...907d7c`; bsc `0x4d232f...8c1a76`; bsc `0xaaffbd...df6f74`; bsc `0xc3a83d...79c4c1`; bsc `0xc53c65...0270a3` | ⚠️ Unaudited |
| StakingNFTFeeConverter | token | bsc | [`0x14cbee...416a96`](./contracts/bsc-56/0x14cbeee51410c4e3b8269b534933404aee416a96/) | ⚠️ Unaudited |
| AlgebraCommunityVault | core_logic | bsc | 2 deployments: bsc [`0x8bb54e...da1bb2`](./contracts/bsc-56/0x8bb54ee0880127f6ac22eb0d90e6871aedda1bb2/); bsc `0xaa42d6...4b7e0e` | ⚠️ Unaudited |
| Address | unknown | bsc | [`0x481ca9...a1694b`](./contracts/bsc-56/0x481ca976d8fffb079fe410100cdedfa76ba1694b/) | ⚠️ Unaudited |
| AirdropClaimTest | operational_periphery | bsc | [`0x3fa9c2...fd5202`](./contracts/bsc-56/0x3fa9c21c585b009972c705c992c5e93a4efd5202/) | ⚠️ Unaudited |
| AirdropClaimTheNFTTest | operational_periphery | bsc | 2 deployments: bsc [`0x2b259b...351b5e`](./contracts/bsc-56/0x2b259baed99d032c514fd6f00536450c76351b5e/); bsc `0x8e1ec0...e84797` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | core_logic | bsc | [`0x1c4e6e...a250b1`](./contracts/bsc-56/0x1c4e6ecb79933b983148ac2dbd55c14d2ba250b1/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | bsc | 2 deployments: bsc [`0x6f866d...7c15a7`](./contracts/bsc-56/0x6f866dfb4ec07864807217c48e4ff58b137c15a7/); bsc `0x9b4954...582a21` | ⚠️ Unaudited |
| AlgebraFactory | registry | bsc | 2 deployments: bsc [`0x212de9...614c9b`](./contracts/bsc-56/0x212de9ae4b1beca60be0e8fa0210a26b81614c9b/); bsc `0x30055f...fb4a98` | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | bsc | 2 deployments: bsc [`0x06852d...1b8a17`](./contracts/bsc-56/0x06852dc9d6e44782dd02994c368febc4dc1b8a17/); bsc `0x70117e...ced94a` | ⚠️ Unaudited |
| AlgebraVaultFactory | registry | bsc | 3 deployments: bsc [`0x2ca4df...9be431`](./contracts/bsc-56/0x2ca4df86b060da251ba7609875048b4e599be431/); bsc `0xb11475...fbdb2c`; bsc `0xd73797...a4b175` | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | registry | bsc | [`0x287e9e...375328`](./contracts/bsc-56/0x287e9e48b0169e95d3fafddbd4975813a3375328/) | ⚠️ Unaudited |
| AtmosSoftNFTMarket | token | bsc | [`0x06f2ab...c1d4dd`](./contracts/bsc-56/0x06f2ab649fd575574444ff8e4e92323492c1d4dd/) | ⚠️ Unaudited |
| AutoFarm | unknown | bsc | 5 deployments: bsc [`0x0df9c5...fd41fb`](./contracts/bsc-56/0x0df9c5fb57bc3b90e73563e9adb672bea2fd41fb/); bsc `0x17f619...60172f`; bsc `0x267ef1...fc1bb8`; bsc `0x65620c...187b62`; bsc `0x68def7...68e3d5` | ⚠️ Unaudited |
| AutoFarmV2 | unknown | bsc | 8 deployments: bsc [`0x089519...450452`](./contracts/bsc-56/0x0895196562c7868c5be92459fae7f877ed450452/); bsc `0x1217ff...0a7b99`; bsc `0x238a9d...50e4ab`; bsc `0x25f9b7...00a89e`; bsc `0xf0d2d0...a898f1`; bsc `0xf44d42...e32dfb`; bsc `0xf6c361...07cde2`; bsc `0xfad31b...17968a` | ⚠️ Unaudited |
| AutomationEpochDistributorBSC | operational_periphery | bsc | [`0xd27cf2...5c0be9`](./contracts/bsc-56/0xd27cf28dca5867ef6dbc456f583abaa4fa5c0be9/) | ⚠️ Unaudited |
| AUTOToken | token | bsc | 7 deployments: bsc [`0x097509...fdaff0`](./contracts/bsc-56/0x09750927d289131d40d6e5ff34d431432bfdaff0/); bsc `0x2099a8...b62a85`; bsc `0x37facf...7a9870`; bsc `0x4508ab...85eccb`; bsc `0x9fa3c8...29188f`; bsc `0xaa3a59...759bba`; bsc `0xd26532...848ceb` | ⚠️ Unaudited |
| AUTOv2 | unknown | bsc | 4 deployments: bsc [`0x12300e...abfe24`](./contracts/bsc-56/0x12300ea3d3444e9106c65913de24c58462abfe24/); bsc `0xa18408...78b827`; bsc `0xee22d7...ef3220`; bsc `0xf93053...38d3a6` | ⚠️ Unaudited |
| BabyPair | unknown | bsc | [`0xaf18cd...1875d8`](./contracts/bsc-56/0xaf18cde26fdd22561df2a02958cba092f41875d8/) | ⚠️ Unaudited |
| BasePluginV2Factory | registry | bsc | [`0xfa78c6...864573`](./contracts/bsc-56/0xfa78c6467b5aa53d0c1ad114dbf93082e6864573/) | ⚠️ Unaudited |
| Berry | unknown | bsc | 6 deployments: bsc [`0x0cef58...3d5faa`](./contracts/bsc-56/0x0cef58f80fad7904556fc7801e46a7618e3d5faa/); bsc `0x0e3001...7fdbdb`; bsc `0x4bb2cb...0bfbd3`; bsc `0x4faf8a...7238a1`; bsc `0x89c0be...384ed4`; bsc `0xc2f0d6...207fcc` | ⚠️ Unaudited |
| BerryBox | unknown | bsc | 2 deployments: bsc [`0x08f230...be998e`](./contracts/bsc-56/0x08f2303633a8e376ee02d0c4f07952bf05be998e/); bsc `0x1a9038...ce80ce` | ⚠️ Unaudited |
| BerryDataNFT | token | bsc | [`0x0aef47...a14da8`](./contracts/bsc-56/0x0aef47fe18180f61b87de7e85712652bd8a14da8/) | ⚠️ Unaudited |
| BerryDispute | unknown | bsc | [`0x624d25...ebcf9f`](./contracts/bsc-56/0x624d25cb42c7f0940531101d47414e3a58ebcf9f/) | ⚠️ Unaudited |
| BerryLibrary | unknown | bsc | [`0x734e3b...3390e1`](./contracts/bsc-56/0x734e3b5bd16b43eb82f203950f983ef6003390e1/) | ⚠️ Unaudited |
| BerryMaster | unknown | bsc | 2 deployments: bsc [`0x7e7fe9...dbee2e`](./contracts/bsc-56/0x7e7fe9e40fc3b8a7ce85da44801f9efe9bdbee2e/); bsc `0xf859bf...07f830` | ⚠️ Unaudited |
| BerryStake | unknown | bsc | [`0x283af9...f6b3ae`](./contracts/bsc-56/0x283af939416eebf8413b382338bf1537c1f6b3ae/) | ⚠️ Unaudited |
| BerryTransfer | unknown | bsc | [`0xee9a08...5b30ca`](./contracts/bsc-56/0xee9a080a7773669870f58d024d25b157cb5b30ca/) | ⚠️ Unaudited |
| BOG | unknown | bsc | [`0xb09fe1...f36b09`](./contracts/bsc-56/0xb09fe1613fe03e7361319d2a43edc17422f36b09/) | ⚠️ Unaudited |
| BOGDEXUtils | unknown | bsc | [`0xf5df07...ae4589`](./contracts/bsc-56/0xf5df072fd5b89cb481cb1c112b4cfcd5e5ae4589/) | ⚠️ Unaudited |
| BOGMigrationData | operational_periphery | bsc | 2 deployments: bsc [`0x7edc99...776107`](./contracts/bsc-56/0x7edc998a097d372388f1a142ca92401538776107/); bsc `0xa48589...a1b3b9` | ⚠️ Unaudited |
| BOGMigrationDistributor | operational_periphery | bsc | 2 deployments: bsc [`0x3e4cd6...c116de`](./contracts/bsc-56/0x3e4cd6f7fdda6712ca93713fc1425ca69ec116de/); bsc `0xf36b3c...38b231` | ⚠️ Unaudited |
| BOGRouterV1 | adapter | bsc | [`0xa86b60...1e2812`](./contracts/bsc-56/0xa86b6018ffb7d29f9a3ab59ba27d9e424c1e2812/) | ⚠️ Unaudited |
| BOGRouterV2 | adapter | bsc | [`0x6bbf1f...9351e3`](./contracts/bsc-56/0x6bbf1fa4a7ee6525f36ae8ffb6ee22dd009351e3/) | ⚠️ Unaudited |
| BOGRouterV3 | adapter | bsc | [`0xb2ddf4...9ceba4`](./contracts/bsc-56/0xb2ddf4b9116a64bf80082a2efa1821ca5f9ceba4/) | ⚠️ Unaudited |
| BOGStaking | unknown | bsc | 6 deployments: bsc [`0x297b04...5a3744`](./contracts/bsc-56/0x297b04683d0d8f230ec03e9f815cd47b065a3744/); bsc `0x2f0596...8d978b`; bsc `0x54c0d1...d86dd6`; bsc `0xc056aa...94cd67`; bsc `0xc3ab35...a18b65`; bsc `0xcd4826...b690b9` | ⚠️ Unaudited |
| BOGWhitelist | unknown | bsc | [`0xe77570...539b08`](./contracts/bsc-56/0xe77570724e7c6c339cdb22f0d3dabcbbec539b08/) | ⚠️ Unaudited |
| BribeFactory | operational_periphery | bsc | [`0xc577c8...1fbab8`](./contracts/bsc-56/0xc577c8276378d51a3e2ecea4d649a02b8e1fbab8/) | ⚠️ Unaudited |
| BribeFactoryUpgradeable | operational_periphery | bsc | 2 deployments: bsc [`0x2d61bf...5b57d2`](./contracts/bsc-56/0x2d61bf5cfdf724cfbc0a7b0c5e2b9f17475b57d2/); bsc `0xe04723...3a4f6a` | ⚠️ Unaudited |
| BribeFactoryV2 | operational_periphery | bsc | 10 deployments: bsc [`0x242e4e...18a984`](./contracts/bsc-56/0x242e4ee00aecc6b2c728a8e065c746ad8218a984/); bsc `0x2b01fc...3d6fb9`; bsc `0x355895...a28ffe`; bsc `0x4e9a8e...fdc095`; bsc `0x4ffcf8...3c7770`; bsc `0x6a2cab...c50e86`; bsc `0xb9db4b...cf1c1e`; bsc `0xc29d96...591c2f`; bsc `0xcb78f8...7f2820`; bsc `0xe63b89...e314b5` | ⚠️ Unaudited |
| BribeFactoryV3 | operational_periphery | bsc | 2 deployments: bsc [`0x997687...192ecb`](./contracts/bsc-56/0x99768701cce63da41311f959f120425ed2192ecb/); bsc `0xd50cea...c91375` | ⚠️ Unaudited |
| BribesDistribution | operational_periphery | bsc | 4 deployments: bsc [`0x198dab...138a14`](./contracts/bsc-56/0x198dab4b4e03f9f3f44e605d567b15bb72138a14/); bsc `0x448ded...73b560`; bsc `0x89a10b...545ac9`; bsc `0xbbea21...60cbb6` | ⚠️ Unaudited |
| CavePool | core_logic | bsc | 4 deployments: bsc [`0x282ffb...020b9c`](./contracts/bsc-56/0x282ffbe782f903340a14955649032302e8020b9c/); bsc `0xa65d60...73cfe4`; bsc `0xf313ed...586ea9`; bsc `0xffda3f...6ce8fd` | ⚠️ Unaudited |
| CCIPThenaTokenProxy | token | bsc | 2 deployments: bsc [`0x89ce89...bc4cd2`](./contracts/bsc-56/0x89ce89cdea483c15721bae675e3a001210bc4cd2/); bsc `0xa287ad...f73787` | ⚠️ Unaudited |
| ChefMaster | unknown | bsc | 7 deployments: bsc [`0x1e3709...9417f9`](./contracts/bsc-56/0x1e37097fc71fd892219b266f9bb12558719417f9/); bsc `0x5906ab...ae8984`; bsc `0x72618d...e594b8`; bsc `0x81c9e8...4e3cca`; bsc `0x8ce942...ced915`; bsc `0xa1a240...b8a0ba`; bsc `0xb88a38...64f01a` | ⚠️ Unaudited |
| Claimer | operational_periphery | bsc | [`0xd2d64e...d1e5b2`](./contracts/bsc-56/0xd2d64e094d37dd7d7759603fb9ed6b2306d1e5b2/) | ⚠️ Unaudited |
| CLFeesVaultSetter | core_logic | bsc | [`0x7c3d25...946287`](./contracts/bsc-56/0x7c3d25becef92a8bc5bb84b481435033c0946287/) | ⚠️ Unaudited |
| DibsRewarder | unknown | bsc | 6 deployments: bsc [`0x444efa...92e194`](./contracts/bsc-56/0x444efae67c5763d48105440a457b6f89e792e194/); bsc `0x6e2989...d7f03b`; bsc `0x891986...e317ea`; bsc `0xa36500...403d9a`; bsc `0xbf8d9b...ec12f5`; bsc `0xe001cd...ef10df` | ⚠️ Unaudited |
| DistributeFees | unknown | bsc | 6 deployments: bsc [`0x888201...0c2777`](./contracts/bsc-56/0x88820109901b8fb8aabe7571e6c12339bd0c2777/); bsc `0x8ca434...7ec6fa`; bsc `0x8db743...0b4608`; bsc `0x974a96...a8b340`; bsc `0x9f0d34...e6f65d`; bsc `0xfd71f0...5d7cf6` | ⚠️ Unaudited |
| EpochController | governance | bsc | 5 deployments: bsc [`0x019e0d...816379`](./contracts/bsc-56/0x019e0d2a20d4dce4b029bd692a76e0ee2c816379/); bsc `0x15b0f1...d39275`; bsc `0x4e5009...a84072`; bsc `0xbc197e...103911`; bsc `0xd369c8...c293f0` | ⚠️ Unaudited |
| EpochDistributorBSC | operational_periphery | bsc | [`0xc1efc2...eb991a`](./contracts/bsc-56/0xc1efc2e6bcc59b119916ffff931fef69ffeb991a/) | ⚠️ Unaudited |
| EpochNFTSplitManager | governance | bsc | 2 deployments: bsc [`0x999b56...de3fe3`](./contracts/bsc-56/0x999b56e95fee66afb14f535d0cb55fb6bdde3fe3/); bsc `0xccfcba...420ad8` | ⚠️ Unaudited |
| FarmerToken | token | bsc | [`0x864a0b...23f213`](./contracts/bsc-56/0x864a0b7f8466247a0e44558d29cdc37d4623f213/) | ⚠️ Unaudited |
| FarmingCenter | unknown | bsc | 5 deployments: bsc [`0x098b36...41ed42`](./contracts/bsc-56/0x098b36c4c14ae996bf7b9b0ca97e125bc241ed42/); bsc `0x0cd53e...1d08bf`; bsc `0x6cbc3e...37d955`; bsc `0x702acb...9de438`; bsc `0x78dbf0...fc7f71` | ⚠️ Unaudited |
| FarmingPluginFactory | registry | bsc | 5 deployments: bsc [`0x00b49b...c76f38`](./contracts/bsc-56/0x00b49bb385c4165ec77392b4b97955f04ac76f38/); bsc `0x438e33...0da19d`; bsc `0xcc1cfe...1780bb`; bsc `0xf5c9df...23779f`; bsc `0xfb027e...7a79f7` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | bsc | 3 deployments: bsc [`0xa9ce35...eda651`](./contracts/bsc-56/0xa9ce35cf6ef12cdab4a99f69ebc819b7eaeda651/); bsc `0xb02d19...1564f4`; bsc `0xc9e5c9...c6a6b1` | ⚠️ Unaudited |
| GaugeFactoryUpgradeable | operational_periphery | bsc | 2 deployments: bsc [`0x620eaa...cb180b`](./contracts/bsc-56/0x620eaa64b0deb33c1db1cd7ae1bdcda923cb180b/); bsc `0xfc1bc6...8c99a4` | ⚠️ Unaudited |
| GaugeFactoryV2 | operational_periphery | bsc | 8 deployments: bsc [`0x2a9551...16f787`](./contracts/bsc-56/0x2a9551cdae59a6fd8396f11fb987fc0ce116f787/); bsc `0x2c788f...5bf130`; bsc `0x415d29...ce34c7`; bsc `0x5f850b...91a159`; bsc `0xa43354...bc18a2`; bsc `0xbe670d...9dba2a`; bsc `0xc37ca8...b9f55b`; bsc `0xcfe13d...9fad78` | ⚠️ Unaudited |
| GaugeFactoryV2_CL | operational_periphery | bsc | 2 deployments: bsc [`0x0248fd...a36c73`](./contracts/bsc-56/0x0248fdfba1e2815c9a2adf10fd6f5cf3cda36c73/); bsc `0xb065e4...3cabeb` | ⚠️ Unaudited |
| GaugeIchiFeeDistribution | operational_periphery | bsc | 10 deployments: bsc [`0x2045e5...fa6eb7`](./contracts/bsc-56/0x2045e5e6b296277722fdc8c992018e6494fa6eb7/); bsc `0x299327...46b4c5`; bsc `0x29bb9d...c5a8a8`; bsc `0x42e1bf...26ba58`; bsc `0x4e519a...51afd5`; bsc `0x606d0c...ddbc90`; bsc `0x6f8024...1481b5`; bsc `0x9d2c09...5e3b4b`; bsc `0x9dec15...eb3f2d`; bsc `0xb4dee5...61f455` | ⚠️ Unaudited |
| GaugeSimple | operational_periphery | bsc | 6 deployments: bsc [`0x2f92bc...121bb2`](./contracts/bsc-56/0x2f92bcc2da319262ba4ddc46d883b23f7e121bb2/); bsc `0xa95186...a9b8d6`; bsc `0xba4456...33e871`; bsc `0xcf2071...64541a`; bsc `0xe49338...1e0da8`; bsc `0xe6519b...bc3b0c` | ⚠️ Unaudited |
| GaugeSimpleFeeDistribution | operational_periphery | bsc | [`0x8646ec...51b0fe`](./contracts/bsc-56/0x8646ecb742649e8e3803aaf619ee3eecb851b0fe/) | ⚠️ Unaudited |
| GaugeSimpleFeeDistributionAutomation | operational_periphery | bsc | [`0x344348...a2a336`](./contracts/bsc-56/0x3443487befbd48a75c48a6302993540862a2a336/) | ⚠️ Unaudited |
| GlobalFactory | registry | bsc | [`0x247009...947d9c`](./contracts/bsc-56/0x247009c6f39bc08d5d39ac38c9d5a0d316947d9c/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | [`0x7d70ee...caa184`](./contracts/bsc-56/0x7d70ee3774325c51e021af1f7987c214d2caa184/) | ⚠️ Unaudited |
| IbTokenOracle | operational_periphery | bsc | [`0x958a90...d9a8be`](./contracts/bsc-56/0x958a906585a6d2cf5367f38f1ea306bbadd9a8be/) | ⚠️ Unaudited |
| IncentiveMaker | unknown | bsc | 6 deployments: bsc [`0x1927cd...a7e7aa`](./contracts/bsc-56/0x1927cd283ea8505660616304bc7c36aac4a7e7aa/); bsc `0x2814a4...72bbf4`; bsc `0x80ad2f...ef0701`; bsc `0x904ecc...f7657b`; bsc `0xcc7b51...837c59`; bsc `0xdddc65...c6c46d` | ⚠️ Unaudited |
| MasterChef | unknown | bsc | 3 deployments: bsc [`0x11746f...a92f7c`](./contracts/bsc-56/0x11746fd90091228a97974435d6be5e10bda92f7c/); bsc `0x2e4979...0f1748`; bsc `0xe58e64...5adfbb` | ⚠️ Unaudited |
| MechBotsNFT | token | bsc | [`0x30b866...ccafd1`](./contracts/bsc-56/0x30b86606f89c09d2a77cb2929092230351ccafd1/) | ⚠️ Unaudited |
| MerkleTreeTest | operational_periphery | bsc | [`0xf34f9b...03a7bc`](./contracts/bsc-56/0xf34f9b3c2fa603486652f12426fcd9614503a7bc/) | ⚠️ Unaudited |
| MerkleTreeTHENFTTest | operational_periphery | bsc | 2 deployments: bsc [`0x2528a0...6841ad`](./contracts/bsc-56/0x2528a0a8205b9c937b209ea2878ae375286841ad/); bsc `0x3f2ceb...56b10d` | ⚠️ Unaudited |
| Minter | operational_periphery | bsc | 2 deployments: bsc [`0x273da6...09a34f`](./contracts/bsc-56/0x273da601356a4e1ef4842ad6db1ca192e209a34f/); bsc `0xd47808...271780` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | bsc | 8 deployments: bsc [`0x31f4bf...82103c`](./contracts/bsc-56/0x31f4bf997973376e62d02f09606c54a94082103c/); bsc `0x406ec2...a91ab9`; bsc `0x5115c1...b4261d`; bsc `0x5e3d6e...e9ea5b`; bsc `0x6c1a35...664dfe`; bsc `0x7959a7...5da3ab`; bsc `0x86069f...bee996`; bsc `0xb7ed8f...dea1d8` | ⚠️ Unaudited |
| MythicsNFT | token | bsc | [`0x820d13...ed6e40`](./contracts/bsc-56/0x820d132571e112ff6264b0327ba77a7a99ed6e40/) | ⚠️ Unaudited |
| NFTCavePool | core_logic | bsc | 6 deployments: bsc [`0x0a7847...99f5d4`](./contracts/bsc-56/0x0a78471cb73f87ffa1377c3425999ea8ec99f5d4/); bsc `0x2f58a3...72e052`; bsc `0x600f4b...7f546e`; bsc `0xc54ada...c204cc`; bsc `0xc90bc4...e96d25`; bsc `0xf750f3...a7c0af` | ⚠️ Unaudited |
| NFTCavePoolTriple | core_logic | bsc | 3 deployments: bsc [`0x67d252...4804b1`](./contracts/bsc-56/0x67d252f051645320339f9a8e26b86b3bf74804b1/); bsc `0x7bce8a...bab864`; bsc `0xf5b852...8f062e` | ⚠️ Unaudited |
| NFTSplitAutomation | token | bsc | 2 deployments: bsc [`0x2e974a...04524e`](./contracts/bsc-56/0x2e974a81f68eafa2a197a3a6eb6e75949504524e/); bsc `0xad8502...88604c` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | bsc | 3 deployments: bsc [`0x3b6c02...5ef964`](./contracts/bsc-56/0x3b6c025d0560a17a0cbafb7ac6bf323eb45ef964/); bsc `0x643b68...21d02e`; bsc `0xbf77b7...e74064` | ⚠️ Unaudited |
| PairAPI | unknown | bsc | 27 deployments: bsc [`0x0c0448...73045b`](./contracts/bsc-56/0x0c04481fe0ebbb3655d51827ea0364272d73045b/); bsc `0x19856b...a62728`; bsc `0x1a9764...82ec84`; bsc `0x1c0bc6...55d8a5`; bsc `0x2b481d...752e09`; bsc `0x2dcc9c...2a14ab`; bsc `0x43e55f...49137f`; bsc `0x4c941d...46de12`; bsc `0x514609...3a1aba`; bsc `0x53a67b...b72e15`; bsc `0x6a3040...13e08e`; bsc `0x711f29...388daf`; bsc `0x741947...b288b3`; bsc `0x839042...a61d84`; bsc `0x87627d...7be5e4`; bsc `0x95d2c9...2614dc`; bsc `0xbd5505...55ccb9`; bsc `0xc2b480...302950`; bsc `0xd73ad1...03fdc5`; bsc `0xd96d2f...7ab147`; bsc `0xd9f2a8...526380`; bsc `0xe7b379...e82a5b`; bsc `0xe89080...78a32e`; bsc `0xebff38...d91862`; bsc `0xf10355...89f2fc`; bsc `0xf22983...0309f1`; bsc `0xf22f8a...9ddf34` | ⚠️ Unaudited |
| PairFactory | registry | bsc | [`0x27dfd2...fc949d`](./contracts/bsc-56/0x27dfd2d7b85e0010542da35c6ebcd59e45fc949d/) | ⚠️ Unaudited |
| PairFactoryUpgradeable | registry | bsc | 4 deployments: bsc [`0x879f8f...760dc8`](./contracts/bsc-56/0x879f8fd307ba4442e22e77d47683f35313760dc8/); bsc `0x96f8b6...602df4`; bsc `0xafd89d...2b3970`; bsc `0xedfa2a...15bf08` | ⚠️ Unaudited |
| PancakePair | unknown | bsc | 7 deployments: bsc [`0x34943e...2830cd`](./contracts/bsc-56/0x34943e562503bfec83250e5069ad21100c2830cd/); bsc `0x68955a...b5bea8`; bsc `0x6922e6...9e5cf8`; bsc `0x9d1b71...ad57d4`; bsc `0xdd901f...0d49ae`; bsc `0xdf825e...e886a4`; bsc `0xf6088c...bb5207` | ⚠️ Unaudited |
| PlatinumMonsterNFT | token | bsc | [`0x2add07...4ce15b`](./contracts/bsc-56/0x2add0701f6827f6f9d824614b4d0fc9e914ce15b/) | ⚠️ Unaudited |
| PMOTNftPromo | token | bsc | [`0xd6213c...89cd45`](./contracts/bsc-56/0xd6213c2b9944e7619dc47a8b9c958e490989cd45/) | ⚠️ Unaudited |
| PMOTTreasureChestGame | unknown | bsc | 2 deployments: bsc [`0x89cfc3...e738e4`](./contracts/bsc-56/0x89cfc378a42ccfb6821f57d4068675da85e738e4/); bsc `0xee4e8e...44d22f` | ⚠️ Unaudited |
| PMOTTreasureChestGameV2 | unknown | bsc | 5 deployments: bsc [`0x20b114...e2b662`](./contracts/bsc-56/0x20b114a66c6021fb1e2fef91abd3b90bbae2b662/); bsc `0x2c37cd...1ff149`; bsc `0x39689e...25e8a7`; bsc `0x439f23...45bc19`; bsc `0x4f86ea...e75a27` | ⚠️ Unaudited |
| PMOTTreasureChestGameV3 | unknown | bsc | 2 deployments: bsc [`0x279e25...9517c2`](./contracts/bsc-56/0x279e2565e19e3daa55c3a3c20fd46a9f019517c2/); bsc `0x68d70d...6ebf60` | ⚠️ Unaudited |
| PMOTTreasureChestGameV4 | unknown | bsc | [`0x13daed...4c384e`](./contracts/bsc-56/0x13daed27e4b5353587a2e7d32f071f02044c384e/) | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | 4 deployments: bsc [`0x5d120a...8d990e`](./contracts/bsc-56/0x5d120a288f1c9b9d382e7deb64573f15e18d990e/); bsc `0x8b9ca0...533e06`; bsc `0x90c0df...492efb`; bsc `0xc06cb2...e04575` | ⚠️ Unaudited |
| Quoter | periphery | bsc | [`0x6cf8dd...0ee83e`](./contracts/bsc-56/0x6cf8dd678619bdd84f5ea7d487d75970920ee83e/) | ⚠️ Unaudited |
| QuoterV2 | periphery | bsc | [`0x71af3b...c3916d`](./contracts/bsc-56/0x71af3b059b1daa81ee65529bca82779edfc3916d/) | ⚠️ Unaudited |
| RewardAPI | unknown | bsc | 18 deployments: bsc [`0x07678a...d808ee`](./contracts/bsc-56/0x07678a2309dbed40576b2dcc723ee5f1b5d808ee/); bsc `0x0b6cff...d96c46`; bsc `0x15b04e...d6bf0d`; bsc `0x2083e6...4825b9`; bsc `0x42ea63...774209`; bsc `0x46d9ea...5d6c34`; bsc `0x54a3e5...bb4787`; bsc `0x6e75e0...931c16`; bsc `0x8953d7...3d1245`; bsc `0x976c5c...d54fc5`; bsc `0xa63647...c664e9`; bsc `0xaa859c...ce7a8d`; bsc `0xc472dd...7dfcf2`; bsc `0xc548c1...4f3e67`; bsc `0xdb65c1...de413c`; bsc `0xe4253e...bddf31`; bsc `0xf94e04...832dc1`; bsc `0xfbf342...e5bc77` | ⚠️ Unaudited |
| RewardEarnedHelper | periphery | bsc | 2 deployments: bsc [`0x1ec88f...2c1692`](./contracts/bsc-56/0x1ec88f8c3d95a6ba0560c1aa6c184e334b2c1692/); bsc `0x9870d4...397319` | ⚠️ Unaudited |
| Rewarder | unknown | bsc | 14 deployments: bsc [`0x09c318...e98019`](./contracts/bsc-56/0x09c318865c54e2250b5e72cc486f1fdcfce98019/); bsc `0x0da0b5...b9aba9`; bsc `0x3754ae...e456a5`; bsc `0x66117d...76a9cb`; bsc `0x67da2f...a95b56`; bsc `0x68875a...037baa`; bsc `0x7f0cd8...b1c3bc`; bsc `0x86b992...6fb9ca`; bsc `0xa2bc09...9624de`; bsc `0xb528c3...484649`; bsc `0xb789f1...442fd1`; bsc `0xc7794f...6dec1e`; bsc `0xe70381...b32365`; bsc `0xed7561...90c3c4` | ⚠️ Unaudited |
| RewardsDistributorV2 | operational_periphery | bsc | 2 deployments: bsc [`0x4e29c0...0413e4`](./contracts/bsc-56/0x4e29c0acf891d35ec12b56140e1c8f45220413e4/); bsc `0xc6be40...967779` | ⚠️ Unaudited |
| Router | adapter | bsc | 3 deployments: bsc [`0x20a304...ca8431`](./contracts/bsc-56/0x20a304a7d126758dfe6b243d0fc515f83bca8431/); bsc `0x9b2378...187d0d`; bsc `0xc134fc...893a69` | ⚠️ Unaudited |
| RouterV2 | adapter | bsc | 3 deployments: bsc [`0x8f097e...58e818`](./contracts/bsc-56/0x8f097e07a07bf2f031e5513f764dafc6df58e818/); bsc `0xbce35a...cdf22f`; bsc `0xd4ae6e...78d109` | ⚠️ Unaudited |
| Royalties | unknown | bsc | 3 deployments: bsc [`0x687759...d56916`](./contracts/bsc-56/0x68775950553cf10ee3c8618bca5637796fd56916/); bsc `0xbb2caf...913882`; bsc `0xbe3b34...46c49d` | ⚠️ Unaudited |
| SimpleAirdrop | operational_periphery | bsc | 2 deployments: bsc [`0x1e0a49...d110c2`](./contracts/bsc-56/0x1e0a496c3bed9d7199a539f010e2efbd03d110c2/); bsc `0x9e237b...3397fe` | ⚠️ Unaudited |
| SimpleAirdropDAO | operational_periphery | bsc | 2 deployments: bsc [`0x8861d2...9951c3`](./contracts/bsc-56/0x8861d2a348128cb3edab258254e5265e0b9951c3/); bsc `0xa18c09...2141c1` | ⚠️ Unaudited |
| SimpleAirdropDAO2 | operational_periphery | bsc | [`0xcb1c04...38f2bb`](./contracts/bsc-56/0xcb1c0474aa157ae33585bdde7455390ebe38f2bb/) | ⚠️ Unaudited |
| SimpleAirdropFNFT | operational_periphery | bsc | [`0x1ba3ef...77ab2c`](./contracts/bsc-56/0x1ba3ef6e6729c88777159357188395a72f77ab2c/) | ⚠️ Unaudited |
| SimpleAirdropFNFT2 | operational_periphery | bsc | [`0x89d015...31c076`](./contracts/bsc-56/0x89d0155d12448ab83e6e89c8b5a0f9a4bf31c076/) | ⚠️ Unaudited |
| Sminem | unknown | bsc | [`0x8e0060...74c143`](./contracts/bsc-56/0x8e006025674039f149249cbd48f341794a74c143/) | ⚠️ Unaudited |
| SolarFightersNFT | token | bsc | 2 deployments: bsc [`0x8812f0...287e29`](./contracts/bsc-56/0x8812f0b82464f58a381a5eae25194a595a287e29/); bsc `0xb57f0d...9c2435` | ⚠️ Unaudited |
| stakingNFTConverterRouter | adapter | bsc | 3 deployments: bsc [`0x1fe7d9...ffdc5b`](./contracts/bsc-56/0x1fe7d95aef61fe0ab9f4e31acd506aa337ffdc5b/); bsc `0xe2dff9...de4dc8`; bsc `0xf8f8d5...79fd5b` | ⚠️ Unaudited |
| Strat1 | unknown | bsc | 2 deployments: bsc [`0x1a40a8...ff0d48`](./contracts/bsc-56/0x1a40a8c7d965f3929e0c56bb301ebe82f5ff0d48/); bsc `0x9ba2a9...b6f55b` | ⚠️ Unaudited |
| StratSwipe | unknown | bsc | [`0x1f042f...1e66ce`](./contracts/bsc-56/0x1f042f2fd6878edcd75f1f1400bc1d53671e66ce/) | ⚠️ Unaudited |
| StratVLEV | unknown | bsc | 42 deployments: bsc [`0x13057e...624910`](./contracts/bsc-56/0x13057e42bbf1b5d980ea79df5549be49ee624910/); bsc `0x1a2eb7...5de82c`; bsc `0x238d2b...e6395b`; bsc `0x2c48d2...0866b0`; bsc `0x3a795f...f613e1`; bsc `0x40afa7...10a4de`; bsc `0x414b4f...7330c9`; bsc `0x440c7e...de7c32`; bsc `0x48620b...32c6fe`; bsc `0x52a9f3...fff1f0`; bsc `0x54d001...a0cb39`; bsc `0x5796b4...1743ff`; bsc `0x57d699...6e4b01`; bsc `0x602817...525f4b`; bsc `0x65579f...f58a12`; bsc `0x6a1878...65d073`; bsc `0x6f5bf5...3e6db5`; bsc `0x89e150...fbe9a1`; bsc `0x8e24b8...651d84`; bsc `0x91277c...0307ff`; bsc `0x95d3ee...d80192`; bsc `0x97d41b...c54032`; bsc `0xa05d4f...3a1dec`; bsc `0xb2059d...9345f5`; bsc `0xb33f66...349fa5`; bsc `0xc71b72...ab95f7`; bsc `0xc7322b...7da24c`; bsc `0xcc48c5...0ab5dd`; bsc `0xcd3a59...f29af3`; bsc `0xd12b91...9d84db`; bsc `0xd21c3b...d5dcc9`; bsc `0xd57e87...a1dd3f`; bsc `0xd9dc13...0f0f0a`; bsc `0xdcd765...d50437`; bsc `0xe041ad...12ee3f`; bsc `0xe24776...3a7e8e`; bsc `0xe4bf08...01fd09`; bsc `0xe839e1...907808`; bsc `0xebc44c...e6a3c3`; bsc `0xf67cce...aae43f`; bsc `0xf7cdda...23c492`; bsc `0xfffe1b...cf159a` | ⚠️ Unaudited |
| StratX | unknown | bsc | 43 deployments: bsc [`0x098945...b4205d`](./contracts/bsc-56/0x0989454fcf48c66aee3fe8cf4feccae2e9b4205d/); bsc `0x0b4305...288bf0`; bsc `0x0ce929...205fe3`; bsc `0x1004a5...cd5bbe`; bsc `0x164d04...517b70`; bsc `0x172d40...240ec5`; bsc `0x1a5715...a98eba`; bsc `0x1edf8e...acd2d7`; bsc `0x306258...d247f8`; bsc `0x344866...2bc1f1`; bsc `0x36ac93...dab483`; bsc `0x375e7f...811477`; bsc `0x38d409...21c8a7`; bsc `0x3a8475...249084`; bsc `0x3b4e26...fc0c5b`; bsc `0x3f4580...5c23f0`; bsc `0x4551e5...b6ee99`; bsc `0x512090...bb58a8`; bsc `0x5935db...e63ad8`; bsc `0x5f9302...a8ca5c`; bsc `0x65168c...66874b`; bsc `0x671c90...82c893`; bsc `0x6f6851...0b3ed0`; bsc `0x7f7b23...563ff1`; bsc `0x8a1a10...e195cd`; bsc `0x8db789...dbb5d5`; bsc `0x9b3f9f...918fd4`; bsc `0xa5ca6b...6b1e22`; bsc `0xa7df74...cfc2f1`; bsc `0xac622b...73a234`; bsc `0xad1245...2090e0`; bsc `0xae9720...4868e8`; bsc `0xbaa677...9b370c`; bsc `0xc75b6f...f87f60`; bsc `0xd84cf4...fdb2fc`; bsc `0xdd42e8...1dd917`; bsc `0xdf3dad...15e9e5`; bsc `0xe23ec9...871b54`; bsc `0xe8adf9...cc2f72`; bsc `0xe9d78b...791130`; bsc `0xeae1f3...38311b`; bsc `0xed3f07...b78687`; bsc `0xf2aec8...47209d` | ⚠️ Unaudited |
| StratX_AUTO | unknown | bsc | [`0xc5eb5a...f9eb40`](./contracts/bsc-56/0xc5eb5a3490d2a2e4a1e1c9a1b965b4eef4f9eb40/) | ⚠️ Unaudited |
| StratX_Pathed | unknown | bsc | 2 deployments: bsc [`0x3aa4f1...11e024`](./contracts/bsc-56/0x3aa4f1ad7094d263dad4ead5b8bc09ddc211e024/); bsc `0x7328cb...78e7e4` | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | 2 deployments: bsc [`0x429c60...87639f`](./contracts/bsc-56/0x429c60346ee8f4577f9ec1329cedd4695787639f/); bsc `0x76689a...b4c7a6` | ⚠️ Unaudited |
| Thena | unknown | bsc | 2 deployments: bsc [`0x081321...0d486d`](./contracts/bsc-56/0x08132180afc971ddfdecd2d6034794e7f20d486d/); bsc `0xf4c8e3...863a11` | ⚠️ Unaudited |
| ThenaBasePlugin | unknown | bsc | 17 deployments: bsc [`0x198cdb...aeb04c`](./contracts/bsc-56/0x198cdbb6b93a97a370c52daec8c9c8cbacaeb04c/); bsc `0x375e3e...da7835`; bsc `0x3b7191...2728a0`; bsc `0x3efd67...33bcc0`; bsc `0x53903e...c598ec`; bsc `0x57778f...3a0ec3`; bsc `0x5d0ade...d9a728`; bsc `0x7687bb...ca5882`; bsc `0x7b233c...47803f`; bsc `0x8405aa...e1f98a`; bsc `0xa2e37d...37623d`; bsc `0xbcd1e7...c75467`; bsc `0xbfdf8c...2f4f21`; bsc `0xc98b80...3b7cdd`; bsc `0xcfb068...e9c76e`; bsc `0xe463d2...a67982`; bsc `0xfb653a...27cb8d` | ⚠️ Unaudited |
| ThenaUniversalRouter | adapter | bsc | [`0x753f7a...42f691`](./contracts/bsc-56/0x753f7aca2df4f2ef2d47f132d8e25f7f5142f691/) | ⚠️ Unaudited |
| ThenianFeeConverter | unknown | bsc | 2 deployments: bsc [`0x21297f...1dec23`](./contracts/bsc-56/0x21297f1706292874b804bb7d29e995ae551dec23/); bsc `0x6c1c0a...f2eccc` | ⚠️ Unaudited |
| TickLens | periphery | bsc | [`0xa28680...395511`](./contracts/bsc-56/0xa28680645e347a4854e86e35053009891c395511/) | ⚠️ Unaudited |
| Timelock | governance | bsc | 3 deployments: bsc [`0x2044b1...a023b9`](./contracts/bsc-56/0x2044b1cd18c3794920a041a5811466d0c6a023b9/); bsc `0x5d7deb...676561`; bsc `0xcbbb03...ee3cb4` | ⚠️ Unaudited |
| TimelockController | governance | bsc | 6 deployments: bsc [`0x28579e...876a04`](./contracts/bsc-56/0x28579eca0a326e53340edd93e18698d379876a04/); bsc `0x2a84a5...6fdb21`; bsc `0x6aa35f...77b5ff`; bsc `0x7d09ac...9025b5`; bsc `0x99d334...807b89`; bsc `0xc2f7ba...bd2596` | ⚠️ Unaudited |
| TokenTimelock | governance | bsc | 9 deployments: bsc [`0x02360b...23ffcf`](./contracts/bsc-56/0x02360b5e75a84696416f0f446267d5384b23ffcf/); bsc `0x1e141f...3841ac`; bsc `0x4a712a...549451`; bsc `0x5b7380...a20547`; bsc `0x6c9619...0a0b3c`; bsc `0x7cdb05...c8ffb2`; bsc `0xa2ddd7...d9e6d7`; bsc `0xb35c0c...eaaa88`; bsc `0xddc5bc...36154b` | ⚠️ Unaudited |
| TokenTimelockVesting | operational_periphery | bsc | 2 deployments: bsc [`0x5d21fe...cc8afc`](./contracts/bsc-56/0x5d21fec965082e003219c6036844327c2dcc8afc/); bsc `0xf261f7...e8263a` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | bsc | 2 deployments: bsc [`0x3cb2f8...781a3f`](./contracts/bsc-56/0x3cb2f8f2312ab981c4da6f98735a2af79e781a3f/); bsc `0x6aec9e...0b4fc4` | ⚠️ Unaudited |
| TradingCompetitionManager | governance | bsc | 14 deployments: bsc [`0x0bd32d...0ecf6a`](./contracts/bsc-56/0x0bd32dd59b40f78b7a9e1e629293b596e60ecf6a/); bsc `0x0d5f51...f555fc`; bsc `0x46ba69...2b8596`; bsc `0x482282...afd2b8`; bsc `0x49dfa9...d77fa9`; bsc `0x66849e...8f7b4a`; bsc `0x843d3c...2a02cf`; bsc `0x844392...bfde49`; bsc `0x8d03fe...f639ec`; bsc `0xa1fa98...c08a7d`; bsc `0xace18d...4480a2`; bsc `0xdac818...ba0daf`; bsc `0xdf1792...0397ca`; bsc `0xdf5585...e4d332` | ⚠️ Unaudited |
| TradingCompetitionPerpetualFactory | registry | bsc | 13 deployments: bsc [`0x15f045...1486c7`](./contracts/bsc-56/0x15f045f672c50c2eea9ea73c6a3e2f918f1486c7/); bsc `0x1ff95f...83bdc1`; bsc `0x4701c9...3dfea2`; bsc `0x4d585e...12bca8`; bsc `0x614ee5...16869a`; bsc `0x7d36e5...3d0c88`; bsc `0x81174c...47598c`; bsc `0xa78e47...3c64dc`; bsc `0xabcb0a...b4b6c3`; bsc `0xae069b...3e97e1`; bsc `0xafe9fe...01c3a6`; bsc `0xd5e6dd...ca9ccb`; bsc `0xe52a3d...53eda7` | ⚠️ Unaudited |
| TradingCompetitionPerpetualManager | governance | bsc | 6 deployments: bsc [`0x2066e0...19c7c3`](./contracts/bsc-56/0x2066e0436f23b98d24aa8c80fa5f21a35519c7c3/); bsc `0x66dbea...2d9abe`; bsc `0x803036...a03ca7`; bsc `0xae4722...cf79bb`; bsc `0xc90992...03aee7`; bsc `0xe5ccf6...2645c0` | ⚠️ Unaudited |
| TradingCompetitionSpotFactory | registry | bsc | 17 deployments: bsc [`0x24888f...82df07`](./contracts/bsc-56/0x24888f2cafcfdd4b0795ce6556234920fb82df07/); bsc `0x2dab3e...72c829`; bsc `0x34f699...47b0cd`; bsc `0x44db09...35c1ae`; bsc `0x52ceaa...4f2ecc`; bsc `0x6cba8f...f841d0`; bsc `0x70ac91...1291dc`; bsc `0x9fe1c4...3f60af`; bsc `0xabd42b...1d15ee`; bsc `0xb2af9c...71723f`; bsc `0xc96348...0dcbb4`; bsc `0xd3d35c...7580bf`; bsc `0xd6feea...f5cca9`; bsc `0xd78243...3005e3`; bsc `0xe5d3f9...5ecacc`; bsc `0xf7e6ae...0eaacb`; bsc `0xfec52c...852cea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | 12 deployments: bsc [`0x0e0c68...cd769f`](./contracts/bsc-56/0x0e0c68f11bf2c84a5a0e800823a969355dcd769f/); bsc `0x26b813...8e3b26`; bsc `0x33b1c4...936c60`; bsc `0x357379...51ffc0`; bsc `0x4025e0...6f4508`; bsc `0x478449...425008`; bsc `0x961c45...e893c7`; bsc `0x97f146...d2ceb0`; bsc `0xc1b508...b52b63`; bsc `0xdd7d7e...d97f47`; bsc `0xeacf96...184721`; bsc `0xf4f02c...8a38ec` | ⚠️ Unaudited |
| VeArtProxy | unknown | bsc | [`0x60e53b...012ec6`](./contracts/bsc-56/0x60e53b5d4813f240242d804c6dfcc080ad012ec6/) | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | bsc | 4 deployments: bsc [`0x15d7c2...4b8503`](./contracts/bsc-56/0x15d7c232e6781f724c29c67e23c15ceeec4b8503/); bsc `0x77f6ef...6ed9de`; bsc `0xb2b37c...03e516`; bsc `0xd6f6e2...3e765f` | ⚠️ Unaudited |
| veNFTAPI | token | bsc | 36 deployments: bsc [`0x007e20...0906b9`](./contracts/bsc-56/0x007e208665a0e953a5175d5b4c992b952b0906b9/); bsc `0x04106f...cf6110`; bsc `0x0a554b...20e58a`; bsc `0x190b16...20d36d`; bsc `0x212ede...493507`; bsc `0x2a0b2f...f13660`; bsc `0x2c417f...96ca07`; bsc `0x32c5b3...e5a120`; bsc `0x420656...bfd29a`; bsc `0x47a02a...c772d9`; bsc `0x5ddb0c...2b4892`; bsc `0x630f7a...41c07e`; bsc `0x64039b...4a4549`; bsc `0x66b6ea...455c79`; bsc `0x6942f0...f8381d`; bsc `0x73767e...1d65a5`; bsc `0x833529...c341e1`; bsc `0x8be4ec...87eeb5`; bsc `0x949d5b...df813b`; bsc `0x94e4a5...a55615`; bsc `0x9c50be...48e925`; bsc `0xad439c...b4c6e1`; bsc `0xc0e2f5...97b9d5`; bsc `0xc0f8c0...a1ebb6`; bsc `0xc19079...cf4cda`; bsc `0xcfcacc...b6f0bc`; bsc `0xd989a3...8f9522`; bsc `0xe09e1a...1283b0`; bsc `0xec83ed...d846e1`; bsc `0xef71d8...bf6f09`; bsc `0xf13b61...99c84d`; bsc `0xf2d626...f80080`; bsc `0xf9a659...9b6c3e`; bsc `0xfae924...3c926e`; bsc `0xfd4dae...869e95`; bsc `0xffb2ad...5c7bc2` | ⚠️ Unaudited |
| VeTheAutomationFactoryGelato | registry | bsc | 3 deployments: bsc [`0x5f6a39...360695`](./contracts/bsc-56/0x5f6a392ab819a7cbfed93c3ae4f9c428c3360695/); bsc `0xa2a570...06afd1`; bsc `0xbded2c...c98379` | ⚠️ Unaudited |
| Voter | unknown | bsc | 2 deployments: bsc [`0x8fbb1e...dd0462`](./contracts/bsc-56/0x8fbb1ecebb9e9839bc0de00b9c4c585cabdd0462/); bsc `0xb594c0...616cbd` | ⚠️ Unaudited |
| VoterUpgradeable | unknown | bsc | 2 deployments: bsc [`0x4e02ac...369b47`](./contracts/bsc-56/0x4e02accd83c09eaf2ff4b8346ed6a33a7a369b47/); bsc `0xc3136b...2cbe96` | ⚠️ Unaudited |
| VoterV2 | unknown | bsc | 5 deployments: bsc [`0x43659f...3a706b`](./contracts/bsc-56/0x43659f29356b7d84f6464957db06f1fd883a706b/); bsc `0x50b2fb...24ad79`; bsc `0x596845...3f25b0`; bsc `0x9dcbc4...996456`; bsc `0xddde87...5ad7e2` | ⚠️ Unaudited |
| VotingEscrowAttach | operational_periphery | bsc | [`0x8aebed...05b58d`](./contracts/bsc-56/0x8aebed1f28a8ae1eb6479ddd8b1148da0e05b58d/) | ⚠️ Unaudited |
| VotingEscrowAttachMock | operational_periphery | bsc | [`0xec88bc...378129`](./contracts/bsc-56/0xec88bc102eb167b47adc0f7fb5c6b897d1378129/) | ⚠️ Unaudited |
| VotingIncentivesFactory | registry | bsc | [`0x82f144...57d218`](./contracts/bsc-56/0x82f144accf4779ca8c49928be28fac5fa157d218/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | [`0x6461ac...9f914c`](./contracts/bsc-56/0x6461ac51ac85698e3db8b8a666c660c51e9f914c/) | ⚠️ Unaudited |
| WrappedExternalBribeFactory | operational_periphery | bsc | [`0x99443a...de8962`](./contracts/bsc-56/0x99443a69d163aeabadcb00c3d04a0ac544de8962/) | ⚠️ Unaudited |
| WrappedExternalBribeFactoryUpgradeable | operational_periphery | bsc | 2 deployments: bsc [`0x4bf5a4...6235bc`](./contracts/bsc-56/0x4bf5a42202927b0263d2279e509b3da05a6235bc/); bsc `0xef2975...fa42d3` | ⚠️ Unaudited |
| Zap | adapter | bsc | 5 deployments: bsc [`0x2f7d6f...92a878`](./contracts/bsc-56/0x2f7d6f408b3e7f2c4667055ff5bc33f4c592a878/); bsc `0x3ff41d...09e61d`; bsc `0x6965ca...71323d`; bsc `0x7fc83b...ce7e6c`; bsc `0xf1999f...88f49d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (203)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x02c690...2c1936` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x044c72...4518b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x056cd6...97d8c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0711c0...82f971` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x07f7ac...7023ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0acdbb...6d1e94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0bc53e...e46341` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0bf2e7...9d4d1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0c54d3...76e8be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0cb322...6ab554` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0dd9b5...1eccf8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0e1644...8775e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0f0b90...40379c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x110e62...809c9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x12f0a7...961ab9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x140f38...be8c76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x14d598...81e466` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x155b4c...068f08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x15b709...a2c3c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x162fe0...442c97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x167251...8f12e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x17441a...3119c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x184e11...0fdb86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x18cfd9...01aea8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x18fb6e...8ca80f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1ad82a...ba5341` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1ae452...26498e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1e132f...6a99af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1ea4b6...cc25f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1edec2...67fb73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1f94f8...85e4a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1fa889...6d5b8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1fe1aa...4ef6c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x23a167...7bdccb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x23ab45...709a92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x273299...7d314a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x27b801...7c643e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x296560...980a54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x31bae9...d4102d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x325e73...bc0abe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x328dd6...484a0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x332387...1483ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x339784...2f3371` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x359443...c1b5b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x379439...b0b2e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x37afb0...028e79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x382ef1...76520d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x38a70d...64d56c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x39bd3f...eaadc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3ad825...8eb2db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3ae422...cdbd92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3baf49...70e7b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3eb784...bb0a2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4238dd...5edc41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x42b7db...85d85e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x42c1fc...de0207` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4477e8...2aab2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x467643...e2ff81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x46d6b3...0e56b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x486b87...6c6bc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x48d1f9...8d0b59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4ab3de...74b0e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4cadb5...94430f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4d85c2...d11c10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4db402...aacd2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4f5b8a...d88adc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4fbcc8...1450f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x508e84...cd1e8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x52453a...ebd3fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x52bfdd...07beb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x52caf0...d386ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x57d510...f5fc50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x585779...956755` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5a6b1e...e2aee1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5c7cac...e19fe0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5cbb8e...c266c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5dc52e...b9d03a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5e93b3...f0a074` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5edbaa...a0e17b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6030a7...fbd2d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6196eb...33d3b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x63257e...969b82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x63a848...7f212b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6524a5...bad700` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x653c41...96f045` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x68b9d0...74890e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x69c88a...4a8760` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6a87d7...d0d640` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6e4370...48f51b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x70903d...189f25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x730fcb...49f7fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x74f530...5ed0ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7515a2...6d898a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x75d813...2d5b5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x761d21...dec8cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7627bd...864d16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x79924e...497499` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x79aca5...40ffbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7ba6a5...6e670f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7bcf3c...8de266` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7e5fe2...7f9b43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7ed7ba...89db40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7ed81a...987885` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x815aa0...f533ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x819e88...cc8928` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x81b1c2...1d970c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x82004f...53c72b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8733fd...e17916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x883899...3b8401` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x88cdea...c6ee0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8c9813...187db7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8d78c6...2c8164` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8e50ac...479830` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8edece...c63811` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8ef73c...8ba971` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8fe813...078113` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x909961...5394ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x90f4e5...24a354` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x92cdd3...a4890a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x93dbc2...cc21e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9462a2...5a66ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x95e7f6...27d301` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9667fc...fad8fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x970195...da0077` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x997d60...d2b093` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9c30e4...ed894e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9dc12a...ede9f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9e2423...809085` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa02f4e...953e8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa0a04d...ccac50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa0c219...ba7948` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa2fd94...e3ff89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa409c2...5686d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa646da...b6148d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xab4520...a03e0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xac9f30...335930` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xacd65e...664502` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xacfc54...1119b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xadfdf4...fd5ebc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb126ad...3fea19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb4111b...020471` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb8283a...f3cdb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb93c9f...183547` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb951f7...b847bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb9eb02...3984aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbcb546...7905b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbd4952...a72545` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc1bcbc...3847d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc33645...bbac2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc577a3...621b71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc70285...613b2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc8686e...559af1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc92338...fb835c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc9f5d6...fdfa4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcb5f25...ee5e05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcc4c2a...682e6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xce43e8...e6e355` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xce7ace...9548e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd1923d...9f59da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd28049...be2633` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd29331...c1d192` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd4428b...5587e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd634f3...17cdcf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd6744b...fc4aec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd74a42...169da9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd7c11c...cc616e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd9649e...81f6c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xda1473...3e88b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xda6cef...818c49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdb47cb...bb51db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdbb1a5...220be7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xde51a0...d6cbdb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdeabc4...080edf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdf0653...c9afeb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdf61c4...81ce17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe01157...f1fc46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe0e762...5fbc44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe340da...a66af9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe34249...663653` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe4b404...33f4a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe4dfeb...719b2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe6a1ee...88859d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe84ef4...b36948` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe85bf1...6c33b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe90173...7f7b5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xea54f3...62bbb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xea6b0b...f8567c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xebcc0d...56e9e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xed4bca...5f7151` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xee18b2...7259cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xefe8fb...4653d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf02a0b...f2d71a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf030f4...389afc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf13112...474253` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf2ffec...962cdf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf44693...365862` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf72c54...459408` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf7a639...35aca1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf940b7...0c2fd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf9f98f...52516b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfa78cd...0cb0ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfb9d03...a90d2d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [OpenZeppelin](https://www.openzeppelin.com/news/retro-thena-audit) | OpenZeppelin | Audit | 2023-06 | stale | Direct | contract_name | 18 | high |
| [Hackken](https://hacken.io/audits/thena) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/peckshield/publications/65be3a3b651bba87c4a9c024ca4306adbadba040/audit_reports/PeckShield-Audit-Report-Thena-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | 27 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x69db43...db61a0`](./contracts/bsc-56/0x69db437f1a773f4c1c95ce7c3c6b7229c2db61a0/) | FeeVaultSimple | core_logic | $205.05 | Verified native implementation with $205.05 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2d2f25...6f5cfa`](./contracts/bsc-56/0x2d2f254c0624297af92b42f7258075c4e36f5cfa/) | AlgebraVault | core_logic | $2.97 | Verified native implementation with $2.97 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x14cbee...416a96`](./contracts/bsc-56/0x14cbeee51410c4e3b8269b534933404aee416a96/) | StakingNFTFeeConverter | token | $0.16 | Verified native implementation with $0.16 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3fa9c2...fd5202`](./contracts/bsc-56/0x3fa9c21c585b009972c705c992c5e93a4efd5202/) | AirdropClaimTest | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2b259b...351b5e`](./contracts/bsc-56/0x2b259baed99d032c514fd6f00536450c76351b5e/) | AirdropClaimTheNFTTest | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2ca4df...9be431`](./contracts/bsc-56/0x2ca4df86b060da251ba7609875048b4e599be431/) | AlgebraVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x287e9e...375328`](./contracts/bsc-56/0x287e9e48b0169e95d3fafddbd4975813a3375328/) | AlgebraVaultFactoryStub | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x06f2ab...c1d4dd`](./contracts/bsc-56/0x06f2ab649fd575574444ff8e4e92323492c1d4dd/) | AtmosSoftNFTMarket | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0df9c5...fd41fb`](./contracts/bsc-56/0x0df9c5fb57bc3b90e73563e9adb672bea2fd41fb/) | AutoFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x089519...450452`](./contracts/bsc-56/0x0895196562c7868c5be92459fae7f877ed450452/) | AutoFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd27cf2...5c0be9`](./contracts/bsc-56/0xd27cf28dca5867ef6dbc456f583abaa4fa5c0be9/) | AutomationEpochDistributorBSC | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x097509...fdaff0`](./contracts/bsc-56/0x09750927d289131d40d6e5ff34d431432bfdaff0/) | AUTOToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x12300e...abfe24`](./contracts/bsc-56/0x12300ea3d3444e9106c65913de24c58462abfe24/) | AUTOv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfa78c6...864573`](./contracts/bsc-56/0xfa78c6467b5aa53d0c1ad114dbf93082e6864573/) | BasePluginV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0cef58...3d5faa`](./contracts/bsc-56/0x0cef58f80fad7904556fc7801e46a7618e3d5faa/) | Berry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x08f230...be998e`](./contracts/bsc-56/0x08f2303633a8e376ee02d0c4f07952bf05be998e/) | BerryBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0aef47...a14da8`](./contracts/bsc-56/0x0aef47fe18180f61b87de7e85712652bd8a14da8/) | BerryDataNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x624d25...ebcf9f`](./contracts/bsc-56/0x624d25cb42c7f0940531101d47414e3a58ebcf9f/) | BerryDispute | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x734e3b...3390e1`](./contracts/bsc-56/0x734e3b5bd16b43eb82f203950f983ef6003390e1/) | BerryLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7e7fe9...dbee2e`](./contracts/bsc-56/0x7e7fe9e40fc3b8a7ce85da44801f9efe9bdbee2e/) | BerryMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x283af9...f6b3ae`](./contracts/bsc-56/0x283af939416eebf8413b382338bf1537c1f6b3ae/) | BerryStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xee9a08...5b30ca`](./contracts/bsc-56/0xee9a080a7773669870f58d024d25b157cb5b30ca/) | BerryTransfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf5df07...ae4589`](./contracts/bsc-56/0xf5df072fd5b89cb481cb1c112b4cfcd5e5ae4589/) | BOGDEXUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7edc99...776107`](./contracts/bsc-56/0x7edc998a097d372388f1a142ca92401538776107/) | BOGMigrationData | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e4cd6...c116de`](./contracts/bsc-56/0x3e4cd6f7fdda6712ca93713fc1425ca69ec116de/) | BOGMigrationDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa86b60...1e2812`](./contracts/bsc-56/0xa86b6018ffb7d29f9a3ab59ba27d9e424c1e2812/) | BOGRouterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe77570...539b08`](./contracts/bsc-56/0xe77570724e7c6c339cdb22f0d3dabcbbec539b08/) | BOGWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc577c8...1fbab8`](./contracts/bsc-56/0xc577c8276378d51a3e2ecea4d649a02b8e1fbab8/) | BribeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x997687...192ecb`](./contracts/bsc-56/0x99768701cce63da41311f959f120425ed2192ecb/) | BribeFactoryV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x282ffb...020b9c`](./contracts/bsc-56/0x282ffbe782f903340a14955649032302e8020b9c/) | CavePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x89ce89...bc4cd2`](./contracts/bsc-56/0x89ce89cdea483c15721bae675e3a001210bc4cd2/) | CCIPThenaTokenProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e3709...9417f9`](./contracts/bsc-56/0x1e37097fc71fd892219b266f9bb12558719417f9/) | ChefMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd2d64e...d1e5b2`](./contracts/bsc-56/0xd2d64e094d37dd7d7759603fb9ed6b2306d1e5b2/) | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c3d25...946287`](./contracts/bsc-56/0x7c3d25becef92a8bc5bb84b481435033c0946287/) | CLFeesVaultSetter | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x444efa...92e194`](./contracts/bsc-56/0x444efae67c5763d48105440a457b6f89e792e194/) | DibsRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x888201...0c2777`](./contracts/bsc-56/0x88820109901b8fb8aabe7571e6c12339bd0c2777/) | DistributeFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x019e0d...816379`](./contracts/bsc-56/0x019e0d2a20d4dce4b029bd692a76e0ee2c816379/) | EpochController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc1efc2...eb991a`](./contracts/bsc-56/0xc1efc2e6bcc59b119916ffff931fef69ffeb991a/) | EpochDistributorBSC | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x864a0b...23f213`](./contracts/bsc-56/0x864a0b7f8466247a0e44558d29cdc37d4623f213/) | FarmerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x098b36...41ed42`](./contracts/bsc-56/0x098b36c4c14ae996bf7b9b0ca97e125bc241ed42/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00b49b...c76f38`](./contracts/bsc-56/0x00b49bb385c4165ec77392b4b97955f04ac76f38/) | FarmingPluginFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa9ce35...eda651`](./contracts/bsc-56/0xa9ce35cf6ef12cdab4a99f69ebc819b7eaeda651/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x620eaa...cb180b`](./contracts/bsc-56/0x620eaa64b0deb33c1db1cd7ae1bdcda923cb180b/) | GaugeFactoryUpgradeable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a9551...16f787`](./contracts/bsc-56/0x2a9551cdae59a6fd8396f11fb987fc0ce116f787/) | GaugeFactoryV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0248fd...a36c73`](./contracts/bsc-56/0x0248fdfba1e2815c9a2adf10fd6f5cf3cda36c73/) | GaugeFactoryV2_CL | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2045e5...fa6eb7`](./contracts/bsc-56/0x2045e5e6b296277722fdc8c992018e6494fa6eb7/) | GaugeIchiFeeDistribution | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f92bc...121bb2`](./contracts/bsc-56/0x2f92bcc2da319262ba4ddc46d883b23f7e121bb2/) | GaugeSimple | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8646ec...51b0fe`](./contracts/bsc-56/0x8646ecb742649e8e3803aaf619ee3eecb851b0fe/) | GaugeSimpleFeeDistribution | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x344348...a2a336`](./contracts/bsc-56/0x3443487befbd48a75c48a6302993540862a2a336/) | GaugeSimpleFeeDistributionAutomation | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x247009...947d9c`](./contracts/bsc-56/0x247009c6f39bc08d5d39ac38c9d5a0d316947d9c/) | GlobalFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x958a90...d9a8be`](./contracts/bsc-56/0x958a906585a6d2cf5367f38f1ea306bbadd9a8be/) | IbTokenOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1927cd...a7e7aa`](./contracts/bsc-56/0x1927cd283ea8505660616304bc7c36aac4a7e7aa/) | IncentiveMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x11746f...a92f7c`](./contracts/bsc-56/0x11746fd90091228a97974435d6be5e10bda92f7c/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x30b866...ccafd1`](./contracts/bsc-56/0x30b86606f89c09d2a77cb2929092230351ccafd1/) | MechBotsNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf34f9b...03a7bc`](./contracts/bsc-56/0xf34f9b3c2fa603486652f12426fcd9614503a7bc/) | MerkleTreeTest | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2528a0...6841ad`](./contracts/bsc-56/0x2528a0a8205b9c937b209ea2878ae375286841ad/) | MerkleTreeTHENFTTest | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x273da6...09a34f`](./contracts/bsc-56/0x273da601356a4e1ef4842ad6db1ca192e209a34f/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31f4bf...82103c`](./contracts/bsc-56/0x31f4bf997973376e62d02f09606c54a94082103c/) | MinterUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x820d13...ed6e40`](./contracts/bsc-56/0x820d132571e112ff6264b0327ba77a7a99ed6e40/) | MythicsNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0a7847...99f5d4`](./contracts/bsc-56/0x0a78471cb73f87ffa1377c3425999ea8ec99f5d4/) | NFTCavePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x67d252...4804b1`](./contracts/bsc-56/0x67d252f051645320339f9a8e26b86b3bf74804b1/) | NFTCavePoolTriple | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3b6c02...5ef964`](./contracts/bsc-56/0x3b6c025d0560a17a0cbafb7ac6bf323eb45ef964/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x27dfd2...fc949d`](./contracts/bsc-56/0x27dfd2d7b85e0010542da35c6ebcd59e45fc949d/) | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x879f8f...760dc8`](./contracts/bsc-56/0x879f8fd307ba4442e22e77d47683f35313760dc8/) | PairFactoryUpgradeable | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2add07...4ce15b`](./contracts/bsc-56/0x2add0701f6827f6f9d824614b4d0fc9e914ce15b/) | PlatinumMonsterNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd6213c...89cd45`](./contracts/bsc-56/0xd6213c2b9944e7619dc47a8b9c958e490989cd45/) | PMOTNftPromo | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x89cfc3...e738e4`](./contracts/bsc-56/0x89cfc378a42ccfb6821f57d4068675da85e738e4/) | PMOTTreasureChestGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20b114...e2b662`](./contracts/bsc-56/0x20b114a66c6021fb1e2fef91abd3b90bbae2b662/) | PMOTTreasureChestGameV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x279e25...9517c2`](./contracts/bsc-56/0x279e2565e19e3daa55c3a3c20fd46a9f019517c2/) | PMOTTreasureChestGameV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13daed...4c384e`](./contracts/bsc-56/0x13daed27e4b5353587a2e7d32f071f02044c384e/) | PMOTTreasureChestGameV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6cf8dd...0ee83e`](./contracts/bsc-56/0x6cf8dd678619bdd84f5ea7d487d75970920ee83e/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e29c0...0413e4`](./contracts/bsc-56/0x4e29c0acf891d35ec12b56140e1c8f45220413e4/) | RewardsDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20a304...ca8431`](./contracts/bsc-56/0x20a304a7d126758dfe6b243d0fc515f83bca8431/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8f097e...58e818`](./contracts/bsc-56/0x8f097e07a07bf2f031e5513f764dafc6df58e818/) | RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x687759...d56916`](./contracts/bsc-56/0x68775950553cf10ee3c8618bca5637796fd56916/) | Royalties | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e0a49...d110c2`](./contracts/bsc-56/0x1e0a496c3bed9d7199a539f010e2efbd03d110c2/) | SimpleAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8861d2...9951c3`](./contracts/bsc-56/0x8861d2a348128cb3edab258254e5265e0b9951c3/) | SimpleAirdropDAO | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcb1c04...38f2bb`](./contracts/bsc-56/0xcb1c0474aa157ae33585bdde7455390ebe38f2bb/) | SimpleAirdropDAO2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ba3ef...77ab2c`](./contracts/bsc-56/0x1ba3ef6e6729c88777159357188395a72f77ab2c/) | SimpleAirdropFNFT | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x89d015...31c076`](./contracts/bsc-56/0x89d0155d12448ab83e6e89c8b5a0f9a4bf31c076/) | SimpleAirdropFNFT2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8e0060...74c143`](./contracts/bsc-56/0x8e006025674039f149249cbd48f341794a74c143/) | Sminem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8812f0...287e29`](./contracts/bsc-56/0x8812f0b82464f58a381a5eae25194a595a287e29/) | SolarFightersNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1fe7d9...ffdc5b`](./contracts/bsc-56/0x1fe7d95aef61fe0ab9f4e31acd506aa337ffdc5b/) | stakingNFTConverterRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1a40a8...ff0d48`](./contracts/bsc-56/0x1a40a8c7d965f3929e0c56bb301ebe82f5ff0d48/) | Strat1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1f042f...1e66ce`](./contracts/bsc-56/0x1f042f2fd6878edcd75f1f1400bc1d53671e66ce/) | StratSwipe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13057e...624910`](./contracts/bsc-56/0x13057e42bbf1b5d980ea79df5549be49ee624910/) | StratVLEV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x098945...b4205d`](./contracts/bsc-56/0x0989454fcf48c66aee3fe8cf4feccae2e9b4205d/) | StratX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc5eb5a...f9eb40`](./contracts/bsc-56/0xc5eb5a3490d2a2e4a1e1c9a1b965b4eef4f9eb40/) | StratX_AUTO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3aa4f1...11e024`](./contracts/bsc-56/0x3aa4f1ad7094d263dad4ead5b8bc09ddc211e024/) | StratX_Pathed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x429c60...87639f`](./contracts/bsc-56/0x429c60346ee8f4577f9ec1329cedd4695787639f/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x081321...0d486d`](./contracts/bsc-56/0x08132180afc971ddfdecd2d6034794e7f20d486d/) | Thena | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x198cdb...aeb04c`](./contracts/bsc-56/0x198cdbb6b93a97a370c52daec8c9c8cbacaeb04c/) | ThenaBasePlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x753f7a...42f691`](./contracts/bsc-56/0x753f7aca2df4f2ef2d47f132d8e25f7f5142f691/) | ThenaUniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x21297f...1dec23`](./contracts/bsc-56/0x21297f1706292874b804bb7d29e995ae551dec23/) | ThenianFeeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa28680...395511`](./contracts/bsc-56/0xa28680645e347a4854e86e35053009891c395511/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2044b1...a023b9`](./contracts/bsc-56/0x2044b1cd18c3794920a041a5811466d0c6a023b9/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5d21fe...cc8afc`](./contracts/bsc-56/0x5d21fec965082e003219c6036844327c2dcc8afc/) | TokenTimelockVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3cb2f8...781a3f`](./contracts/bsc-56/0x3cb2f8f2312ab981c4da6f98735a2af79e781a3f/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0bd32d...0ecf6a`](./contracts/bsc-56/0x0bd32dd59b40f78b7a9e1e629293b596e60ecf6a/) | TradingCompetitionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15f045...1486c7`](./contracts/bsc-56/0x15f045f672c50c2eea9ea73c6a3e2f918f1486c7/) | TradingCompetitionPerpetualFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2066e0...19c7c3`](./contracts/bsc-56/0x2066e0436f23b98d24aa8c80fa5f21a35519c7c3/) | TradingCompetitionPerpetualManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x24888f...82df07`](./contracts/bsc-56/0x24888f2cafcfdd4b0795ce6556234920fb82df07/) | TradingCompetitionSpotFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x60e53b...012ec6`](./contracts/bsc-56/0x60e53b5d4813f240242d804c6dfcc080ad012ec6/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x007e20...0906b9`](./contracts/bsc-56/0x007e208665a0e953a5175d5b4c992b952b0906b9/) | veNFTAPI | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5f6a39...360695`](./contracts/bsc-56/0x5f6a392ab819a7cbfed93c3ae4f9c428c3360695/) | VeTheAutomationFactoryGelato | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8fbb1e...dd0462`](./contracts/bsc-56/0x8fbb1ecebb9e9839bc0de00b9c4c585cabdd0462/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e02ac...369b47`](./contracts/bsc-56/0x4e02accd83c09eaf2ff4b8346ed6a33a7a369b47/) | VoterUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8aebed...05b58d`](./contracts/bsc-56/0x8aebed1f28a8ae1eb6479ddd8b1148da0e05b58d/) | VotingEscrowAttach | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xec88bc...378129`](./contracts/bsc-56/0xec88bc102eb167b47adc0f7fb5c6b897d1378129/) | VotingEscrowAttachMock | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x82f144...57d218`](./contracts/bsc-56/0x82f144accf4779ca8c49928be28fac5fa157d218/) | VotingIncentivesFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x99443a...de8962`](./contracts/bsc-56/0x99443a69d163aeabadcb00c3d04a0ac544de8962/) | WrappedExternalBribeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f7d6f...92a878`](./contracts/bsc-56/0x2f7d6f408b3e7f2c4667055ff5bc33f4c592a878/) | Zap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 215 |
| upstream | 7 |
| standard_library | 20 |
| needs_review | 116 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=72

Zero-match audit list:

- [2581] Hackken

Fork inheritance lineage and inherited audits are included when available.
