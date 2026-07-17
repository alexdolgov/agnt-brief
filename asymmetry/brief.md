# Agentic Audit Brief: Asymmetry

⚠️ Lifecycle status: DECLINING - TVL dropped 61.8% over 90 days

## Project Overview

- Project: Asymmetry (`asymmetry`)
- Website: [https://asymmetry.fi](https://asymmetry.fi)
- Lifecycle: declining (Tier 0, 93.3% below peak)
- Generated: 2026-07-04T14:53:04.212Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: base, ethereum
- Contract surface: 493 unique implementations (610 raw deployments)
- DeFi Llama TVL: $2,108,098.00
- On-chain TVL (included contracts): $27,642,835.48
- TVL by chain: Ethereum $25,252,221.65 | Base $2,390,613.83

## Project Description

Indexes. Structurally: 72 project-authored contract(s) across 2 chain(s); 8 ERC20 tokens, 11 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 9 common project-authored base contract(s) (basezapper, addremovemanagers, leftoverssweep). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 611; live-surface contracts included: 610 (215 live, 395 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 32/83 (38.6%)
- Deployed-live implementations: 102 of 493 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 44/102
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 391
- Unique implementations: 493
- Raw deployments: 610
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): $24,695,549.53
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 7 aging, 7 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 44 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 27.7% (Certora, Code4rena, Spearbit)
- Note: This protocol is classified as [declining]. ASD of $24,695,549.53 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 23 | 22.5% | 2024-10 |
| Zellic | Tier 2 | 21 | 20.6% | 2023-07 |
| unknown | Tier 2 | 12 | 11.8% | n/a |
| GalloDaSballo | Tier 2 | 11 | 10.8% | n/a |
| Spearbit | Tier 1 | 10 | 9.8% | n/a |
| romeroadrian | Tier 2 | 8 | 7.8% | 2024-06 |
| Coinspect | Tier 2 | 7 | 6.9% | 2024-12 |
| Dedaub | Tier 2 | 6 | 5.9% | 2024-08 |
| Certora | Tier 1 | 4 | 3.9% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (44)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RETHToken | token | ethereum | n/a | [`0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593`](./contracts/ethereum-1/0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593/) | ✅ Audited |
| ActivePool | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x08eaafd8fbb12cf12d6765e80c5b0ff8490c232d`](./contracts/ethereum-1/0x08eaafd8fbb12cf12d6765e80c5b0ff8490c232d/); ethereum `0x20f29569566020d8e49c9843033c370772a93774`; ethereum `0x244c422663328233a5d1bd5045ff943ba97d046e`; ethereum `0xb00d1d5dfd72a440b8c04a5f7b5bc3c8159a7f44`; ethereum `0xb87e1e1c4cc2decada13025a8dc8a94bdb77fb63`; ethereum `0xf507e264d507ef64a72aeaf4cc8c270d008fc48a` | ✅ Audited |
| VotiumStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x00000069abbb0b1ad6975bcf753eee15d318a0bf`](./contracts/ethereum-1/0x00000069abbb0b1ad6975bcf753eee15d318a0bf/); ethereum `0xb628b1fdbe8c01777aea2bf3bd386df4af84e8d3` | ✅ Audited |
| AddressesRegistry | registry | ethereum | n/a | 6 deployments: ethereum [`0x0ad1c302203f0fbb6ca34641bdfef0bf4182377c`](./contracts/ethereum-1/0x0ad1c302203f0fbb6ca34641bdfef0bf4182377c/); ethereum `0x0c7b6c6a60ae2016199d393695667c1482719c82`; ethereum `0x2c5a85a3fd181857d02baff169d1e1cb220ead6d`; ethereum `0x330a0fdfc1818be022fedce96a041293e16dc6d1`; ethereum `0x3414bd84dff0900a9046a987f4df2e0ef08fa1ce`; ethereum `0xbd9f75471990041a3e7c22872c814a273485e999` | ✅ Audited |
| AfCvx | unknown | ethereum | n/a | 2 deployments: ethereum [`0x56664ffccff6bb282cca96808af03d9042e1f799`](./contracts/ethereum-1/0x56664ffccff6bb282cca96808af03d9042e1f799/); ethereum `0x8668a15b7b023dc77b372a740fcb8939e15257cf` | ✅ Audited |
| AfEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0000000016e6cb3038203c1129c8b4aee7af7a11`](./contracts/ethereum-1/0x0000000016e6cb3038203c1129c8b4aee7af7a11/); ethereum `0xdf124ac313c0b5d9e61db7da7faaf05aedc832c6` | ✅ Audited |
| AfEth | unknown | ethereum | n/a | 4 deployments: ethereum [`0x5281cca5a757b1c8487be7e3368c62db32c7288f`](./contracts/ethereum-1/0x5281cca5a757b1c8487be7e3368c62db32c7288f/); ethereum `0x8896ef81b2d1c92e8540d543816a5260b991a61c`; ethereum `0x90a60788c1a94c2eac4f8621f42ada81a956778a`; ethereum `0xae4131013f141f6306acbcbd26ba7006f8f63256` | ✅ Audited |
| AfEthRelayer | unknown | ethereum | n/a | [`0x7df87c1f23192803167106b76e730227e1c288ad`](./contracts/ethereum-1/0x7df87c1f23192803167106b76e730227e1c288ad/) | ✅ Audited |
| Ankr | unknown | ethereum | n/a | 2 deployments: ethereum [`0xf4a1735505188daf0872312dd1a6182d342ea981`](./contracts/ethereum-1/0xf4a1735505188daf0872312dd1a6182d342ea981/); ethereum `0xfa2d4c03b9b48918f37c926f2dd08dca70d7082f` | ✅ Audited |
| BorrowerOperations | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x2538cd346429ea59902e02448bb7a7c098e4554e`](./contracts/ethereum-1/0x2538cd346429ea59902e02448bb7a7c098e4554e/); ethereum `0x336d9c5ecb9d6ce79c8c077d35426e714969b41d`; ethereum `0x57bd20ae68f845b35b76fe6e0239c9929eb48469`; ethereum `0x664507f1445657d36d8064663653b7810971f411`; ethereum `0x9e601005deaaee8294c686e28e1affd04cc13830`; ethereum `0xda9af112edfd837eebc1780433481426a52556e0` | ✅ Audited |
| BTCPriceFeed | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x4b74d043336678d2f62dae6595bc42dccabc3bb1`](./contracts/ethereum-1/0x4b74d043336678d2f62dae6595bc42dccabc3bb1/); ethereum `0xeaf3b36748d89d64ef1b6b3e1d7637c3e4745094` | ✅ Audited |
| CollateralRegistry | registry | ethereum | n/a | 5 deployments: ethereum [`0x33d68055cd54061991b2e98b9ab326ffce4d60fe`](./contracts/ethereum-1/0x33d68055cd54061991b2e98b9ab326ffce4d60fe/); ethereum `0x447fd8743a7a545fc95a42bf4afd4122bdcaeff4`; ethereum `0xa70d1455f393f709de0f94ab9e6d9f5777096650`; ethereum `0xcff0dcab01563e5324ef9d0adb0677d9c167d791`; ethereum `0xd5d9c0d32890be92d7680b65e785e4a95c366a35` | ✅ Audited |
| HintHelpers | periphery | ethereum | n/a | [`0x838a1f38c361ffa1b23201640752149adb4e865a`](./contracts/ethereum-1/0x838a1f38c361ffa1b23201640752149adb4e865a/) | ✅ Audited |
| InterestRouter | adapter | ethereum | n/a | [`0x1771f4de6836b10b59dd66990b0190985df6673c`](./contracts/ethereum-1/0x1771f4de6836b10b59dd66990b0190985df6673c/) | ✅ Audited |
| MultiTroveGetter | unknown | ethereum | n/a | [`0xb3683a407bddddfb126cf06fb52d974a08fd7e80`](./contracts/ethereum-1/0xb3683a407bddddfb126cf06fb52d974a08fd7e80/) | ✅ Audited |
| PirexMigrator | periphery | ethereum | n/a | [`0x552f4b850d4963d914e6b2c011b5fe475468d3b8`](./contracts/ethereum-1/0x552f4b850d4963d914e6b2c011b5fe475468d3b8/) | ✅ Audited |
| Reth | token | ethereum | n/a | 2 deployments: ethereum [`0x228f6ae1c458929427253e14879711d303c328d3`](./contracts/ethereum-1/0x228f6ae1c458929427253e14879711d303c328d3/); ethereum `0xd8ed29a2d82d53307d8a4d9b33eb6e68ea8c4908` | ✅ Audited |
| Reth | token | ethereum | n/a | 2 deployments: ethereum [`0x50ea7bca3088b04ff0cb69fe72d70d9daec44cc4`](./contracts/ethereum-1/0x50ea7bca3088b04ff0cb69fe72d70d9daec44cc4/); ethereum `0xbcfed6cc8ed838b7a8433ad83c271145798a115e` | ✅ Audited |
| Reth | token | ethereum | n/a | 2 deployments: ethereum [`0x7b6633c0cd81dc338688a528c0a3f346561f5ca3`](./contracts/ethereum-1/0x7b6633c0cd81dc338688a528c0a3f346561f5ca3/); ethereum `0xb3e64c481f0fc82344a7045592284fddb9905b8b` | ✅ Audited |
| Reth | token | ethereum | n/a | 2 deployments: ethereum [`0x8d5dd29592bf3bd5dc98eb6c0e895fea4bd890d0`](./contracts/ethereum-1/0x8d5dd29592bf3bd5dc98eb6c0e895fea4bd890d0/); ethereum `0xa5ad76eaec4a6982e79a69020e75413c9e78c32b` | ✅ Audited |
| RETHPriceFeed | operational_periphery | ethereum | n/a | [`0x6c3774c30cb609e13ffdbae7c5ecd189b0898c56`](./contracts/ethereum-1/0x6c3774c30cb609e13ffdbae7c5ecd189b0898c56/) | ✅ Audited |
| SafEth | unknown | ethereum | n/a | 4 deployments: ethereum [`0x013c0652f5d700c875d45f1608e5089ed80bbcfb`](./contracts/ethereum-1/0x013c0652f5d700c875d45f1608e5089ed80bbcfb/); ethereum `0x28baa249307becdd85c556afa41f2c346e515c41`; ethereum `0x7c8fb4b1642f15c5d33e82a9704def85b76fd23e`; ethereum `0xce2b86550d3925c5588020ec003773bee38fd03c` | ✅ Audited |
| SafEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x591c4abf20f61a8b0ee06a5a2d2d2337241fe970`](./contracts/ethereum-1/0x591c4abf20f61a8b0ee06a5a2d2d2337241fe970/); ethereum `0x6732efaf6f39926346bef8b821a04b6361c4f3e5` | ✅ Audited |
| SafEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0xba9d683854209fa0f57ae0514fe281653f04c0df`](./contracts/ethereum-1/0xba9d683854209fa0f57ae0514fe281653f04c0df/); ethereum `0xe7ebef64f1ff602a28d8d37049e46d0ca77a38ac` | ✅ Audited |
| SafEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbbf865043beed9b73bcdf15b6c5f278e5626931e`](./contracts/ethereum-1/0xbbf865043beed9b73bcdf15b6c5f278e5626931e/); ethereum `0xc57319e15d5d78ba73c08c4e09d320705bd4478d` | ✅ Audited |
| SfrxEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0e14dcfcf4c7eab1d7031835a38db1828b650e5f`](./contracts/ethereum-1/0x0e14dcfcf4c7eab1d7031835a38db1828b650e5f/); ethereum `0xbc47184697554348f1adbc30be13ed7e201cf86a` | ✅ Audited |
| SfrxEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ed84a676f3ba626389cb131e7c1bc32935bba37`](./contracts/ethereum-1/0x1ed84a676f3ba626389cb131e7c1bc32935bba37/); ethereum `0x9092101668b6befeaacd351f02bc1ac3bc2a60b6` | ✅ Audited |
| SfrxEth | unknown | ethereum | n/a | [`0x217e2487fd4323aa957730ebd24ce8f400d199d8`](./contracts/ethereum-1/0x217e2487fd4323aa957730ebd24ce8f400d199d8/) | ✅ Audited |
| SfrxEth | unknown | ethereum | n/a | 3 deployments: ethereum [`0x27137a49472fb741b671770fcfcc918489113b11`](./contracts/ethereum-1/0x27137a49472fb741b671770fcfcc918489113b11/); ethereum `0x36ce17a5c81e74dc111547f5dffbf40b8bf6b20a`; ethereum `0x636f16774cf553abf27c6b708a51d167304e49e8` | ✅ Audited |
| SfrxEth | unknown | ethereum | n/a | 4 deployments: ethereum [`0x410edaf016482c8d3a866f778c24bd872a8797cf`](./contracts/ethereum-1/0x410edaf016482c8d3a866f778c24bd872a8797cf/); ethereum `0x4fb6c0f144790ee49cee25f62fee0c3fe5884fe6`; ethereum `0xa2f35a80a2f7ab67cf9187a4988129aa4c7f920c`; ethereum `0xdf7205bd4aa3985da5626d588c1215fb37c0c0cd` | ✅ Audited |
| StabilityPool | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x446f358e3a927cc68f342141d78aa2d1c54e18f0`](./contracts/ethereum-1/0x446f358e3a927cc68f342141d78aa2d1c54e18f0/); ethereum `0x545a7ddfd863bd7ea0bfc689125169598085f75e`; ethereum `0x83e5bde77d7477ecd972e338541b90af57675536`; ethereum `0x922faa141e95e43a9deeab8dade3ac8d4a32ad5c`; ethereum `0xb571781cedf07257d60d6b252a3d8b24150ded97`; ethereum `0xd48dc7cddc481f596bd9a97755c7ac696ad4ea87` | ✅ Audited |
| Stafi | unknown | ethereum | n/a | 2 deployments: ethereum [`0xad0e8edbdabdc4dd204b49f73511c1a13a8797cc`](./contracts/ethereum-1/0xad0e8edbdabdc4dd204b49f73511c1a13a8797cc/); ethereum `0xc9bbccaf813b3329586a2479ff04f1fc794822da` | ✅ Audited |
| Swell | unknown | ethereum | n/a | 2 deployments: ethereum [`0xf5ccaf2dbed6c7ae341df42a9a74e057e9df3d09`](./contracts/ethereum-1/0xf5ccaf2dbed6c7ae341df42a9a74e057e9df3d09/); ethereum `0xfb8725366b3e3011ff7445106f40fab97a8371b1` | ✅ Audited |
| TroveManager | governance | ethereum | n/a | 6 deployments: ethereum [`0x478e7c27193aca052964c3306d193446027630b0`](./contracts/ethereum-1/0x478e7c27193aca052964c3306d193446027630b0/); ethereum `0x53ce82ac43660aab1f80fecd1d74afe7a033d505`; ethereum `0x7aff0173e3d7c5416d8caa3433871ef07568220d`; ethereum `0x7bd47eca45ee18609d3d64ba683ce488ca9320a3`; ethereum `0xf8a25a2e4c863bb7cea7e4b4eeb3866bb7f11718`; ethereum `0xfb17d0402ae557e3efa549812b95e931b2b63bce` | ✅ Audited |
| VotiumStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x12fc2bf0edea2437cd4fe17ec2b65dc45eb92aad`](./contracts/ethereum-1/0x12fc2bf0edea2437cd4fe17ec2b65dc45eb92aad/); ethereum `0x5aed1241b2b4530d45f1e837a3955ab7953f8cd4` | ✅ Audited |
| VotiumStrategy | core_logic | ethereum | n/a | [`0x8794f7a0c53cf536ff50a9d7f736cd402fa1fae4`](./contracts/ethereum-1/0x8794f7a0c53cf536ff50a9d7f736cd402fa1fae4/) | ✅ Audited |
| WETHPriceFeed | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x0daafddcf74451caec724bcd2f0d7e4025c95b94`](./contracts/ethereum-1/0x0daafddcf74451caec724bcd2f0d7e4025c95b94/); ethereum `0x2113468843cf2d0fd976690f4ec6e4213df46911`; ethereum `0x629b6c0dcdf865584fd58a08727abb9db7390e28`; ethereum `0x653df748bf7a692555dcdbf4c504a8c84807f7c7`; ethereum `0x7f575323ddedfbad449fef5459fad031fe49520b`; ethereum `0xf125c72ae447efdf3fa3601eda9ac0ebec06cbb8` | ✅ Audited |
| WstEth | token | ethereum | n/a | 2 deployments: ethereum [`0x1533edbe274aa1b9fb5db2652d6d143e939b306f`](./contracts/ethereum-1/0x1533edbe274aa1b9fb5db2652d6d143e939b306f/); ethereum `0xf430e45f4001c37d2ff443e7a0405df3e592c915` | ✅ Audited |
| WstEth | token | ethereum | n/a | [`0x91d4109e2058c229bb96509e0254ed50ad96ba17`](./contracts/ethereum-1/0x91d4109e2058c229bb96509e0254ed50ad96ba17/) | ✅ Audited |
| WstEth | token | ethereum | n/a | 2 deployments: ethereum [`0x972a53e3a9114f61b98921fb5b86c517e8f23fad`](./contracts/ethereum-1/0x972a53e3a9114f61b98921fb5b86c517e8f23fad/); ethereum `0xc57d67ca8888c74d979a4fa1c9cde0333ed76208` | ✅ Audited |
| WstEth | token | ethereum | n/a | 2 deployments: ethereum [`0xc56aef0e7dbf2868e4bfe9df184b2bbf1ae75a12`](./contracts/ethereum-1/0xc56aef0e7dbf2868e4bfe9df184b2bbf1ae75a12/); ethereum `0xcac2c9f10780d2f73085a83523eecdc8bf86ae74` | ✅ Audited |
| WstEth | token | ethereum | n/a | 2 deployments: ethereum [`0xda8a4d1cbdd5b78a89ef889e9fea082a138458a9`](./contracts/ethereum-1/0xda8a4d1cbdd5b78a89ef889e9fea082a138458a9/); ethereum `0xffd7da746c46f7f0d779a6cd6f5ff59b7b6b9ca4` | ✅ Audited |
| WSTETHPriceFeed | operational_periphery | ethereum | n/a | [`0xa94a6cb1796a6404683786d3b56c3102a709cef3`](./contracts/ethereum-1/0xa94a6cb1796a6404683786d3b56c3102a709cef3/) | ✅ Audited |
| Zapper | adapter | ethereum | n/a | [`0xe7099092533a3fb693bb123cd96b8e53b4d83c58`](./contracts/ethereum-1/0xe7099092533a3fb693bb123cd96b8e53b4d83c58/) | ✅ Audited |

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| swETH | token | ethereum | n/a | [`0xf951e335afb289353dc249e82926178eac7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | [`0xaad3b9047dca4d5565471a3cce2767c56535ec65`](./contracts/base-8453/0xaad3b9047dca4d5565471a3cce2767c56535ec65/) | ⚠️ Unaudited |
| AsfToken | token | ethereum | n/a | [`0x59a529070fbb61e6d6c91f952ccb7f35c34cf8aa`](./contracts/ethereum-1/0x59a529070fbb61e6d6c91f952ccb7f35c34cf8aa/) | ⚠️ Unaudited |
| WrappedWbtc | token | ethereum | n/a | 3 deployments: ethereum [`0x99b36ed441cd2936ae3742c9cba62d261a468752`](./contracts/ethereum-1/0x99b36ed441cd2936ae3742c9cba62d261a468752/); ethereum `0xe065bc161b90c9c4bba2de7f1e194b70a3267c47`; ethereum `0xf53bb90bd20c2a3eb3eb01e8233130a69db58324` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x1ee6db6b89fbf07489ec4cdae89b82c97c7c53ea`](./contracts/ethereum-1/0x1ee6db6b89fbf07489ec4cdae89b82c97c7c53ea/); ethereum `0x2637f30242bb8eed4e8c261aa5b6ebf0e9b970ef`; ethereum `0x2ffff76ee152164f4defc95fb0cf88528251ab9e`; ethereum `0x654973123cd5c7e3f47fee7e94a85b55e919f912`; ethereum `0x69671a4da351b64026302f6ac24827620c3c7665`; ethereum `0x6dec370efa894d48d8c55012b0cd6f3c1c7c4616` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | ethereum | n/a | [`0x0abd93da8387b5ef0511a2859d85d84fe4519e94`](./contracts/ethereum-1/0x0abd93da8387b5ef0511a2859d85d84fe4519e94/) | ⚠️ Unaudited |
| StafiSuperNodeFeePool | core_logic | ethereum | n/a | [`0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0`](./contracts/ethereum-1/0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0/) | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | n/a | [`0xe95a203b1a91a908f9b9ce46459d101078c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| ASFOFTAdapter | adapter | ethereum | n/a | [`0x4feb6c50a69d0cb29f77e307249c767607b04408`](./contracts/ethereum-1/0x4feb6c50a69d0cb29f77e307249c767607b04408/) | ⚠️ Unaudited |
| AsfToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17969afc774ec28802f1316cd4474c537114600a`](./contracts/ethereum-1/0x17969afc774ec28802f1316cd4474c537114600a/); ethereum `0x876f12e22c3471e3ca790cfd079a7842db29e7f7` | ⚠️ Unaudited |
| Auction | unknown | ethereum | n/a | [`0x6e988d3a79cc4daedfdc7cef2f76160f81c8f945`](./contracts/ethereum-1/0x6e988d3a79cc4daedfdc7cef2f76160f81c8f945/) | ⚠️ Unaudited |
| AuctionFactory | registry | ethereum | n/a | [`0xa3a3702d81fd317fa1b8735227e29dc756c976c5`](./contracts/ethereum-1/0xa3a3702d81fd317fa1b8735227e29dc756c976c5/) | ⚠️ Unaudited |
| CbbtcZapper | adapter | ethereum | n/a | [`0x1666ee2dbb308c1ee321cc6f1575afceaad9b1e5`](./contracts/ethereum-1/0x1666ee2dbb308c1ee321cc6f1575afceaad9b1e5/) | ⚠️ Unaudited |
| CrvUsdFallbackOracle | operational_periphery | ethereum | n/a | [`0x2b36d82bfb9ea09bbed084be34df942aad0eeb35`](./contracts/ethereum-1/0x2b36d82bfb9ea09bbed084be34df942aad0eeb35/) | ⚠️ Unaudited |
| dASF | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7fe24f1a024d33506966cb7ca48bab8c65fb632d`](./contracts/ethereum-1/0x7fe24f1a024d33506966cb7ca48bab8c65fb632d/); ethereum `0x9e1eda81f41242327036533af866b113df241d97`; ethereum `0xf941898f4207c75ed5032bd28f696253b810dffa` | ⚠️ Unaudited |
| dASF Redemptions | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5b9a4b5a377e2377f6f5873e95d9274caed4b680`](./contracts/ethereum-1/0x5b9a4b5a377e2377f6f5873e95d9274caed4b680/); ethereum `0x8f1477eb096d664d317c2c31cb647c9e2e98dc28`; ethereum `0xdc59d29608a5b16642a82b073c32ad4a72afdd27` | ⚠️ Unaudited |
| Dutch Desk | unknown | ethereum | n/a | [`0x04d258d3ee00ef9840985afd373037d91c56f60e`](./contracts/ethereum-1/0x04d258d3ee00ef9840985afd373037d91c56f60e/) | ⚠️ Unaudited |
| Multisig | governance | ethereum | n/a | 2 deployments: ethereum [`0x003aace7e639624b4d15cd923da81b356aee75d3`](./contracts/ethereum-1/0x003aace7e639624b4d15cd923da81b356aee75d3/); ethereum `0x6aacff7ec8903c2c7883b1a6af85e6e330999aa6` | ⚠️ Unaudited |
| OnLossDepositLimit | unknown | ethereum | n/a | [`0x746c238e34a6dbfe1d35d50471467bd7bf898f62`](./contracts/ethereum-1/0x746c238e34a6dbfe1d35d50471467bd7bf898f62/) | ⚠️ Unaudited |
| Price Oracle | operational_periphery | ethereum | n/a | [`0xb1d07f500393b768c64b9ceeba85c58dc639cad4`](./contracts/ethereum-1/0xb1d07f500393b768c64b9ceeba85c58dc639cad4/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 6 deployments: ethereum [`0x12a14d3e78a2b0368ea784e04457af2bb6878d40`](./contracts/ethereum-1/0x12a14d3e78a2b0368ea784e04457af2bb6878d40/); ethereum `0x2b408df4b4e112276119bd6ca1710b6c9966809e`; ethereum `0x3777c51170b0c1cec4b236166680802c22d262cb`; ethereum `0xa30e67c67125942caeec5c0d2f21aff63bad1ed3`; ethereum `0xc6798b0f2d509d6c8c6df13adff5c1a5d38a6c11`; ethereum `0xdf9f1f2638fe661062a5aad49534c5554588aeac` | ⚠️ Unaudited |
| RETHToBOLDExchange | unknown | ethereum | n/a | [`0x6aed7c8e57f905863caaab59fc10b5d95a4fab76`](./contracts/ethereum-1/0x6aed7c8e57f905863caaab59fc10b5d95a4fab76/) | ⚠️ Unaudited |
| ScrvUsdOracle | operational_periphery | ethereum | n/a | [`0x5a0605efb3a50adc9f81dd456812953655aa4ec9`](./contracts/ethereum-1/0x5a0605efb3a50adc9f81dd456812953655aa4ec9/) | ⚠️ Unaudited |
| SfrxUsdOracle | operational_periphery | ethereum | n/a | [`0x48ba7b711a8d5dadc6690de2e86533f70ee5b433`](./contracts/ethereum-1/0x48ba7b711a8d5dadc6690de2e86533f70ee5b433/) | ⚠️ Unaudited |
| Sorted Troves | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5b10963ff6c8bd0cb054a5a895ab91c1aca1e7d5`](./contracts/ethereum-1/0x5b10963ff6c8bd0cb054a5a895ab91c1aca1e7d5/); ethereum `0xff1ce633646ca7fa3eb9c79a5dda340564afafb6` | ⚠️ Unaudited |
| StafiDistributor | operational_periphery | ethereum | n/a | [`0x5db09e020d94f923408661f94704073dc86dba3d`](./contracts/ethereum-1/0x5db09e020d94f923408661f94704073dc86dba3d/) | ⚠️ Unaudited |
| StafiLightNode | unknown | ethereum | n/a | [`0x1c906685384df71e3fafa6f3b21bd884e9d44f4b`](./contracts/ethereum-1/0x1c906685384df71e3fafa6f3b21bd884e9d44f4b/) | ⚠️ Unaudited |
| StafiNodeManager | governance | ethereum | n/a | [`0xd8575c32bbc1ea9d33856a6de74be258712307a8`](./contracts/ethereum-1/0xd8575c32bbc1ea9d33856a6de74be258712307a8/) | ⚠️ Unaudited |
| StafiSuperNode | unknown | ethereum | n/a | [`0x588e859cb38fecf2d56925c0512471ab47aa9ff1`](./contracts/ethereum-1/0x588e859cb38fecf2d56925c0512471ab47aa9ff1/) | ⚠️ Unaudited |
| StafiUserDeposit | unknown | ethereum | n/a | [`0xc12dfb80d80d564db9b180abf61a252ee6355058`](./contracts/ethereum-1/0xc12dfb80d80d564db9b180abf61a252ee6355058/) | ⚠️ Unaudited |
| StakeManager | governance | ethereum | n/a | [`0x3aee3e96c9e340cbe0fffc5224db9e97949f3899`](./contracts/ethereum-1/0x3aee3e96c9e340cbe0fffc5224db9e97949f3899/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x412330b91b991aa5a72e22bb5e43c1041dc25f9e`](./contracts/ethereum-1/0x412330b91b991aa5a72e22bb5e43c1041dc25f9e/) | ⚠️ Unaudited |
| StrategyAprOracle | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x0e40eb56626cfd0f41ca7a72618209d958561e65`](./contracts/ethereum-1/0x0e40eb56626cfd0f41ca7a72618209d958561e65/); ethereum `0x716ee5e94b67b515e5266fa05ae0e2524c10a899`; ethereum `0x8d26d5251cf5e228a4aa7698c8c75879cebec807`; ethereum `0xe299634135b4f0037344ede02e4a98e28dfba79e`; ethereum `0xe9015ae7b6cf7d972ebd10ffc09ed26034f85786` | ⚠️ Unaudited |
| StrategyFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x73dfcc4fb90e6e252e5d41f6588534a8043dba58`](./contracts/ethereum-1/0x73dfcc4fb90e6e252e5d41f6588534a8043dba58/); ethereum `0xbf7a38c6de0831916301b8dd09bd72fbd0c547d1` | ⚠️ Unaudited |
| StrategyFixedReportTrigger | core_logic | ethereum | n/a | [`0x600d6aebd8eacfcfbb8eedff139408200d01007c`](./contracts/ethereum-1/0x600d6aebd8eacfcfbb8eedff139408200d01007c/) | ⚠️ Unaudited |
| StyBoldOracle | operational_periphery | ethereum | n/a | [`0xc1ed3729cfcf9f93a7dbe1e4669bc67793182d03`](./contracts/ethereum-1/0xc1ed3729cfcf9f93a7dbe1e4669bc67793182d03/) | ⚠️ Unaudited |
| SusdsOracle | operational_periphery | ethereum | n/a | [`0x9d09d5175783f0caa56d6d1e7590c2b935082d10`](./contracts/ethereum-1/0x9d09d5175783f0caa56d6d1e7590c2b935082d10/) | ⚠️ Unaudited |
| TbtcFallbackOracle | operational_periphery | ethereum | n/a | [`0x193b7da0f8036709774054dfd7539ca36654aba5`](./contracts/ethereum-1/0x193b7da0f8036709774054dfd7539ca36654aba5/) | ⚠️ Unaudited |
| TbtcOracle | operational_periphery | ethereum | n/a | [`0x39fca0f77ba22926e8e5ec5df68271eb49a3a775`](./contracts/ethereum-1/0x39fca0f77ba22926e8e5ec5df68271eb49a3a775/) | ⚠️ Unaudited |
| tBTCToUSDafExchange | unknown | ethereum | n/a | [`0x1a173e7223dbd1e66bbe654a0b8c4c1ebd98134f`](./contracts/ethereum-1/0x1a173e7223dbd1e66bbe654a0b8c4c1ebd98134f/) | ⚠️ Unaudited |
| TokenLocker | token | ethereum | n/a | [`0xf119b5aa93a7755b09952b3a88d04cdaf5329034`](./contracts/ethereum-1/0xf119b5aa93a7755b09952b3a88d04cdaf5329034/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | 2 deployments: ethereum [`0x5f10b16f0959aac2e33bedc9b0a4229bb9a83590`](./contracts/ethereum-1/0x5f10b16f0959aac2e33bedc9b0a4229bb9a83590/); ethereum `0xb5d336912eb99d0ea05f499172f39768afab8d4b` | ⚠️ Unaudited |
| Trove Manager | governance | ethereum | n/a | 2 deployments: ethereum [`0x36e9ee7a0ce154cc1e379a7c0231fa19c0b41c1f`](./contracts/ethereum-1/0x36e9ee7a0ce154cc1e379a7c0231fa19c0b41c1f/); ethereum `0xc1296a0084702b72cfd465ff1ef11b8283dabaec` | ⚠️ Unaudited |
| USDaf Flash Zapper | adapter | ethereum | n/a | 6 deployments: ethereum [`0x0502dbe106d80577b156b0679342a11dca91b072`](./contracts/ethereum-1/0x0502dbe106d80577b156b0679342a11dca91b072/); ethereum `0x07b152f14e53a4b24bf0e513a9743539efaead67`; ethereum `0x1a3f5ebaaf0702ec2a707cbd28b397dc4dca4baa`; ethereum `0x8b2754de2e814c7fdbf86c8464ee575d1f6ae07f`; ethereum `0x982e607b6495a63ffc715f694ed3211cb38b6fe2`; ethereum `0xf97f41f003a5b51abd62aadec12445ce47c96c8c` | ⚠️ Unaudited |
| USDaf Leverage Zapper | adapter | ethereum | n/a | [`0x90318f8028da3a985e9d2f777369c961a8542ee4`](./contracts/ethereum-1/0x90318f8028da3a985e9d2f777369c961a8542ee4/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 10 deployments: ethereum [`0x188384c7ec63da76a39ec1ec1c6cc7a2ed345919`](./contracts/ethereum-1/0x188384c7ec63da76a39ec1ec1c6cc7a2ed345919/); ethereum `0x3470a0b127c41273d17c0647ce24354bcfc2cbde`; ethereum `0x49c87b728a4f1606c97b94e4bea59189e80c9be0`; ethereum `0x693e74c376a8884d885ab1374768f0e6f6964d93`; ethereum `0x78ebd6ae7b6a12ab35a7454039fea117000bfd99`; ethereum `0x82cbd5c2b1a23f82e446dd2c8bea02a71ae631b3`; ethereum `0x8828c676fe14cbef41f44d7e16a81c1418fe0100`; ethereum `0x920f99fe3d47cacad5b2021af494bf4f8914aa30`; ethereum `0xd76b140c9e9fe3e9b176b1e99fd0ea78f7889bf2`; ethereum `0xec1f936198ccf8c0a21bf3aaef31b081b3141352` | ⚠️ Unaudited |
| WbtcFallbackOracle | operational_periphery | ethereum | n/a | [`0x66871db0ca840ac3e9cb2dbbfcff8ec060661b4b`](./contracts/ethereum-1/0x66871db0ca840ac3e9cb2dbbfcff8ec060661b4b/) | ⚠️ Unaudited |
| WbtcOracle | operational_periphery | ethereum | n/a | [`0x1919de21635276a80aa3384a852df8189e1b7205`](./contracts/ethereum-1/0x1919de21635276a80aa3384a852df8189e1b7205/) | ⚠️ Unaudited |
| WBTCToCRVUSDExchange | token | ethereum | n/a | [`0x5602eb937b25f783a4b7b522b7c0baf28be58815`](./contracts/ethereum-1/0x5602eb937b25f783a4b7b522b7c0baf28be58815/) | ⚠️ Unaudited |
| WBTCToUSDCExchange | token | ethereum | n/a | [`0x6cd733c283ef09a760e330acb7d8c7e9961063b4`](./contracts/ethereum-1/0x6cd733c283ef09a760e330acb7d8c7e9961063b4/) | ⚠️ Unaudited |
| WbtcZapper | adapter | ethereum | n/a | 2 deployments: ethereum [`0x2ae50916b4467c681689069bb54e94fd0246ba65`](./contracts/ethereum-1/0x2ae50916b4467c681689069bb54e94fd0246ba65/); ethereum `0xf8853a3c8fed7e3ef145816b98f15278fcc2aa1c` | ⚠️ Unaudited |
| WETHToBOLDExchange | token | ethereum | n/a | [`0x4c59eec0bf43bb56ff7ee5aa21b51f76e699caed`](./contracts/ethereum-1/0x4c59eec0bf43bb56ff7ee5aa21b51f76e699caed/) | ⚠️ Unaudited |
| WETHToCRVUSDExchange | token | ethereum | n/a | [`0xf00850a4384878c66c54fde0bdc29aa825e3caac`](./contracts/ethereum-1/0xf00850a4384878c66c54fde0bdc29aa825e3caac/) | ⚠️ Unaudited |
| WrappedCbbtc | unknown | ethereum | n/a | [`0x7fd713fe57fcd0a7636c152faba6bdc2d3b27d15`](./contracts/ethereum-1/0x7fd713fe57fcd0a7636c152faba6bdc2d3b27d15/) | ⚠️ Unaudited |
| WrappedSpot | unknown | ethereum | n/a | [`0x253da8f1f6cd0fb33aadc13999df9b124f1df194`](./contracts/ethereum-1/0x253da8f1f6cd0fb33aadc13999df9b124f1df194/) | ⚠️ Unaudited |
| WSTETHToBOLDExchange | unknown | ethereum | n/a | [`0xdfe9ace42684879ee17620bcce218711f1c5ca9a`](./contracts/ethereum-1/0xdfe9ace42684879ee17620bcce218711f1c5ca9a/) | ⚠️ Unaudited |
| WSTETHToCRVUSDExchange | unknown | ethereum | n/a | [`0x63bf3669a8784d279165a80ea877c74f92ee881f`](./contracts/ethereum-1/0x63bf3669a8784d279165a80ea877c74f92ee881f/) | ⚠️ Unaudited |
| ZapperAsFuck | adapter | ethereum | n/a | 11 deployments: ethereum [`0x07011c1cdebc84fd5bbc64db6ce5ca9b92ca598a`](./contracts/ethereum-1/0x07011c1cdebc84fd5bbc64db6ce5ca9b92ca598a/); ethereum `0x14300f754c11ac4c848732151d80affb12f90374`; ethereum `0x1f18afbd0a055fe05acfe22ce951dfc556f0bba4`; ethereum `0x1f4f32fbc1e6d3460bd33b88e035aa0795cc2949`; ethereum `0x547d14f2e230cda0b99a17a1e396dc5b1e5d0920`; ethereum `0x54867de8786dbd761463729f570b76172733f010`; ethereum `0x58d1a68f882eed25a63cd4c2c5b574066a78f961`; ethereum `0x9f69960304183768a01e0ba9f8a0164b556642d2`; ethereum `0xb6e58f716ea885a26a1b7e6ee7ca779efab32dae`; ethereum `0xe1dde16f0dc85e05893b20131eb49deed543d68d`; ethereum `0xff2736078e4a42c9f8fc7247412a724945a0e5ae` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (391)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x014b688764422fd5a4f85bcfadf65bb9a0ceed90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01b6a9ed22830c674d616110c9553a013458d055` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0310a0fc1a7e90ce415d3aff47840ca85eea4669` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x039f0333692df867b23f15d749d16f20a7bae050` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x041d537da301027a439460f6b86785898e6a545d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x071beec92a1ed8fc16c91258993093c7cac0cfa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0808bd8406df35ff5806293359acc543bb4b2419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08e16cb013e06f9c7b1f915ccd560263398680e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08f38675e4bc8b8aa30fdf3f7082a8281d054402` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0aed0129bb70a43480fa8b1a224597d919d26845` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b9655f38dccabba0be6d1080bb9bd6694f20bac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cce6cb8cc0d9ebd89c2275b11ca39e39be116e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d8441d88f2cfaa7ab94a2135ca1b10a1f4ac6e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e493f67f568b01c79f6b167ab0ffd3645d25bc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f7eb92d20e9624601d7dd92122aed80efa8ec6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x108d8d8d89b3459ec37c0e71a51c8a6771ac488c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10b94088c318e29aa6ffb592741945aa92132809` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1130ac286b1b4cf1569ebca21d93c71f86255a8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11830ff94221f2ef34176ad85a6ccaa2f41c95fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1261a8a7550f1df5f453429ca794c26944cba6e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x133bfe2b4c75dab75ae23a51f129dcb74820f77c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x136dac76eeb80e0e2c0ed13f1ae416f2faeef5a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13e70997d0af3ede9344c7646940976bf489c964` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13fa9c074fed65205ca7fee11c762f2040edf131` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x140c32b45bbf84310139a37da87eedf14b166d37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x156e0382068c3f96a629f51dcf99cea5250b9eda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16aa5f75f60770e002e5d991d8a562a2b2e4451c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16b8111a999a9bdc3181192620a8f7b2439837dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17207f0d5a10f52969f08093224ebd3a53e93dd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18d2075a69824e10fa4c978cbd29cd9b35692db3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19a8328fd6c4abb61623ab06945342d24b65f0b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a5474e63519bf47860856f03f414445382dc3f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c9890c9cb9925a8651c10b5f557d744bafbed5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d13a5a7bb98bb363dfeb6f6f82d2b93b816c27f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d27f835b6201572b65dca622aea185b01fba54a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d775cac4752ad141dcc6c38b388fc9e69260e34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e32314e60414ed28ee3579c0c754cfe071d131e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ef01391c3fe1723dc32717b7112c54da3137801` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f8ce7e3e3368c027a13e1d25263beb38e8f804a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f9a1695c3bf126cc1156e2bedad6399b3f5794c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20239a9ea3c214b773f7eea6379e2d761a79c3d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x204233fda1f736209b3aa0717dabb55aaacacd92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20e3630d9ce22c7f3a4aee735fa007c06f4709df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2231e660c23caf2f1b2eced315c93b71bb386cae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x234134617c64a0b1a27c3d0c664976c73d4eb174` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2357105b6b16034ee2fea32e23edf403b18593d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2421d3e8341c9707e80b6544d114ac5140f26679` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24bf596a4ccd5148fc816a7371cdf75d0706765c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24c62ec7f0d0275934ef6fc9432921df87b17ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25290c39dbd3d9446fb3b4f5c30800e265d9eddf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25eafe0992bddb623a6b56c74b707d5df9eb7843` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2632d629dd93e541f22c4c572101857f3ba52276` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2735aae1a56a5dbac1a951b92bd9fad0f33eefb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27ae0b20c0b4878d52c4c01544412bd3973e336f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27d64dd9172e4b59a444817d30f7af8228f174cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29919635b9cdaf401843f1ab5a062bc0eb9250c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29a1e4ed6554fcf7966415bd8a00dc34ff8f6e8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29f525537574a7b6e6c21b99bf29dda433c9c1d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2aff30744843af04f68286fa4818d44e93b80561` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b38256d8c862dfb86e23672462553a3fd800e9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d598c684611fcea588e1fef6d4c50d7bd09c705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2efd16701fd94cadae723c20734962afd36dcacf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f7d25ff1dc5da2378076bea2617d1e3e0dcbd2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f8b4c3b4495f104f475dd102434854f7e385574` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fe5e05b34aefc2a1d7eeabad313872e963dec84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x308a2fd4f7c62506bae9b3bc6c9a6672e3b72c85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31b59895f57db40460a58f79229a0a92eb327f5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31fc48dc2f143c17c4bfdf59833a1475fed1bb8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3224071fc67656bf17a735a9f4ba434c95c52409` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x323e6b95c5c4bfcae4c0da5179d31c836e9a8179` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3249b3196798cafc3a3ff023f719196410c7836e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3314e933182f0dcd2c032a1b70bd76e5e87fc7a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3387be65e0f4aa6fc29a9f158be1b2e4f8c7eebb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x342702e87e8714c759a21299402d9ec99efa0caf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x345c63028f17d8da727595914fc64a4cc9cb6499` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35dad84253205ee1746a0b8a1a91043ebd971ce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36193d1b83517af599b66b5dd8f556b9341236d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x365f901dfd546d7b9a4a8c3cca4a826a3ee000b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36e01f055cde0cc1a9a56c80ab8643e1b289aa87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37b2090bbd1ba4e46d803286e18775cbbac86259` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37c47df67d664abbc382d9d80b629678f3f83004` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38927df780aeedaa2d9706dc5d62763841561752` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39d2bad6ceb2f77bb30b5ef842abe9be0b42b9b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a38508bb69a86bd3ba85d8064e4c2574d18ea16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad9a923a56172ec6cac363b7a9487971b93353f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ae63601e2d3667b05a850e3890c7e44cc581a3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b056727ece0582b48036ef98376e2a112cd8147` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b44abd34248c58733dbfb69bbbe52843de37a30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c42b5632f0fb0646f06bf202e3d9326bc6c84fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c6897bf58fe4d3a32f62e41d8a78be5ef3fa421` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ca31b0d3c95df91665b7f9ba3eddf3c0eb44b0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d40f9dd83bd404fa4047c15da494e58c3c1f1ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e1435cd3e13423de06c0ce4f9b8deb19a74f7b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fabb13195599bef352157a2c6c6937aead18a1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4065a67203c3d9307d121a093baa16eb11136985` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x416bb5813b653278ef05866fbb6ea6c2ffb6b4b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4219a2084e77865ed94607412a96f5e503278869` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x430cf6dd3e289adae63b50ff661d6bba2dbb3f28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x439cd734e983a970859b69ac1e455ba3fb9388a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4486c96883ee436525e11cfb1b0f589c11ff75c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44da6289a48f6af8e0917d8688b02b773ba16587` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x452eb8c3d70b343890a4b16f3971918dfdd96007` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x455666d7c8df852c9575b2c91c4c42f03726d902` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46056233d30a5b4f59db789fc54fc90f8ecc88f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x473d3f115b09a4abed6529958d03090c084f80f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47d1226489a28ae7dee404d7a8db03d3b21694f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x483df4b557dda871b13c9d90cd900badac0ea3d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x489d51d798d13b628315e313471ba9fbabc5d653` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48b1b0ac3e5e7cdbfbb67b0d2917b9ad9c3816cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4995a3abb6304f12a7e730a08b33399ead983c0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b3eb2b1bbb0134d5ed5daa35fea78424b9481cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d349971c23d6142e8de9debbfdbb045b7aaba49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d3c3be6265932d156e6630cba2921ad7ebab094` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e26408a76028306f06ab7684ddb11670d3e4269` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f9fe20cc891d1cd6ffdf1788bc0a5e30a492fb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fc2cbc3417d6b0915bd768081c34a4537941bf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fd35afa32310eaa1354768be6ad2c5c6a62d572` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50db2ce93c8b1f6771c985b6b840b587349496a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50ec466881423d00c685050f5dba12c9ad1b99ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50f5cd484fd70af485464b2e9ff4da49ddb4521f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x536d6eed44d409d8a62695266b4b7ed01113c92b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x548070b2595c82a123d22d925f6675e7b9624ff6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54896f542f044709807f0d79033934d661d39fc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54dd1315576d880821ae8dbf56938a4316bf150b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x555f3ffe6c5c6c65609d8627ef30da0af9060b3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55f3125291e183bf93595dabe162a7b90960df1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56372b5aa041c739e2feb5746cb11e2adec26c2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56945fe7cb27a68d9eedcd66c866f5bf5d3b12d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56d63b862a53a91a25a0bdad042a2e401fc0bb8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57816b506f3d81a4da98532c9587a8aae2e0331d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a2ecb3e5574eb61098c93c2ee36f3d26ecc689b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5af17540921cd9d388eaa9344c42c507f38490ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b601ad4a40882421be00f6b8fff50f9bf804b78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5bdee7f0f85be5adeddeba687a77caac6f412908` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5be73b3cc063e3e78df73bdbcac982806555b604` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c1fa71022fb6fdcfd5bda745d50eb9bc9ac64ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c6defad2e24169d513428ce8cee1b3392bd43bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c93f8c736b254b32a0aac3f2022ba0215d4dc64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d5dcb0821a9c9d8f2c5a4d5500f6c52b01d177c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d62fdc813702446bbf2e465c5d88243dd77107d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d64c319e5dc810228112ba01cacdb879a28ab25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dd187119112f2b375a8d4bbb756c28ed9b09aa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e1df4d4a3b7624b318f8a032e7c942c40d924fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f466cbab2e25e928d4b47712b9303f1b58c8043` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f5fb8d66413eac535b0ebb08120f9b1c1ef8ff4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f72c3c7b29d616ab8324a3ef49ab07ec8892209` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fe5202e4c706405d57a6ac860db1839dd116979` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61212793a7c67cc6584a6b8e84bf55ca9fa6a8a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x625b7fd68b35ee8dc2c9405a712fa450ccd357be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62c2c3d75826441e1dbf8ed4588fa5517f7d4475` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x630e78c7ac331d89e2fedbbaa93fecade842d460` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63f01b695c67b764e823f972bc61fcafbac5102b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6501bd8cb63e13d61f14ed5094d8f11d57a57113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x655603c5c034f89d8e0c25c7bb22cae091219665` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65799d1368ed24125179dd6bf5e9b845797ca1ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6676ba11e8c63962fb83256d88657d13593f5cba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6780c75cdab1d19e24f5e689e16817a5a8a4ddba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x681c639e727bdfcd1649d0105873b8dff2ef526d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6845e84e422eb97c2cc2f65757cd0fc5f6e7d644` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68f434cdfd586e9aca681b55c2bc77dd553fc592` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6967dfd94738380568c64fcd5b07851bbc02dc1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69bcfab2ee06458c8001e4e53e1e5d258d46d355` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b284e60b80682be76134b1b2a6ca85f6a360e81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b3884c95ab3cb51bba8e69f11b171d1479359a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c2f7b6110a37b3b0fbdd811876be368df02e8b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d8cfe68c5b34346c2142b02cdddd2447ea2418b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ebb9d53ea4b9d279c299cff36adbc460749307e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ecf29c3a81471879e94ddcc0127f12164cb331d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6fb2aa2443564d9430b9483b1a5eea13a522df45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71d33511d53ee8a89724ec9cbbddf9cfd5fd086c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71ff3cf44c685b5bf8105dcdd7e7857f7a552891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x724371e00e939d3b9adcbea17cc584f6f7482e29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73822d7814e10a2d0c964ae52e74f08390de957b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73f972fa356508db80c574ef03d640eb8445b580` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7471760bd5b6f8778a69a7bdc5490a5fac0c1fa4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76d15914b1275c278ca60373f07fd4f683ec7572` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7749748aac9231e183640d9e78cd9b5412deb10b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7790609066b0849456f191548bac0d4b72a6f7ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77e49282f03168896f4b745d801cd19f28b66380` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a7f1c839cf7807d788da5276a0174fc2bb14409` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7acd9bf3728f4223bf504b1a652cef5ad2e6420b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b86a8513210c8559c335e097124fc1cc5487f14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bca4c220cfcf1dfaa7f164037a5f046bde56ce5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bf88f9cb4f86dffba4861502abaa3a4c9357988` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d8627d847039cd9ffe0ae87a2dea98677cff9b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e6900108b7777ce017f557d0f155d45b3458586` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e901c53e4d7991c298b34e817b47a2c2d0a19f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f0d7534735bc05d8ee06083c27b698b97d8329c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f32320669e22380d00b28492e4479b93872d568` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f5cf9d64509f424e20db9bf2024249c5fee214f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fcd772fc9363b6233d5caefba43fcaf157a2783` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x806b2921e394b3f84a549ab89cf73e57f0c882c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x809501fd65ff781bf5abc13aaa802cdb982d39f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8109a89d1c779724de794fa34f5cd4b5ebafb7c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81559493eecef38dda49e148881061f5f8a0b652` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x818dd839f3bd2e473cff9d952f755ee280eb9d31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8320c23e3560dc9d21fb2ecc746911ad9b71f5be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8387e72ccce6d2c6cee66e164d1b744d83ad8fa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83c20d32202b7e253e518c4a33d3801e69b5e4b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83e800858ca65d34758344efda39d63d77ce94d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x840abd1959d715700adf3628e2c774bad431cac4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84f899d30b440d4d1cffff08cd400f07c592cbc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85449dd4f0c09b667b1c1008c732ebc269057cd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86d14d8bb0e094c35583091ee346a4ca99e81506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88c41d667dc7b857a26f239f3d70d51cef10d10e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x895479b03f6d8620300a3939b3fa1475a9eab819` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89a65d80728a25fd571d76159cb5904c0a79e03a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89ce318037f6351ca4d3f745ce2f68a7deb35ca5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89d8d500966c0ac7f9d074719ccc2cf207a542c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8aacceecc09a839550e8e00f352114b35ba2786e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ae164992f45b85444c95b7d8e256af0d86c6c86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8bee5807853a6e6a15cfea8da4207d245c82966b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c5b586947cbd6ba0c758cc6f4feafe9fc3ceaa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dc8025383e2b2e3fdaa30470f3e53a25b7eda3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e5e157631aa7752498cdd0e836efd15f66caa5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fd057567d9ff56a42315f8bc1e31fde5c01f89d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9007c70d44c7b210e9e6189f8bae636715eca68a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x901ea6ab1d7ac0e23082effe14cd6aeb924bfb4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90695d1a4ecf1821be75ba954293e6ddddb6273f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9095548dc8d67bac7ad15ea16c65040701928f67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90e5e4aa352d4a68fae9e0f3bb3b9ac2578b69ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91185811fa46ddf20403a191e79d880dd262f27b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91630f5e28f1f30067b92a8d9d7b8e836afddf9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9181b9f2e4c853453f4ca72510b451889e7a9bb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91a30ac56db5628b3f23aa4a0e722f1f725fc0ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9305a1b78b68cc4ee8629bd94646843f6edd2e7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9344143a59dbae5cc9ad0d9bd6e076d687056d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94d67c6e62b36b2599768850a3fff475fde7b91b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94f931867ee170b48673408fc51560c8712f3540` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x951530bf4a99599dd7bc5ad4541fd301dc2df669` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95480dd073c2e47e4166fe2ce6da79662d8fe2fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95d72079dc812479fcb94c7be8687228499e81fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9606c21bb19919a7dd4c7d4d0e4ef7e118a90898` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x963a4194e7edfc1d644697048fb21e4fcde7a25e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97f775a2895974f9520c88ce1dd39386b31e70b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98bc636dc13f358accf117f988e72ef583f2df4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b004df2d4f16f0dbdebbc5e4d21ee3753ea0c6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d4ceb78b45a064ea4021626949137b623420376` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9df5e7e2ae001c513bcb932ef3afe52519ba8bdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e425b65dde01eca9d519d219a0049a716719d48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e690678b7d2c2f5c094ad89d5c742cfcb02ed8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa100e806ac9b351f7edd14745616622c9b87d298` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa16ba309a934d84fb72952bec1bd54e0ce96d611` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa179a4563673b5c403841d0c01c7736c5c834761` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa202c7dbbb0000f03ab1e56651098891927ebcef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa21c509e574c3eac26933e339d8f01445eea8d42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2796e55212acc734680b24f71943412ddcfe3ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2b2e070a08d27b216f6158d908cce2b3ba1e666` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2f1d8433e78e1e7590e80c1ac7e636d0a660852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa38f7a780820e5081dd51db94c5f359ca0d5ceea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3a83df4f0905c3b976906e90158f86da755c563` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa42a10646510950dd24043490473ca74639fa7ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6862c51e4bf38cdeb9d4ab613219eaca818e8d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa71021ca12f4a6c0389b7ca6f0a2a2e2fc86426e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7bada7bda4fd4620956e9e4534367e72f018a8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8076d11890fea2c400151dbb8377802f5e2aaba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa85064e30955de5f1d1ecf6762c27cad3c2b524c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaaabc02cc4385931b226ae9412eee2669fd5d17f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac42fdcdf9b80e4fd0660924b5c6a9c99bfc9ab0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf12bbeddbac68ab79cfbd54092b3db386f66b4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf26366736674319102b3e9b143e4760aca9aa19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf99e6cf5832222c0e22ef6bf0868c4ed7f2953f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafcf0e333614286d8e20000781121adb28cef33d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb00aadd711ed74e515f6c069cadf7f4db5788f87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0da556df7c66ed429191e113974a6c474f2b389` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1525db4f6e7f432f9c66a495a88a51277067170` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1f6123e9a01b0fa3eb9c002b5dc478fb6fdcff5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3d1111a80d5f1e244da51bb11168e2169c759e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb44f39b6ca17339bd235f1fd58f1bce9822ab40f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4c6f0a04c4d1aa8be3c37e3a832061860ca7c76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb510d24856795f4b7bb6e977e14d3157ceeaa7fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb57e0a3f1366bb34558ffbf41a473dbc5f022ce9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb63d2ee9a0e31536a13f599a7af6a1c744bc3076` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6d67bddcbe6a6b17cec8b8e3b0b1087fbad178e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7d29ce626b3b268f9d65e4120f45f6b11d8404d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb804d72d8c6545fed89cc56a093e460c4e065711` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb841efe7cd6112fb1e74ee95f6be65b95a23b910` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb91297d23f1d0e8ba75d5a985cebccb7f2078930` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9b7dbe18ef41dd9848be09ed825a2a4677eb9c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9f57b62cbe9463da16e5b75e3b809321a0ea871` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba22bca882bc6ef8747317eb68f9a4b4bf2ea7f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba230f4bf34e48d04e65de9a0f6fe5ecdaa0c17a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbaf4cb2a7182e5bd4abb54c6f116d56c0e8b588c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc23c3468120ffe89246909dd7ca0e0328b4c1fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc362f57dfd6d3522ab66b45ce3aa33335a8c55b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe4a0c74f5d4ba26871e7b18a9bc144b006e2a6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe87b94857eedc334541174a10ec265f308248b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe8b206ed12a7427b288a1a8c5979deda9e7db05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbebfd22d3a628a62f3e2ef91c957ec6d304b56e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf1035e71e4a770a08462b20c95de14763e1d186` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1d4836c5aed93967fa2fecac32a9d907b919662` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2fdf0e8cc806b0f8389d22d0dda2564dd1b4402` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc30fd06e7098368770bf5958e1a265caf0a950f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc438806b0726ade87f746d2b2ad07f6f05a26a85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc470a1574b469a562fb237e289fdb217f8c14dc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4942703d8ef29a1ce949d686103004fa04f4037` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4e2bc01299c15cd5608c28fffa5c62107b8a8cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc51203a6458acb813e4ff12ed29771b741c4c937` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc54b98e2d49df36a1cf2850932ee88d3a91166e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc59ea6cebb8089a0330800f50946610977c4fc96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc59ff0c05de52347b2d7bf38eebdc994d97cea8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc693c91c855f4b51957f8ea221534538232f0f98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc736551507e746dda359f23ad74943a0dded7472` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7fb9046f1db5a36d635ad1e70d425b779b29840` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8ce0b854ca9761ed9416fa18f4d33b2f07e336c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8d81c4fe3b778dd761dfce504dd2046c2335c8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9e03910dddf689d3e309b42dbf4c581ed1e795d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcadc2a8ccf396088f8d7520ae8fd249ccfcc20db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcca90892f22554fadc0cb652fe4cc26040335319` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd0bad5d45495c07bcd771657eca0df50baed871` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcda8cca990aff26fd8298e0d30304e4d01f7b387` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce1ca28e54fd3bd431f893ddfffa1bd619c0517e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf61a0cd94ddd86fe9b56ab0e06ff7d40b4daac0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcffeb2408adfbab998f6929054f91d8dd9a9c8a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd06b5bdc2780e4992d78148165fd1bbcb4d01312` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0f77441b70c84aa3366a9f79f2fd16618739ab0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1da8a03541ea81f121a38d2c3965a4023b51f12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1e96d0d727c3b39bdbdb7c019dc1df432a29d4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd38b163eb243c90f4a089e9818ceefde29b0c5c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3b7bc894675219e8a0a0eb3095984f9b32af240` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd46fca0d72712c02fb9d9a2d94d2e3ca0ce348b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd48523fa263c981ebef158a555e6d8b967187bac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd532d119c2bc34e8ead1be86a31ddf0847bae7a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd69fa48b02fe4483d8afb58d27a96326c93f783a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7d3cd3405e7e9262d3b8fe6aacf821ad10cd587` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd85a467c7879b24e7ce599d436ec7daf9e3dfa52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8737ca46aa6285de7b8777a8e3db232911bad41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8828e02acd1fa52ee33b23f87f4b69c3a9e0b1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9c5a9fac779a12868dd607447690fc4d2926d53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda9726fd1b125a3923f9d9521e28fe888091698d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbbd331c35644eb251a174bc2c18c157aeae5dd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbd0258df0f0ce2899aed1540c5a9f175b7815be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc4ad8a1d883939431e2d0956227aa8840012832` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcb36301d569103d5632ad769a5510693e450eb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd427e6140b1fb7d5a494b472bd04646199abb7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd737dada46f3a111074dce29b9430a7ea000092` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddc5f07baaa9b657c6cd3097957c559a32f82212` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddfb32c743b8b832915df09e4caf16495df4fbb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdecafb666ee4f9c5e9f5b26dc02e443035717d55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf2a04bfa87931e3a1a14a761f1c9095cdb61421` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe10df343f3b830c63f04b210455b5a972fe64c0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe18547f5e5e30f991371bee3d9245986468a80f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe18decbd8b40a6e9a0903f1030efdd4c38238fa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe247ab8df16789976a42a7e39b5d822706a16a93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe28516d2174a50ac3cf134a0d1e3e654147cdc34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe439195d696a154dd8d5327c4668dfcaddda4b1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4534d8e84fddfd9caa9962fbb94d397e164d175` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe55e68166e45fc24f769d6039cc020d77802d8d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7f2800d075ca41d1a206dfaf3fb37171825ea98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe991a00754cc4f3ba91731b5d8d91f0cea2e7b3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9b4fc950244c25664a5b2c87a7014001f7a1021` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9c32ea0508fa2c6c293ec3dcac8ce8650475557` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea7de917660a7f42742e371e4c33f39433d92c5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeaec2974c9f786890b5f53a26229407a7f861dc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb3d79b238ea547a4a37a448ba37fec247e2f69e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb8b1bf03904e91a3beb0f7117d862d598915856` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeba81e821c8990e92f85d26aa428e45a8d26d1ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec0af9285fc46de57d4fb6f16b1cc3f9208306d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec2302866d7bd20b4959318189b26e56eb1edca5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec500fda25b00814935a251f407395a9040c8510` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeca746232f297bbd968b4ef240fb28c40be5ccb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed07b701ed7b1b12cecc0dfaea27ee8cc94d4ee0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed2fbcdf6bc67fb84d7a7618de2ddc13faec33b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed44b98bd50cd5e128b420495bd9da384a291b9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed9569ac1656e7ef68acfe3a37f225af36cebf04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed9d38b7f15fda2113c8d643439aebddae4c8af5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeee151c735adbae350d1f846e0b57459fb87d8d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefd24026a958fff3870e624900cc21e6e9cedde2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0303909b5bc31596b6a48b9ad4a8c49e851fb60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf121b5c4a37335fd1189aea306b996487aae55b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf285b4fd0f679428c6609758a9e53df46d4c2d03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf471f961d7d3346d9b65427d79307d9fc8143241` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf53a7e09512b5475bb9f34e0b27faa3fddc8e17d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5878971316acb5072f115a046d1f405d71e9173` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5f1943e2ac3565b3950da8c127b7542345ae82d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7e4cf2ffacdd3ca3bf8e1e35c759cd231c1f2d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7f96d103ea5f1d2a1d1614f3f228ae8e246bed4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf81298f9f45ba49a76ddae071b8622766584464e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9336cbbb916e88230c8ace083e6fede16a7f760` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9e241491df7f97f45d6f160eb35fb4ed5015705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9ea885ad3994aab776afe8502a19a6e54197355` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb5507174c32d79a86b7c07a41016ab3bd7053b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb8cb432fc736f24ed198e49438361573fee2571` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd467a0173cdb0a0060b4e3ce62757116c369b57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd5a64ea2fec52fe959eb83892b04017e660c73c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfdfebee8ed1ae9fed6b5b23ffe6dfa14e84c9b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe097e1cfbf6b577c338477e4fe3ceb3313150eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe8cf186616e5b3e4de0a5e2bdad06167d53a621` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfea91bf8371e6b1e3d1b59e8a5c9bf3d399767eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff29c123af47c2a2c4da3bf2502c6e725ac835d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff31f94300a2823876d040d34902e449f68e86b1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit 1](https://www.chainsecurity.com/security-audit/liquity-bold-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit 2](https://dedaub.com/audits/liquity/liquity-v2-aug-28-2024) | Dedaub | Audit | 2024-08 | aging | Direct | contract_name | 30 | high |
| [Audit 4](https://certora.cdn.prismic.io/certora/Z1tLJJbqstJ98b8J_LiquityVerificationReport.pdf) | Certora | Audit | 2024-12 | aging | Direct | contract_name | 19 | high |
| [Audit 5](https://www.coinspect.com/doc/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20-%20Bold%20-%20v241231.pdf) | Coinspect | Audit | 2024-12 | aging | Direct | contract_name | 31 | high |
| [Audit 7](https://reports.electisec.com/01-2025-Asymmetry-USA-d) | Electisec | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Audit 10](https://reports.electisec.com/05-2025-Asymmetry-USDaf-V2) | Electisec | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Audit 11](https://reports.electisec.com/2025-06-usdaf-2-pr2) | Electisec | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Audit 1](https://code4rena.com/reports/2023-09-asymmetry) | Code4rena | Contest | 2023-09 | stale | Direct | contract_name | 9 | high |
| [Audit 1](https://code4rena.com/audits/2023-03-asymmetry-contest) | Code4rena | Contest | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [Audit 2](https://code4rena.com/audits/2023-05-asymmetry-mitigation-review-contest) | Code4rena | Contest | 2023-05 | stale | Direct | contract_name | 39 | high |
| [Audit 3 (also discovered via alternate URL)](https://github.com/Zellic/publications/blob/1916cd0f6ef5e1fda0e44628d5eed902fd797883/Asymmetry%20Finanace%20safETH%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-07 | stale | Direct | contract_name | 45 | high |
| [Audit 2](https://gist.github.com/romeroadrian/3bf5506e1e4a0594cc722b0310b5e362) | romeroadrian | Audit | 2024-05 | stale | Direct | contract_name | 4 | high |
| [Audit 3](https://gist.github.com/romeroadrian/fe3fa83fe7ed0d42768c53e4209e7cdd) | romeroadrian | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [Audit 2](https://gist.github.com/romeroadrian/cea29ae49185dcc9096f49314a83f151) | romeroadrian | Audit | 2024-01 | stale | Direct | contract_name | 10 | high |
| [Audit 6](https://github.com/GalloDaSballo/bold-review) | GalloDaSballo | Audit | n/a | unknown | Direct | contract_name | 40 | medium |
| [$350k Cantina Open Audit Competition](https://cantina.xyz/competitions/d86632df-ab33-4448-8198-64955eae6712) | Spearbit | Contest | n/a | unknown | Direct | contract_name | 44 | high |
| [Chaos Labs USDaf/Bold Economic Modeling and Simulation Report](https://cdn.sanity.io/files/zmh9mnff/production/ca6a4815e62b05f33fb3ec56c5a4c42d6b7ddbec.pdf) | Code4rena | Contest | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [bold-report.md](https://github.com/GalloDaSballo/bold-review/blob/main/bold-report.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 34 | medium |
| [bold.pdf](https://github.com/GalloDaSballo/bold-review/blob/main/bold.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 35 | low |
| [- [Audits/Bug Bounties]()](https://docs.asymmetry.finance/security/audits-bug-bounties.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xaad3b9047dca4d5565471a3cce2767c56535ec65`](./contracts/base-8453/0xaad3b9047dca4d5565471a3cce2767c56535ec65/) | Pool | core_logic | $2,390,613.83 | Verified native implementation with $2,390,613.83 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59a529070fbb61e6d6c91f952ccb7f35c34cf8aa`](./contracts/ethereum-1/0x59a529070fbb61e6d6c91f952ccb7f35c34cf8aa/) | AsfToken | token | $493,214.80 | Verified native implementation with $493,214.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ee6db6b89fbf07489ec4cdae89b82c97c7c53ea`](./contracts/ethereum-1/0x1ee6db6b89fbf07489ec4cdae89b82c97c7c53ea/) | TokenizedStrategy | core_logic | $3,783.57 | Verified native implementation with $3,783.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4feb6c50a69d0cb29f77e307249c767607b04408`](./contracts/ethereum-1/0x4feb6c50a69d0cb29f77e307249c767607b04408/) | ASFOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e988d3a79cc4daedfdc7cef2f76160f81c8f945`](./contracts/ethereum-1/0x6e988d3a79cc4daedfdc7cef2f76160f81c8f945/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3a3702d81fd317fa1b8735227e29dc756c976c5`](./contracts/ethereum-1/0xa3a3702d81fd317fa1b8735227e29dc756c976c5/) | AuctionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1666ee2dbb308c1ee321cc6f1575afceaad9b1e5`](./contracts/ethereum-1/0x1666ee2dbb308c1ee321cc6f1575afceaad9b1e5/) | CbbtcZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b36d82bfb9ea09bbed084be34df942aad0eeb35`](./contracts/ethereum-1/0x2b36d82bfb9ea09bbed084be34df942aad0eeb35/) | CrvUsdFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fe24f1a024d33506966cb7ca48bab8c65fb632d`](./contracts/ethereum-1/0x7fe24f1a024d33506966cb7ca48bab8c65fb632d/) | dASF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b9a4b5a377e2377f6f5873e95d9274caed4b680`](./contracts/ethereum-1/0x5b9a4b5a377e2377f6f5873e95d9274caed4b680/) | dASF Redemptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04d258d3ee00ef9840985afd373037d91c56f60e`](./contracts/ethereum-1/0x04d258d3ee00ef9840985afd373037d91c56f60e/) | Dutch Desk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x003aace7e639624b4d15cd923da81b356aee75d3`](./contracts/ethereum-1/0x003aace7e639624b4d15cd923da81b356aee75d3/) | Multisig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x746c238e34a6dbfe1d35d50471467bd7bf898f62`](./contracts/ethereum-1/0x746c238e34a6dbfe1d35d50471467bd7bf898f62/) | OnLossDepositLimit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1d07f500393b768c64b9ceeba85c58dc639cad4`](./contracts/ethereum-1/0xb1d07f500393b768c64b9ceeba85c58dc639cad4/) | Price Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6aed7c8e57f905863caaab59fc10b5d95a4fab76`](./contracts/ethereum-1/0x6aed7c8e57f905863caaab59fc10b5d95a4fab76/) | RETHToBOLDExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a0605efb3a50adc9f81dd456812953655aa4ec9`](./contracts/ethereum-1/0x5a0605efb3a50adc9f81dd456812953655aa4ec9/) | ScrvUsdOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48ba7b711a8d5dadc6690de2e86533f70ee5b433`](./contracts/ethereum-1/0x48ba7b711a8d5dadc6690de2e86533f70ee5b433/) | SfrxUsdOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b10963ff6c8bd0cb054a5a895ab91c1aca1e7d5`](./contracts/ethereum-1/0x5b10963ff6c8bd0cb054a5a895ab91c1aca1e7d5/) | Sorted Troves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x412330b91b991aa5a72e22bb5e43c1041dc25f9e`](./contracts/ethereum-1/0x412330b91b991aa5a72e22bb5e43c1041dc25f9e/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e40eb56626cfd0f41ca7a72618209d958561e65`](./contracts/ethereum-1/0x0e40eb56626cfd0f41ca7a72618209d958561e65/) | StrategyAprOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73dfcc4fb90e6e252e5d41f6588534a8043dba58`](./contracts/ethereum-1/0x73dfcc4fb90e6e252e5d41f6588534a8043dba58/) | StrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x600d6aebd8eacfcfbb8eedff139408200d01007c`](./contracts/ethereum-1/0x600d6aebd8eacfcfbb8eedff139408200d01007c/) | StrategyFixedReportTrigger | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d09d5175783f0caa56d6d1e7590c2b935082d10`](./contracts/ethereum-1/0x9d09d5175783f0caa56d6d1e7590c2b935082d10/) | SusdsOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x193b7da0f8036709774054dfd7539ca36654aba5`](./contracts/ethereum-1/0x193b7da0f8036709774054dfd7539ca36654aba5/) | TbtcFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39fca0f77ba22926e8e5ec5df68271eb49a3a775`](./contracts/ethereum-1/0x39fca0f77ba22926e8e5ec5df68271eb49a3a775/) | TbtcOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a173e7223dbd1e66bbe654a0b8c4c1ebd98134f`](./contracts/ethereum-1/0x1a173e7223dbd1e66bbe654a0b8c4c1ebd98134f/) | tBTCToUSDafExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf119b5aa93a7755b09952b3a88d04cdaf5329034`](./contracts/ethereum-1/0xf119b5aa93a7755b09952b3a88d04cdaf5329034/) | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36e9ee7a0ce154cc1e379a7c0231fa19c0b41c1f`](./contracts/ethereum-1/0x36e9ee7a0ce154cc1e379a7c0231fa19c0b41c1f/) | Trove Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0502dbe106d80577b156b0679342a11dca91b072`](./contracts/ethereum-1/0x0502dbe106d80577b156b0679342a11dca91b072/) | USDaf Flash Zapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90318f8028da3a985e9d2f777369c961a8542ee4`](./contracts/ethereum-1/0x90318f8028da3a985e9d2f777369c961a8542ee4/) | USDaf Leverage Zapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66871db0ca840ac3e9cb2dbbfcff8ec060661b4b`](./contracts/ethereum-1/0x66871db0ca840ac3e9cb2dbbfcff8ec060661b4b/) | WbtcFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1919de21635276a80aa3384a852df8189e1b7205`](./contracts/ethereum-1/0x1919de21635276a80aa3384a852df8189e1b7205/) | WbtcOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5602eb937b25f783a4b7b522b7c0baf28be58815`](./contracts/ethereum-1/0x5602eb937b25f783a4b7b522b7c0baf28be58815/) | WBTCToCRVUSDExchange | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cd733c283ef09a760e330acb7d8c7e9961063b4`](./contracts/ethereum-1/0x6cd733c283ef09a760e330acb7d8c7e9961063b4/) | WBTCToUSDCExchange | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ae50916b4467c681689069bb54e94fd0246ba65`](./contracts/ethereum-1/0x2ae50916b4467c681689069bb54e94fd0246ba65/) | WbtcZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c59eec0bf43bb56ff7ee5aa21b51f76e699caed`](./contracts/ethereum-1/0x4c59eec0bf43bb56ff7ee5aa21b51f76e699caed/) | WETHToBOLDExchange | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf00850a4384878c66c54fde0bdc29aa825e3caac`](./contracts/ethereum-1/0xf00850a4384878c66c54fde0bdc29aa825e3caac/) | WETHToCRVUSDExchange | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fd713fe57fcd0a7636c152faba6bdc2d3b27d15`](./contracts/ethereum-1/0x7fd713fe57fcd0a7636c152faba6bdc2d3b27d15/) | WrappedCbbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x253da8f1f6cd0fb33aadc13999df9b124f1df194`](./contracts/ethereum-1/0x253da8f1f6cd0fb33aadc13999df9b124f1df194/) | WrappedSpot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe9ace42684879ee17620bcce218711f1c5ca9a`](./contracts/ethereum-1/0xdfe9ace42684879ee17620bcce218711f1c5ca9a/) | WSTETHToBOLDExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63bf3669a8784d279165a80ea877c74f92ee881f`](./contracts/ethereum-1/0x63bf3669a8784d279165a80ea877c74f92ee881f/) | WSTETHToCRVUSDExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07011c1cdebc84fd5bbc64db6ce5ca9b92ca598a`](./contracts/ethereum-1/0x07011c1cdebc84fd5bbc64db6ce5ca9b92ca598a/) | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 67 |
| upstream | 6 |
| standard_library | 18 |
| needs_review | 402 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10, low=1, medium=2
- Match method counts: extraction_exact=387

Zero-match audit list:

- [16688] Audit 1
- [16692] Audit 7
- [16693] Audit 10
- [16694] Audit 11
- [16696] Audit 1
- [16704] Chaos Labs USDaf/Bold Economic Modeling and Simulation Report
- [16708] - [Audits/Bug Bounties]()

Fork inheritance lineage and inherited audits are included when available.
