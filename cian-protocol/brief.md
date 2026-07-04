# Agentic Audit Brief: CIAN Protocol

## Project Overview

- Project: CIAN Protocol (`cian-protocol`)
- Website: [https://yieldlayer.cian.app/vaults/0xB13aa2d0345b0439b064f26B82D8dCf3f508775d?chainId=1&utm_source=TPFDZE](https://yieldlayer.cian.app/vaults/0xB13aa2d0345b0439b064f26B82D8dCf3f508775d?chainId=1&utm_source=TPFDZE)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.271Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, avalanche, base, bsc, ethereum, mantle, polygon
- Contract surface: 117 unique implementations (117 raw deployments)
- DeFi Llama TVL: $265,571,154.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 105 project-authored contract(s) across 7 chain(s); 6 ERC4626 vaults, 12 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 41 common project-authored base contract(s) (constants, strategyfactory, multieth). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 117; live-surface contracts included: 117 (113 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 33/100 (33.0%)
- Deployed-live implementations: 113 of 117 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 33/117
- Verified + Unaudited implementations: 84
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 117
- Raw deployments: 117
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 33 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 26 | 22.2% | 2023-01 |
| PeckShield | Tier 2 | 6 | 5.1% | 2022-04 |
| Omniscia | Tier 2 | 5 | 4.3% | 2023-05 |
| Ackee Blockchain | Tier 2 | 3 | 2.6% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdapterManager | unknown | polygon | n/a | [`0x907883...14e60e`](./contracts/polygon-137/0x907883da917ca9750ad202ff6395c4c6ab14e60e/) | ✅ Audited |
| Automation | unknown | avalanche | n/a | [`0x056c41...5ffbae`](./contracts/avalanche-43114/0x056c41b8c2a2e7c6454842c9a62050fa1b5ffbae/) | ✅ Audited |
| BankerJoeAdapter | unknown | avalanche | n/a | [`0x123d4f...6e77de`](./contracts/avalanche-43114/0x123d4f3126b0f57b86d15382ec72a444bb6e77de/) | ✅ Audited |
| BenqiAdapter | unknown | avalanche | n/a | [`0x61a4d3...111529`](./contracts/avalanche-43114/0x61a4d381fa26a764360ee71565ed938914111529/) | ✅ Audited |
| ControllerLib | unknown | avalanche | n/a | [`0x601954...ee5374`](./contracts/avalanche-43114/0x601954e6afb77dac21503dbdfa751fbef9ee5374/) | ✅ Audited |
| ControllerLibSub | unknown | polygon | n/a | [`0x17f453...ce22ae`](./contracts/polygon-137/0x17f453846e407409c22621d465d2838f7dce22ae/) | ✅ Audited |
| ControllerLink | unknown | avalanche | n/a | [`0x4792e1...625446`](./contracts/avalanche-43114/0x4792e147bce02e5ff2b1b70416811704b5625446/) | ✅ Audited |
| ERC2612Verifier | unknown | ethereum | n/a | [`0x045969...9538df`](./contracts/ethereum-1/0x045969904402f5e674ef1f27713f3230929538df/) | ✅ Audited |
| EulerWithdrawAgent | unknown | bsc | n/a | [`0xa2b94c...91945d`](./contracts/bsc-56/0xa2b94c8d55403fb7b163e1ab9f5e0c4ae691945d/) | ✅ Audited |
| FeeBoxAVAX | unknown | avalanche | n/a | [`0xc05f77...11caa4`](./contracts/avalanche-43114/0xc05f77fffcd9f0ce17fcb34984e71c9b9611caa4/) | ✅ Audited |
| FeeBoxETH | unknown | ethereum | n/a | [`0x0b20d5...4fa7b4`](./contracts/ethereum-1/0x0b20d5d59e14c71a948d55439019a2aaf74fa7b4/) | ✅ Audited |
| FeeBoxMATIC | unknown | polygon | n/a | [`0x1c8126...0df776`](./contracts/polygon-137/0x1c8126e02e8a7dac69fd6444ef0b8be5430df776/) | ✅ Audited |
| FeeBoxSAVAX | unknown | avalanche | n/a | [`0xa246db...fa39ae`](./contracts/avalanche-43114/0xa246dbf6f90204f8f2bbeec015f75cf226fa39ae/) | ✅ Audited |
| FeeBoxStETH | unknown | ethereum | n/a | [`0x294fe9...4e8313`](./contracts/ethereum-1/0x294fe934f47d95a54a436a148963da3fef4e8313/) | ✅ Audited |
| FlashloanHelper | unknown | ethereum | n/a | [`0x6e055d...5574df`](./contracts/ethereum-1/0x6e055d5592e41709c3e70539a2b53933455574df/) | ✅ Audited |
| LendingLogic | unknown | ethereum | n/a | [`0xa0ad94...7792c7`](./contracts/ethereum-1/0xa0ad94ac894cdc591cf3419a460cd683bf7792c7/) | ✅ Audited |
| OneInchAdapter | unknown | avalanche | n/a | [`0x054ab5...c42515`](./contracts/avalanche-43114/0x054ab57d364730ed9ed665ff97a92e9813c42515/) | ✅ Audited |
| ParaswapAdapter | unknown | avalanche | n/a | [`0x294fe9...4e8313`](./contracts/avalanche-43114/0x294fe934f47d95a54a436a148963da3fef4e8313/) | ✅ Audited |
| QuickSwapAdapter | unknown | polygon | n/a | [`0x6c5766...ac12d3`](./contracts/polygon-137/0x6c5766bd236bf879df4ff468740a8e3fb0ac12d3/) | ✅ Audited |
| RedeemOperator | unknown | ethereum | n/a | [`0x09826f...6fe392`](./contracts/ethereum-1/0x09826f37df349258c1a209abd37ab614296fe392/) | ✅ Audited |
| SAVAXAdapter | unknown | avalanche | n/a | [`0x6b2ba8...718dcf`](./contracts/avalanche-43114/0x6b2ba8f249cc1376f2a02a9faf8beca5d7718dcf/) | ✅ Audited |
| StaderAdapter | unknown | polygon | n/a | [`0x4e231b...1ddfa0`](./contracts/polygon-137/0x4e231b636e799d19a54065ba79a67d8afa1ddfa0/) | ✅ Audited |
| StaderAirdrop | unknown | polygon | n/a | [`0x406e1e...242de7`](./contracts/polygon-137/0x406e1e0e3cb4201b4aee409ad2f6cd56d3242de7/) | ✅ Audited |
| StrategyDummyImplementation | unknown | ethereum | n/a | [`0x28c24f...506157`](./contracts/ethereum-1/0x28c24ff607c4dbe51e09d5d2dd738826fe506157/) | ✅ Audited |
| Timelock | unknown | ethereum | n/a | [`0x0cbee8...b4c54f`](./contracts/ethereum-1/0x0cbee811c47c3a5cb4637f1e58d98b0abbb4c54f/) | ✅ Audited |
| TokenApprovalVerifier | unknown | ethereum | n/a | [`0x1cb9cf...076a9a`](./contracts/ethereum-1/0x1cb9cf5439dced63d8f5b7f1a5bf9834d8076a9a/) | ✅ Audited |
| TraderJoeAdapter | unknown | avalanche | n/a | [`0xd9cb7d...8c4d93`](./contracts/avalanche-43114/0xd9cb7d20e8704fa0365141c847d434737d8c4d93/) | ✅ Audited |
| VaultStETH | unknown | ethereum | n/a | [`0x40c684...2a7b30`](./contracts/ethereum-1/0x40c68480d323919d23abc9b569a2e98b4d2a7b30/) | ✅ Audited |
| VaultStETHWrapper | unknown | ethereum | n/a | [`0x22cdae...2a3d0b`](./contracts/ethereum-1/0x22cdae94f135b310d2ffb01e8af05f10092a3d0b/) | ✅ Audited |
| WalletFactory | unknown | avalanche | n/a | [`0x15cbff...836d2a`](./contracts/avalanche-43114/0x15cbff12d53e7bde3f1618844caaef99b2836d2a/) | ✅ Audited |
| WavaxGateway | unknown | avalanche | n/a | [`0x144f69...0f779b`](./contracts/avalanche-43114/0x144f69662e8217ae960cecab9733a2cc860f779b/) | ✅ Audited |
| WethGateway | unknown | ethereum | n/a | [`0x441a28...5ca651`](./contracts/ethereum-1/0x441a28a15b5bd353e9f63b2cd267277cbe5ca651/) | ✅ Audited |
| WmaticGateway | unknown | polygon | n/a | [`0xdcb3d9...5be940`](./contracts/polygon-137/0xdcb3d91555385dae23e6b966b5626aa7a75be940/) | ✅ Audited |

### ⚠️ Verified + Unaudited (84)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminModule | unknown | ethereum | n/a | [`0x183d90...d67223`](./contracts/ethereum-1/0x183d908f3e07699c83d77b503d1c1f947ed67223/) | ⚠️ Unaudited |
| Airdrop | unknown | arbitrum | n/a | [`0x056c41...5ffbae`](./contracts/arbitrum-42161/0x056c41b8c2a2e7c6454842c9a62050fa1b5ffbae/) | ⚠️ Unaudited |
| AStETH | unknown | ethereum | n/a | [`0x1982b2...f82428`](./contracts/ethereum-1/0x1982b2f5814301d4e9a8b0201555376e62f82428/) | ⚠️ Unaudited |
| ATokenInstance | unknown | avalanche | n/a | [`0x513c7e...918fff`](./contracts/avalanche-43114/0x513c7e3a9c69ca3e22550ef58ac1c0088e918fff/) | ⚠️ Unaudited |
| AvalonMintable | unknown | ethereum | n/a | [`0x322899...4027f1`](./contracts/ethereum-1/0x3228995749610bea00b59c44f8d1df21c14027f1/) | ⚠️ Unaudited |
| AvalonTimelock | unknown | ethereum | n/a | [`0x99c0fb...cd2e8e`](./contracts/ethereum-1/0x99c0fb1068b7f39e5a980971403f9578bfcd2e8e/) | ⚠️ Unaudited |
| BenqiAirdrop | unknown | avalanche | n/a | [`0x85a7e1...55441c`](./contracts/avalanche-43114/0x85a7e1510d14a2e209a9d0109753fe68de55441c/) | ⚠️ Unaudited |
| BeraPseudoBridge | unknown | ethereum | n/a | [`0x8a95f2...60d500`](./contracts/ethereum-1/0x8a95f22c5a2da7c325cf95b58f1b4f9b8460d500/) | ⚠️ Unaudited |
| ChildERC20 | unknown | polygon | n/a | [`0x30b622...88bee7`](./contracts/polygon-137/0x30b622609ffab1641b498e9bf1ff102ab288bee7/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x004bae...4d5b57`](./contracts/polygon-137/0x004bae2ed0210e937327aaf199135393f64d5b57/) | ⚠️ Unaudited |
| CianOFTUpgradeable | unknown | bsc | n/a | [`0x149777...76d705`](./contracts/bsc-56/0x149777a4f2b955e9556d3d129c8c76e5ca76d705/) | ⚠️ Unaudited |
| CianOFTWrapper | unknown | ethereum | n/a | [`0x237978...0f48ec`](./contracts/ethereum-1/0x237978176c3811a1648f3106797e3c3e070f48ec/) | ⚠️ Unaudited |
| Comptroller | unknown | avalanche | n/a | [`0x179c3c...69d7ae`](./contracts/avalanche-43114/0x179c3c9105f7f99038c3dafe89d3e24b4569d7ae/) | ⚠️ Unaudited |
| ConnectV2BenqiAvalanche | unknown | avalanche | n/a | [`0xff5a7a...c35ca8`](./contracts/avalanche-43114/0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8/) | ⚠️ Unaudited |
| ConnectV2QiAvalanche | unknown | avalanche | n/a | [`0xac33e9...a58527`](./contracts/avalanche-43114/0xac33e98174a897ecf21bd5c6e67696007aa58527/) | ⚠️ Unaudited |
| CryptoCabz | unknown | polygon | n/a | [`0x76bf9a...ed5c30`](./contracts/polygon-137/0x76bf9ac96fc75849c6872cf89f367e56feed5c30/) | ⚠️ Unaudited |
| FBTC | unknown | ethereum | n/a | [`0x55e225...4f9fc1`](./contracts/ethereum-1/0x55e225ece70ea4ae6d97136a11bb8dc2fa4f9fc1/) | ⚠️ Unaudited |
| FBTCWrapper | unknown | ethereum | n/a | [`0x1354e3...b7e682`](./contracts/ethereum-1/0x1354e3e9f03ecf8ae57b113aa4d07dd950b7e682/) | ⚠️ Unaudited |
| GHOAvalanche | unknown | avalanche | n/a | [`0xa02b10...d671d2`](./contracts/avalanche-43114/0xa02b10bc4f25c7a4c398227306354cf93dd671d2/) | ⚠️ Unaudited |
| GHOEth | unknown | ethereum | n/a | [`0x83291c...4e281f`](./contracts/ethereum-1/0x83291cf2731b8e3af3f3439cce871c6a1c4e281f/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0xf63b34...e33ecf`](./contracts/ethereum-1/0xf63b34710400cad3e044cffdcab00a0f32e33ecf/) | ⚠️ Unaudited |
| InstaBenqiMappingAvalanche | unknown | avalanche | n/a | [`0xe19fba...c58ba6`](./contracts/avalanche-43114/0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6/) | ⚠️ Unaudited |
| JumpRateModel | unknown | avalanche | n/a | [`0x363637...721f3b`](./contracts/avalanche-43114/0x363637833d110f86e47311e4c54e520982721f3b/) | ⚠️ Unaudited |
| Manager | unknown | ethereum | n/a | [`0x039bf3...66d97d`](./contracts/ethereum-1/0x039bf39fad50d8faae01171e08a296a52066d97d/) | ⚠️ Unaudited |
| Maximillion | unknown | avalanche | n/a | [`0x10338e...b05348`](./contracts/avalanche-43114/0x10338ee9417260b486a4d1452ee2496338b05348/) | ⚠️ Unaudited |
| OneInchV5Adapter | unknown | avalanche | n/a | [`0x594656...72ebaf`](./contracts/avalanche-43114/0x5946566139961632b4d47b77964084efa772ebaf/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0xa23075...738361`](./contracts/ethereum-1/0xa230758d179e25072493c9fe33f5c2f915738361/) | ⚠️ Unaudited |
| ParaSwapHelper | unknown | ethereum | n/a | [`0x0f00dc...eb2a64`](./contracts/ethereum-1/0x0f00dc481864dc0f1c1ff10b24fc5e21c5eb2a64/) | ⚠️ Unaudited |
| PglStakingContract | unknown | avalanche | n/a | [`0xe59988...906cb2`](./contracts/avalanche-43114/0xe59988d947f80b59ff1de7bd413e5e5517906cb2/) | ⚠️ Unaudited |
| PglStakingContractProxy | unknown | avalanche | n/a | [`0x4074da...eb9e4a`](./contracts/avalanche-43114/0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a/) | ⚠️ Unaudited |
| PoolCeffu | unknown | bsc | n/a | [`0x53c8bf...97f7e3`](./contracts/bsc-56/0x53c8bf6875c66e8d7c42e30beef7e6241997f7e3/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x1792f7...c86009`](./contracts/ethereum-1/0x1792f73b586f3e931b51826195ff015a23c86009/) | ⚠️ Unaudited |
| Qi | unknown | avalanche | n/a | [`0x872943...76c0f5`](./contracts/avalanche-43114/0x8729438eb15e2c8b576fcc6aecda6a148776c0f5/) | ⚠️ Unaudited |
| QiAvax | unknown | avalanche | n/a | [`0x5c0401...47ef1c`](./contracts/avalanche-43114/0x5c0401e81bc07ca70fad469b451682c0d747ef1c/) | ⚠️ Unaudited |
| QiAvaxHelper | unknown | avalanche | n/a | [`0xcc2de4...c804d5`](./contracts/avalanche-43114/0xcc2de440f9fc5eec73e28373f6bb69643dc804d5/) | ⚠️ Unaudited |
| QiErc20Delegator | unknown | avalanche | n/a | [`0x334ad8...9a7909`](./contracts/avalanche-43114/0x334ad834cd4481bb02d09615e7c11a00579a7909/) | ⚠️ Unaudited |
| QiErc20Delegator | unknown | avalanche | n/a | [`0x4c9f01...0ddd30`](./contracts/avalanche-43114/0x4c9f0140fad0c93009a8ea123eaf6b1a3d0ddd30/) | ⚠️ Unaudited |
| QiTokenSaleDistributor | unknown | avalanche | n/a | [`0x23de20...9d6bea`](./contracts/avalanche-43114/0x23de2004592b04d594d23c9a928d0552e29d6bea/) | ⚠️ Unaudited |
| QiTokenSaleDistributorProxy | unknown | avalanche | n/a | [`0xa1f5ae...6bb618`](./contracts/avalanche-43114/0xa1f5ae0ce9308750ed0c2da5283ab2ad5d6bb618/) | ⚠️ Unaudited |
| ReadModule | unknown | ethereum | n/a | [`0x0e9378...1222d1`](./contracts/ethereum-1/0x0e9378e68bf3cfe89d646902d174c5f3891222d1/) | ⚠️ Unaudited |
| ReceiverOnMainnet | unknown | ethereum | n/a | [`0x5cc3eb...4a55ac`](./contracts/ethereum-1/0x5cc3ebeb7294655c3f3a6c7b0f6b9c422d4a55ac/) | ⚠️ Unaudited |
| StaderSixAirdrop | unknown | polygon | n/a | [`0xb2ae6b...1e1ebe`](./contracts/polygon-137/0xb2ae6b63eda00c79d0105c4a9f040a060f1e1ebe/) | ⚠️ Unaudited |
| StrategyAvalon | unknown | ethereum | n/a | [`0xf42b8e...d5cf00`](./contracts/ethereum-1/0xf42b8eb69b6fcadb9191c15aa005a9c4a6d5cf00/) | ⚠️ Unaudited |
| StrategyBedrock | unknown | ethereum | n/a | [`0x302d70...23a755`](./contracts/ethereum-1/0x302d709611a4fbacef396f05493918257a23a755/) | ⚠️ Unaudited |
| StrategyBedrock18DEC2025 | unknown | ethereum | n/a | [`0x24a4fb...6d9425`](./contracts/ethereum-1/0x24a4fb8cc04313c0c45c06ac87159f09546d9425/) | ⚠️ Unaudited |
| StrategyBedrock22MAY2025 | unknown | ethereum | n/a | [`0x09511b...8cab3e`](./contracts/ethereum-1/0x09511b16527af9067170c9267abf563fcd8cab3e/) | ⚠️ Unaudited |
| StrategyBedrock27MAR2025 | unknown | ethereum | n/a | [`0x31c3c3...7c20a5`](./contracts/ethereum-1/0x31c3c3a9ab22663e438962cc57037492717c20a5/) | ⚠️ Unaudited |
| StrategyCrossStub | unknown | ethereum | n/a | [`0xe457e5...13234f`](./contracts/ethereum-1/0xe457e50c874b7b133dc81d9f40698c0fbc13234f/) | ⚠️ Unaudited |
| StrategyDefault | unknown | ethereum | n/a | [`0x0415d1...f923a2`](./contracts/ethereum-1/0x0415d1e50d8cf32884dd420a1d6a98d4baf923a2/) | ⚠️ Unaudited |
| StrategyETHConverter | unknown | ethereum | n/a | [`0x89ad20...c9758c`](./contracts/ethereum-1/0x89ad2070b7522b08aa046e100350a9c2afc9758c/) | ⚠️ Unaudited |
| StrategyEuler | unknown | ethereum | n/a | [`0x869620...f683d0`](./contracts/ethereum-1/0x869620df23af863a5b0c63af8ccd540d8ff683d0/) | ⚠️ Unaudited |
| StrategyGHO | unknown | ethereum | n/a | [`0x3dff2c...b2bb60`](./contracts/ethereum-1/0x3dff2c398f12a61c30c6c9d17da85b2d1fb2bb60/) | ⚠️ Unaudited |
| StrategyHyperliquidSTETH | unknown | ethereum | n/a | [`0x142193...d2cf1e`](./contracts/ethereum-1/0x142193cddb33950facb12355373295fb08d2cf1e/) | ⚠️ Unaudited |
| StrategyLista | unknown | bsc | n/a | [`0x25440d...ba1e2f`](./contracts/bsc-56/0x25440d9e199974e705a07df6f2464291d0ba1e2f/) | ⚠️ Unaudited |
| StrategyListaEgo | unknown | bsc | n/a | [`0x42d14e...59fe0f`](./contracts/bsc-56/0x42d14ed4cffc8484d370662128afe70af759fe0f/) | ⚠️ Unaudited |
| StrategyMellowSteakhouse | unknown | ethereum | n/a | [`0x0415a2...44d67f`](./contracts/ethereum-1/0x0415a25b6f01f671f252258a3433d2aa6144d67f/) | ⚠️ Unaudited |
| StrategyMoolah | unknown | bsc | n/a | [`0x19af8a...d309ca`](./contracts/bsc-56/0x19af8a00f6f699964e5e0abdbb680c277fd309ca/) | ⚠️ Unaudited |
| StrategyPump | unknown | ethereum | n/a | [`0x2a53f9...44b0a8`](./contracts/ethereum-1/0x2a53f9f20137fc1253c5b6edecb4fd48e044b0a8/) | ⚠️ Unaudited |
| StrategyPumpBTC | unknown | ethereum | n/a | [`0xf12e22...26b491`](./contracts/ethereum-1/0xf12e223408bc50b64b33dae393ef0fb1d926b491/) | ⚠️ Unaudited |
| StrategySatLayer | unknown | ethereum | n/a | [`0xb38bf7...d2eb56`](./contracts/ethereum-1/0xb38bf76d4424fc8003679e06fc205de4d5d2eb56/) | ⚠️ Unaudited |
| StrategySolv | unknown | ethereum | n/a | [`0x41076d...4b840d`](./contracts/ethereum-1/0x41076df3ed1c59860245471b918f423ec44b840d/) | ⚠️ Unaudited |
| StrategyZero | unknown | mantle | n/a | [`0x19af8a...d309ca`](./contracts/mantle-5000/0x19af8a00f6f699964e5e0abdbb680c277fd309ca/) | ⚠️ Unaudited |
| TestBridgeWithHook | unknown | ethereum | n/a | [`0x1c5bb8...fa7b20`](./contracts/ethereum-1/0x1c5bb82427e808f57c1c572722ea1cf6cefa7b20/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0186b0...d149c5`](./contracts/ethereum-1/0x0186b03ac7c14a90d04d2b1e168869f618d149c5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x237eff...24912f`](./contracts/ethereum-1/0x237eff231c41016d9b4305148b6be9294824912f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x250d72...5ef8f0`](./contracts/ethereum-1/0x250d72b24ca19aeebe4830c2fe9c9daf625ef8f0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2563b7...19c800`](./contracts/ethereum-1/0x2563b75172fabb5ec08694de55e181c00219c800/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x3d09c8...9af680`](./contracts/ethereum-1/0x3d09c82de2a636d5ec7a7a9ad7e5039aae9af680/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x4509c4...f203a4`](./contracts/ethereum-1/0x4509c4fb07f681385f21cf03c28a6f2aa1f203a4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x7a116f...99edc4`](./contracts/ethereum-1/0x7a116f6dc0966495462e7480125157c1e699edc4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x873ec2...ddc238`](./contracts/ethereum-1/0x873ec230a070a165198a6c5bce1e62c94fddc238/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x8bb3dc...d266f7`](./contracts/ethereum-1/0x8bb3dc91c97e340dea4f65bc4dcf271b46d266f7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9ffe77...74b464`](./contracts/ethereum-1/0x9ffe77146cc1da3edb87af163c6c32bab474b464/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x054ab5...c42515`](./contracts/base-8453/0x054ab57d364730ed9ed665ff97a92e9813c42515/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x00032e...b5f25b`](./contracts/polygon-137/0x00032e33ac57c73f9d4e3e85a97488214cb5f25b/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x009aed...643974`](./contracts/polygon-137/0x009aedc40323b16a0cbc71920d05c15192643974/) | ⚠️ Unaudited |
| USDS2USDC | unknown | ethereum | n/a | [`0xe13b6c...db26e3`](./contracts/ethereum-1/0xe13b6c5eafd3f0cdb461ce0138e0fd0fc7db26e3/) | ⚠️ Unaudited |
| USDS2USDC2DAI | unknown | ethereum | n/a | [`0x4f119f...e60eee`](./contracts/ethereum-1/0x4f119f538cb77faafeb2a857e268ffb66fe60eee/) | ⚠️ Unaudited |
| UserModule | unknown | ethereum | n/a | [`0xc170b0...8d8183`](./contracts/ethereum-1/0xc170b044e40c58b96bac975f935fd41aa78d8183/) | ⚠️ Unaudited |
| VariableDebtTokenInstance | unknown | polygon | n/a | [`0x4a1c3a...deb8b8`](./contracts/polygon-137/0x4a1c3ad6ed28a636ee1751c69071f6be75deb8b8/) | ⚠️ Unaudited |
| VaultYieldETH | unknown | ethereum | n/a | [`0x03a16e...5fa108`](./contracts/ethereum-1/0x03a16e0bfa2c5c28991c0446fc849211de5fa108/) | ⚠️ Unaudited |
| VaultYieldFBTC | unknown | ethereum | n/a | [`0x520081...000af4`](./contracts/ethereum-1/0x5200817ce523f8340a6fa00f800b7df71c000af4/) | ⚠️ Unaudited |
| VaultYieldRSETH | unknown | ethereum | n/a | [`0x2410e7...edf4bf`](./contracts/ethereum-1/0x2410e7d8909faa641a090a9c0582b76577edf4bf/) | ⚠️ Unaudited |
| YlstETHVault | unknown | ethereum | n/a | [`0x0695ea...ea3862`](./contracts/ethereum-1/0x0695ea1585e159368c95da0e65d611fd27ea3862/) | ⚠️ Unaudited |

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
| [ackee-blockchain-cian-yield-layer-report.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FV02w5MYbK0RQhopzxvF8%2Fackee-blockchain-cian-yield-layer-report.pdf) | Ackee Blockchain | Audit | 2025-01 | aging | Direct | contract_name | 3 | high |
| [PeckShield-Audit-Report-CIAN-v1.0.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FLzvJmGX3yAqssnN0qkti%2FPeckShield-Audit-Report-CIAN-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 6 | high |
| [Omniscia_Audit_Report_CIAN.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FNtBm4xZQWc0M3QiltaN3%2FOmniscia_Audit_Report_CIAN.pdf) | Omniscia | Audit | 2023-05 | stale | Direct | contract_name | 5 | high |
| [20221025_Paladin_Cian_Final_Report.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FL4K76IA6F2jMQfREhctf%2F20221025_Paladin_Cian_Final_Report.pdf) | Paladin | Audit | 2022-10 | stale | Direct | contract_name | 16 | high |
| [20220924_Paladin_CianEthereum_Final_Report.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FQAkwlCeGM0boOyAa7TxT%2F20220924_Paladin_CianEthereum_Final_Report.pdf) | Paladin | Audit | 2022-09 | stale | Direct | contract_name | 16 | high |
| [20230103_Paladin_CianPolygon_Final_Report.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2F1a1Xt6yG315wDckxuCCx%2F20230103_Paladin_CianPolygon_Final_Report.pdf) | Paladin | Audit | 2023-01 | stale | Direct | contract_name | 14 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x183d90...d67223`](./contracts/ethereum-1/0x183d908f3e07699c83d77b503d1c1f947ed67223/) | AdminModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x056c41...5ffbae`](./contracts/arbitrum-42161/0x056c41b8c2a2e7c6454842c9a62050fa1b5ffbae/) | Airdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1982b2...f82428`](./contracts/ethereum-1/0x1982b2f5814301d4e9a8b0201555376e62f82428/) | AStETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x513c7e...918fff`](./contracts/avalanche-43114/0x513c7e3a9c69ca3e22550ef58ac1c0088e918fff/) | ATokenInstance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x322899...4027f1`](./contracts/ethereum-1/0x3228995749610bea00b59c44f8d1df21c14027f1/) | AvalonMintable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99c0fb...cd2e8e`](./contracts/ethereum-1/0x99c0fb1068b7f39e5a980971403f9578bfcd2e8e/) | AvalonTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x85a7e1...55441c`](./contracts/avalanche-43114/0x85a7e1510d14a2e209a9d0109753fe68de55441c/) | BenqiAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a95f2...60d500`](./contracts/ethereum-1/0x8a95f22c5a2da7c325cf95b58f1b4f9b8460d500/) | BeraPseudoBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x30b622...88bee7`](./contracts/polygon-137/0x30b622609ffab1641b498e9bf1ff102ab288bee7/) | ChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x004bae...4d5b57`](./contracts/polygon-137/0x004bae2ed0210e937327aaf199135393f64d5b57/) | ChildERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x149777...76d705`](./contracts/bsc-56/0x149777a4f2b955e9556d3d129c8c76e5ca76d705/) | CianOFTUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x237978...0f48ec`](./contracts/ethereum-1/0x237978176c3811a1648f3106797e3c3e070f48ec/) | CianOFTWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x179c3c...69d7ae`](./contracts/avalanche-43114/0x179c3c9105f7f99038c3dafe89d3e24b4569d7ae/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xff5a7a...c35ca8`](./contracts/avalanche-43114/0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8/) | ConnectV2BenqiAvalanche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xac33e9...a58527`](./contracts/avalanche-43114/0xac33e98174a897ecf21bd5c6e67696007aa58527/) | ConnectV2QiAvalanche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x76bf9a...ed5c30`](./contracts/polygon-137/0x76bf9ac96fc75849c6872cf89f367e56feed5c30/) | CryptoCabz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55e225...4f9fc1`](./contracts/ethereum-1/0x55e225ece70ea4ae6d97136a11bb8dc2fa4f9fc1/) | FBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1354e3...b7e682`](./contracts/ethereum-1/0x1354e3e9f03ecf8ae57b113aa4d07dd950b7e682/) | FBTCWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa02b10...d671d2`](./contracts/avalanche-43114/0xa02b10bc4f25c7a4c398227306354cf93dd671d2/) | GHOAvalanche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83291c...4e281f`](./contracts/ethereum-1/0x83291cf2731b8e3af3f3439cce871c6a1c4e281f/) | GHOEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe19fba...c58ba6`](./contracts/avalanche-43114/0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6/) | InstaBenqiMappingAvalanche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x363637...721f3b`](./contracts/avalanche-43114/0x363637833d110f86e47311e4c54e520982721f3b/) | JumpRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x039bf3...66d97d`](./contracts/ethereum-1/0x039bf39fad50d8faae01171e08a296a52066d97d/) | Manager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x10338e...b05348`](./contracts/avalanche-43114/0x10338ee9417260b486a4d1452ee2496338b05348/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x594656...72ebaf`](./contracts/avalanche-43114/0x5946566139961632b4d47b77964084efa772ebaf/) | OneInchV5Adapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa23075...738361`](./contracts/ethereum-1/0xa230758d179e25072493c9fe33f5c2f915738361/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f00dc...eb2a64`](./contracts/ethereum-1/0x0f00dc481864dc0f1c1ff10b24fc5e21c5eb2a64/) | ParaSwapHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe59988...906cb2`](./contracts/avalanche-43114/0xe59988d947f80b59ff1de7bd413e5e5517906cb2/) | PglStakingContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4074da...eb9e4a`](./contracts/avalanche-43114/0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a/) | PglStakingContractProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x53c8bf...97f7e3`](./contracts/bsc-56/0x53c8bf6875c66e8d7c42e30beef7e6241997f7e3/) | PoolCeffu | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x872943...76c0f5`](./contracts/avalanche-43114/0x8729438eb15e2c8b576fcc6aecda6a148776c0f5/) | Qi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5c0401...47ef1c`](./contracts/avalanche-43114/0x5c0401e81bc07ca70fad469b451682c0d747ef1c/) | QiAvax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcc2de4...c804d5`](./contracts/avalanche-43114/0xcc2de440f9fc5eec73e28373f6bb69643dc804d5/) | QiAvaxHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x334ad8...9a7909`](./contracts/avalanche-43114/0x334ad834cd4481bb02d09615e7c11a00579a7909/) | QiErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4c9f01...0ddd30`](./contracts/avalanche-43114/0x4c9f0140fad0c93009a8ea123eaf6b1a3d0ddd30/) | QiErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x23de20...9d6bea`](./contracts/avalanche-43114/0x23de2004592b04d594d23c9a928d0552e29d6bea/) | QiTokenSaleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa1f5ae...6bb618`](./contracts/avalanche-43114/0xa1f5ae0ce9308750ed0c2da5283ab2ad5d6bb618/) | QiTokenSaleDistributorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e9378...1222d1`](./contracts/ethereum-1/0x0e9378e68bf3cfe89d646902d174c5f3891222d1/) | ReadModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5cc3eb...4a55ac`](./contracts/ethereum-1/0x5cc3ebeb7294655c3f3a6c7b0f6b9c422d4a55ac/) | ReceiverOnMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb2ae6b...1e1ebe`](./contracts/polygon-137/0xb2ae6b63eda00c79d0105c4a9f040a060f1e1ebe/) | StaderSixAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf42b8e...d5cf00`](./contracts/ethereum-1/0xf42b8eb69b6fcadb9191c15aa005a9c4a6d5cf00/) | StrategyAvalon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x302d70...23a755`](./contracts/ethereum-1/0x302d709611a4fbacef396f05493918257a23a755/) | StrategyBedrock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24a4fb...6d9425`](./contracts/ethereum-1/0x24a4fb8cc04313c0c45c06ac87159f09546d9425/) | StrategyBedrock18DEC2025 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09511b...8cab3e`](./contracts/ethereum-1/0x09511b16527af9067170c9267abf563fcd8cab3e/) | StrategyBedrock22MAY2025 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31c3c3...7c20a5`](./contracts/ethereum-1/0x31c3c3a9ab22663e438962cc57037492717c20a5/) | StrategyBedrock27MAR2025 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe457e5...13234f`](./contracts/ethereum-1/0xe457e50c874b7b133dc81d9f40698c0fbc13234f/) | StrategyCrossStub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0415d1...f923a2`](./contracts/ethereum-1/0x0415d1e50d8cf32884dd420a1d6a98d4baf923a2/) | StrategyDefault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89ad20...c9758c`](./contracts/ethereum-1/0x89ad2070b7522b08aa046e100350a9c2afc9758c/) | StrategyETHConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x869620...f683d0`](./contracts/ethereum-1/0x869620df23af863a5b0c63af8ccd540d8ff683d0/) | StrategyEuler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3dff2c...b2bb60`](./contracts/ethereum-1/0x3dff2c398f12a61c30c6c9d17da85b2d1fb2bb60/) | StrategyGHO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x142193...d2cf1e`](./contracts/ethereum-1/0x142193cddb33950facb12355373295fb08d2cf1e/) | StrategyHyperliquidSTETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x25440d...ba1e2f`](./contracts/bsc-56/0x25440d9e199974e705a07df6f2464291d0ba1e2f/) | StrategyLista | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x42d14e...59fe0f`](./contracts/bsc-56/0x42d14ed4cffc8484d370662128afe70af759fe0f/) | StrategyListaEgo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0415a2...44d67f`](./contracts/ethereum-1/0x0415a25b6f01f671f252258a3433d2aa6144d67f/) | StrategyMellowSteakhouse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x19af8a...d309ca`](./contracts/bsc-56/0x19af8a00f6f699964e5e0abdbb680c277fd309ca/) | StrategyMoolah | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a53f9...44b0a8`](./contracts/ethereum-1/0x2a53f9f20137fc1253c5b6edecb4fd48e044b0a8/) | StrategyPump | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf12e22...26b491`](./contracts/ethereum-1/0xf12e223408bc50b64b33dae393ef0fb1d926b491/) | StrategyPumpBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb38bf7...d2eb56`](./contracts/ethereum-1/0xb38bf76d4424fc8003679e06fc205de4d5d2eb56/) | StrategySatLayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41076d...4b840d`](./contracts/ethereum-1/0x41076df3ed1c59860245471b918f423ec44b840d/) | StrategySolv | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x19af8a...d309ca`](./contracts/mantle-5000/0x19af8a00f6f699964e5e0abdbb680c277fd309ca/) | StrategyZero | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c5bb8...fa7b20`](./contracts/ethereum-1/0x1c5bb82427e808f57c1c572722ea1cf6cefa7b20/) | TestBridgeWithHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00032e...b5f25b`](./contracts/polygon-137/0x00032e33ac57c73f9d4e3e85a97488214cb5f25b/) | UChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x009aed...643974`](./contracts/polygon-137/0x009aedc40323b16a0cbc71920d05c15192643974/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe13b6c...db26e3`](./contracts/ethereum-1/0xe13b6c5eafd3f0cdb461ce0138e0fd0fc7db26e3/) | USDS2USDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f119f...e60eee`](./contracts/ethereum-1/0x4f119f538cb77faafeb2a857e268ffb66fe60eee/) | USDS2USDC2DAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc170b0...8d8183`](./contracts/ethereum-1/0xc170b044e40c58b96bac975f935fd41aa78d8183/) | UserModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4a1c3a...deb8b8`](./contracts/polygon-137/0x4a1c3ad6ed28a636ee1751c69071f6be75deb8b8/) | VariableDebtTokenInstance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03a16e...5fa108`](./contracts/ethereum-1/0x03a16e0bfa2c5c28991c0446fc849211de5fa108/) | VaultYieldETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x520081...000af4`](./contracts/ethereum-1/0x5200817ce523f8340a6fa00f800b7df71c000af4/) | VaultYieldFBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2410e7...edf4bf`](./contracts/ethereum-1/0x2410e7d8909faa641a090a9c0582b76577edf4bf/) | VaultYieldRSETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0695ea...ea3862`](./contracts/ethereum-1/0x0695ea1585e159368c95da0e65d611fd27ea3862/) | YlstETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 104 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=60

Fork inheritance lineage and inherited audits are included when available.
