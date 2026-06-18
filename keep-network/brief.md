# Agentic Audit Brief: KEEP Network

⚠️ Lifecycle status: DECLINING - TVL dropped 1.4% over 90 days

## Project Overview

- Project: KEEP Network (`keep-network`)
- Website: [https://app.threshold.network/](https://app.threshold.network/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-18T01:01:51.715Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-ac25
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 187 unique implementations (688 raw deployments)
- DeFi Llama TVL: $1,078,821.56
- On-chain TVL (included contracts): $24,655,565.20
- TVL by chain: Ethereum $24,655,565.20

## Project Description

Legacy KEEP / Threshold-tBTC ecosystem associated with tBTC Bitcoin minting and redemption. The project should be treated as a legacy or merged KEEP/Threshold-tBTC record rather than as a dead site with no functionality, with contract and audit scope split between legacy KEEP, Threshold, tBTC L1, and tBTC L2 deployments where applicable.

### Architecture

The tBTC L1 contracts serve as the hub for Bitcoin bridging, with L2 families (Arbitrum, Base) and Starknet using Wormhole gateways and depositor/redeemer contracts to extend tBTC minting and redemption cross-chain. The KEEP Network family provides legacy staking and token infrastructure that underpins the security model, while Threshold Contracts represent the governance token layer.

## Contract Surface Quality

- Indexed contracts: 1095; live-surface contracts included: 688 (152 live, 536 unknown).
- Excluded by liveness: 319 inactive, 88 singleton, 0 uninitialized.
- Deployment units: 18/57 live.
- Detected codebases: none
- Dependencies extracted: 20; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 7/110 (6.4%)
- Verified + Unaudited implementations: 102
- Verified by bytecode match: 1
- Unverified implementations: 77
- Unique implementations: 187
- Raw deployments: 688
- Audits discovered: 18
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $24,655,565.20
- Latest audit: 2025-11 (fresh)
- Staleness: 6 fresh, 1 aging, 11 stale, 0 unknown
- Tier 1 coverage: 2.7% (ChainSecurity, ConsenSys Diligence)
- Note: This protocol is classified as [declining]. ASD of $24,655,565.20 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Least Authority | Tier 2 | 3 | 2.7% | 2023-08 |
| ChainSecurity | Tier 1 | 2 | 1.8% | 2021-11 |
| Consensys Diligence | Tier 1 | 2 | 1.8% | 2020-03 |
| Thesis Defense | Tier 2 | 2 | 1.8% | 2024-04 |
| CertiK | Tier 2 | 1 | 0.9% | 2021-11 |
| LeastAuthority | Tier 2 | 1 | 0.9% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | operational_periphery | ethereum | n/a | 11 deployments: ethereum [`0x13de6b...2402cc`](./contracts/ethereum-1/0x13de6b121ade8e3c0dc016d63cbd5e2ab22402cc/); ethereum `0x51768b...5786cc`; ethereum `0x524db6...4a20c2`; ethereum `0x57e19e...ddf266`; ethereum `0x84e08e...c638e6`; ethereum `0x8ce200...ad1ce7`; ethereum `0xb0e9a7...0c9d96`; ethereum `0xd07298...201751`; ethereum `0xd0b1b7...63bd24`; ethereum `0xe845f4...3d6162`; ethereum `0xe88f95...6091cf` | ✅ Audited |
| Deposit | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9c6ada...768739`](./contracts/ethereum-1/0x9c6ada0bed100b0807779e2518e1638277768739/); ethereum `0xe56836...84fc4b`; ethereum `0xe83bcc...79fe02` | ✅ Audited |
| L1BitcoinDepositor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8e261d...56a99c`](./contracts/ethereum-1/0x8e261d2a1966e2329c161c1ec2a6e4686056a99c/); ethereum `0xff79fc...a64db1` | ✅ Audited |
| Redemption | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1b0534...d7e29d`](./contracts/ethereum-1/0x1b0534bc3f43b11ebde71f0fc68cf61df4d7e29d/); ethereum `0x1d1385...56e9a4`; ethereum `0x713f58...dceb35`; ethereum `0xa7fed1...2f5d0d` | ✅ Audited |
| T | unknown | ethereum | n/a | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | ✅ Audited |
| TBTC | unknown | ethereum | n/a | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ✅ Audited |
| TokenStaking | token | ethereum | n/a | [`0xf6c544...98259e`](./contracts/ethereum-1/0xf6c54455f01e03f8ff992e2a6aaae5349898259e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (102)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KeepToken | token | ethereum | n/a | [`0x85eee3...09afec`](./contracts/ethereum-1/0x85eee30c52b0b379b046fb0f85f4f3dc3009afec/) | ⚠️ Unaudited |
| TokenPool | core_logic | ethereum | n/a | [`0xcf9166...089ff1`](./contracts/ethereum-1/0xcf916681a6f08fa22e9ef3e665f2966bf3089ff1/) | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | ethereum | n/a | 24 deployments: ethereum [`0x73aeb5...3d90c1`](./contracts/ethereum-1/0x73aeb5eca03ad587b8fdcc2b61f9fb4d2e3d90c1/); ethereum `0x8272db...ba413a`; ethereum `0x8291a8...9f3b06`; ethereum `0x82df5c...db012b`; ethereum `0x923f27...c3ee81`; ethereum `0xa00853...00cd91`; ethereum `0xa35304...16c215`; ethereum `0xa370ce...7574da`; ethereum `0xa82a87...eaf858`; ethereum `0xa904b9...19d000`; ethereum `0xa96787...9d349b`; ethereum `0xb5f146...8e0c80`; ethereum `0xb85453...19d7ba`; ethereum `0xc22919...570df4`; ethereum `0xc43c01...778df2`; ethereum `0xc456ea...56cd29`; ethereum `0xcc75c8...c8fa14`; ethereum `0xcd69c1...322733`; ethereum `0xd0b84f...d48595`; ethereum `0xd1b301...af49de`; ethereum `0xdca0a2...add6d0`; ethereum `0xde04b3...dd19df`; ethereum `0xe2f0da...93e366`; ethereum `0xf84bf7...15fa72` | ⚠️ Unaudited |
| Allowlist | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0f7191...74591b`](./contracts/ethereum-1/0x0f7191df5430c2b43f0cfaf9b444deb57c74591b/); ethereum `0x89c2f7...43cb2e`; ethereum `0x9b3342...170a2c`; ethereum `0xd6b1fe...5c6e2d` | ⚠️ Unaudited |
| AllVerifiers | periphery | ethereum | n/a | [`0xa67821...9da086`](./contracts/ethereum-1/0xa67821bc089b4374e8d62475526e7e84f09da086/) | ⚠️ Unaudited |
| ArbitrumWormholeGatewayUpgraded | unknown | arbitrum | unit-33680 | [`0x1293a5...a15458`](./contracts/arbitrum-42161/0x1293a54e160d1cd7075487898d65266081a15458/) | ⚠️ Unaudited |
| ARM | unknown | ethereum | n/a | [`0x8b63b3...91fa1b`](./contracts/ethereum-1/0x8b63b3de93431c0f756a493644d128134291fa1b/) | ⚠️ Unaudited |
| Bank | unknown | ethereum | n/a | [`0x65fbae...9d9fc6`](./contracts/ethereum-1/0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6/) | ⚠️ Unaudited |
| BaseWormholeGatewayUpgraded | unknown | base | unit-33674 | [`0x099597...599eab`](./contracts/base-8453/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| BatchWithdraw | operational_periphery | ethereum | n/a | [`0x613d08...7a8964`](./contracts/ethereum-1/0x613d088f2e5a2ed91635016483dafa3cd47a8964/) | ⚠️ Unaudited |
| BridgeGovernance | operational_periphery | ethereum | n/a | [`0xcbcfa3...2cc0cf`](./contracts/ethereum-1/0xcbcfa3eb5e067173b262ace62f9dd87f1d2cc0cf/) | ⚠️ Unaudited |
| BTCDepositorWormhole | unknown | ethereum | unit-33659 | [`0xb810ab...2a341a`](./contracts/ethereum-1/0xb810abd43d8fcfd812d6feb14fefc236e92a341a/) | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | ethereum | n/a | 21 deployments: ethereum [`0x7559a8...2128ca`](./contracts/ethereum-1/0x7559a84ae7b75f4b0e0e540312a3ec912b2128ca/); ethereum `0x781964...dad288`; ethereum `0x80cc10...7de2d4`; ethereum `0x80e2dc...e4cfb8`; ethereum `0x8300e8...a6b12d`; ethereum `0x8bcd7e...ae9062`; ethereum `0x8c6028...422e56`; ethereum `0x9797e8...d828e6`; ethereum `0x9c6a6e...27e1dd`; ethereum `0xa17698...0701e7`; ethereum `0xba0e1c...c824c3`; ethereum `0xbf7cb6...dc0982`; ethereum `0xc62c31...1aad3e`; ethereum `0xcd196d...c73526`; ethereum `0xd72f70...87c66c`; ethereum `0xd8f734...66c351`; ethereum `0xdc85b5...8641a2`; ethereum `0xde71a0...e86f12`; ethereum `0xeae89e...669b73`; ethereum `0xf0d19c...7be823`; ethereum `0xf5224e...dcde99` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | core_logic | ethereum | n/a | 15 deployments: ethereum [`0x8315bb...27336e`](./contracts/ethereum-1/0x8315bbe2b2828559ceecccbcb4550a466227336e/); ethereum `0x8ac682...a158d7`; ethereum `0x8c9015...66b760`; ethereum `0x8ee289...46a4a5`; ethereum `0x916d7d...866d44`; ethereum `0x9f02c1...b6d06c`; ethereum `0xc1d8f2...25d91a`; ethereum `0xc4abcd...4f5f58`; ethereum `0xc576d8...de5b73`; ethereum `0xce8342...098fde`; ethereum `0xcfd063...df23c4`; ethereum `0xe58edb...0a6a84`; ethereum `0xe727f7...dad811`; ethereum `0xe9bfb4...ac54ac`; ethereum `0xea5fd7...86ada1` | ⚠️ Unaudited |
| CairoBootloaderProgram | adapter | ethereum | n/a | 5 deployments: ethereum [`0x192292...8a8636`](./contracts/ethereum-1/0x192292817680196a0215a50b07d1c5e7ab8a8636/); ethereum `0x24105e...a24a47`; ethereum `0xb4c61d...a26a40`; ethereum `0xdf0b63...d1d917`; ethereum `0xfa93ca...3b4a20` | ⚠️ Unaudited |
| CallProxy | unknown | ethereum | n/a | [`0x3597c5...2f9feb`](./contracts/ethereum-1/0x3597c5cbcbcb30079a0bd2a68cde5f98272f9feb/) | ⚠️ Unaudited |
| CommitStore | unknown | ethereum | n/a | 73 deployments: ethereum [`0x013467...5e9084`](./contracts/ethereum-1/0x01346721418045a6c07b71052e452ef8615e9084/); ethereum `0x0428df...b587de`; ethereum `0x0d26ba...052045`; ethereum `0x0f254e...a380d7`; ethereum `0x0f5552...2bbe75`; ethereum `0x0f89c7...c52959`; ethereum `0x10d561...945c75`; ethereum `0x180776...3f5633`; ethereum `0x1bddba...0533b9`; ethereum `0x27a4e7...9926fb`; ethereum `0x2aa101...a007ce`; ethereum `0x38a806...c43271`; ethereum `0x3f1c35...4c4527`; ethereum `0x459154...f1e5d0`; ethereum `0x4b50cd...ee3282`; ethereum `0x52275d...01f694`; ethereum `0x57b548...3fb9b3`; ethereum `0x57d6cd...3dd114`; ethereum `0x5fd81c...2e15ff`; ethereum `0x607c09...8f128c`; ethereum `0x67b972...a00b90`; ethereum `0x681827...703248`; ethereum `0x6c8b96...4bf4b9`; ethereum `0x6f4abc...c5bf75`; ethereum `0x6fe6f7...29d0a4`; ethereum `0x700b6a...794e02`; ethereum `0x70ac0f...27006a`; ethereum `0x762648...7f190e`; ethereum `0x7986c9...70a5fd`; ethereum `0x807dd6...799a04`; ethereum `0x831097...540c8f`; ethereum `0x83f3da...30250d`; ethereum `0x8705f7...646159`; ethereum `0x87c55d...793d75`; ethereum `0x8a1680...f8a2cf`; ethereum `0x8befca...dc11a0`; ethereum `0x8c3805...cf8555`; ethereum `0x8d846b...77b1ab`; ethereum `0x8dc27d...9bae04`; ethereum `0x8fc54e...e9e262`; ethereum `0x913a2a...ddc04b`; ethereum `0x95deb0...b82d64`; ethereum `0x98d0f8...a67ed9`; ethereum `0x9b2eed...1b7749`; ethereum `0x9b9ec8...83dcdb`; ethereum `0x9d93d5...794f8a`; ethereum `0x9f592c...d705cd`; ethereum `0xa4755c...110320`; ethereum `0xa48269...536d1c`; ethereum `0xa4d264...e3f194`; ethereum `0xa58818...3741b9`; ethereum `0xa9f9bf...a9a2b8`; ethereum `0xac0c6e...9cfd3e`; ethereum `0xaffa4f...643e46`; ethereum `0xbaf669...fc4cb7`; ethereum `0xc46890...56ad8d`; ethereum `0xc5164a...224f9f`; ethereum `0xd07926...d40235`; ethereum `0xd2428f...a6cd99`; ethereum `0xd37a60...beeb76`; ethereum `0xd8f93a...bff802`; ethereum `0xd9d3d9...c3da72`; ethereum `0xdac3a8...205ffe`; ethereum `0xdb156e...6e627c`; ethereum `0xdcf6f2...954110`; ethereum `0xe41677...7470a6`; ethereum `0xf19173...fd4793`; ethereum `0xf28f73...a6a62f`; ethereum `0xf7b343...e75ed3`; ethereum `0xf7d68c...bb8f02`; ethereum `0xfa94e5...7eb210`; ethereum `0xfacfe8...551fd6`; ethereum `0xfe73bc...fb0165` | ⚠️ Unaudited |
| Committee | unknown | ethereum | n/a | 2 deployments: ethereum [`0x23cab3...9494e4`](./contracts/ethereum-1/0x23cab3cf1aa7b929df5e9f3712aca3a6fb9494e4/); ethereum `0x724908...0cf800` | ⚠️ Unaudited |
| CoveragePool | core_logic | ethereum | n/a | [`0x7d7b62...6d811a`](./contracts/ethereum-1/0x7d7b622c07f216d99efc3efb9cf71872f46d811a/) | ⚠️ Unaudited |
| CpuConstraintPoly | unknown | ethereum | n/a | 27 deployments: ethereum [`0x1bde14...7d4420`](./contracts/ethereum-1/0x1bde14b50e7daed71ee14f7e8defaa3d8a7d4420/); ethereum `0x2c9726...ab01a1`; ethereum `0x3e727f...b16eba`; ethereum `0x70fbec...817ee5`; ethereum `0x76815d...71c7dc`; ethereum `0x86abf7...8cda46`; ethereum `0x89b7a7...3edf20`; ethereum `0x943248...1378eb`; ethereum `0x9a62fa...2d31a9`; ethereum `0x9ddb8a...10ae6f`; ethereum `0xa9bac6...dc2dae`; ethereum `0xb195c6...d36b67`; ethereum `0xb62dc4...2fb15a`; ethereum `0xbe8bd7...2bc447`; ethereum `0xc39380...287f7b`; ethereum `0xc716c4...39dbd8`; ethereum `0xcd96f4...17cf02`; ethereum `0xcf8278...5235a1`; ethereum `0xd0aade...0d7418`; ethereum `0xd48801...afc064`; ethereum `0xd8c397...658aad`; ethereum `0xd8e473...cc81e5`; ethereum `0xdd4cbe...5b5253`; ethereum `0xe1a0b8...a8f79d`; ethereum `0xe4937a...a9b103`; ethereum `0xe5313f...920cac`; ethereum `0xf9b6a4...fb7ed8` | ⚠️ Unaudited |
| CpuFrilessVerifier | periphery | ethereum | n/a | 28 deployments: ethereum [`0x015381...442cd6`](./contracts/ethereum-1/0x015381651f240ed6c44122dcba6cf807c9442cd6/); ethereum `0x0cd0cd...ca5cdc`; ethereum `0x2867a4...109b6b`; ethereum `0x30f3ab...70419b`; ethereum `0x6a6779...803f11`; ethereum `0x715740...53a26d`; ethereum `0x78af2b...78c590`; ethereum `0x7c8643...961cd3`; ethereum `0x7e7a7b...84bf29`; ethereum `0x805594...e3d22b`; ethereum `0x8488e8...cbe57b`; ethereum `0x8e2009...1ef188`; ethereum `0x8fe004...7ce85f`; ethereum `0x9e614a...f2bd21`; ethereum `0xaa2c9c...ef11b9`; ethereum `0xaaae0e...179f8a`; ethereum `0xab8c1a...c31934`; ethereum `0xbb06a8...a78c0d`; ethereum `0xbe0f8f...8caef3`; ethereum `0xbf8d12...7d26cc`; ethereum `0xc879af...7f31e3`; ethereum `0xd0fc19...9d88b4`; ethereum `0xd2fb1b...67f56b`; ethereum `0xe15515...1303ff`; ethereum `0xe5efcd...97b549`; ethereum `0xe9664d...8d0e24`; ethereum `0xec7195...48098d`; ethereum `0xffc797...476b44` | ⚠️ Unaudited |
| CpuOods | unknown | ethereum | n/a | 30 deployments: ethereum [`0x35e9f6...83e7cb`](./contracts/ethereum-1/0x35e9f63efc97e008f3f9097ea3293b540483e7cb/); ethereum `0x704dff...53607f`; ethereum `0x73bab6...ac9d90`; ethereum `0x7902d5...e5fe9a`; ethereum `0x7ca020...af135e`; ethereum `0x7f1b43...a5f823`; ethereum `0x8518f4...5b17fe`; ethereum `0x88ba01...f715c1`; ethereum `0x89cadc...2eac4d`; ethereum `0x8f3af1...dc4775`; ethereum `0x97d4df...221449`; ethereum `0x99480b...dc3595`; ethereum `0xa40115...7bb766`; ethereum `0xa4d0bb...e15dd4`; ethereum `0xa9db7b...080f23`; ethereum `0xac6250...fe3ac0`; ethereum `0xae325c...ac2707`; ethereum `0xb2e7bc...3ca19f`; ethereum `0xb64093...5cd4dc`; ethereum `0xc47097...347288`; ethereum `0xc9e067...5ceed3`; ethereum `0xcc80e9...4bf2a4`; ethereum `0xd566ae...1d162f`; ethereum `0xd5700c...8d2a40`; ethereum `0xd67c67...014faa`; ethereum `0xdc2c54...aeae84`; ethereum `0xe709eb...7e7b6f`; ethereum `0xe72ebf...235af7`; ethereum `0xed2199...32ee8e`; ethereum `0xf9ee3f...e639b1` | ⚠️ Unaudited |
| DelayedExecutor | unknown | ethereum | n/a | [`0xff50d1...c2cc70`](./contracts/ethereum-1/0xff50d164e42da7bb558c1e88afe0bd66e8c2cc70/) | ⚠️ Unaudited |
| EcdsaPointsXColumn | unknown | ethereum | n/a | 3 deployments: ethereum [`0x87945d...eeca21`](./contracts/ethereum-1/0x87945d417fa023ae001572e57980b4b2e6eeca21/); ethereum `0xa3da16...74b9ce`; ethereum `0xcb799c...a0286b` | ⚠️ Unaudited |
| EcdsaPointsYColumn | unknown | ethereum | n/a | 5 deployments: ethereum [`0x9e4fdd...37ecc1`](./contracts/ethereum-1/0x9e4fdd8ff1b11e8f788af77caa4b0037c137ecc1/); ethereum `0xc354c1...098333`; ethereum `0xca59f6...3abf29`; ethereum `0xcaea50...62c771`; ethereum `0xe3929e...46b716` | ⚠️ Unaudited |
| Escrow | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xbfadac...48d90b`](./contracts/ethereum-1/0xbfadac08e7e94e3a5162371bc68b17731048d90b/); ethereum `0xfea178...e5f869` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | ethereum | n/a | 76 deployments: ethereum [`0x0f1b1a...2e4ba2`](./contracts/ethereum-1/0x0f1b1a46adeadf3c0d583ac86f40bc9e0b2e4ba2/); ethereum `0x109c66...dcd9fe`; ethereum `0x26a101...340fc3`; ethereum `0x330349...f65e61`; ethereum `0x332761...cb2b26`; ethereum `0x34eec7...24a604`; ethereum `0x3b45dd...75ef58`; ethereum `0x3c5990...4210c1`; ethereum `0x3c672f...8edc09`; ethereum `0x418dcb...79fbb4`; ethereum `0x467653...4cf214`; ethereum `0x49aac6...1f8edd`; ethereum `0x4bc602...225419`; ethereum `0x4e4003...1950d6`; ethereum `0x559c32...a5f48d`; ethereum `0x562a20...6d1d3b`; ethereum `0x5b6d29...5eaca5`; ethereum `0x5b859e...1da7ec`; ethereum `0x5e24de...8c559f`; ethereum `0x5eda68...97c3f4`; ethereum `0x64a5c6...88578b`; ethereum `0x66d84f...8d7c12`; ethereum `0x6868fe...563d69`; ethereum `0x6b4b63...5a9ebd`; ethereum `0x70c705...49c2ec`; ethereum `0x7115f0...5ea175`; ethereum `0x718672...d704a3`; ethereum `0x720ea8...b6ff81`; ethereum `0x794ae3...a5ce96`; ethereum `0x7a82d2...23666d`; ethereum `0x7afe70...b9171c`; ethereum `0x7e4c90...91f656`; ethereum `0x82dae1...d3a0fc`; ethereum `0x8693cd...6580c1`; ethereum `0x8b3eee...5018b8`; ethereum `0x8efae6...91f3e2`; ethereum `0x8fee86...594b28`; ethereum `0x92fbcf...9da04f`; ethereum `0x9a3ed7...20528d`; ethereum `0x9cbba1...18a90e`; ethereum `0x9de971...711988`; ethereum `0x9f0e81...d55181`; ethereum `0xa627f2...f758f0`; ethereum `0xa77c14...dc8f3b`; ethereum `0xa8c12a...992a14`; ethereum `0xaa0da3...b1769b`; ethereum `0xae2a2a...c437f0`; ethereum `0xb09590...f20bf7`; ethereum `0xb0f5b6...ec414f`; ethereum `0xb368c8...d143bf`; ethereum `0xb45cf8...b8d977`; ethereum `0xb57d52...56dd8f`; ethereum `0xbdd822...93fe72`; ethereum `0xc0c8d7...ef120d`; ethereum `0xc1ecce...9a1bf2`; ethereum `0xc71766...33ee94`; ethereum `0xc876d5...482f9c`; ethereum `0xcdca3f...96d7e4`; ethereum `0xce6364...f702e8`; ethereum `0xd50836...4dfd46`; ethereum `0xd98e80...19bfbb`; ethereum `0xde6608...bc8079`; ethereum `0xde81f1...ea57ac`; ethereum `0xdf615e...245ac9`; ethereum `0xdf85c8...cddfb3`; ethereum `0xdfd8c3...b768a4`; ethereum `0xe79705...962162`; ethereum `0xe8af3b...f09b92`; ethereum `0xe93ec2...7d47d4`; ethereum `0xefc4a1...286f4d`; ethereum `0xf2eb4c...a8656a`; ethereum `0xf3ac96...d3b7f9`; ethereum `0xf4468e...1ea9ae`; ethereum `0xfb0422...e28783`; ethereum `0xfc92c3...f0f0a3`; ethereum `0xff51c0...09cd24` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | ethereum | n/a | 53 deployments: ethereum [`0x70b2b3...bca65d`](./contracts/ethereum-1/0x70b2b3430c41ba19e20f57cae23c3c619cbca65d/); ethereum `0x741599...8e9f90`; ethereum `0x74cb66...e77931`; ethereum `0x75d536...49b84e`; ethereum `0x7b78f8...180a2b`; ethereum `0x7c32c6...e18bb2`; ethereum `0x7d7c49...2557b3`; ethereum `0x8469b5...a7d0df`; ethereum `0x86768e...c8d486`; ethereum `0x86b47d...5549d1`; ethereum `0x8b858e...f117ec`; ethereum `0x91d25a...ebfa69`; ethereum `0x925228...44a22c`; ethereum `0x948306...0b480d`; ethereum `0x9557b1...9aa1e0`; ethereum `0x992470...9946e7`; ethereum `0x9b14ae...8a365b`; ethereum `0x9cb0ff...9747d3`; ethereum `0xa32f81...0ebe94`; ethereum `0xa5ef33...8264ac`; ethereum `0xa6d806...8ccb48`; ethereum `0xab6066...4a10d0`; ethereum `0xafd31c...249d8a`; ethereum `0xb8a882...431937`; ethereum `0xba1aa2...653332`; ethereum `0xbeffef...886c42`; ethereum `0xc46e2f...4abf88`; ethereum `0xc5dbe2...ca3fc2`; ethereum `0xcaea22...d4b133`; ethereum `0xcb18b1...4be4c8`; ethereum `0xcbe7e5...a4e2c4`; ethereum `0xcc19bc...7780b0`; ethereum `0xccf971...f3672b`; ethereum `0xd0b5fc...282cf2`; ethereum `0xd1cc3a...cb2ac3`; ethereum `0xd54c93...95a89f`; ethereum `0xd8e872...b2e252`; ethereum `0xdaa386...016819`; ethereum `0xdb6ebb...4f19b6`; ethereum `0xdc5b57...b50844`; ethereum `0xddf4b4...0d234b`; ethereum `0xdefead...6423cc`; ethereum `0xdf1d7f...9f3b24`; ethereum `0xe2c2ab...4dadf7`; ethereum `0xe2eb22...60fe73`; ethereum `0xea6d4a...086f82`; ethereum `0xed5be9...2e3cfa`; ethereum `0xeee2ae...34a8e2`; ethereum `0xf50b9a...30f6f0`; ethereum `0xf538da...58cfd4`; ethereum `0xff31c8...a872db`; ethereum `0xffbd6b...2aa389`; ethereum `0xffbec4...bc4330` | ⚠️ Unaudited |
| FinalizableCommittee | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4e0e46...7de611`](./contracts/ethereum-1/0x4e0e46fc2b9a9809dce23ce2d9a1d6eede7de611/); ethereum `0x8b3a66...7ca818`; ethereum `0xbe360d...67594f` | ⚠️ Unaudited |
| FinalizableGpsFactAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x86b939...c7bb56`](./contracts/ethereum-1/0x86b939ff9bb3cc5cd9c7b57d298d6d20b4c7bb56/); ethereum `0xe741e2...7fb953`; ethereum `0xf23754...46053c` | ⚠️ Unaudited |
| ForcedActions | unknown | ethereum | n/a | [`0x9f862b...ae2bde`](./contracts/ethereum-1/0x9f862baa13303163018e71e7a252851fccae2bde/) | ⚠️ Unaudited |
| FriStatementContract | unknown | ethereum | n/a | 4 deployments: ethereum [`0x30efaa...93d400`](./contracts/ethereum-1/0x30efaaa99f8efe310d9fdc83072e2a04c093d400/); ethereum `0x98871e...19f0cf`; ethereum `0xcdf95e...0a8806`; ethereum `0xdef8a3...df44fb` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | unit-33676 | [`0x518385...cd3bfc`](./contracts/base-8453/0x518385dd31289f1000fe6382b0c65df4d1cd3bfc/) | ⚠️ Unaudited |
| GpsFactRegistryAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0xacf6a4...e93f94`](./contracts/ethereum-1/0xacf6a4ae18a30521ea5aed482823eb5c9ce93f94/); ethereum `0xbcc174...7cedb1`; ethereum `0xe8a480...32f414` | ⚠️ Unaudited |
| GpsStatementVerifier | periphery | ethereum | n/a | 10 deployments: ethereum [`0x13e120...b0d934`](./contracts/ethereum-1/0x13e120f6c8e747983f7aaf0f7731796bfcb0d934/); ethereum `0x5c1ce4...e3a9fe`; ethereum `0x7da122...2e3ff7`; ethereum `0x9069a5...e369ff`; ethereum `0x9fb7f4...751942`; ethereum `0xac09e9...8e1408`; ethereum `0xd51a3d...4dd8df`; ethereum `0xde7632...8aa170`; ethereum `0xe67515...86b406`; ethereum `0xfe5e5b...2b0066` | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | registry | ethereum | n/a | [`0x099597...599eab`](./contracts/ethereum-1/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| L1BTCDepositorWormholeV2Arbitrum | unknown | ethereum | unit-33649 | [`0x75a6e4...2c619a`](./contracts/ethereum-1/0x75a6e4a7c8faa162192fad6c1f7a6d48992c619a/) | ⚠️ Unaudited |
| L1BTCDepositorWormholeV2Base | unknown | ethereum | unit-33634 | [`0x186d04...00a1fe`](./contracts/ethereum-1/0x186d048097c7406c64efb0537886e3cae100a1fe/) | ⚠️ Unaudited |
| L1BTCRedeemerWormhole | unknown | ethereum | unit-33642 | [`0x5aab7e...93b3f8`](./contracts/ethereum-1/0x5aab7eabd63b2222b07442f04ca874366193b3f8/) | ⚠️ Unaudited |
| L1BTCRedeemerWormhole | unknown | ethereum | unit-33644 | [`0x5d4d83...23dbde`](./contracts/ethereum-1/0x5d4d83aab53b7e7ca915aeb2d4d3f4e03823dbde/) | ⚠️ Unaudited |
| L1BTCRedeemerWormhole | unknown | ethereum | unit-33654 | [`0xa4b261...727310`](./contracts/ethereum-1/0xa4b261139bb2d0a6d6d0b19d5adc2ca13d727310/) | ⚠️ Unaudited |
| L2BTCRedeemerWormhole | unknown | base | unit-33679 | [`0xe931f1...d2d88b`](./contracts/base-8453/0xe931f1ac6b00400e1dad153e184afee164d2d88b/) | ⚠️ Unaudited |
| L2BTCRedeemerWormhole | unknown | arbitrum | unit-33683 | [`0xd7cd99...34d9b7`](./contracts/arbitrum-42161/0xd7cd996a47b3293d4fec2dbcf49692370334d9b7/) | ⚠️ Unaudited |
| L2TBTC | unknown | optimism | unit-33671 | [`0x6c84a8...d0de40`](./contracts/optimism-10/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| L2TBTC | unknown | polygon | unit-33673 | [`0x236aa5...ab794b`](./contracts/polygon-137/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| L2TBTC | unknown | base | unit-33675 | [`0x236aa5...ab794b`](./contracts/base-8453/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | unit-33682 | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| L2WormholeGateway | unknown | optimism | unit-33670 | [`0x1293a5...a15458`](./contracts/optimism-10/0x1293a54e160d1cd7075487898d65266081a15458/) | ⚠️ Unaudited |
| L2WormholeGateway | unknown | polygon | unit-33672 | [`0x099597...599eab`](./contracts/polygon-137/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| LockedTokenCommon | token | ethereum | n/a | 2 deployments: ethereum [`0x70755a...62cb8a`](./contracts/ethereum-1/0x70755a30b3b8b4a03e355682bc0247f07362cb8a/); ethereum `0xbe194e...cfbab3` | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | core_logic | ethereum | n/a | 23 deployments: ethereum [`0x2ccd6b...52b0f6`](./contracts/ethereum-1/0x2ccd6b51e7bea429ba0d4c526c60c4f71852b0f6/); ethereum `0x75a852...0d9799`; ethereum `0x79bc41...721d49`; ethereum `0x89c903...9a6d04`; ethereum `0x8e7ebb...3bcaea`; ethereum `0x9b8fef...db0dcc`; ethereum `0x9c7922...8fe192`; ethereum `0x9e72f9...8c75a0`; ethereum `0x9ec9f9...ec50f0`; ethereum `0xa27501...a5bbbd`; ethereum `0xa7689c...3a660f`; ethereum `0xac3453...5bf95b`; ethereum `0xafcc99...0bdd1d`; ethereum `0xbdcc99...0218b7`; ethereum `0xbfc86c...e63351`; ethereum `0xc2ef2f...379979`; ethereum `0xc55d7b...c01b79`; ethereum `0xe31009...291739`; ethereum `0xe48320...8ae86f`; ethereum `0xe742e9...c5810e`; ethereum `0xead31b...26461d`; ethereum `0xf57fc1...9ee89a`; ethereum `0xf6c88f...c11b99` | ⚠️ Unaudited |
| LockReleaseTokenPoolUpgradeable | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x04f522...707580`](./contracts/ethereum-1/0x04f52228223caea97563576bce22fda854707580/); ethereum `0x0d53c3...2d5a89`; ethereum `0x68a6f8...586e67`; ethereum `0x9cb621...ee9c1b`; ethereum `0xad793e...ffdc34`; ethereum `0xd23f06...7598fa`; ethereum `0xdc3994...1effba`; ethereum `0xe87a62...f12303`; ethereum `0xecc7a1...90146b`; ethereum `0xf7de0d...d55cc8` | ⚠️ Unaudited |
| MemoryPageBatcher | periphery | ethereum | n/a | [`0xa0f50d...30eab3`](./contracts/ethereum-1/0xa0f50deff3aba037dd182eb594bdb637a130eab3/) | ⚠️ Unaudited |
| MemoryPageFactRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0xe583bc...2ec460`](./contracts/ethereum-1/0xe583bcde0160b637330b27a3ea1f3c02ba2ec460/); ethereum `0xfd1456...7fd1b4` | ⚠️ Unaudited |
| MerkleStatementContract | operational_periphery | ethereum | n/a | [`0x32a91f...58fdad`](./contracts/ethereum-1/0x32a91ff604ab2adcd832e91d68b2f3f25358fdad/) | ⚠️ Unaudited |
| MintManager | governance | ethereum | n/a | [`0xa4d28d...ed7f20`](./contracts/ethereum-1/0xa4d28d9fff539d6e1972ce3cf9c4577856ed7f20/) | ⚠️ Unaudited |
| NativeBTCDepositor | unknown | ethereum | n/a | 8 deployments: ethereum [`0x254e2f...c94b0d`](./contracts/ethereum-1/0x254e2f7bcb4c5892d67d3c51b2c5b50d93c94b0d/); ethereum `0x2fd204...8ef918`; ethereum `0x359ee7...1caea1`; ethereum `0x466615...bafd3f`; ethereum `0x6c2c43...02b135`; ethereum `0x809e35...c15714`; ethereum `0x9e821b...4fec52`; ethereum `0xdd5a2d...08f75c` | ⚠️ Unaudited |
| OnchainVaults | core_logic | ethereum | n/a | [`0xfcee62...7d99d5`](./contracts/ethereum-1/0xfcee62af74a63906c8adb9b3364ca290d47d99d5/) | ⚠️ Unaudited |
| PedersenHashPointsXColumn | unknown | ethereum | n/a | 3 deployments: ethereum [`0xa62f35...1f0f86`](./contracts/ethereum-1/0xa62f35160068828ca5b22160eab51737661f0f86/); ethereum `0xc4f213...d18940`; ethereum `0xdc596b...1d9e70` | ⚠️ Unaudited |
| PedersenHashPointsYColumn | unknown | ethereum | n/a | 4 deployments: ethereum [`0x7f81ad...d899e1`](./contracts/ethereum-1/0x7f81ad1d79e1863c7e9716b6c7e1efe5c9d899e1/); ethereum `0xa55c0f...f4b6c2`; ethereum `0xa87710...21f37f`; ethereum `0xfd12a1...bbe7fd` | ⚠️ Unaudited |
| PerpetualEscapeVerifier | periphery | ethereum | n/a | [`0xaadfdb...37f7bd`](./contracts/ethereum-1/0xaadfdb9cac145c65f2284fbe24600d07fb37f7bd/) | ⚠️ Unaudited |
| PerpetualForcedActions | unknown | ethereum | n/a | [`0xf1f087...e203ca`](./contracts/ethereum-1/0xf1f087a5da4c5938e3ee091edeea4f773fe203ca/) | ⚠️ Unaudited |
| PerpetualState | token | ethereum | n/a | 2 deployments: ethereum [`0xbdc6c9...2b3c41`](./contracts/ethereum-1/0xbdc6c96d298408415ac70d334bedebc8862b3c41/); ethereum `0xdd5f42...48a859` | ⚠️ Unaudited |
| PerpetualTokensAndRamping | token | ethereum | n/a | [`0x8f62a4...6ff8da`](./contracts/ethereum-1/0x8f62a4a85b64df803fdb644a1c7f595bfc6ff8da/) | ⚠️ Unaudited |
| PolygonRoot | unknown | ethereum | n/a | 2 deployments: ethereum [`0x51825d...0cacb3`](./contracts/ethereum-1/0x51825d6e893c51836dc9c0edf3867c57cd0cacb3/); ethereum `0xec20ed...0ff583` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey0Column | unknown | ethereum | n/a | 7 deployments: ethereum [`0x21578b...31ea8f`](./contracts/ethereum-1/0x21578b24f86adf6f59c406f641f693745c31ea8f/); ethereum `0x8004e8...3e16a6`; ethereum `0xc9a02d...44a540`; ethereum `0xdf1075...bab090`; ethereum `0xe7b835...573293`; ethereum `0xe8b13f...d75859`; ethereum `0xedffea...dbc573` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey1Column | unknown | ethereum | n/a | 7 deployments: ethereum [`0x9d820b...cf95fc`](./contracts/ethereum-1/0x9d820ba19fbabe91f01413a7a7ae554925cf95fc/); ethereum `0xb4711a...28e267`; ethereum `0xc2969a...01ac5f`; ethereum `0xd7a713...6d1ee6`; ethereum `0xe58327...1f810d`; ethereum `0xe5ac93...f68fd0`; ethereum `0xf0b58e...9e05fc` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey2Column | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4576ba...50ba0b`](./contracts/ethereum-1/0x4576ba889ddcb27738c4d3b8df2ff2616650ba0b/); ethereum `0x698339...dc7755`; ethereum `0xb5a575...55660d`; ethereum `0xde8d55...6d41fd` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey0Column | unknown | ethereum | n/a | 6 deployments: ethereum [`0x5318ed...83953e`](./contracts/ethereum-1/0x5318edcfecaf84eb5a3a4d364c2dcff06083953e/); ethereum `0x75d887...bbca0a`; ethereum `0x812c2a...b449cd`; ethereum `0xb45b87...5ea7a0`; ethereum `0xbaec49...d717ef`; ethereum `0xbbacbd...351575` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey1Column | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc1cd71...433ccc`](./contracts/ethereum-1/0xc1cd710bb0d8a07a46cc884a552091d1ed433ccc/); ethereum `0xecc282...790e20` | ⚠️ Unaudited |
| PriceRegistry | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x8c9b2e...b958ad`](./contracts/ethereum-1/0x8c9b2efb7c64c394119270bfece7f54763b958ad/); ethereum `0xdafe69...b9b03d`; ethereum `0xed1a8c...d2d4f5` | ⚠️ Unaudited |
| Proxy | proxy | ethereum | n/a | 4 deployments: ethereum [`0x935bf7...fe8a89`](./contracts/ethereum-1/0x935bf7a23b42827be36431e6ac53cd959cfe8a89/); ethereum `0xb9c81a...487a0d`; ethereum `0xcd7a4f...4948bd`; ethereum `0xef0e19...543529` | ⚠️ Unaudited |
| ProxyV5 | unknown | ethereum | n/a | 5 deployments: ethereum [`0x3641bf...c16b10`](./contracts/ethereum-1/0x3641bf5a9a07ef705e8358d39dd8555919c16b10/); ethereum `0x3cde3e...0519a8`; ethereum `0x75c881...493f7d`; ethereum `0xa3f44b...2c929e`; ethereum `0xd20f04...bcdff4` | ⚠️ Unaudited |
| RandomBeacon | registry | ethereum | n/a | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | ⚠️ Unaudited |
| RebateStaking | unknown | ethereum | n/a | 3 deployments: ethereum [`0x326adc...dd8735`](./contracts/ethereum-1/0x326adc48eb74415cd483adcb8c9c9cdef3dd8735/); ethereum `0x6e25ef...3ccbee`; ethereum `0xe490c8...1e2535` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | registry | ethereum | n/a | [`0x13022e...b2e533`](./contracts/ethereum-1/0x13022e3e6c77524308bd56aed716e88311b2e533/) | ⚠️ Unaudited |
| RMN | unknown | ethereum | n/a | [`0xdcd484...adf84f`](./contracts/ethereum-1/0xdcd48419bd5cd9d1b097695f2af4ee125aadf84f/) | ⚠️ Unaudited |
| RolesExternalInitializer | unknown | ethereum | n/a | [`0x7eb822...1becce`](./contracts/ethereum-1/0x7eb8220714e9f08073177dcb3a4a57d2f91becce/) | ⚠️ Unaudited |
| Router | adapter | ethereum | n/a | 4 deployments: ethereum [`0x7fb589...fde90b`](./contracts/ethereum-1/0x7fb5895cbcb3264dc7984e8f61037f5d37fde90b/); ethereum `0x80226f...146f7d`; ethereum `0x8c6d31...81ed46`; ethereum `0xe561d5...9a1476` | ⚠️ Unaudited |
| StakingPortBacker | unknown | ethereum | n/a | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| StarkExchange | unknown | ethereum | n/a | [`0xa64c6c...e68479`](./contracts/ethereum-1/0xa64c6c3bbb731f95dd83f318f69a4050ece68479/) | ⚠️ Unaudited |
| StarkgateManager | governance | ethereum | n/a | [`0xd39be4...5fcb01`](./contracts/ethereum-1/0xd39be46806a71c678e5079cefc0d198bd15fcb01/) | ⚠️ Unaudited |
| StarkgateRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x7baa11...0eda10`](./contracts/ethereum-1/0x7baa1190a79ab08537c6c975ccd71abaaf0eda10/); ethereum `0xf710fd...699d40` | ⚠️ Unaudited |
| Starknet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x739a65...1ffe42`](./contracts/ethereum-1/0x739a654271c565839f0408546706bbea2f1ffe42/); ethereum `0xa964d6...f5ed08` | ⚠️ Unaudited |
| StarknetERC20Bridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x7f2a18...777a71`](./contracts/ethereum-1/0x7f2a18900a978d4390a3640e34739bb697777a71/); ethereum `0xf0b3ee...7225fb` | ⚠️ Unaudited |
| StarknetEthBridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x95ff25...c7fd95`](./contracts/ethereum-1/0x95ff25a59dc9c5a41cf0709dc916041e5dc7fd95/); ethereum `0xd94f29...23a0e2` | ⚠️ Unaudited |
| StarknetTokenBridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x70a368...59a356`](./contracts/ethereum-1/0x70a36886adf5c3b8b5f370c3f037e9116159a356/); ethereum `0xe0d1fa...ba3f18` | ⚠️ Unaudited |
| StarkPerpetual | unknown | ethereum | n/a | [`0xdd8133...528396`](./contracts/ethereum-1/0xdd813397b79f8df581eeb0c4b8ab72304c528396/) | ⚠️ Unaudited |
| TACoApplication | unknown | ethereum | unit-33637 | [`0x347cc7...edcf07`](./contracts/ethereum-1/0x347cc7ede7e5517bd47d20620b2cf1b406edcf07/) | ⚠️ Unaudited |
| TACoApplication | unknown | ethereum | n/a | 5 deployments: ethereum [`0x76e9e5...6854a8`](./contracts/ethereum-1/0x76e9e5a077eba64862b5d1f94e534acec86854a8/); ethereum `0x947685...b630b9`; ethereum `0x98f643...6659db`; ethereum `0x9a4c2f...5e2b51`; ethereum `0xafa132...3ae743` | ⚠️ Unaudited |
| TBTCVault | core_logic | ethereum | n/a | [`0x9c0700...4fe3cd`](./contracts/ethereum-1/0x9c070027cdc9dc8f82416b2e5314e11dfb4fe3cd/) | ⚠️ Unaudited |
| TestToken | token | ethereum | n/a | [`0xcf0ecb...468746`](./contracts/ethereum-1/0xcf0ecbe2174ef46af58906afb217af0767468746/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | n/a | [`0x92f2d8...b4913d`](./contracts/ethereum-1/0x92f2d8b72a7f6a551be60b9aa4194248e9b4913d/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x87f005...75f45f`](./contracts/ethereum-1/0x87f005317692d05baa4193ab0c961c69e175f45f/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | ethereum | n/a | [`0xb22764...c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | ⚠️ Unaudited |
| TokenholderGovernor | governance | ethereum | n/a | [`0xd101f2...6f5447`](./contracts/ethereum-1/0xd101f2b25bcbf992bdf55db67c104fe7646f5447/) | ⚠️ Unaudited |
| TokensAndRamping | token | ethereum | n/a | 2 deployments: ethereum [`0x8b736b...7df087`](./contracts/ethereum-1/0x8b736be274c418c10d6fa5c65db1679a587df087/); ethereum `0xb97394...c71e98` | ⚠️ Unaudited |
| TransientProxy | unknown | ethereum | n/a | 9 deployments: ethereum [`0x995f6c...e4094e`](./contracts/ethereum-1/0x995f6c2915c8c18772268531fe01649b17e4094e/); ethereum `0xaa3f7a...750fae`; ethereum `0xcb5e55...76e8b8`; ethereum `0xce4857...e76dac`; ethereum `0xdb0221...3d6bc2`; ethereum `0xe303a0...717a18`; ethereum `0xe916b5...f48dd0`; ethereum `0xf80fb8...eac9cc`; ethereum `0xff6206...4f9449` | ⚠️ Unaudited |
| USDCTokenPool | core_logic | ethereum | n/a | [`0xa81f4a...0fefda`](./contracts/ethereum-1/0xa81f4ab595de5c14759245de5ce9899d380fefda/) | ⚠️ Unaudited |
| V3toV45ChangesExternalInitializer | unknown | ethereum | n/a | [`0xd88100...cf5910`](./contracts/ethereum-1/0xd88100b4f2116bc6be00855388b2b39b45cf5910/) | ⚠️ Unaudited |
| VendingMachineV3 | unknown | ethereum | n/a | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | ⚠️ Unaudited |
| WithBatcher | periphery | ethereum | n/a | [`0xf17a2f...926268`](./contracts/ethereum-1/0xf17a2fa46f86b6dfc41cbbbd1a51379d98926268/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | governance | ethereum | n/a | 15 deployments: ethereum [`0x04c3e6...c4495e`](./contracts/ethereum-1/0x04c3e6af3a22f6e03f22842d5729901633c4495e/); ethereum `0x343e96...5c606e`; ethereum `0x371695...355638`; ethereum `0x5ee284...30d0a0`; ethereum `0x64ecdc...bb4260`; ethereum `0x758279...de43e5`; ethereum `0x794fc0...0ea34b`; ethereum `0x890d38...5f67d4`; ethereum `0x92fcbd...8b9a21`; ethereum `0xc8cad4...8e8570`; ethereum `0xd5d30f...1ef917`; ethereum `0xe0d2e1...b970a6`; ethereum `0xf9dae7...d5590b`; base `0x3e765e...474168`; arbitrum `0x68c0dc...7214a4` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x035e92...227148` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04ff65...2d5566` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16a023...4f0378` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21abd6...d10829` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x265cb5...022930` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27a883...114d0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b7a09...bc05d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3320fd...2695b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35cbaf...5bf253` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d2aca...f37f14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e6baa...5640b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e972b...52afd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x465536...26dd03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47f0eb...60f281` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x488551...0ce7b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a33a6...327c37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ddb89...f4ef0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fcd7d...31860f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50c188...d7664f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5383bd...fa5838` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5504ff...9784d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5870f2...81e5fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59b1dd...ffafb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a994f...d45fd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63ba6a...0e641e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66136f...9d523c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x691b0d...832dcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x723878...f5b64b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78396a...0a081d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ab577...20da10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f025c...889e92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x829242...3f9107` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x834fc8...3322e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84a87a...2eda0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85906d...79c9d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x928899...afc1d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x928cae...2b5f63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93e8b4...f8b16a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95d7ff...bdd55c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98e19c...84f2ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa70136...c96d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb006a3...5d33cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1958c...ed4d2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8224c...9535a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe89e8...e42900` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc14e40...e3e359` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc78aac...674c28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7a06d...761d4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc94567...4a9576` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb54e3...b83c24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccfeb9...e0bb4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce25c9...235cc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfe4a9...3b4056` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3e418...909888` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4c956...740bf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd55a6b...db699e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8cf88...5d8581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb2fff...7085ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdeb49f...d7b8fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdffec9...4fe804` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe261b3...3616e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5862a...521a7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe59b5b...a8e5a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe93cfa...3824cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe94b16...48c595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9e353...7fbb3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea3d37...534ea2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed0add...0e1fbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1e3d7...1f2824` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf52a28...e93a57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf88496...417c31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9301b...a4c8e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf983b1...19f345` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa9061...76c1a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfacc22...065b96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc1e05...14526b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe0b8e...3938fe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [consensys.net/diligence/audits/2020/02/thesis-tbtc-and-keep](https://diligence.security/audits/2020/02/thesis-tbtc-and-keep) | Consensys Diligence | Audit | 2020-03 | stale | Direct | contract_name | 4 | high |
| [cryptographic review](https://diligence.security/audits/2020/03/thesis-cryptographic-review) | ConsenSys Diligence | Audit | 2020-03 | stale | Direct | n/a | 0 | n/a |
| [* **Report:** [View Audit 1 PDF]() - [View Audit 2 PDF](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing)&#x20;](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [* **Report:** [View Audit 1 PDF](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) - [View Audit 2 PDF]()&#x20;](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [* **Report**: [View PDF]()](https://drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [* **Report**: [View PDF]()](https://drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view?usp=sharing) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [* **Report:** [View PDF]()](https://drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [* **Report:** [View PDF]()](https://drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [* **Report:** [View PDF]()](https://www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760?source=copy_link) | Code4rena | Contest | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [* **Report:** [View PDF]()](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-04 | stale | Direct | contract_name | 5 | high |
| [* **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-solana-smart-contracts/)](https://leastauthority.com/blog/audit-of-keep-network-solana-smart-contracts) | Least Authority | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [* **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/)](https://github.com/threshold-network/security-audits/blob/main/29-Sep-2022-LeastAuthority.pdf) | Least Authority | Audit | 2022-09 | stale | Direct | contract_name | 18 | high |
| [* **Report:** [View Audit PDF](https://github.com/threshold-network/security-audits/blob/main/29-Sep-2022-LeastAuthority.pdf) - [Link to Least Authority]()](https://leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2) | Least Authority | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [* **Report:** [View Audit PDF]() - [Link to CertiK](https://www.certik.com/projects/threshold-network)](https://github.com/threshold-network/security-audits/blob/main/19-Nov-2021-CertiK.pdf) | CertiK | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [* **Report:** [View Audit PDF](https://github.com/threshold-network/security-audits/blob/main/19-Nov-2021-CertiK.pdf) - [Link to CertiK]()](https://skynet.certik.com/projects/threshold-network) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [* **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network)](https://github.com/threshold-network/security-audits/blob/main/09-Nov-2021-ChainSecurity.pdf) | ChainSecurity | Audit | 2021-11 | stale | Direct | contract_name | 2 | high |
| [* **Report:** [View Audit PDF](https://github.com/threshold-network/security-audits/blob/main/09-Nov-2021-ChainSecurity.pdf) - [Link to ChainSecurity]()](https://www.chainsecurity.com/security-audit/threshold-network) | ChainSecurity | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [29-Aug-2023-LeastAuthority.pdf](https://github.com/threshold-network/security-audits/blob/main/29-Aug-2023-LeastAuthority.pdf) | LeastAuthority | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0f7191...74591b`](./contracts/ethereum-1/0x0f7191df5430c2b43f0cfaf9b444deb57c74591b/) | Allowlist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa67821...9da086`](./contracts/ethereum-1/0xa67821bc089b4374e8d62475526e7e84f09da086/) | AllVerifiers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65fbae...9d9fc6`](./contracts/ethereum-1/0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6/) | Bank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x613d08...7a8964`](./contracts/ethereum-1/0x613d088f2e5a2ed91635016483dafa3cd47a8964/) | BatchWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbcfa3...2cc0cf`](./contracts/ethereum-1/0xcbcfa3eb5e067173b262ace62f9dd87f1d2cc0cf/) | BridgeGovernance | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x192292...8a8636`](./contracts/ethereum-1/0x192292817680196a0215a50b07d1c5e7ab8a8636/) | CairoBootloaderProgram | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23cab3...9494e4`](./contracts/ethereum-1/0x23cab3cf1aa7b929df5e9f3712aca3a6fb9494e4/) | Committee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d7b62...6d811a`](./contracts/ethereum-1/0x7d7b622c07f216d99efc3efb9cf71872f46d811a/) | CoveragePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bde14...7d4420`](./contracts/ethereum-1/0x1bde14b50e7daed71ee14f7e8defaa3d8a7d4420/) | CpuConstraintPoly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x015381...442cd6`](./contracts/ethereum-1/0x015381651f240ed6c44122dcba6cf807c9442cd6/) | CpuFrilessVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e0e46...7de611`](./contracts/ethereum-1/0x4e0e46fc2b9a9809dce23ce2d9a1d6eede7de611/) | FinalizableCommittee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86b939...c7bb56`](./contracts/ethereum-1/0x86b939ff9bb3cc5cd9c7b57d298d6d20b4c7bb56/) | FinalizableGpsFactAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f862b...ae2bde`](./contracts/ethereum-1/0x9f862baa13303163018e71e7a252851fccae2bde/) | ForcedActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30efaa...93d400`](./contracts/ethereum-1/0x30efaaa99f8efe310d9fdc83072e2a04c093d400/) | FriStatementContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xacf6a4...e93f94`](./contracts/ethereum-1/0xacf6a4ae18a30521ea5aed482823eb5c9ce93f94/) | GpsFactRegistryAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13e120...b0d934`](./contracts/ethereum-1/0x13e120f6c8e747983f7aaf0f7731796bfcb0d934/) | GpsStatementVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70755a...62cb8a`](./contracts/ethereum-1/0x70755a30b3b8b4a03e355682bc0247f07362cb8a/) | LockedTokenCommon | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0f50d...30eab3`](./contracts/ethereum-1/0xa0f50deff3aba037dd182eb594bdb637a130eab3/) | MemoryPageBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32a91f...58fdad`](./contracts/ethereum-1/0x32a91ff604ab2adcd832e91d68b2f3f25358fdad/) | MerkleStatementContract | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4d28d...ed7f20`](./contracts/ethereum-1/0xa4d28d9fff539d6e1972ce3cf9c4577856ed7f20/) | MintManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdc6c9...2b3c41`](./contracts/ethereum-1/0xbdc6c96d298408415ac70d334bedebc8862b3c41/) | PerpetualState | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51825d...0cacb3`](./contracts/ethereum-1/0x51825d6e893c51836dc9c0edf3867c57cd0cacb3/) | PolygonRoot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x935bf7...fe8a89`](./contracts/ethereum-1/0x935bf7a23b42827be36431e6ac53cd959cfe8a89/) | Proxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | RandomBeacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x326adc...dd8735`](./contracts/ethereum-1/0x326adc48eb74415cd483adcb8c9c9cdef3dd8735/) | RebateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7eb822...1becce`](./contracts/ethereum-1/0x7eb8220714e9f08073177dcb3a4a57d2f91becce/) | RolesExternalInitializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa64c6c...e68479`](./contracts/ethereum-1/0xa64c6c3bbb731f95dd83f318f69a4050ece68479/) | StarkExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd39be4...5fcb01`](./contracts/ethereum-1/0xd39be46806a71c678e5079cefc0d198bd15fcb01/) | StarkgateManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f2a18...777a71`](./contracts/ethereum-1/0x7f2a18900a978d4390a3640e34739bb697777a71/) | StarknetERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95ff25...c7fd95`](./contracts/ethereum-1/0x95ff25a59dc9c5a41cf0709dc916041e5dc7fd95/) | StarknetEthBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70a368...59a356`](./contracts/ethereum-1/0x70a36886adf5c3b8b5f370c3f037e9116159a356/) | StarknetTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76e9e5...6854a8`](./contracts/ethereum-1/0x76e9e5a077eba64862b5d1f94e534acec86854a8/) | TACoApplication | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c0700...4fe3cd`](./contracts/ethereum-1/0x9c070027cdc9dc8f82416b2e5314e11dfb4fe3cd/) | TBTCVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92f2d8...b4913d`](./contracts/ethereum-1/0x92f2d8b72a7f6a551be60b9aa4194248e9b4913d/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd101f2...6f5447`](./contracts/ethereum-1/0xd101f2b25bcbf992bdf55db67c104fe7646f5447/) | TokenholderGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b736b...7df087`](./contracts/ethereum-1/0x8b736be274c418c10d6fa5c65db1679a587df087/) | TokensAndRamping | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | VendingMachineV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 59 |
| upstream | 22 |
| standard_library | 8 |
| needs_review | 98 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=65

Zero-match audit list:

- [3403] cryptographic review
- [3404] * **Report:** [View Audit 1 PDF]() - [View Audit 2 PDF](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing)&#x20;
- [3405] * **Report:** [View Audit 1 PDF](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) - [View Audit 2 PDF]()&#x20;
- [3406] * **Report**: [View PDF]()
- [3407] * **Report**: [View PDF]()
- [3408] * **Report:** [View PDF]()
- [3409] * **Report:** [View PDF]()
- [3410] * **Report:** [View PDF]()
- [3412] * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-solana-smart-contracts/)
- [3414] * **Report:** [View Audit PDF](https://github.com/threshold-network/security-audits/blob/main/29-Sep-2022-LeastAuthority.pdf) - [Link to Least Authority]()
- [3415] * **Report:** [View Audit PDF]() - [Link to CertiK](https://www.certik.com/projects/threshold-network)
- [3418] * **Report:** [View Audit PDF](https://github.com/threshold-network/security-audits/blob/main/09-Nov-2021-ChainSecurity.pdf) - [Link to ChainSecurity]()

Fork inheritance lineage and inherited audits are included when available.
