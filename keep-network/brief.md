# Agentic Audit Brief: KEEP Network

⚠️ Lifecycle status: DECLINING - TVL dropped 1.4% over 90 days

## Project Overview

- Project: KEEP Network (`keep-network`)
- Website: [https://app.threshold.network/](https://app.threshold.network/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-17T07:00:40.553Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 127 unique implementations (322 raw deployments)
- DeFi Llama TVL: $1,078,821.56
- On-chain TVL (included contracts): $24,654,517.85
- TVL by chain: Ethereum $24,654,517.85

## Project Description

Legacy KEEP / Threshold-tBTC ecosystem associated with tBTC Bitcoin minting and redemption. The project should be treated as a legacy or merged KEEP/Threshold-tBTC record rather than as a dead site with no functionality, with contract and audit scope split between legacy KEEP, Threshold, tBTC L1, and tBTC L2 deployments where applicable.

### Architecture

The tBTC L1 contracts serve as the hub for Bitcoin bridging, with L2 families (Arbitrum, Base) and Starknet using Wormhole gateways and depositor/redeemer contracts to extend tBTC minting and redemption cross-chain. The KEEP Network family provides legacy staking and token infrastructure that underpins the security model, while Threshold Contracts represent the governance token layer.

## Contract Surface Quality

- Indexed contracts: 1088; live-surface contracts included: 322 (321 live, 1 unknown).
- Excluded by liveness: 680 inactive, 86 singleton, 0 uninitialized.
- Deployment units: 18/56 live.
- Detected codebases: none
- Dependencies extracted: 42; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 5/74 (6.8%)
- Verified + Unaudited implementations: 68
- Verified by bytecode match: 1
- Unverified implementations: 53
- Unique implementations: 127
- Raw deployments: 322
- Audits discovered: 18
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $24,654,517.85
- Latest audit: 2025-11 (fresh)
- Staleness: 6 fresh, 1 aging, 11 stale, 0 unknown
- Tier 1 coverage: 2.7% (ChainSecurity, ConsenSys Diligence)
- Note: This protocol is classified as [declining]. ASD of $24,654,517.85 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Least Authority | Tier 2 | 3 | 4.1% | 2023-08 |
| CertiK | Tier 2 | 1 | 1.4% | 2021-11 |
| ChainSecurity | Tier 1 | 1 | 1.4% | 2021-11 |
| Consensys Diligence | Tier 1 | 1 | 1.4% | 2020-03 |
| LeastAuthority | Tier 2 | 1 | 1.4% | 2023-08 |
| Thesis Defense | Tier 2 | 1 | 1.4% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | operational_periphery | ethereum | n/a | 11 deployments: ethereum [`0x13de6b...2402cc`](./contracts/ethereum-1/0x13de6b121ade8e3c0dc016d63cbd5e2ab22402cc/); ethereum `0x51768b...5786cc`; ethereum `0x524db6...4a20c2`; ethereum `0x57e19e...ddf266`; ethereum `0x84e08e...c638e6`; ethereum `0x8ce200...ad1ce7`; ethereum `0xb0e9a7...0c9d96`; ethereum `0xd07298...201751`; ethereum `0xd0b1b7...63bd24`; ethereum `0xe845f4...3d6162`; ethereum `0xe88f95...6091cf` | ✅ Audited |
| Deposit | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9c6ada...768739`](./contracts/ethereum-1/0x9c6ada0bed100b0807779e2518e1638277768739/); ethereum `0xe56836...84fc4b`; ethereum `0xe83bcc...79fe02` | ✅ Audited |
| Redemption | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1b0534...d7e29d`](./contracts/ethereum-1/0x1b0534bc3f43b11ebde71f0fc68cf61df4d7e29d/); ethereum `0x1d1385...56e9a4`; ethereum `0x713f58...dceb35`; ethereum `0xa7fed1...2f5d0d` | ✅ Audited |
| T | unknown | ethereum | n/a | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | ✅ Audited |
| TBTC | unknown | ethereum | n/a | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ✅ Audited |

### ⚠️ Verified + Unaudited (68)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KeepToken | token | ethereum | n/a | [`0x85eee3...09afec`](./contracts/ethereum-1/0x85eee30c52b0b379b046fb0f85f4f3dc3009afec/) | ⚠️ Unaudited |
| TokenPool | core_logic | ethereum | n/a | [`0xcf9166...089ff1`](./contracts/ethereum-1/0xcf916681a6f08fa22e9ef3e665f2966bf3089ff1/) | ⚠️ Unaudited |
| Allowlist | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0f7191...74591b`](./contracts/ethereum-1/0x0f7191df5430c2b43f0cfaf9b444deb57c74591b/); ethereum `0x89c2f7...43cb2e`; ethereum `0x9b3342...170a2c`; ethereum `0xd6b1fe...5c6e2d` | ⚠️ Unaudited |
| ArbitrumWormholeGatewayUpgraded | unknown | arbitrum | unit-24722 | [`0x1293a5...a15458`](./contracts/arbitrum-42161/0x1293a54e160d1cd7075487898d65266081a15458/) | ⚠️ Unaudited |
| BaseWormholeGatewayUpgraded | unknown | base | unit-24717 | [`0x099597...599eab`](./contracts/base-8453/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| BatchWithdraw | operational_periphery | ethereum | n/a | [`0x613d08...7a8964`](./contracts/ethereum-1/0x613d088f2e5a2ed91635016483dafa3cd47a8964/) | ⚠️ Unaudited |
| BridgeGovernance | operational_periphery | ethereum | n/a | [`0xcbcfa3...2cc0cf`](./contracts/ethereum-1/0xcbcfa3eb5e067173b262ace62f9dd87f1d2cc0cf/) | ⚠️ Unaudited |
| BTCDepositorWormhole | unknown | ethereum | unit-24702 | [`0xb810ab...2a341a`](./contracts/ethereum-1/0xb810abd43d8fcfd812d6feb14fefc236e92a341a/) | ⚠️ Unaudited |
| CairoBootloaderProgram | adapter | ethereum | n/a | 3 deployments: ethereum [`0x192292...8a8636`](./contracts/ethereum-1/0x192292817680196a0215a50b07d1c5e7ab8a8636/); ethereum `0x24105e...a24a47`; ethereum `0xdf0b63...d1d917` | ⚠️ Unaudited |
| CallProxy | unknown | ethereum | n/a | [`0x3597c5...2f9feb`](./contracts/ethereum-1/0x3597c5cbcbcb30079a0bd2a68cde5f98272f9feb/) | ⚠️ Unaudited |
| CommitStore | unknown | ethereum | n/a | 57 deployments: ethereum [`0x013467...5e9084`](./contracts/ethereum-1/0x01346721418045a6c07b71052e452ef8615e9084/); ethereum `0x0428df...b587de`; ethereum `0x0d26ba...052045`; ethereum `0x0f254e...a380d7`; ethereum `0x0f5552...2bbe75`; ethereum `0x0f89c7...c52959`; ethereum `0x10d561...945c75`; ethereum `0x180776...3f5633`; ethereum `0x1bddba...0533b9`; ethereum `0x27a4e7...9926fb`; ethereum `0x2aa101...a007ce`; ethereum `0x38a806...c43271`; ethereum `0x3f1c35...4c4527`; ethereum `0x459154...f1e5d0`; ethereum `0x4b50cd...ee3282`; ethereum `0x52275d...01f694`; ethereum `0x57b548...3fb9b3`; ethereum `0x57d6cd...3dd114`; ethereum `0x5fd81c...2e15ff`; ethereum `0x607c09...8f128c`; ethereum `0x67b972...a00b90`; ethereum `0x681827...703248`; ethereum `0x6c8b96...4bf4b9`; ethereum `0x6f4abc...c5bf75`; ethereum `0x6fe6f7...29d0a4`; ethereum `0x700b6a...794e02`; ethereum `0x70ac0f...27006a`; ethereum `0x807dd6...799a04`; ethereum `0x83f3da...30250d`; ethereum `0x8705f7...646159`; ethereum `0x8a1680...f8a2cf`; ethereum `0x8d846b...77b1ab`; ethereum `0x8fc54e...e9e262`; ethereum `0x913a2a...ddc04b`; ethereum `0x95deb0...b82d64`; ethereum `0x98d0f8...a67ed9`; ethereum `0x9b9ec8...83dcdb`; ethereum `0x9d93d5...794f8a`; ethereum `0x9f592c...d705cd`; ethereum `0xa4755c...110320`; ethereum `0xa48269...536d1c`; ethereum `0xa58818...3741b9`; ethereum `0xa9f9bf...a9a2b8`; ethereum `0xc46890...56ad8d`; ethereum `0xc5164a...224f9f`; ethereum `0xd07926...d40235`; ethereum `0xd2428f...a6cd99`; ethereum `0xd8f93a...bff802`; ethereum `0xd9d3d9...c3da72`; ethereum `0xdac3a8...205ffe`; ethereum `0xdcf6f2...954110`; ethereum `0xe41677...7470a6`; ethereum `0xf19173...fd4793`; ethereum `0xf7b343...e75ed3`; ethereum `0xf7d68c...bb8f02`; ethereum `0xfa94e5...7eb210`; ethereum `0xfe73bc...fb0165` | ⚠️ Unaudited |
| Committee | unknown | ethereum | n/a | [`0x23cab3...9494e4`](./contracts/ethereum-1/0x23cab3cf1aa7b929df5e9f3712aca3a6fb9494e4/) | ⚠️ Unaudited |
| CpuConstraintPoly | unknown | ethereum | n/a | 8 deployments: ethereum [`0x1bde14...7d4420`](./contracts/ethereum-1/0x1bde14b50e7daed71ee14f7e8defaa3d8a7d4420/); ethereum `0x2c9726...ab01a1`; ethereum `0x3e727f...b16eba`; ethereum `0x9a62fa...2d31a9`; ethereum `0x9ddb8a...10ae6f`; ethereum `0xc716c4...39dbd8`; ethereum `0xd8e473...cc81e5`; ethereum `0xe4937a...a9b103` | ⚠️ Unaudited |
| CpuFrilessVerifier | periphery | ethereum | n/a | 8 deployments: ethereum [`0x015381...442cd6`](./contracts/ethereum-1/0x015381651f240ed6c44122dcba6cf807c9442cd6/); ethereum `0x0cd0cd...ca5cdc`; ethereum `0x2867a4...109b6b`; ethereum `0x30f3ab...70419b`; ethereum `0x6a6779...803f11`; ethereum `0x715740...53a26d`; ethereum `0xbe0f8f...8caef3`; ethereum `0xffc797...476b44` | ⚠️ Unaudited |
| CpuOods | unknown | ethereum | n/a | 8 deployments: ethereum [`0x35e9f6...83e7cb`](./contracts/ethereum-1/0x35e9f63efc97e008f3f9097ea3293b540483e7cb/); ethereum `0x7ca020...af135e`; ethereum `0x8f3af1...dc4775`; ethereum `0x99480b...dc3595`; ethereum `0xa40115...7bb766`; ethereum `0xa4d0bb...e15dd4`; ethereum `0xae325c...ac2707`; ethereum `0xd67c67...014faa` | ⚠️ Unaudited |
| EcdsaPointsXColumn | unknown | ethereum | n/a | [`0xa3da16...74b9ce`](./contracts/ethereum-1/0xa3da166aef05dba08d67ea5b442dd9574274b9ce/) | ⚠️ Unaudited |
| EcdsaPointsYColumn | unknown | ethereum | n/a | [`0xcaea50...62c771`](./contracts/ethereum-1/0xcaea5002758d5b977680fe65164b7fe6a062c771/) | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | ethereum | n/a | 56 deployments: ethereum [`0x0f1b1a...2e4ba2`](./contracts/ethereum-1/0x0f1b1a46adeadf3c0d583ac86f40bc9e0b2e4ba2/); ethereum `0x109c66...dcd9fe`; ethereum `0x26a101...340fc3`; ethereum `0x330349...f65e61`; ethereum `0x332761...cb2b26`; ethereum `0x34eec7...24a604`; ethereum `0x3b45dd...75ef58`; ethereum `0x3c5990...4210c1`; ethereum `0x3c672f...8edc09`; ethereum `0x418dcb...79fbb4`; ethereum `0x467653...4cf214`; ethereum `0x49aac6...1f8edd`; ethereum `0x4bc602...225419`; ethereum `0x4e4003...1950d6`; ethereum `0x559c32...a5f48d`; ethereum `0x562a20...6d1d3b`; ethereum `0x5b6d29...5eaca5`; ethereum `0x5b859e...1da7ec`; ethereum `0x5e24de...8c559f`; ethereum `0x5eda68...97c3f4`; ethereum `0x64a5c6...88578b`; ethereum `0x66d84f...8d7c12`; ethereum `0x6868fe...563d69`; ethereum `0x6b4b63...5a9ebd`; ethereum `0x70c705...49c2ec`; ethereum `0x718672...d704a3`; ethereum `0x720ea8...b6ff81`; ethereum `0x794ae3...a5ce96`; ethereum `0x7a82d2...23666d`; ethereum `0x82dae1...d3a0fc`; ethereum `0x8693cd...6580c1`; ethereum `0x8b3eee...5018b8`; ethereum `0x8fee86...594b28`; ethereum `0x9a3ed7...20528d`; ethereum `0x9cbba1...18a90e`; ethereum `0x9de971...711988`; ethereum `0x9f0e81...d55181`; ethereum `0xa627f2...f758f0`; ethereum `0xa8c12a...992a14`; ethereum `0xaa0da3...b1769b`; ethereum `0xae2a2a...c437f0`; ethereum `0xb0f5b6...ec414f`; ethereum `0xb45cf8...b8d977`; ethereum `0xb57d52...56dd8f`; ethereum `0xc1ecce...9a1bf2`; ethereum `0xc876d5...482f9c`; ethereum `0xcdca3f...96d7e4`; ethereum `0xd98e80...19bfbb`; ethereum `0xde6608...bc8079`; ethereum `0xde81f1...ea57ac`; ethereum `0xdf615e...245ac9`; ethereum `0xdfd8c3...b768a4`; ethereum `0xf2eb4c...a8656a`; ethereum `0xf3ac96...d3b7f9`; ethereum `0xf4468e...1ea9ae`; ethereum `0xfc92c3...f0f0a3` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8469b5...a7d0df`](./contracts/ethereum-1/0x8469b5abd81987f9347c0babd47b9eb11da7d0df/); ethereum `0xffbd6b...2aa389` | ⚠️ Unaudited |
| FinalizableCommittee | unknown | ethereum | n/a | [`0x4e0e46...7de611`](./contracts/ethereum-1/0x4e0e46fc2b9a9809dce23ce2d9a1d6eede7de611/) | ⚠️ Unaudited |
| FriStatementContract | unknown | ethereum | n/a | [`0x30efaa...93d400`](./contracts/ethereum-1/0x30efaaa99f8efe310d9fdc83072e2a04c093d400/) | ⚠️ Unaudited |
| GpsStatementVerifier | periphery | ethereum | n/a | 4 deployments: ethereum [`0x13e120...b0d934`](./contracts/ethereum-1/0x13e120f6c8e747983f7aaf0f7731796bfcb0d934/); ethereum `0x5c1ce4...e3a9fe`; ethereum `0x7da122...2e3ff7`; ethereum `0xfe5e5b...2b0066` | ⚠️ Unaudited |
| GrantStaking | unknown | ethereum | unit-24676 | [`0x1293a5...a15458`](./contracts/ethereum-1/0x1293a54e160d1cd7075487898d65266081a15458/) | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | registry | ethereum | n/a | [`0x099597...599eab`](./contracts/ethereum-1/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| L1BTCDepositorWormholeV2Arbitrum | unknown | ethereum | unit-24692 | [`0x75a6e4...2c619a`](./contracts/ethereum-1/0x75a6e4a7c8faa162192fad6c1f7a6d48992c619a/) | ⚠️ Unaudited |
| L1BTCDepositorWormholeV2Base | unknown | ethereum | unit-24677 | [`0x186d04...00a1fe`](./contracts/ethereum-1/0x186d048097c7406c64efb0537886e3cae100a1fe/) | ⚠️ Unaudited |
| L1BTCRedeemerWormhole | unknown | ethereum | unit-24685 | [`0x5aab7e...93b3f8`](./contracts/ethereum-1/0x5aab7eabd63b2222b07442f04ca874366193b3f8/) | ⚠️ Unaudited |
| L1BTCRedeemerWormhole | unknown | ethereum | unit-24687 | [`0x5d4d83...23dbde`](./contracts/ethereum-1/0x5d4d83aab53b7e7ca915aeb2d4d3f4e03823dbde/) | ⚠️ Unaudited |
| L1BTCRedeemerWormhole | unknown | ethereum | unit-24697 | [`0xa4b261...727310`](./contracts/ethereum-1/0xa4b261139bb2d0a6d6d0b19d5adc2ca13d727310/) | ⚠️ Unaudited |
| L2BTCRedeemerWormhole | unknown | base | unit-24721 | [`0xe931f1...d2d88b`](./contracts/base-8453/0xe931f1ac6b00400e1dad153e184afee164d2d88b/) | ⚠️ Unaudited |
| L2BTCRedeemerWormhole | unknown | arbitrum | unit-24725 | [`0xd7cd99...34d9b7`](./contracts/arbitrum-42161/0xd7cd996a47b3293d4fec2dbcf49692370334d9b7/) | ⚠️ Unaudited |
| L2TBTC | unknown | optimism | unit-24714 | [`0x6c84a8...d0de40`](./contracts/optimism-10/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| L2TBTC | unknown | polygon | unit-24716 | [`0x236aa5...ab794b`](./contracts/polygon-137/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| L2TBTC | unknown | base | unit-24718 | [`0x236aa5...ab794b`](./contracts/base-8453/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | unit-24724 | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| L2WormholeGateway | unknown | optimism | unit-24713 | [`0x1293a5...a15458`](./contracts/optimism-10/0x1293a54e160d1cd7075487898d65266081a15458/) | ⚠️ Unaudited |
| L2WormholeGateway | unknown | polygon | unit-24715 | [`0x099597...599eab`](./contracts/polygon-137/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | ethereum | n/a | [`0xd1b301...af49de`](./contracts/ethereum-1/0xd1b3015cefcac84db3efcbb18fbdd50ba5af49de/) | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | core_logic | ethereum | n/a | [`0x2ccd6b...52b0f6`](./contracts/ethereum-1/0x2ccd6b51e7bea429ba0d4c526c60c4f71852b0f6/) | ⚠️ Unaudited |
| LockReleaseTokenPoolUpgradeable | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x04f522...707580`](./contracts/ethereum-1/0x04f52228223caea97563576bce22fda854707580/); ethereum `0x0d53c3...2d5a89`; ethereum `0x68a6f8...586e67`; ethereum `0x9cb621...ee9c1b`; ethereum `0xad793e...ffdc34`; ethereum `0xd23f06...7598fa`; ethereum `0xdc3994...1effba`; ethereum `0xe87a62...f12303`; ethereum `0xecc7a1...90146b`; ethereum `0xf7de0d...d55cc8` | ⚠️ Unaudited |
| MemoryPageFactRegistry | registry | ethereum | n/a | [`0xe583bc...2ec460`](./contracts/ethereum-1/0xe583bcde0160b637330b27a3ea1f3c02ba2ec460/) | ⚠️ Unaudited |
| MerkleStatementContract | operational_periphery | ethereum | n/a | [`0x32a91f...58fdad`](./contracts/ethereum-1/0x32a91ff604ab2adcd832e91d68b2f3f25358fdad/) | ⚠️ Unaudited |
| NativeBTCDepositor | unknown | ethereum | n/a | 8 deployments: ethereum [`0x254e2f...c94b0d`](./contracts/ethereum-1/0x254e2f7bcb4c5892d67d3c51b2c5b50d93c94b0d/); ethereum `0x2fd204...8ef918`; ethereum `0x359ee7...1caea1`; ethereum `0x466615...bafd3f`; ethereum `0x6c2c43...02b135`; ethereum `0x809e35...c15714`; ethereum `0x9e821b...4fec52`; ethereum `0xdd5a2d...08f75c` | ⚠️ Unaudited |
| PedersenHashPointsXColumn | unknown | ethereum | n/a | [`0xdc596b...1d9e70`](./contracts/ethereum-1/0xdc596b881bd9e33d3a56ae86031417645d1d9e70/) | ⚠️ Unaudited |
| PedersenHashPointsYColumn | unknown | ethereum | n/a | [`0xa55c0f...f4b6c2`](./contracts/ethereum-1/0xa55c0f91945958c40f7fa41eb650340245f4b6c2/) | ⚠️ Unaudited |
| PerpetualEscapeVerifier | periphery | ethereum | n/a | [`0xaadfdb...37f7bd`](./contracts/ethereum-1/0xaadfdb9cac145c65f2284fbe24600d07fb37f7bd/) | ⚠️ Unaudited |
| PolygonRoot | unknown | ethereum | n/a | [`0x51825d...0cacb3`](./contracts/ethereum-1/0x51825d6e893c51836dc9c0edf3867c57cd0cacb3/) | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey0Column | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21578b...31ea8f`](./contracts/ethereum-1/0x21578b24f86adf6f59c406f641f693745c31ea8f/); ethereum `0xdf1075...bab090` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey1Column | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe58327...1f810d`](./contracts/ethereum-1/0xe58327a05f21ab12ab33a4408003a87e571f810d/); ethereum `0xe5ac93...f68fd0` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey2Column | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4576ba...50ba0b`](./contracts/ethereum-1/0x4576ba889ddcb27738c4d3b8df2ff2616650ba0b/); ethereum `0x698339...dc7755` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey0Column | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5318ed...83953e`](./contracts/ethereum-1/0x5318edcfecaf84eb5a3a4d364c2dcff06083953e/); ethereum `0xb45b87...5ea7a0` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey1Column | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc1cd71...433ccc`](./contracts/ethereum-1/0xc1cd710bb0d8a07a46cc884a552091d1ed433ccc/); ethereum `0xecc282...790e20` | ⚠️ Unaudited |
| PriceRegistry | operational_periphery | ethereum | n/a | [`0xed1a8c...d2d4f5`](./contracts/ethereum-1/0xed1a8c49bbd5618fa6cc952c509557f816d2d4f5/) | ⚠️ Unaudited |
| ProxyV5 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3641bf...c16b10`](./contracts/ethereum-1/0x3641bf5a9a07ef705e8358d39dd8555919c16b10/); ethereum `0x3cde3e...0519a8`; ethereum `0x75c881...493f7d` | ⚠️ Unaudited |
| RandomBeacon | registry | ethereum | n/a | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | ⚠️ Unaudited |
| RebateStaking | unknown | ethereum | n/a | 3 deployments: ethereum [`0x326adc...dd8735`](./contracts/ethereum-1/0x326adc48eb74415cd483adcb8c9c9cdef3dd8735/); ethereum `0x6e25ef...3ccbee`; ethereum `0xe490c8...1e2535` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | registry | ethereum | n/a | [`0x13022e...b2e533`](./contracts/ethereum-1/0x13022e3e6c77524308bd56aed716e88311b2e533/) | ⚠️ Unaudited |
| RMN | unknown | ethereum | n/a | [`0xdcd484...adf84f`](./contracts/ethereum-1/0xdcd48419bd5cd9d1b097695f2af4ee125aadf84f/) | ⚠️ Unaudited |
| Router | adapter | ethereum | n/a | 2 deployments: ethereum [`0x80226f...146f7d`](./contracts/ethereum-1/0x80226fc0ee2b096224eeac085bb9a8cba1146f7d/); ethereum `0x8c6d31...81ed46` | ⚠️ Unaudited |
| StakingPortBacker | unknown | ethereum | n/a | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| StarknetEthBridge | operational_periphery | ethereum | n/a | [`0x95ff25...c7fd95`](./contracts/ethereum-1/0x95ff25a59dc9c5a41cf0709dc916041e5dc7fd95/) | ⚠️ Unaudited |
| StarknetTokenBridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x70a368...59a356`](./contracts/ethereum-1/0x70a36886adf5c3b8b5f370c3f037e9116159a356/); ethereum `0xe0d1fa...ba3f18` | ⚠️ Unaudited |
| TACoApplication | unknown | ethereum | unit-24680 | [`0x347cc7...edcf07`](./contracts/ethereum-1/0x347cc7ede7e5517bd47d20620b2cf1b406edcf07/) | ⚠️ Unaudited |
| TBTCVault | core_logic | ethereum | n/a | [`0x9c0700...4fe3cd`](./contracts/ethereum-1/0x9c070027cdc9dc8f82416b2e5314e11dfb4fe3cd/) | ⚠️ Unaudited |
| Timelock | governance | base | n/a | 2 deployments: ethereum `0x92f2d8...b4913d`; base [`0x86b035...b85017`](./contracts/base-8453/0x86b035ce06c4a754d58872b305522ef193b85017/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | ethereum | n/a | [`0xb22764...c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | ⚠️ Unaudited |
| TokenholderGovernor | governance | ethereum | n/a | [`0xd101f2...6f5447`](./contracts/ethereum-1/0xd101f2b25bcbf992bdf55db67c104fe7646f5447/) | ⚠️ Unaudited |
| VendingMachineV3 | unknown | ethereum | n/a | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | governance | ethereum | n/a | 12 deployments: ethereum [`0x04c3e6...c4495e`](./contracts/ethereum-1/0x04c3e6af3a22f6e03f22842d5729901633c4495e/); ethereum `0x343e96...5c606e`; ethereum `0x371695...355638`; ethereum `0x5ee284...30d0a0`; ethereum `0x64ecdc...bb4260`; ethereum `0x794fc0...0ea34b`; ethereum `0x890d38...5f67d4`; ethereum `0x92fcbd...8b9a21`; ethereum `0xc8cad4...8e8570`; ethereum `0xe0d2e1...b970a6`; base `0x3e765e...474168`; arbitrum `0x68c0dc...7214a4` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (53)

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
| UnnamedContract | unknown | ethereum | n/a | `0x7f025c...889e92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x829242...3f9107` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x834fc8...3322e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84a87a...2eda0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85906d...79c9d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x928cae...2b5f63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93e8b4...f8b16a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95d7ff...bdd55c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98e19c...84f2ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1958c...ed4d2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8224c...9535a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe89e8...e42900` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7a06d...761d4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc94567...4a9576` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb54e3...b83c24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce25c9...235cc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfe4a9...3b4056` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd55a6b...db699e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8cf88...5d8581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdffec9...4fe804` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe261b3...3616e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf52a28...e93a57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf983b1...19f345` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfacc22...065b96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc1e05...14526b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [consensys.net/diligence/audits/2020/02/thesis-tbtc-and-keep](https://diligence.security/audits/2020/02/thesis-tbtc-and-keep) | Consensys Diligence | Audit | 2020-03 | stale | Direct | contract_name | 3 | high |
| [cryptographic review](https://diligence.security/audits/2020/03/thesis-cryptographic-review) | ConsenSys Diligence | Audit | 2020-03 | stale | Direct | n/a | 0 | n/a |
| [* **Report:** [View Audit 1 PDF]() - [View Audit 2 PDF](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing)&#x20;](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [* **Report:** [View Audit 1 PDF](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) - [View Audit 2 PDF]()&#x20;](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [* **Report**: [View PDF]()](https://drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [* **Report**: [View PDF]()](https://drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view?usp=sharing) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [* **Report:** [View PDF]()](https://drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [* **Report:** [View PDF]()](https://drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [* **Report:** [View PDF]()](https://www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760?source=copy_link) | Code4rena | Contest | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [* **Report:** [View PDF]()](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-04 | stale | Direct | contract_name | 3 | high |
| [* **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-solana-smart-contracts/)](https://leastauthority.com/blog/audit-of-keep-network-solana-smart-contracts) | Least Authority | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [* **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/)](https://github.com/threshold-network/security-audits/blob/main/29-Sep-2022-LeastAuthority.pdf) | Least Authority | Audit | 2022-09 | stale | Direct | contract_name | 18 | high |
| [* **Report:** [View Audit PDF](https://github.com/threshold-network/security-audits/blob/main/29-Sep-2022-LeastAuthority.pdf) - [Link to Least Authority]()](https://leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2) | Least Authority | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [* **Report:** [View Audit PDF]() - [Link to CertiK](https://www.certik.com/projects/threshold-network)](https://github.com/threshold-network/security-audits/blob/main/19-Nov-2021-CertiK.pdf) | CertiK | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [* **Report:** [View Audit PDF](https://github.com/threshold-network/security-audits/blob/main/19-Nov-2021-CertiK.pdf) - [Link to CertiK]()](https://skynet.certik.com/projects/threshold-network) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [* **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network)](https://github.com/threshold-network/security-audits/blob/main/09-Nov-2021-ChainSecurity.pdf) | ChainSecurity | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [* **Report:** [View Audit PDF](https://github.com/threshold-network/security-audits/blob/main/09-Nov-2021-ChainSecurity.pdf) - [Link to ChainSecurity]()](https://www.chainsecurity.com/security-audit/threshold-network) | ChainSecurity | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [29-Aug-2023-LeastAuthority.pdf](https://github.com/threshold-network/security-audits/blob/main/29-Aug-2023-LeastAuthority.pdf) | LeastAuthority | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x85eee3...09afec`](./contracts/ethereum-1/0x85eee30c52b0b379b046fb0f85f4f3dc3009afec/) | KeepToken | token | $24,650,056.38 | Verified native implementation with $24,650,056.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf9166...089ff1`](./contracts/ethereum-1/0xcf916681a6f08fa22e9ef3e665f2966bf3089ff1/) | TokenPool | core_logic | $4,461.47 | Verified native implementation with $4,461.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f7191...74591b`](./contracts/ethereum-1/0x0f7191df5430c2b43f0cfaf9b444deb57c74591b/) | Allowlist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x613d08...7a8964`](./contracts/ethereum-1/0x613d088f2e5a2ed91635016483dafa3cd47a8964/) | BatchWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x192292...8a8636`](./contracts/ethereum-1/0x192292817680196a0215a50b07d1c5e7ab8a8636/) | CairoBootloaderProgram | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23cab3...9494e4`](./contracts/ethereum-1/0x23cab3cf1aa7b929df5e9f3712aca3a6fb9494e4/) | Committee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bde14...7d4420`](./contracts/ethereum-1/0x1bde14b50e7daed71ee14f7e8defaa3d8a7d4420/) | CpuConstraintPoly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x015381...442cd6`](./contracts/ethereum-1/0x015381651f240ed6c44122dcba6cf807c9442cd6/) | CpuFrilessVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35e9f6...83e7cb`](./contracts/ethereum-1/0x35e9f63efc97e008f3f9097ea3293b540483e7cb/) | CpuOods | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3da16...74b9ce`](./contracts/ethereum-1/0xa3da166aef05dba08d67ea5b442dd9574274b9ce/) | EcdsaPointsXColumn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30efaa...93d400`](./contracts/ethereum-1/0x30efaaa99f8efe310d9fdc83072e2a04c093d400/) | FriStatementContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13e120...b0d934`](./contracts/ethereum-1/0x13e120f6c8e747983f7aaf0f7731796bfcb0d934/) | GpsStatementVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1293a5...a15458`](./contracts/ethereum-1/0x1293a54e160d1cd7075487898d65266081a15458/) | GrantStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x099597...599eab`](./contracts/ethereum-1/0x09959798b95d00a3183d20fac298e4594e599eab/) | KeepRandomBeaconServiceImplV1 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ccd6b...52b0f6`](./contracts/ethereum-1/0x2ccd6b51e7bea429ba0d4c526c60c4f71852b0f6/) | LockReleaseTokenPoolAndProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32a91f...58fdad`](./contracts/ethereum-1/0x32a91ff604ab2adcd832e91d68b2f3f25358fdad/) | MerkleStatementContract | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x254e2f...c94b0d`](./contracts/ethereum-1/0x254e2f7bcb4c5892d67d3c51b2c5b50d93c94b0d/) | NativeBTCDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc596b...1d9e70`](./contracts/ethereum-1/0xdc596b881bd9e33d3a56ae86031417645d1d9e70/) | PedersenHashPointsXColumn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5318ed...83953e`](./contracts/ethereum-1/0x5318edcfecaf84eb5a3a4d364c2dcff06083953e/) | PoseidonPoseidonPartialRoundKey0Column | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | RandomBeacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x326adc...dd8735`](./contracts/ethereum-1/0x326adc48eb74415cd483adcb8c9c9cdef3dd8735/) | RebateStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | StakingPortBacker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95ff25...c7fd95`](./contracts/ethereum-1/0x95ff25a59dc9c5a41cf0709dc916041e5dc7fd95/) | StarknetEthBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70a368...59a356`](./contracts/ethereum-1/0x70a36886adf5c3b8b5f370c3f037e9116159a356/) | StarknetTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c0700...4fe3cd`](./contracts/ethereum-1/0x9c070027cdc9dc8f82416b2e5314e11dfb4fe3cd/) | TBTCVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | VendingMachineV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 10 |
| standard_library | 5 |
| needs_review | 55 |

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
