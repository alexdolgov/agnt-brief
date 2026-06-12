# Agentic Audit Brief: Blast L2

⚠️ Lifecycle status: UNKNOWN - TVL dropped 32.8% over 90 days

## Project Overview

- Project: Blast L2 (`blast-l2`)
- Website: [https://blast.io/](https://blast.io/)
- Lifecycle: unknown (Tier 0, 98.2% below peak)
- Generated: 2026-06-12T09:09:07.003Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-645a
- Chains: blast, ethereum
- Contract surface: 295 unique implementations (410 raw deployments)
- DeFi Llama TVL: $52,149,812.00
- On-chain TVL (included contracts): $568.85
- TVL by chain: Blast $568.85

## Project Description

Blast L2 is an Ethereum Layer 2 network that provides native yield for ETH and stablecoins through automatic rebasing and yield distribution. It includes a canonical bridge for asset transfers between Ethereum and Blast, and a pre-launch farm that allowed early users to earn yield and points.

### Architecture

The L1 and L2 Blast Contracts form the core bridging infrastructure, with L1 contracts managing asset locking and yield generation, and L2 contracts handling minting and rebasing of yield-bearing tokens. The Token Contracts are tightly integrated with the L2 bridge, as bridged assets are represented by OptimismMintableERC20 tokens, while the Blast Bridge and pre-launch Farm provide auxiliary entry points for early users.

## Audit Coverage Summary

- Verified implementations audited: 0/89 (0.0%)
- Verified + Unaudited implementations: 89
- Verified by bytecode match: 0
- Unverified implementations: 206
- Unique implementations: 295
- Raw deployments: 410
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $568.85
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $568.85 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (89)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GovernanceToken | token | blast | [`0xb1a570...88e2ad`](./contracts/blast-81457/0xb1a5700fa2358173fe465e6ea4ff52e36e88e2ad/) | ⚠️ Unaudited |
| AddressManager | governance | ethereum | [`0xe064b5...7380c0`](./contracts/ethereum-1/0xe064b565cf2a312a3e66fe4118890583727380c0/) | ⚠️ Unaudited |
| AuthGemJoin | unknown | ethereum | 2 deployments: ethereum [`0x636242...522b35`](./contracts/ethereum-1/0x636242be41a84d49ee3d6401ea09dc645f522b35/); ethereum `0xad37fd...136e6b` | ⚠️ Unaudited |
| Blast | unknown | blast | 2 deployments: blast [`0x430000...000002`](./contracts/blast-81457/0x4300000000000000000000000000000000000002/); blast `0xc0d3c0...d30002` | ⚠️ Unaudited |
| CatFab | unknown | ethereum | [`0x7f07f4...ed752f`](./contracts/ethereum-1/0x7f07f426a0c1b400c17a4cb636c8ead7d1ed752f/) | ⚠️ Unaudited |
| CodeHash | unknown | ethereum | [`0x34f211...265221`](./contracts/ethereum-1/0x34f211c70dc1c4bce13dc08db3c0669871265221/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | [`0x13b0d8...e9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| CreateX | unknown | ethereum | 2 deployments: ethereum [`0xba5ed0...8ba5ed`](./contracts/ethereum-1/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/); blast [`0xba5ed0...8ba5ed`](./contracts/blast-81457/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/) | ⚠️ Unaudited |
| DaiJoinFab | unknown | ethereum | 2 deployments: ethereum [`0x64a84e...f27177`](./contracts/ethereum-1/0x64a84e558192dd025f3a96775fee8fb530f27177/); ethereum `0xcf930f...d29b32` | ⚠️ Unaudited |
| DisableLiquidationSpell | unknown | ethereum | [`0x77223a...695165`](./contracts/ethereum-1/0x77223a5a1b31b029dbb8ccaba7304c8217695165/) | ⚠️ Unaudited |
| DsrManager | governance | ethereum | [`0x373238...081ddb`](./contracts/ethereum-1/0x373238337bfe1146fb49989fc222523f83081ddb/) | ⚠️ Unaudited |
| DSRYieldProvider | unknown | ethereum | [`0x0733f6...3681a8`](./contracts/ethereum-1/0x0733f618118bf420b6b604c969498ecf143681a8/) | ⚠️ Unaudited |
| DssDecember27Spell | unknown | ethereum | [`0x94c19e...60a0e1`](./contracts/ethereum-1/0x94c19e029f5a1a115f3b99ad87da24d33e60a0e1/) | ⚠️ Unaudited |
| DssDecember6Spell | unknown | ethereum | [`0xf267ef...86b813`](./contracts/ethereum-1/0xf267efdda842539a2caff990259395188a86b813/) | ⚠️ Unaudited |
| DssDeploy | unknown | ethereum | 2 deployments: ethereum [`0x733be4...1e51a4`](./contracts/ethereum-1/0x733be463128228146485a7e1bf2ece72e91e51a4/); ethereum `0xbaa652...80d3f4` | ⚠️ Unaudited |
| DssDeployPauseProxyActions | unknown | ethereum | 2 deployments: ethereum [`0x6bda13...1a1370`](./contracts/ethereum-1/0x6bda13d43b7edd6cafe1f70fb98b5d40f61a1370/); ethereum `0x92d317...b779b3` | ⚠️ Unaudited |
| DssFebruary7Spell | unknown | ethereum | [`0x8e5f3a...7dd170`](./contracts/ethereum-1/0x8e5f3abc36da63142275202454c11237f47dd170/) | ⚠️ Unaudited |
| DssFlopReplaceSpell | unknown | ethereum | 2 deployments: ethereum [`0x30cfdb...b90863`](./contracts/ethereum-1/0x30cfdb937e46e946b1038397f9cd6fa231b90863/); ethereum `0x902f00...e51a02` | ⚠️ Unaudited |
| DssIncreaseDelay24Spell | unknown | ethereum | 2 deployments: ethereum [`0x1a7d50...c01401`](./contracts/ethereum-1/0x1a7d50b73acf1d2b4073ca5f94890a3c05c01401/); ethereum `0xdd4aa9...34eae9` | ⚠️ Unaudited |
| DssJanuary10Spell | unknown | ethereum | [`0x7a87ac...bd4fc5`](./contracts/ethereum-1/0x7a87acb1f92c50297239ef9b0ef9387105bd4fc5/) | ⚠️ Unaudited |
| DssJanuary24Spell | unknown | ethereum | [`0xf880d4...caee08`](./contracts/ethereum-1/0xf880d43bb9a32dd212c77b82a7336be31ecaee08/) | ⚠️ Unaudited |
| DssJanuary31Spell | unknown | ethereum | [`0x48916a...3b1677`](./contracts/ethereum-1/0x48916a2b11fa7a895426eedf9acf2d70523b1677/) | ⚠️ Unaudited |
| DssJanuary3Spell | unknown | ethereum | [`0x333c05...38e272`](./contracts/ethereum-1/0x333c0501182170c5002219380ded6b12c338e272/) | ⚠️ Unaudited |
| DssLaunchSpell | unknown | ethereum | 2 deployments: ethereum [`0xa710c9...224c6d`](./contracts/ethereum-1/0xa710c994d03943d3f5346a9139c9a61363224c6d/); ethereum `0xf44113...6e202e` | ⚠️ Unaudited |
| DSSpell | unknown | ethereum | 2 deployments: ethereum [`0x365fb0...8ae114`](./contracts/ethereum-1/0x365fb0e024fb179288e3d65c4aadf6f58c8ae114/); ethereum `0xbb7070...41e2c9` | ⚠️ Unaudited |
| DssProxyActions | unknown | ethereum | 2 deployments: ethereum [`0x82ecd1...fd5038`](./contracts/ethereum-1/0x82ecd135dce65fbc6dbdd0e4237e0af93ffd5038/); ethereum `0xee0d5c...9de5d7` | ⚠️ Unaudited |
| DssProxyActionsDsr | unknown | ethereum | 2 deployments: ethereum [`0x07ae5d...0f38b1`](./contracts/ethereum-1/0x07ae5dfd28adf5e408316c01b43a7af0da0f38b1/); ethereum `0x07ee93...e54f26` | ⚠️ Unaudited |
| DssProxyActionsEnd | unknown | ethereum | 3 deployments: ethereum [`0x069b2f...8f1008`](./contracts/ethereum-1/0x069b2fb501b6f16d1f5fe245b16f6993808f1008/); ethereum `0x689e53...779a34`; ethereum `0x7aff9f...74bc57` | ⚠️ Unaudited |
| DssSpell | unknown | ethereum | 49 deployments: ethereum [`0x049e4d...529a32`](./contracts/ethereum-1/0x049e4d10c1b7280cfed5b0d990e39f9c54529a32/); ethereum `0x057d35...3dbd4c`; ethereum `0x0ac7bd...eff495`; ethereum `0x0f449c...c48784`; ethereum `0x127b47...d4bb30`; ethereum `0x1d51ca...341d9b`; ethereum `0x1f3229...5a4d38`; ethereum `0x261086...850362`; ethereum `0x261cac...a72bdc`; ethereum `0x3526a5...baebb8`; ethereum `0x43aac7...b8c006`; ethereum `0x4b46e3...7ed61d`; ethereum `0x4bf6e7...1e31d4`; ethereum `0x4ff025...eabd2c`; ethereum `0x529b8b...86ba00`; ethereum `0x569c1d...401df8`; ethereum `0x64976c...349c9d`; ethereum `0x658ec6...fcdd51`; ethereum `0x6941df...759ac1`; ethereum `0x69ec60...96ed8c`; ethereum `0x7852bb...7422d9`; ethereum `0x7b540c...88c929`; ethereum `0x7f6dcc...e37599`; ethereum `0x84f411...32ff2b`; ethereum `0x872c49...49246e`; ethereum `0x8afa02...a4e0be`; ethereum `0x91e556...9f7589`; ethereum `0x971318...120fb9`; ethereum `0x9ab3ae...05202f`; ethereum `0x9e361d...778140`; ethereum `0x9ef952...454a0d`; ethereum `0xa3fa69...469dec`; ethereum `0xa8692c...f4a75d`; ethereum `0xae6edd...49795a`; ethereum `0xc07d37...5381b0`; ethereum `0xca3b2e...390b52`; ethereum `0xcd989b...d59e33`; ethereum `0xd0dd71...f3a38e`; ethereum `0xd17abf...a3d6da`; ethereum `0xd74cc5...077bd4`; ethereum `0xd77ad9...3376cf`; ethereum `0xd7af28...b94015`; ethereum `0xdb20f2...851fe4`; ethereum `0xe8ccac...b06209`; ethereum `0xeb19d8...aab911`; ethereum `0xf13261...b3902a`; ethereum `0xf67de1...dff75d`; ethereum `0xf8085d...f676da`; ethereum `0xfddeef...9ba659` | ⚠️ Unaudited |
| DssSpell20200221 | unknown | ethereum | 2 deployments: ethereum [`0x2af6ef...47bdc6`](./contracts/ethereum-1/0x2af6ef584c8937fbec4a8f50ae5ed1fe6c47bdc6/); ethereum `0xd24fbb...dc2cad` | ⚠️ Unaudited |
| DSValue | unknown | ethereum | 4 deployments: ethereum [`0x3ec807...0fa602`](./contracts/ethereum-1/0x3ec80729bd472987169485c2076ed0b71e0fa602/); ethereum `0x54003d...44ab1e`; ethereum `0x77b688...6085a0`; ethereum `0xee1383...98f1e5` | ⚠️ Unaudited |
| EnableLiquidationSpell | unknown | ethereum | [`0xd36df1...3d90fd`](./contracts/ethereum-1/0xd36df11cf6855b616a36eadbcf9290f7953d90fd/) | ⚠️ Unaudited |
| ETHYieldManager | bridge_template | ethereum | [`0x98078d...e1c8fe`](./contracts/ethereum-1/0x98078db053902644191f93988341e31289e1c8fe/) | ⚠️ Unaudited |
| FlapFab | unknown | ethereum | [`0x60f941...2c6740`](./contracts/ethereum-1/0x60f941d0b8344f28e03132d0a09fc10b6b2c6740/) | ⚠️ Unaudited |
| FlipFab | unknown | ethereum | 4 deployments: ethereum [`0x4acdbe...974f2b`](./contracts/ethereum-1/0x4acdbe9dd0d00b36ec2050e805012b8fc9974f2b/); ethereum `0x7166ee...4087b8`; ethereum `0xbab4fb...e46fc5`; ethereum `0xf9e436...0953d2` | ⚠️ Unaudited |
| FlipperMom | unknown | ethereum | 2 deployments: ethereum [`0x9bddb9...570f75`](./contracts/ethereum-1/0x9bddb99625a711bf9bda237044924e34e8570f75/); ethereum `0xc4be7f...97f472` | ⚠️ Unaudited |
| FlopFab | unknown | ethereum | [`0x920ff2...928f99`](./contracts/ethereum-1/0x920ff284ce06eef00082acb1e12617188c928f99/) | ⚠️ Unaudited |
| Flopper | unknown | ethereum | [`0x4d95a0...522e99`](./contracts/ethereum-1/0x4d95a049d5b0b7d32058cd3f2163015747522e99/) | ⚠️ Unaudited |
| Gas | unknown | blast | [`0x430000...000001`](./contracts/blast-81457/0x4300000000000000000000000000000000000001/) | ⚠️ Unaudited |
| GemJoin | unknown | ethereum | 8 deployments: ethereum [`0x15d34e...d755b7`](./contracts/ethereum-1/0x15d34eab0fd1d1bf72918914fa3284abeed755b7/); ethereum `0x2f0b23...6b042a`; ethereum `0x3d0b19...1772ca`; ethereum `0x475f1a...59e4a9`; ethereum `0x4bcd9b...09080b`; ethereum `0xa6ea3b...4c0ef9`; ethereum `0xc7e8cd...a7e5d0`; ethereum `0xfced11...b2427f` | ⚠️ Unaudited |
| GemJoin5 | unknown | ethereum | 3 deployments: ethereum [`0x260000...dd0428`](./contracts/ethereum-1/0x2600004fd1585f7270756ddc88ad9cfa10dd0428/); ethereum `0xa191e5...9e84b7`; ethereum `0xbf72da...8d5eb5` | ⚠️ Unaudited |
| GemJoin6 | unknown | ethereum | [`0x4454af...837f44`](./contracts/ethereum-1/0x4454af7c8bb9463203b66c816220d41ed7837f44/) | ⚠️ Unaudited |
| GetCdps | unknown | ethereum | 2 deployments: ethereum [`0x36a724...8ff573`](./contracts/ethereum-1/0x36a724bd100c39f0ea4d3a20f7097ee01a8ff573/); ethereum `0xf69796...71e58b` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 2 deployments: ethereum [`0x4f72ee...c58b05`](./contracts/ethereum-1/0x4f72ee94b8ba3be7f886565d3583a7f636c58b05/); ethereum `0x67ca7c...af608c` | ⚠️ Unaudited |
| GovActions | unknown | ethereum | 2 deployments: ethereum [`0x4f5f09...589b6e`](./contracts/ethereum-1/0x4f5f0933158569c026d617337614d00ee6589b6e/); ethereum `0x6e2795...8ba822` | ⚠️ Unaudited |
| IlkRegistry | registry | ethereum | 2 deployments: ethereum [`0x8b4ce5...e52c24`](./contracts/ethereum-1/0x8b4ce5dcbb01e0e1f0521cd8dcfb31b308e52c24/); ethereum `0xbe4f92...96bd07` | ⚠️ Unaudited |
| ImmutableCreate2Factory | registry | ethereum | 4 deployments: ethereum [`0x000000...439497`](./contracts/ethereum-1/0x0000000000ffe8b47b3e2130213b802212439497/); ethereum `0xcfa3a7...315196`; blast [`0x000000...439497`](./contracts/blast-81457/0x0000000000ffe8b47b3e2130213b802212439497/); blast `0xcfa3a7...315196` | ⚠️ Unaudited |
| Insurance | bridge_template | ethereum | 2 deployments: ethereum [`0xbbe2cd...5fbba6`](./contracts/ethereum-1/0xbbe2cd60bd30ef2aacefd74c3199282ee35fbba6/); ethereum `0xcff70d...6ff873` | ⚠️ Unaudited |
| L1BlastBridge | bridge_template | ethereum | [`0x3a05e5...a49115`](./contracts/ethereum-1/0x3a05e5d33d7ab3864d53aaec93c8301c1fa49115/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | [`0x5d4472...a8e9d0`](./contracts/ethereum-1/0x5d4472f31bd9385709ec61305afc749f0fa8e9d0/) | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | [`0xa45a0c...9c8975`](./contracts/ethereum-1/0xa45a0c7c47db8c6e99b2d7c4939f7f7cf69c8975/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | [`0x697402...bfc524`](./contracts/ethereum-1/0x697402166fbf2f22e970df8a6486ef171dbfc524/) | ⚠️ Unaudited |
| L2BlastBridge | operational_periphery | blast | [`0x430000...000005`](./contracts/blast-81457/0x4300000000000000000000000000000000000005/) | ⚠️ Unaudited |
| L2CrossDomainMessenger | unknown | blast | [`0x420000...000007`](./contracts/blast-81457/0x4200000000000000000000000000000000000007/) | ⚠️ Unaudited |
| L2ERC721Bridge | operational_periphery | blast | [`0x420000...000014`](./contracts/blast-81457/0x4200000000000000000000000000000000000014/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | [`0x826d1b...215c76`](./contracts/ethereum-1/0x826d1b0d4111ad9146eb8941d7ca2b6a44215c76/) | ⚠️ Unaudited |
| L2StandardBridge | operational_periphery | blast | [`0x420000...000010`](./contracts/blast-81457/0x4200000000000000000000000000000000000010/) | ⚠️ Unaudited |
| L2ToL1MessagePasser | unknown | blast | [`0x420000...000016`](./contracts/blast-81457/0x4200000000000000000000000000000000000016/) | ⚠️ Unaudited |
| LaunchBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x5f6ae0...1da47d`](./contracts/ethereum-1/0x5f6ae08b8aeb7078cf2f96afb089d7c9f51da47d/); ethereum `0xa01def...f14276` | ⚠️ Unaudited |
| LidoYieldProvider | unknown | ethereum | [`0x4316a0...1af7db`](./contracts/ethereum-1/0x4316a00d31da1313617dbb04fd92f9ff8d1af7db/) | ⚠️ Unaudited |
| MedianBATUSD | unknown | ethereum | [`0x18b463...294966`](./contracts/ethereum-1/0x18b4633d6e39870f398597f3c1ba8c4a41294966/) | ⚠️ Unaudited |
| MedianBTCUSD | unknown | ethereum | [`0xe0f30c...b5751f`](./contracts/ethereum-1/0xe0f30cb149faadc7247e953746be9bbbb6b5751f/) | ⚠️ Unaudited |
| MedianETHUSD | unknown | ethereum | [`0x64de91...410c85`](./contracts/ethereum-1/0x64de91f5a373cd4c28de3600cb34c7c6ce410c85/) | ⚠️ Unaudited |
| MedianKNCUSD | unknown | ethereum | [`0x83076a...71ad97`](./contracts/ethereum-1/0x83076a2f42dc1925537165045c9fde9a4b71ad97/) | ⚠️ Unaudited |
| MedianZRXUSD | unknown | ethereum | [`0x956ecd...02e55e`](./contracts/ethereum-1/0x956ecd6a9a9a0d84e8eb4e6baac09329e202e55e/) | ⚠️ Unaudited |
| MegaPoker | unknown | ethereum | 6 deployments: ethereum [`0x6b8158...c5bc1c`](./contracts/ethereum-1/0x6b8158d8e848d15ef0305221bb88569abfc5bc1c/); ethereum `0x9885c8...f96f7b`; ethereum `0xbec282...a808b5`; ethereum `0xde9457...bc6b3a`; ethereum `0xe4a37b...3ad7c2`; ethereum `0xf4771e...0d8be0` | ⚠️ Unaudited |
| Merge | unknown | ethereum | [`0x17fef0...319618`](./contracts/ethereum-1/0x17fef0d05ffed818af08ae00bec06b65c4319618/) | ⚠️ Unaudited |
| MigrationProxyActions | operational_periphery | ethereum | 3 deployments: ethereum [`0x23c800...d980a1`](./contracts/ethereum-1/0x23c800e375222693ed593d6308aec08116d980a1/); ethereum `0x2e1f60...2fb426`; ethereum `0xe4b22d...01b674` | ⚠️ Unaudited |
| MintManager | governance | blast | [`0xca2e5b...44af4f`](./contracts/blast-81457/0xca2e5b987f345e5c3cc9d987029a6e19ea44af4f/) | ⚠️ Unaudited |
| MkrAuthority | governance | ethereum | 2 deployments: ethereum [`0x6eeb68...6ddfb8`](./contracts/ethereum-1/0x6eeb68b2c7a918f36b78e2db80dcf279236ddfb8/); ethereum `0xc725e5...8bf13d` | ⚠️ Unaudited |
| Multicall | periphery | ethereum | 2 deployments: ethereum [`0x34f6bb...bcf9dc`](./contracts/ethereum-1/0x34f6bb84bcc8dd2fa157afd03491a053eabcf9dc/); ethereum `0x5e227a...c17796` | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | 2 deployments: ethereum [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/); blast [`0xca11bd...76ca11`](./contracts/blast-81457/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| NrERC20 | token | blast | 2 deployments: blast [`0x96f6b7...23139c`](./contracts/blast-81457/0x96f6b70f8786646e0ff55813621ef4c03823139c/); blast `0xf66f7e...74215e` | ⚠️ Unaudited |
| NrETH | unknown | blast | 2 deployments: blast [`0x9ac0d7...f1ebf3`](./contracts/blast-81457/0x9ac0d74176f5037f8318e00a2d26a512e2f1ebf3/); blast `0x9d020b...eb9af7` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | blast | [`0xf7bc58...1d2692`](./contracts/blast-81457/0xf7bc58b8d8f97adc129cfc4c9f45ce3c0e1d2692/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | blast | 2 deployments: ethereum `0x6b916d...564847`; blast [`0x420000...000012`](./contracts/blast-81457/0x4200000000000000000000000000000000000012/) | ⚠️ Unaudited |
| OptimismMintableERC721Factory | registry | blast | [`0x420000...000017`](./contracts/blast-81457/0x4200000000000000000000000000000000000017/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | [`0x0ec68c...0db6cb`](./contracts/ethereum-1/0x0ec68c5b10f21effb74f2a5c61dfe6b08c0db6cb/) | ⚠️ Unaudited |
| OSM | unknown | ethereum | 6 deployments: ethereum [`0x7382c0...f5cd3c`](./contracts/ethereum-1/0x7382c066801e7acb2299ac8562847b9883f5cd3c/); ethereum `0x806725...078c13`; ethereum `0x81fe72...b85763`; ethereum `0xb4eb54...15abe6`; ethereum `0xf185d0...5c6c42`; ethereum `0xf36b79...c13069` | ⚠️ Unaudited |
| OsmMom | unknown | ethereum | 2 deployments: ethereum [`0x76416a...4aa14f`](./contracts/ethereum-1/0x76416a4d5190d071bfed309861527431304aa14f/); ethereum `0xc96f5e...fef5bb` | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | [`0x2241b3...35e5f7`](./contracts/ethereum-1/0x2241b38558957060c0fe9760794f1b49c535e5f7/) | ⚠️ Unaudited |
| Proxy | unknown | blast | 5 deployments: blast [`0x420000...00000f`](./contracts/blast-81457/0x420000000000000000000000000000000000000f/); blast `0x420000...000015`; blast `0x420000...000022`; blast `0x420000...000023`; blast `0x420000...000024` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 2 deployments: ethereum [`0x364289...3ce883`](./contracts/ethereum-1/0x364289230b8cc7d9120ef962af37ebcfe23ce883/); blast `0x420000...000018` | ⚠️ Unaudited |
| ScdMcdMigration | operational_periphery | ethereum | 2 deployments: ethereum [`0xa91b5e...7101cd`](./contracts/ethereum-1/0xa91b5ef93e6a0ac4ffa7bd573f167dd0357101cd/); ethereum `0xc73e03...0ab849` | ⚠️ Unaudited |
| Shares | unknown | blast | [`0x430000...000000`](./contracts/blast-81457/0x4300000000000000000000000000000000000000/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | [`0x5531dc...f805a9`](./contracts/ethereum-1/0x5531dcff39ec1ec727c4c5d2fc49835368f805a9/) | ⚠️ Unaudited |
| USDB | unknown | blast | 2 deployments: blast [`0x430000...000003`](./contracts/blast-81457/0x4300000000000000000000000000000000000003/); blast `0x4ef0d7...ba737d` | ⚠️ Unaudited |
| USDYieldManager | bridge_template | ethereum | [`0xa23028...828438`](./contracts/ethereum-1/0xa230285d5683c74935ad14c446e137c8c8828438/) | ⚠️ Unaudited |
| WETHRebasing | token | blast | 2 deployments: blast [`0x430000...000004`](./contracts/blast-81457/0x4300000000000000000000000000000000000004/); blast `0x83acb0...465ca5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (206)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x004b75...e25480` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x00efe3...adf889` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x01792e...cb8cd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0256c2...599ad5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x02b3fa...404a83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x034f64...ac780e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x03b030...cfbd74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x03cba5...fcec62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x04ad28...a5b796` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x04e76b...de4a6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x055353...e0d6e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x056032...44d2ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0620d8...f68204` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x065b86...f3c213` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x06895e...0865c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0740c7...e575fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0780e9...078aab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x07cc6a...89a2c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x082c9b...acc306` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0a8ec3...2e2237` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0aa2eb...89d356` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0c6032...26cc9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0ca1c8...5f5ca9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d6291...64619f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1152f2...ce23e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x11539d...264205` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x117b90...48296c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x15d786...1a6ce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1610cc...44002e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16f4c0...8af74d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1765d5...638c6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1863c0...c052f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1978da...b77a8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19a361...30fc3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1a5ee7...3427f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1fb6e6...35a8b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x201c00...e6e85b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2099bc...ac5078` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x210851...90c23f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x21f33c...29d08a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x22d94d...c09e95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x24fe4a...3991dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2546c3...aa45b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x256902...a85266` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x26fad8...909d80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2955e2...da3264` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x29bd95...50d268` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2a35fa...6b4a2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2a3b28...68f93d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2a7dec...7d08c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d76bb...5bedd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e278c...cd372d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2fadcf...834c8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x320216...738817` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x322932...41d328` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3417a5...c1ef82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x34247b...f564f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x36bccd...59f507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3778e3...9cb99d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3c7926...2f8338` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3deeb4...c9c274` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x403689...d788e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4249f9...17c51e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x428b70...39f385` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4447a2...e5e577` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x45f0a9...945cde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x483ce5...02aae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4aa052...5308ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4dbe5f...6d9c58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4f0232...5f8674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4f8834...e80458` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x53e5a0...a65daa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x57843b...ed077c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5887dc...129547` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x599dbc...be11fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b0c7c...cf7e3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b79ee...edd190` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b9579...646615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x610165...afeaae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6157f6...470aa4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x618b9f...b7d3af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x61cc20...666e34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x624f4e...840c00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6374dc...88b94d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x638242...301f12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63a4b9...7af934` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x656540...efa7bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x68322c...ba423b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x683ee6...a81adf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6897ec...aff0f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x697f01...5f616d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x69be6c...35fb59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6a94dc...99681e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6b8721...7f0553` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c42e6...edd885` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6df6b0...4d5caf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e2981...3fd20d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e38f5...ccb3bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x701311...914e47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x718df1...d7322f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x72f7da...3fe0fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x745669...f61c58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x75a6a8...28d501` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x77bef2...7348e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78604e...e9f8b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a0d94...406d12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7af1cf...a8de22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7b21c3...e031db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x812325...841ec3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x81576c...0922c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x822d49...c06557` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8269f0...f8bca4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x842c99...2e81c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8487f0...722a22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x849186...cfc056` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x84f2b4...a4ee91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x877fd5...8c3ec7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x878228...8956ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88d7b9...f55617` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8b50dd...931c44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8c9edf...ab0e2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8cc001...1f7273` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8cd969...b039be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x901473...403961` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x90365c...c6d906` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x90bb56...c2f8bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x920f55...68ce06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x942e30...7ea1a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x962d55...9aa468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x966ab3...8d3ada` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9c226c...b001e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9c4adf...0b61bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9c89c8...93a7c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d3ad1...726825` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f2944...321d03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9fef11...c72d32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa0e992...013ca8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa38a89...03ec94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa4b041...b99596` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5a786...1facdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa80e81...e29036` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa85b2a...7c36f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa9ee75...c9433e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xab5683...095c7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaf9478...cd0bb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaf9993...2b0b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb45c64...c4e5fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5327f...f97ff8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5b06a...7c58fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5c3db...d5185a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5cca0...4daabb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb80df2...c164e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc4f05...595c1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbdd1af...f3621b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbe23ed...7927e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbe2873...565466` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbe3505...662f59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbe7e4e...86c8cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbf29e4...ae301c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc41c47...4f5d28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc456c0...77cb2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc687ad...da962c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc90730...2abd6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc9a7a6...fe632f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb0e6b...6e2288` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd5c1a...6627d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcef92c...fef6fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcf0fa7...387e08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd1f8f6...054aa1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd27a5f...c882e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd37572...eb4cef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd3abc8...a766e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd59fa5...94adc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd886dc...f071af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9d327...514dd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdb7d25...b4511c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdc202b...80d2cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xde1069...3847e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdedd12...457410` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdfda04...840d0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe02db8...85b4a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe32c45...e38dd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5401e...478c22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5f57f...65120f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe82a80...cfc169` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe865e6...a03a4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe8b6f2...976fbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xedcbe7...106b4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef8f24...132c6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf0ffd5...1b396a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf15ca8...af4f82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf204fd...1c82fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf238e4...6e03b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf28d71...6ac226` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf2fb84...73a2b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfbf89b...f5d73b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfcd647...3d0470` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd34e2...30ba53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfdaeb1...9a91b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe622c...6eabdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xff7bb1...94e392` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xffd852...a900cc` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x13b0d8...e9bef2` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7a0d94...406d12` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0xb1a570...88e2ad`](./contracts/blast-81457/0xb1a5700fa2358173fe465e6ea4ff52e36e88e2ad/) | GovernanceToken | token | $568.85 | Verified native implementation with $568.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0733f6...3681a8`](./contracts/ethereum-1/0x0733f618118bf420b6b604c969498ecf143681a8/) | DSRYieldProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d4472...a8e9d0`](./contracts/ethereum-1/0x5d4472f31bd9385709ec61305afc749f0fa8e9d0/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x9ac0d7...f1ebf3`](./contracts/blast-81457/0x9ac0d74176f5037f8318e00a2d26a512e2f1ebf3/) | NrETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xf7bc58...1d2692`](./contracts/blast-81457/0xf7bc58b8d8f97adc129cfc4c9f45ce3c0e1d2692/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 11 |
| standard_library | 9 |
| needs_review | 270 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
