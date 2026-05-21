# Agentic Audit Brief: BOB Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 18.8% over 90 days

## Project Overview

- Project: BOB Bridge (`bob-bridge`)
- Website: [https://www.gobob.xyz](https://www.gobob.xyz)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-21T14:16:24.884Z
- Pipeline run: v2-pipeline-2026-05-21-0269ae-8c39
- Chains: ethereum
- Contract surface: 247 logical contracts (254 raw addresses)
- DeFi Llama TVL: $3,606,165.44
- On-chain TVL (included contracts): $198,975.29

## Project Description

BOB Bridge is a cross-chain bridge protocol that enables asset transfers between Ethereum L1 and BOB L2 networks. It uses the OP Stack framework with custom bridge contracts for tokens like USDC and USDT, and includes dispute resolution and governance mechanisms.

### Architecture

The BOB Bridge family uses custom token bridges (L1ERC20TokenBridge, TetherToken) that integrate with the standard OP Stack L1 contracts (OptimismPortal2, L1CrossDomainMessenger) to move assets to L2. The L1 family provides shared governance, dispute resolution, and system configuration for the rollup, while L2 families contain the network's operational contracts and testnet mirrors.

## Audit Coverage Summary

- Audited logical contracts: 1/247 (0.4%)
- Raw deployed addresses: 254
- Unaudited contracts: 246
- Audits discovered: 17
- Scoreable audits (matched contracts): 2
- ASD (unaudited native TVL): $198,975.29
- Note: This protocol is classified as [declining]. ASD of $198,975.29 represents exposure in a protocol with declining activity.

## Contract Surface

### native (140)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | [`0x0302f7...7b63b2`](./contracts/ethereum-1/0x0302f75047aa0935052275e77d15c40bee7b63b2/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x09de35...cfa232`](./contracts/ethereum-1/0x09de35fbbd04e347368f65997a88121e3acfa232/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x0b31b2...1f61e5`](./contracts/ethereum-1/0x0b31b28103754a272d7905240301ec7b2a1f61e5/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0x0dd8ed...bd97d2`](./contracts/ethereum-1/0x0dd8ed2f044fde13be5d28d51b29e87e22bd97d2/) | Proxy (impl: ProtocolVersions) | unknown | n/a | no | proxy only (impl: ProtocolVersions) |
| ethereum | [`0x1279cd...96a3a4`](./contracts/ethereum-1/0x1279cd478838875f4ced1c25a0db99037996a3a4/) | BridgeEndpoint | operational_periphery | n/a | no | none |
| ethereum | [`0x140dca...1a1c49`](./contracts/ethereum-1/0x140dca39e274397acaf3fd955af31400091a1c49/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x153db9...747cb2`](./contracts/ethereum-1/0x153db97d1adbda7ff6dda87e002544e0f5747cb2/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x164a68...fce9eb`](./contracts/ethereum-1/0x164a68521386049e23bee8fa879a4e031ffce9eb/) | LockDrop | unknown | n/a | no | none |
| ethereum | [`0x174da6...ea128b`](./contracts/ethereum-1/0x174da672c3b8c45619910fd22b8df57111ea128b/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x1752b4...3e16f7`](./contracts/ethereum-1/0x1752b405fcb8b92ef749621ad70571d9b43e16f7/) | TimeLock | governance | n/a | no | ethereum `0x137d16...414218` |
| ethereum | [`0x17c3ad...52baef`](./contracts/ethereum-1/0x17c3adf2672a10f047b083bf22957e4c7452baef/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0x1ee901...ea2aea`](./contracts/ethereum-1/0x1ee901ba0088f95c250859e843b962c5abea2aea/) | BridgeEndpoint | operational_periphery | n/a | no | none |
| ethereum | [`0x1f3473...1082ed`](./contracts/ethereum-1/0x1f3473b2369dbbead23d4ba7327013eb6a1082ed/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x216cef...c7a1e1`](./contracts/ethereum-1/0x216cef65bd8eac33fb08a42032913aad26c7a1e1/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x21ea8b...b4621d`](./contracts/ethereum-1/0x21ea8bbf6c5badea97367f7f5dc0773da2b4621d/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x237853...158c12`](./contracts/ethereum-1/0x237853621998a33fa5b9b820592f4c6f4c158c12/) | L1CrossDomainMessenger | unknown | n/a | no | none |
| ethereum | [`0x273e9a...25d087`](./contracts/ethereum-1/0x273e9a126ec9609f4d82f27d9e2a29b70225d087/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x2f76a1...f29f49`](./contracts/ethereum-1/0x2f76a1dfafc7dd90060bc3f04a9c698ccff29f49/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x333c5c...77bf92`](./contracts/ethereum-1/0x333c5c6e88fc0ad8c9523be2aa5c29345977bf92/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x340f92...ffe647`](./contracts/ethereum-1/0x340f923e5c7cbb2171146f64169ec9d5a9ffe647/) | SystemConfig | governance | n/a | no | none |
| ethereum | [`0x3439e4...283625`](./contracts/ethereum-1/0x3439e4e9afe4817ddeed6368a78e1d20f2283625/) | BridgeEndpoint | operational_periphery | n/a | no | none |
| ethereum | [`0x345f46...f3404e`](./contracts/ethereum-1/0x345f46fdd0adad44ba8e2a65ce6a7ba879f3404e/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x377d69...fdf03a`](./contracts/ethereum-1/0x377d6993b848013991e3d8b3028db74ec6fdf03a/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x37f330...484306`](./contracts/ethereum-1/0x37f330e667208633e1da1cf601d01f0ef8484306/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x392113...cbbf17`](./contracts/ethereum-1/0x392113ca9a6c8955a1445fe0a163f1e976cbbf17/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0x3a1d54...ea3c13`](./contracts/ethereum-1/0x3a1d54496cf461ffc96d3b1a8a0b43b091ea3c13/) | Proxy (impl: DelayedWETH) | token | n/a | no | proxy only (impl: DelayedWETH) |
| ethereum | [`0x3c8776...c43287`](./contracts/ethereum-1/0x3c877699263119022cdaa251058c1bac8fc43287/) | OptimismPortal2 | unknown | n/a | no | none |
| ethereum | [`0x3f6ce1...4ac1f7`](./contracts/ethereum-1/0x3f6ce1b36e5120bbc59d0cfe8a5ac8b6464ac1f7/) | Proxy (impl: L1StandardBridge) | bridge_template | n/a | no | proxy only (impl: L1StandardBridge) |
| ethereum | [`0x420000...000006`](./contracts/ethereum-1/0x4200000000000000000000000000000000000006/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x420000...000007`](./contracts/ethereum-1/0x4200000000000000000000000000000000000007/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x420000...00000f`](./contracts/ethereum-1/0x420000000000000000000000000000000000000f/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x420000...000010`](./contracts/ethereum-1/0x4200000000000000000000000000000000000010/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x420000...000011`](./contracts/ethereum-1/0x4200000000000000000000000000000000000011/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x420000...000012`](./contracts/ethereum-1/0x4200000000000000000000000000000000000012/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x420000...000014`](./contracts/ethereum-1/0x4200000000000000000000000000000000000014/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x420000...000015`](./contracts/ethereum-1/0x4200000000000000000000000000000000000015/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x420000...000016`](./contracts/ethereum-1/0x4200000000000000000000000000000000000016/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x420000...000017`](./contracts/ethereum-1/0x4200000000000000000000000000000000000017/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x420000...000018`](./contracts/ethereum-1/0x4200000000000000000000000000000000000018/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x420000...000019`](./contracts/ethereum-1/0x4200000000000000000000000000000000000019/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x420000...00001a`](./contracts/ethereum-1/0x420000000000000000000000000000000000001a/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x420000...000020`](./contracts/ethereum-1/0x4200000000000000000000000000000000000020/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x420000...000021`](./contracts/ethereum-1/0x4200000000000000000000000000000000000021/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x46ab89...d42c00`](./contracts/ethereum-1/0x46ab89c0d515a3e7bb5aab4eb74b807cefd42c00/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0x48e0d5...22baa6`](./contracts/ethereum-1/0x48e0d51dfbbe664263517a25d8a02e8c3122baa6/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0x4bba75...74e4a0`](./contracts/ethereum-1/0x4bba758f006ef09402ef31724203f316ab74e4a0/) | DisputeGameFactory | registry | n/a | no | none |
| ethereum | [`0x4be239...a492ef`](./contracts/ethereum-1/0x4be239c86364ed73fc244a5f50c8ccb101a492ef/) | KailuaGame | unknown | n/a | no | none |
| ethereum | [`0x4ca751...02b506`](./contracts/ethereum-1/0x4ca751c90c66468c88075bedde5e92e0b902b506/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0x4d05fa...903d84`](./contracts/ethereum-1/0x4d05fa79f65b57778ef782d426ad2618e3903d84/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0x4da82a...7458e7`](./contracts/ethereum-1/0x4da82a327773965b8d4d85fa3db8249b387458e7/) | SuperchainConfig | governance | n/a | no | ethereum `0x097f99...9d53cc`; ethereum `0x554ffc...c5e667` |
| ethereum | [`0x4e1adf...1abe02`](./contracts/ethereum-1/0x4e1adfd70cb9fbbe78e3a0d7f3d995cdc31abe02/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x4f1130...8fd0ba`](./contracts/ethereum-1/0x4f113098d798e7444255c0d0be7c64a1508fd0ba/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x540df7...1cc737`](./contracts/ethereum-1/0x540df7c6e0f04513338b7cbb83460653971cc737/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0x542ba6...25bcbe`](./contracts/ethereum-1/0x542ba659e226251dcc9d66604c8ecfa50425bcbe/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0x555740...b09cb6`](./contracts/ethereum-1/0x5557408ab14013ce9dbb300de0d87d386bb09cb6/) | Proxy (impl: OptimismMintableERC20Factory) | registry | n/a | no | proxy only (impl: OptimismMintableERC20Factory) |
| ethereum | [`0x59191b...229822`](./contracts/ethereum-1/0x59191bd38eba4a642c9fec308dc188731b229822/) | L2OutputOracle | operational_periphery | n/a | no | ethereum `0xdda53e...db11c1` |
| ethereum | [`0x59fbb8...e5e7cd`](./contracts/ethereum-1/0x59fbb80184cec833981d0940044bb59a69e5e7cd/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x5a6d53...f2fbd9`](./contracts/ethereum-1/0x5a6d5344b786d96fe4237f8fe75e11e4b6f2fbd9/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x5adc09...10ac42`](./contracts/ethereum-1/0x5adc091c463291a425763c5c225a8dd04a10ac42/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x5b172b...415514`](./contracts/ethereum-1/0x5b172bbfa0140285a02374ec1f5b9f25ef415514/) | OptimismPortal2 | unknown | n/a | no | none |
| ethereum | [`0x5c6a76...d488cf`](./contracts/ethereum-1/0x5c6a76a0217d41a5f7c4132b042b0b2cdfd488cf/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x5d1504...07b4b0`](./contracts/ethereum-1/0x5d15048211ea6614593bb2ec432316f89c07b4b0/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x5e0f9b...5a3e32`](./contracts/ethereum-1/0x5e0f9be7bccbcf500fa1a586a8781a44a35a3e32/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x5ff932...20d50a`](./contracts/ethereum-1/0x5ff93263d5181b2a826f8c51d54bc0da2d20d50a/) | Proxy (impl: L1ERC721Bridge) | operational_periphery | n/a | no | proxy only (impl: L1ERC721Bridge) |
| ethereum | [`0x626812...869add`](./contracts/ethereum-1/0x626812ea3896e06faa08cd8adcf32779c9869add/) | BridgeEndpoint | operational_periphery | n/a | no | none |
| ethereum | [`0x65d57b...4c0ce9`](./contracts/ethereum-1/0x65d57b1e6570f5c636b8dd64c186ac304a4c0ce9/) | TreasuryVester | operational_periphery | n/a | no | none |
| ethereum | [`0x6a9a90...1f06a6`](./contracts/ethereum-1/0x6a9a903c82f662d07497cd066b134e000b1f06a6/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x6cba14...a3d956`](./contracts/ethereum-1/0x6cba14acf33de1e581774e7b6b33dd1810a3d956/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x6d9fa9...6d2f32`](./contracts/ethereum-1/0x6d9fa95c2c78c5dcea102cae8a4ac597066d2f32/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x6ed13b...4c584c`](./contracts/ethereum-1/0x6ed13b9bdfea976d6e9e1d509f4eb1abb84c584c/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x735162...9a2552`](./contracts/ethereum-1/0x7351623002d53f7ca39a5ed1ea8f1c4dc29a2552/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0x771366...6ea387`](./contracts/ethereum-1/0x7713665ba780b25c7c306ac786873a0c936ea387/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0x773b66...ea7744`](./contracts/ethereum-1/0x773b6601f5bbbede75006a728bb22d5efbea7744/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x7a06b2...c8cede`](./contracts/ethereum-1/0x7a06b23e138f2cc2a5ccec7e0648f589fbc8cede/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x7b4653...d3f8d2`](./contracts/ethereum-1/0x7b465370bb7a333f99edd19599eb7fb1c2d3f8d2/) | AnchorStateRegistry | registry | n/a | no | none |
| ethereum | [`0x839fd7...e33d66`](./contracts/ethereum-1/0x839fd7873702c2cc238dc87338ff3cbf4ee33d66/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x86760e...72126a`](./contracts/ethereum-1/0x86760eb2b9947b70ce613491cf7a216c2872126a/) | BridgeToken | operational_periphery | n/a | no | ethereum `0x9fabf9...326fba`; ethereum `0xe7c375...7e0923` |
| ethereum | [`0x8aa593...c49a56`](./contracts/ethereum-1/0x8aa593464d906512372ddb2a5719f2ecbec49a56/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x8adee1...e65a3e`](./contracts/ethereum-1/0x8adee124447435fe03e3cd24df3f4cae32e65a3e/) | Proxy (impl: OptimismPortal2) | unknown | n/a | no | proxy only (impl: OptimismPortal2) |
| ethereum | [`0x93a70c...429cf2`](./contracts/ethereum-1/0x93a70c645c70307ca47bad645706c9d9aa429cf2/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x96123d...9b1079`](./contracts/ethereum-1/0x96123dbfc3253185b594c6a7472ee5a21e9b1079/) | Proxy (impl: DisputeGameFactory) | registry | n/a | no | proxy only (impl: DisputeGameFactory) |
| ethereum | [`0x993703...02ae53`](./contracts/ethereum-1/0x9937033cc967eed9d753e31c77d2f146d002ae53/) | KailuaTreasury | operational_periphery | n/a | no | none |
| ethereum | [`0x994e3b...959fec`](./contracts/ethereum-1/0x994e3b01d130944a3e67bfd3b8fc73069b959fec/) | OptimismPortal | unknown | n/a | no | none |
| ethereum | [`0x997793...ecb31f`](./contracts/ethereum-1/0x9977936a421f9b06c81afc0ccf1988b92decb31f/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x9a45dc...dfa838`](./contracts/ethereum-1/0x9a45dc843f95414eb468f976e5dadf9377dfa838/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0x9b1ab2...ecd0c0`](./contracts/ethereum-1/0x9b1ab202831417076e4d8a4e1650b8bc4eecd0c0/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x9b3e16...e9263c`](./contracts/ethereum-1/0x9b3e1661bccaf907893b71e4016c01513ae9263c/) | KailuaTreasury | operational_periphery | n/a | no | none |
| ethereum | [`0x9cc127...8ec3b0`](./contracts/ethereum-1/0x9cc1277bb9b9335f7299d03a86bd80f6f28ec3b0/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x9dda29...245c16`](./contracts/ethereum-1/0x9dda29c60a2739ef92cd4b3a27f3ba4ccd245c16/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x9f99e8...3e0c66`](./contracts/ethereum-1/0x9f99e8821813e043a2ded641a3d130cbba3e0c66/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0x9fe7ef...ee9f41`](./contracts/ethereum-1/0x9fe7ef727da3d79e0308ff43f31ea1d077ee9f41/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0xa7675e...d297bb`](./contracts/ethereum-1/0xa7675ec8b81639caa8a6bd61138d8a45aed297bb/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xa8e1b7...d5e9da`](./contracts/ethereum-1/0xa8e1b76426ac2b1b93502b30b92445d504d5e9da/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xaa0a1e...55b590`](./contracts/ethereum-1/0xaa0a1efd35d6578ea6b5704dbc2c40b36a55b590/) | SystemConfig | governance | n/a | no | none |
| ethereum | [`0xaaa46f...1d1e07`](./contracts/ethereum-1/0xaaa46f83a17625fc9a9602c33c8b49bf4e1d1e07/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0xabe2ac...4ed887`](./contracts/ethereum-1/0xabe2ac29b9eb8466c50105137db33154654ed887/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0xacb886...1c5393`](./contracts/ethereum-1/0xacb886b75d76d1c8d9248cfddfa09b70c71c5393/) | Proxy (impl: SystemConfig) | governance | n/a | no | proxy only (impl: SystemConfig) |
| ethereum | [`0xad8a04...920aa2`](./contracts/ethereum-1/0xad8a0432b0d78189adae17b535f1e9e110920aa2/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xae6770...e0dde9`](./contracts/ethereum-1/0xae6770a207e86fae3b191564fa55ce7bfee0dde9/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0xb05ad4...523179`](./contracts/ethereum-1/0xb05ad4e4087cbd315f193532e8c63db3d1523179/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0xb39553...52b13b`](./contracts/ethereum-1/0xb3955302e58fffdf2da247e999cd9755f652b13b/) | BridgeEndpoint | operational_periphery | n/a | no | none |
| ethereum | [`0xb443da...0d6fb4`](./contracts/ethereum-1/0xb443da3e07052204a02d630a8933dac05a0d6fb4/) | OptimismPortal2 | unknown | n/a | no | none |
| ethereum | [`0xb53144...8c7777`](./contracts/ethereum-1/0xb531445401926029b1647669cfac8b4e5d8c7777/) | L1ERC20TokenBridge | operational_periphery | n/a | no | ethereum `0x091df5...b95b72` |
| ethereum | [`0xb9a5d8...848e96`](./contracts/ethereum-1/0xb9a5d8f774f6c3085e0cdd2e028b3dff0c848e96/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0xb9fe6b...88a676`](./contracts/ethereum-1/0xb9fe6b5d872f2efe7f2472a6a0ea18cb1088a676/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0xbdab72...b8f7a5`](./contracts/ethereum-1/0xbdab72602e9ad40fc6a6852caf43258113b8f7a5/) | SideToken | token | $198,975.29 | no | none |
| ethereum | [`0xbdbb63...323dd1`](./contracts/ethereum-1/0xbdbb63f938c8961af31ead3deba5c96e6a323dd1/) | SideToken | token | n/a | no | none |
| ethereum | [`0xbe48fb...490164`](./contracts/ethereum-1/0xbe48fb5d4d1cf72f77685b943a291c7293490164/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xc2391b...4f075c`](./contracts/ethereum-1/0xc2391b7307c783d3c8c93de55c6ea3f7e94f075c/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xc6441c...73d157`](./contracts/ethereum-1/0xc6441cb2d7620c92b636be864c35da068f73d157/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xc7bef1...8bc630`](./contracts/ethereum-1/0xc7bef1384ad5285f2db983bc1c6673008f8bc630/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0xcbce91...f21ad3`](./contracts/ethereum-1/0xcbce919d7f5df70481ed1af23d7534f319f21ad3/) | BridgeEndpoint | operational_periphery | n/a | no | none |
| ethereum | [`0xcc3eb6...8c30ab`](./contracts/ethereum-1/0xcc3eb61737b3161438ab859d1d0dd1a1138c30ab/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xcfffbd...a463ab`](./contracts/ethereum-1/0xcfffbd937a2b03808a5582b550e9f8f151a463ab/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xd0216b...535431`](./contracts/ethereum-1/0xd0216bdcc195abdf77746b6a6347ce85e2535431/) | AnchorStateRegistry | registry | n/a | no | none |
| ethereum | [`0xd37b0b...9e742b`](./contracts/ethereum-1/0xd37b0bedd9094988a31dbbb6bf77dc97269e742b/) | KailuaGame | unknown | n/a | no | none |
| ethereum | [`0xd6acca...7c773f`](./contracts/ethereum-1/0xd6acca55ec6adf37b114a5fa10414d290c7c773f/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xdf79be...bf80a3`](./contracts/ethereum-1/0xdf79be157c4fabcf3644c2043de48fe97cbf80a3/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0xdfe652...96ee3c`](./contracts/ethereum-1/0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c/) | OPContractsManager | governance | n/a | no | none |
| ethereum | [`0xe05685...413ab8`](./contracts/ethereum-1/0xe05685cd4b6b3f120ee7539c6c44647caa413ab8/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xe34577...9ca82a`](./contracts/ethereum-1/0xe34577e7d8bbdf044de236b15df132b1409ca82a/) | KailuaGame | unknown | n/a | no | none |
| ethereum | [`0xe3d981...547eda`](./contracts/ethereum-1/0xe3d981643b806fb8030cdb677d6e60892e547eda/) | Proxy (impl: L1CrossDomainMessenger) | unknown | n/a | no | proxy only (impl: L1CrossDomainMessenger) |
| ethereum | [`0xe43415...7a053b`](./contracts/ethereum-1/0xe4341585b9bbc55a44c20a3c037058891e7a053b/) | KailuaGame | unknown | n/a | no | none |
| ethereum | [`0xe711a0...a75d95`](./contracts/ethereum-1/0xe711a0489deae50340e9950fa14072ab40a75d95/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xe7ef4a...aa6423`](./contracts/ethereum-1/0xe7ef4a761f195c5c6e9574d874b6a82d9caa6423/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xe92520...965c46`](./contracts/ethereum-1/0xe925205ad05d8d612ac205c4941ccd61fc965c46/) | Proxy (impl: SuperchainConfig) | governance | n/a | no | proxy only (impl: SuperchainConfig) |
| ethereum | [`0xe99af5...5fb895`](./contracts/ethereum-1/0xe99af5f4c60e06beb3827f4ffdd06e88c55fb895/) | KailuaTreasury | operational_periphery | n/a | no | none |
| ethereum | [`0xeba14d...e43fef`](./contracts/ethereum-1/0xeba14d52f1b19ca65455e5ecab72d2ffd9e43fef/) | Proxy (impl: AnchorStateRegistry) | registry | n/a | no | proxy only (impl: AnchorStateRegistry) |
| ethereum | [`0xef0d12...a338d3`](./contracts/ethereum-1/0xef0d1247f9fb0148a85bb342eb8b98b56ba338d3/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xef98e4...4c587b`](./contracts/ethereum-1/0xef98e4cad451f55178e3af2fca79e67b9d4c587b/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xf12de0...68312e`](./contracts/ethereum-1/0xf12de004d643a8e942267a1f0a1933ec4168312e/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xf1b866...6a2b6f`](./contracts/ethereum-1/0xf1b86628c060603d213d23076df06abbf86a2b6f/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xf1f61f...6107d9`](./contracts/ethereum-1/0xf1f61f7d92c4d242180f83d331f82453f56107d9/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0xf2748c...03c0e0`](./contracts/ethereum-1/0xf2748c4bc1842b38f466a860d30de2330203c0e0/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xf2dc77...3dfdc7`](./contracts/ethereum-1/0xf2dc77c697e892542cc53336178a78bb313dfdc7/) | AddressManager | governance | n/a | no | none |
| ethereum | [`0xf42326...1e4f22`](./contracts/ethereum-1/0xf4232686a18468fdd4c60b69033235e6c61e4f22/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xf55809...8ad347`](./contracts/ethereum-1/0xf558094831fbe4edb248e401847229230c8ad347/) | RevokableVester | operational_periphery | n/a | no | none |
| ethereum | [`0xfa1807...498ed7`](./contracts/ethereum-1/0xfa1807d861cad31255bf75534e41e7115d498ed7/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xfc19ce...b4cd09`](./contracts/ethereum-1/0xfc19ce8f91955458ad135beddd201d554db4cd09/) | SupporterVester | operational_periphery | n/a | no | none |
| ethereum | [`0xfdfed8...cafb3a`](./contracts/ethereum-1/0xfdfed82309b14b7e3edfc768bb5ebf80ddcafb3a/) | UnnamedContract | unknown | n/a | no | none |

### upstream (25)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | [`0x0640c9...5fbd76`](./contracts/ethereum-1/0x0640c9377a4fac00225097eacbb0295f4d5fbd76/) | OptimismMintableERC20Factory | registry | n/a | no | none |
| ethereum | [`0x0b09ba...7d2a7a`](./contracts/ethereum-1/0x0b09ba359a106c9ea3b181cbc5f394570c7d2a7a/) | L1StandardBridge | operational_periphery | n/a | no | none |
| ethereum | [`0x17c64e...7195f7`](./contracts/ethereum-1/0x17c64e93846935dfbd281a5540a14d4cd67195f7/) | MIPS64 | unknown | n/a | no | none |
| ethereum | [`0x1fb8cd...87add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/) | PreimageOracle | operational_periphery | n/a | no | none |
| ethereum | [`0x354f86...d9ba87`](./contracts/ethereum-1/0x354f861227fc9b7abf55389e0038163047d9ba87/) | TetherToken | token | n/a | no | none |
| ethereum | [`0x37e15e...3cb76c`](./contracts/ethereum-1/0x37e15e4d6dffa9e5e320ee1ec036922e563cb76c/) | ProtocolVersions | unknown | n/a | no | none |
| ethereum | [`0x4c0d2c...f9e566`](./contracts/ethereum-1/0x4c0d2c74a8d26f1e4f5653021c521f5471f9e566/) | TetherToken | token | n/a | no | none |
| ethereum | [`0x5493f4...63988f`](./contracts/ethereum-1/0x5493f4677a186f64805fe7317d6993ba4863988f/) | OptimismMintableERC20Factory | registry | n/a | no | none |
| ethereum | [`0x5a9946...fd965e`](./contracts/ethereum-1/0x5a99469f18a5863d3258e577892589386dfd965e/) | RiscZeroGroth16Verifier | periphery | n/a | no | none |
| ethereum | [`0x5d5a09...033e8b`](./contracts/ethereum-1/0x5d5a095665886119693f0b41d8dfee78da033e8b/) | L1CrossDomainMessenger | unknown | n/a | no | none |
| ethereum | [`0x5e40b9...ed3d9e`](./contracts/ethereum-1/0x5e40b9231b86984b5150507046e354dbfbed3d9e/) | DelayedWETH | token | n/a | no | none |
| ethereum | [`0x6753df...2f6776`](./contracts/ethereum-1/0x6753df477d00ce9b6a1d81d143cc0fc1382f6776/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0x6a3868...21b05e`](./contracts/ethereum-1/0x6a386814c10a3fb7f75473ec675278c94421b05e/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0x703db8...4914ca`](./contracts/ethereum-1/0x703db807862df033883988a6e6e31742404914ca/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0x7342e0...3ec237`](./contracts/ethereum-1/0x7342e0d56913479260bf143300424f5e7b3ec237/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0x7ae1d3...c98013`](./contracts/ethereum-1/0x7ae1d3bd877a4c5ca257404ce26be93a02c98013/) | L1ERC721Bridge | operational_periphery | n/a | no | none |
| ethereum | [`0x8eab2d...93d319`](./contracts/ethereum-1/0x8eab2d97dfce405a1692a21b3ff3a172d593d319/) | RiscZeroVerifierRouter | adapter | n/a | no | none |
| ethereum | [`0xa67fc0...734212`](./contracts/ethereum-1/0xa67fc05d295d2be6bc4cbfad4f880c1c58734212/) | L1ERC721Bridge | operational_periphery | n/a | no | none |
| ethereum | [`0xd131ef...3b36b4`](./contracts/ethereum-1/0xd131ef0fc4ae1af2e1ca3641a8e542731e3b36b4/) | TetherToken | token | n/a | no | none |
| ethereum | [`0xd17c11...b91c5e`](./contracts/ethereum-1/0xd17c11618c6d39d55ee7a74f8ce0bd2bc8b91c5e/) | TetherToken | token | n/a | no | none |
| ethereum | [`0xdf601d...f8d1d5`](./contracts/ethereum-1/0xdf601d97eb13ffb8543450a10495e0221af8d1d5/) | TetherToken | token | n/a | no | none |
| ethereum | [`0xe3bd00...38702a`](./contracts/ethereum-1/0xe3bd00f57b44e7aa4a6c212878427c85d638702a/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0xee74fd...79fa7a`](./contracts/ethereum-1/0xee74fd716edbfe6575ecc18b39f181b4de79fa7a/) | PreimageOracle | operational_periphery | n/a | no | none |
| ethereum | [`0xeeafa1...3a8d31`](./contracts/ethereum-1/0xeeafa156a5dd3811ee0d9f91db57a77ea53a8d31/) | L1StandardBridge | operational_periphery | n/a | no | none |
| ethereum | [`0xf027f4...d15dc1`](./contracts/ethereum-1/0xf027f4a985560fb13324e943edf55ad6f1d15dc1/) | MIPS64 | unknown | n/a | no | none |

### standard_library (17)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | [`0x0b144e...6fb711`](./contracts/ethereum-1/0x0b144e07a0826182b6b59788c34b32bfa86fb711/) | TimelockController | governance | n/a | no | none |
| ethereum | [`0x0d9f41...957cd0`](./contracts/ethereum-1/0x0d9f416260598313be6fdf6b010f2fbc34957cd0/) | ProxyAdmin | governance | n/a | no | none |
| ethereum | [`0x43ca78...89d12f`](./contracts/ethereum-1/0x43ca789d45234c2251de20da39fdfb272c89d12f/) | ProxyAdmin | governance | n/a | no | none |
| ethereum | [`0x450d55...4facbb`](./contracts/ethereum-1/0x450d55a4b4136805b0e5a6bb59377c71fc4facbb/) | Proxy (impl: L1UsdcBridge) | bridge_template | n/a | yes | proxy only (impl: L1UsdcBridge) |
| ethereum | [`0x687496...782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | Proxy (impl: TetherToken) | token | n/a | no | proxy only (impl: TetherToken) |
| ethereum | [`0x856fcc...fb873e`](./contracts/ethereum-1/0x856fcc085290ac1e40392442211e6a333afb873e/) | ProxyAdmin | governance | n/a | no | none |
| ethereum | [`0x87e65e...aed7ec`](./contracts/ethereum-1/0x87e65e83081a408787a3c61ef823033193aed7ec/) | ProxyAdmin | governance | n/a | no | none |
| ethereum | [`0x93d070...fc25e3`](./contracts/ethereum-1/0x93d070772066c977d605d69b602d316adafc25e3/) | Proxy (impl: TetherToken) | token | n/a | no | proxy only (impl: TetherToken) |
| ethereum | [`0x963c3c...a8eaa0`](./contracts/ethereum-1/0x963c3c9bd821bb435822e7a17db32bd323a8eaa0/) | ProxyAdmin | governance | n/a | no | none |
| ethereum | [`0xa23bf3...05b97d`](./contracts/ethereum-1/0xa23bf38299bbcbaa01b9ea8a1d3412d9f405b97d/) | Proxy (impl: KailuaVerifier) | periphery | n/a | no | proxy only (impl: KailuaVerifier) |
| ethereum | [`0xa70ddf...703e1c`](./contracts/ethereum-1/0xa70ddfb3e00fcfd083e64b200fe867104f703e1c/) | ProxyAdmin | governance | n/a | no | none |
| ethereum | [`0xb4899f...fad0b5`](./contracts/ethereum-1/0xb4899ff43ae727b1e9cb19ac44660e4a43fad0b5/) | ProxyAdmin | governance | n/a | no | none |
| ethereum | [`0xba4eee...133a7e`](./contracts/ethereum-1/0xba4eee20f434bc3908a0b18da496348657133a7e/) | ProxyAdmin | governance | n/a | no | none |
| ethereum | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | Multicall3 | periphery | n/a | no | none |
| ethereum | [`0xdc986a...501d15`](./contracts/ethereum-1/0xdc986a09728f76110ff666ee7b20d99086501d15/) | TimelockController | governance | n/a | no | none |
| ethereum | [`0xed9d63...f21646`](./contracts/ethereum-1/0xed9d63a96c27f87b07115b56b2e3572827f21646/) | Proxy (impl: DVFInterface2) | unknown | n/a | no | proxy only (impl: DVFInterface2) |
| ethereum | [`0xfd9f79...36748f`](./contracts/ethereum-1/0xfd9f795b4c15183bdba83da08da02d5f9536748f/) | Proxy (impl: 0xc1f0860a5287e2db35fa8dfee845ee499906f09f) | proxy | n/a | no | proxy only (impl: TransparentUpgradeableProxy) |

### needs_review (65)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | [`0x05e364...4c9a27`](./contracts/ethereum-1/0x05e36403584e1f3f004dc516b5375a1e884c9a27/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x0605f3...8cb27c`](./contracts/ethereum-1/0x0605f3bf6de982f4b7e24b150a54c694f88cb27c/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0x07e50a...1ab70b`](./contracts/ethereum-1/0x07e50a0ad526d8cd1eb6b9220e922125ca1ab70b/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0x08aed6...056e87`](./contracts/ethereum-1/0x08aed6c108e500540a9544bef7a8b8a05e056e87/) | RiscZeroVerifierEmergencyStop | periphery | n/a | no | none |
| ethereum | [`0x0d3cc7...5fea9c`](./contracts/ethereum-1/0x0d3cc7e94dc06dc0bfe24f1c175f8e573b5fea9c/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x0e1623...d48880`](./contracts/ethereum-1/0x0e162344a1ca3a31c9455212d055bd3101d48880/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x11c03c...5f8acf`](./contracts/ethereum-1/0x11c03c11ba32fede01fb870ed35ecb0f3d5f8acf/) | Proxy | proxy | n/a | no | none |
| ethereum | [`0x137b7b...51700b`](./contracts/ethereum-1/0x137b7b51e4bc0574ca529af77f01c2289951700b/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x14c219...5ce481`](./contracts/ethereum-1/0x14c2198ab399b4351bff01787bdf36b70f5ce481/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x1590d9...4b3c09`](./contracts/ethereum-1/0x1590d91d651d7e06e7f77da87aec373a4a4b3c09/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x1f8a9d...ae5c39`](./contracts/ethereum-1/0x1f8a9dae928bfa0b637180dfcbc0b70a0eae5c39/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x1ffc35...e996a5`](./contracts/ethereum-1/0x1ffc3535517fe991a05b5c2a939188370ae996a5/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0x29706d...3c330b`](./contracts/ethereum-1/0x29706db3f9da0887369f298b2136a9ee943c330b/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x2c2da5...2fea6d`](./contracts/ethereum-1/0x2c2da5effabda3a9ffe8e3d526c5b1f3b42fea6d/) | OPSuccinctDisputeGame | unknown | n/a | no | none |
| ethereum | [`0x2dd081...6f15b2`](./contracts/ethereum-1/0x2dd08101104c64cb98443a9b92cd21c7936f15b2/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0x3280b4...36a006`](./contracts/ethereum-1/0x3280b4e48041bcbe7d597dd1329d17e5c836a006/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x337923...1a0075`](./contracts/ethereum-1/0x33792351febca1560cf9eed3346f69247a1a0075/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x33f9c5...a710a3`](./contracts/ethereum-1/0x33f9c5201f97dd1856a97fd0c527b7c0f6a710a3/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0x397443...5a1f25`](./contracts/ethereum-1/0x3974436fa4bb4deb5a04ace51a704b10ff5a1f25/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x3b3505...96a2bf`](./contracts/ethereum-1/0x3b3505ae63b6cb180ba684cdfe76d71f6096a2bf/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x44c220...ea33e7`](./contracts/ethereum-1/0x44c220f0598345195ce99ad6a57adffcb9ea33e7/) | RiscZeroVerifierEmergencyStop | periphery | n/a | no | none |
| ethereum | [`0x44efe3...8d9d71`](./contracts/ethereum-1/0x44efe3ecf916f756c02e09fe17fe2d9abc8d9d71/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x469593...e05dad`](./contracts/ethereum-1/0x4695931f9b659eec35e1c2057d08341f16e05dad/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0x5687b5...d62891`](./contracts/ethereum-1/0x5687b5950fc5604c7d4959bf09192c57d0d62891/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x57e99f...41cf1d`](./contracts/ethereum-1/0x57e99fb38da9e332d0d13a7223a7037de041cf1d/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x5bdc9b...19cdc1`](./contracts/ethereum-1/0x5bdc9b09ffe1b149f7ab7866743bfe00b419cdc1/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x61abc1...7dba37`](./contracts/ethereum-1/0x61abc1515256b2d23b9194cc175be009f77dba37/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x6abb43...66ae0b`](./contracts/ethereum-1/0x6abb43dae012e7c85355df7e752fea5c6666ae0b/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x70675e...73bef3`](./contracts/ethereum-1/0x70675e148b5f88fffaeac70bc6c5369f3273bef3/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x70dee5...33de69`](./contracts/ethereum-1/0x70dee5e3723c76fc83238f62d2b3d4071533de69/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x7444d4...d4bb2a`](./contracts/ethereum-1/0x7444d4470ed4320e4b84ee160351fbbcbcd4bb2a/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x75f48f...3d9a2f`](./contracts/ethereum-1/0x75f48fe4deab3f9043ee995c3c84d6a2303d9a2f/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x76dc64...4b8fc9`](./contracts/ethereum-1/0x76dc64f8e0572deb32dc3ff5f18cd05ed04b8fc9/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x79b2aa...330896`](./contracts/ethereum-1/0x79b2aab4e9c331bcc26bbc6e840be4eb1b330896/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x7a25d0...f1ecfb`](./contracts/ethereum-1/0x7a25d06af869d0a94f6effaffa0a830eebf1ecfb/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x7fe001...7d87db`](./contracts/ethereum-1/0x7fe0013d4a1b86bb57c9205d4a7203d0ab7d87db/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0x82e562...26c8e1`](./contracts/ethereum-1/0x82e5624e76cdc8315c56e61777f3fac0c726c8e1/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0x87692b...b3eff2`](./contracts/ethereum-1/0x87692b8741ba36e2d7f7942c418829a305b3eff2/) | Proxy (impl: ProtocolVersions) | unknown | n/a | no | proxy only (impl: ProtocolVersions) |
| ethereum | [`0x94a468...43c622`](./contracts/ethereum-1/0x94a4684d6f7085c19138bd4f9f3295fa9943c622/) | RiscZeroGroth16Verifier | periphery | n/a | no | none |
| ethereum | [`0x94dc11...ce921a`](./contracts/ethereum-1/0x94dc1141a5163b369f8a3aa9f4e50a2e5ece921a/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0x96c4bf...00159b`](./contracts/ethereum-1/0x96c4bffca1d921d04195eb28d9a1402ae000159b/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0x98ba8b...669f57`](./contracts/ethereum-1/0x98ba8b9cf38732db65c7e556617135a0e6669f57/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0xa4f32c...6ed11c`](./contracts/ethereum-1/0xa4f32c250431554aa3bc2ddd9269a179536ed11c/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0xa58898...0ef9a0`](./contracts/ethereum-1/0xa58898f7f706c208410232a8fbf70699cd0ef9a0/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0xa5d58a...e39084`](./contracts/ethereum-1/0xa5d58aa93682a9a29492588d153304e093e39084/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0xb28cde...3ff2f8`](./contracts/ethereum-1/0xb28cde620b8682eae958d027ed16d9174b3ff2f8/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0xb2ebba...f03221`](./contracts/ethereum-1/0xb2ebba78eebb4670ca357faea3c2b723cdf03221/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0xb4da3d...9448c7`](./contracts/ethereum-1/0xb4da3d9576bd931dafd34b6e6d6a5668cc9448c7/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0xb5d1f1...4ec491`](./contracts/ethereum-1/0xb5d1f1c25177ceed194c4cbe687e10114e4ec491/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0xb839ea...3d74f7`](./contracts/ethereum-1/0xb839ea7bba8e6bb2893ca5252f3f3c13323d74f7/) | RiscZeroVerifierEmergencyStop | periphery | n/a | no | none |
| ethereum | [`0xb88164...b62d55`](./contracts/ethereum-1/0xb88164ee7669f1c736a55121160dab9c82b62d55/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0xb9d8f5...17aad4`](./contracts/ethereum-1/0xb9d8f5ef115f7fdd92bfbc1c02500b70b317aad4/) | Proxy | proxy | n/a | no | none |
| ethereum | [`0xbaaf3b...72a799`](./contracts/ethereum-1/0xbaaf3bafdbd660380938b27d21c31bb7d072a799/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0xbcee72...16fb8b`](./contracts/ethereum-1/0xbcee7287370b3ed030e9b15ec94003307716fb8b/) | PermissionedDisputeGame | unknown | n/a | no | none |
| ethereum | [`0xbfca47...54847c`](./contracts/ethereum-1/0xbfca47de47620ff1fcd3f2051125027d9b54847c/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0xd3518f...43b578`](./contracts/ethereum-1/0xd3518f4bcb9f6845424255820ca3e09a0f43b578/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0xd67456...7ca005`](./contracts/ethereum-1/0xd674566c91aaaaa711d4c71bf38193ccb87ca005/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0xdc5c30...9347e8`](./contracts/ethereum-1/0xdc5c303c084bee7aa75b16bd57e96a08109347e8/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0xde7f57...071e5e`](./contracts/ethereum-1/0xde7f5788404f0fccbc9d9711e61a73c23a071e5e/) | UnnamedContract | unknown | n/a | no | none |
| ethereum | [`0xdf9b32...efcf43`](./contracts/ethereum-1/0xdf9b32a3a072881257583e7f0e10ba74feefcf43/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0xe6f3fd...9bab87`](./contracts/ethereum-1/0xe6f3fd87379848276dbf4dd8b005e5b3419bab87/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0xf59da2...bfab4e`](./contracts/ethereum-1/0xf59da245d3d69e5432afd05008e8d332c1bfab4e/) | KailuaVerifier | periphery | n/a | no | none |
| ethereum | [`0xf70aba...7de93c`](./contracts/ethereum-1/0xf70abab028eb6f4100a24b203e113d94e87de93c/) | RiscZeroGroth16Verifier | periphery | n/a | no | none |
| ethereum | [`0xfd48c0...659751`](./contracts/ethereum-1/0xfd48c0263de3691e524b5001db8f1c6e82659751/) | TokenVesting | operational_periphery | n/a | no | none |
| ethereum | [`0xfdce12...34c809`](./contracts/ethereum-1/0xfdce12536a20b2736fd2f8bccc6285c08234c809/) | UnnamedContract | unknown | n/a | no | none |

## Audit Inventory

| Audit | Auditor | Date | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---:|---|
| [/URI ()>>](https://github.com/pashov/audits) | Pashov Audit Group | 2025-09 | Direct | n/a | 0 | n/a |
| [BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf) | Pashov Audit Group | 2025-03 | Direct | n/a | 0 | n/a |
| [BOB-Onramp-security-review.md](https://github.com/pashov/audits/blob/master/team/md/BOB-Onramp-security-review.md) | Pashov Audit Group | 2025-03 | Direct | n/a | 0 | n/a |
| [BOB-Staking-security-review_2025-10-18.md](https://github.com/pashov/audits/blob/master/team/md/BOB-Staking-security-review_2025-10-18.md) | Pashov Audit Group | 2025-10 | Direct | n/a | 0 | n/a |
| [BOB-USDCBridge-security-review.md](https://github.com/pashov/audits/blob/master/team/md/BOB-USDCBridge-security-review.md) | Pashov Audit Group | 2025-03 | Direct | UNKNOWN | 1 | high |
| [BOB-security-review-August.md](https://github.com/pashov/audits/blob/master/team/md/BOB-security-review-August.md) | Pashov Audit Group | 2025-03 | Direct | n/a | 0 | n/a |
| [BOB-security-review-June.md](https://github.com/pashov/audits/blob/master/team/md/BOB-security-review-June.md) | Pashov Audit Group | 2025-03 | Direct | n/a | 0 | n/a |
| [BOB-security-review-September.md](https://github.com/pashov/audits/blob/master/team/md/BOB-security-review-September.md) | Pashov Audit Group | 2025-03 | Direct | n/a | 0 | n/a |
| [BOB-security-review_2025-03-17.md](https://github.com/pashov/audits/blob/master/team/md/BOB-security-review_2025-03-17.md) | Pashov Audit Group | 2025-03 | Direct | n/a | 0 | n/a |
| [BOB-Onramp-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Onramp-security-review.pdf) | Pashov Audit Group | 2024-04 | Direct | n/a | 0 | n/a |
| [BOB-Staking-security-review_2025-10-18.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Staking-security-review_2025-10-18.pdf) | Pashov Audit Group | 2025-10 | Direct | n/a | 0 | n/a |
| [BOB-USDCBridge-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-USDCBridge-security-review.pdf) | Pashov Audit Group | 2024-04 | Direct | UNKNOWN | 1 | high |
| [BOB-security-review-August.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-August.pdf) | Pashov Audit Group | 2024-08 | Direct | n/a | 0 | n/a |
| [BOB-security-review-June.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-June.pdf) | Pashov Audit Group | 2024-06 | Direct | n/a | 0 | n/a |
| [BOB-security-review-September.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-September.pdf) | Pashov Audit Group | 2025-03 | Direct | n/a | 0 | n/a |
| [BOB-security-review_2025-03-17.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review_2025-03-17.pdf) | Pashov Audit Group | 2025-03 | Direct | n/a | 0 | n/a |
| [Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf](https://docs.gobob.xyz/assets/files/Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf) | Code4rena | 2024-04 | Direct | n/a | 0 | n/a |

## Coverage Gaps

Unaudited native contracts ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbdab72...b8f7a5`](./contracts/ethereum-1/0xbdab72602e9ad40fc6a6852caf43258113b8f7a5/) | SideToken | token | $198,975.29 | Native contract with $198,975.29 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0302f7...7b63b2`](./contracts/ethereum-1/0x0302f75047aa0935052275e77d15c40bee7b63b2/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09de35...cfa232`](./contracts/ethereum-1/0x09de35fbbd04e347368f65997a88121e3acfa232/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b31b2...1f61e5`](./contracts/ethereum-1/0x0b31b28103754a272d7905240301ec7b2a1f61e5/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dd8ed...bd97d2`](./contracts/ethereum-1/0x0dd8ed2f044fde13be5d28d51b29e87e22bd97d2/) | Proxy (impl: ProtocolVersions) | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1279cd...96a3a4`](./contracts/ethereum-1/0x1279cd478838875f4ced1c25a0db99037996a3a4/) | BridgeEndpoint | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x140dca...1a1c49`](./contracts/ethereum-1/0x140dca39e274397acaf3fd955af31400091a1c49/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x153db9...747cb2`](./contracts/ethereum-1/0x153db97d1adbda7ff6dda87e002544e0f5747cb2/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x164a68...fce9eb`](./contracts/ethereum-1/0x164a68521386049e23bee8fa879a4e031ffce9eb/) | LockDrop | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x174da6...ea128b`](./contracts/ethereum-1/0x174da672c3b8c45619910fd22b8df57111ea128b/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1752b4...3e16f7`](./contracts/ethereum-1/0x1752b405fcb8b92ef749621ad70571d9b43e16f7/) | TimeLock | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17c3ad...52baef`](./contracts/ethereum-1/0x17c3adf2672a10f047b083bf22957e4c7452baef/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ee901...ea2aea`](./contracts/ethereum-1/0x1ee901ba0088f95c250859e843b962c5abea2aea/) | BridgeEndpoint | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f3473...1082ed`](./contracts/ethereum-1/0x1f3473b2369dbbead23d4ba7327013eb6a1082ed/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x216cef...c7a1e1`](./contracts/ethereum-1/0x216cef65bd8eac33fb08a42032913aad26c7a1e1/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21ea8b...b4621d`](./contracts/ethereum-1/0x21ea8bbf6c5badea97367f7f5dc0773da2b4621d/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x237853...158c12`](./contracts/ethereum-1/0x237853621998a33fa5b9b820592f4c6f4c158c12/) | L1CrossDomainMessenger | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x273e9a...25d087`](./contracts/ethereum-1/0x273e9a126ec9609f4d82f27d9e2a29b70225d087/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f76a1...f29f49`](./contracts/ethereum-1/0x2f76a1dfafc7dd90060bc3f04a9c698ccff29f49/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x333c5c...77bf92`](./contracts/ethereum-1/0x333c5c6e88fc0ad8c9523be2aa5c29345977bf92/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x340f92...ffe647`](./contracts/ethereum-1/0x340f923e5c7cbb2171146f64169ec9d5a9ffe647/) | SystemConfig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3439e4...283625`](./contracts/ethereum-1/0x3439e4e9afe4817ddeed6368a78e1d20f2283625/) | BridgeEndpoint | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x345f46...f3404e`](./contracts/ethereum-1/0x345f46fdd0adad44ba8e2a65ce6a7ba879f3404e/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x377d69...fdf03a`](./contracts/ethereum-1/0x377d6993b848013991e3d8b3028db74ec6fdf03a/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37f330...484306`](./contracts/ethereum-1/0x37f330e667208633e1da1cf601d01f0ef8484306/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x392113...cbbf17`](./contracts/ethereum-1/0x392113ca9a6c8955a1445fe0a163f1e976cbbf17/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a1d54...ea3c13`](./contracts/ethereum-1/0x3a1d54496cf461ffc96d3b1a8a0b43b091ea3c13/) | Proxy (impl: DelayedWETH) | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c8776...c43287`](./contracts/ethereum-1/0x3c877699263119022cdaa251058c1bac8fc43287/) | OptimismPortal2 | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f6ce1...4ac1f7`](./contracts/ethereum-1/0x3f6ce1b36e5120bbc59d0cfe8a5ac8b6464ac1f7/) | Proxy (impl: L1StandardBridge) | bridge_template | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...000006`](./contracts/ethereum-1/0x4200000000000000000000000000000000000006/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...000007`](./contracts/ethereum-1/0x4200000000000000000000000000000000000007/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...00000f`](./contracts/ethereum-1/0x420000000000000000000000000000000000000f/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...000010`](./contracts/ethereum-1/0x4200000000000000000000000000000000000010/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...000011`](./contracts/ethereum-1/0x4200000000000000000000000000000000000011/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...000012`](./contracts/ethereum-1/0x4200000000000000000000000000000000000012/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...000014`](./contracts/ethereum-1/0x4200000000000000000000000000000000000014/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...000015`](./contracts/ethereum-1/0x4200000000000000000000000000000000000015/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...000016`](./contracts/ethereum-1/0x4200000000000000000000000000000000000016/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...000017`](./contracts/ethereum-1/0x4200000000000000000000000000000000000017/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...000018`](./contracts/ethereum-1/0x4200000000000000000000000000000000000018/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...000019`](./contracts/ethereum-1/0x4200000000000000000000000000000000000019/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...00001a`](./contracts/ethereum-1/0x420000000000000000000000000000000000001a/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...000020`](./contracts/ethereum-1/0x4200000000000000000000000000000000000020/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420000...000021`](./contracts/ethereum-1/0x4200000000000000000000000000000000000021/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46ab89...d42c00`](./contracts/ethereum-1/0x46ab89c0d515a3e7bb5aab4eb74b807cefd42c00/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48e0d5...22baa6`](./contracts/ethereum-1/0x48e0d51dfbbe664263517a25d8a02e8c3122baa6/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bba75...74e4a0`](./contracts/ethereum-1/0x4bba758f006ef09402ef31724203f316ab74e4a0/) | DisputeGameFactory | registry | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4be239...a492ef`](./contracts/ethereum-1/0x4be239c86364ed73fc244a5f50c8ccb101a492ef/) | KailuaGame | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ca751...02b506`](./contracts/ethereum-1/0x4ca751c90c66468c88075bedde5e92e0b902b506/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d05fa...903d84`](./contracts/ethereum-1/0x4d05fa79f65b57778ef782d426ad2618e3903d84/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4da82a...7458e7`](./contracts/ethereum-1/0x4da82a327773965b8d4d85fa3db8249b387458e7/) | SuperchainConfig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e1adf...1abe02`](./contracts/ethereum-1/0x4e1adfd70cb9fbbe78e3a0d7f3d995cdc31abe02/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f1130...8fd0ba`](./contracts/ethereum-1/0x4f113098d798e7444255c0d0be7c64a1508fd0ba/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x540df7...1cc737`](./contracts/ethereum-1/0x540df7c6e0f04513338b7cbb83460653971cc737/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x542ba6...25bcbe`](./contracts/ethereum-1/0x542ba659e226251dcc9d66604c8ecfa50425bcbe/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x555740...b09cb6`](./contracts/ethereum-1/0x5557408ab14013ce9dbb300de0d87d386bb09cb6/) | Proxy (impl: OptimismMintableERC20Factory) | registry | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59191b...229822`](./contracts/ethereum-1/0x59191bd38eba4a642c9fec308dc188731b229822/) | L2OutputOracle | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59fbb8...e5e7cd`](./contracts/ethereum-1/0x59fbb80184cec833981d0940044bb59a69e5e7cd/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a6d53...f2fbd9`](./contracts/ethereum-1/0x5a6d5344b786d96fe4237f8fe75e11e4b6f2fbd9/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5adc09...10ac42`](./contracts/ethereum-1/0x5adc091c463291a425763c5c225a8dd04a10ac42/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b172b...415514`](./contracts/ethereum-1/0x5b172bbfa0140285a02374ec1f5b9f25ef415514/) | OptimismPortal2 | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c6a76...d488cf`](./contracts/ethereum-1/0x5c6a76a0217d41a5f7c4132b042b0b2cdfd488cf/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d1504...07b4b0`](./contracts/ethereum-1/0x5d15048211ea6614593bb2ec432316f89c07b4b0/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e0f9b...5a3e32`](./contracts/ethereum-1/0x5e0f9be7bccbcf500fa1a586a8781a44a35a3e32/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ff932...20d50a`](./contracts/ethereum-1/0x5ff93263d5181b2a826f8c51d54bc0da2d20d50a/) | Proxy (impl: L1ERC721Bridge) | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x626812...869add`](./contracts/ethereum-1/0x626812ea3896e06faa08cd8adcf32779c9869add/) | BridgeEndpoint | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65d57b...4c0ce9`](./contracts/ethereum-1/0x65d57b1e6570f5c636b8dd64c186ac304a4c0ce9/) | TreasuryVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a9a90...1f06a6`](./contracts/ethereum-1/0x6a9a903c82f662d07497cd066b134e000b1f06a6/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cba14...a3d956`](./contracts/ethereum-1/0x6cba14acf33de1e581774e7b6b33dd1810a3d956/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d9fa9...6d2f32`](./contracts/ethereum-1/0x6d9fa95c2c78c5dcea102cae8a4ac597066d2f32/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ed13b...4c584c`](./contracts/ethereum-1/0x6ed13b9bdfea976d6e9e1d509f4eb1abb84c584c/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x735162...9a2552`](./contracts/ethereum-1/0x7351623002d53f7ca39a5ed1ea8f1c4dc29a2552/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x771366...6ea387`](./contracts/ethereum-1/0x7713665ba780b25c7c306ac786873a0c936ea387/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x773b66...ea7744`](./contracts/ethereum-1/0x773b6601f5bbbede75006a728bb22d5efbea7744/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a06b2...c8cede`](./contracts/ethereum-1/0x7a06b23e138f2cc2a5ccec7e0648f589fbc8cede/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b4653...d3f8d2`](./contracts/ethereum-1/0x7b465370bb7a333f99edd19599eb7fb1c2d3f8d2/) | AnchorStateRegistry | registry | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x839fd7...e33d66`](./contracts/ethereum-1/0x839fd7873702c2cc238dc87338ff3cbf4ee33d66/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86760e...72126a`](./contracts/ethereum-1/0x86760eb2b9947b70ce613491cf7a216c2872126a/) | BridgeToken | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8aa593...c49a56`](./contracts/ethereum-1/0x8aa593464d906512372ddb2a5719f2ecbec49a56/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8adee1...e65a3e`](./contracts/ethereum-1/0x8adee124447435fe03e3cd24df3f4cae32e65a3e/) | Proxy (impl: OptimismPortal2) | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93a70c...429cf2`](./contracts/ethereum-1/0x93a70c645c70307ca47bad645706c9d9aa429cf2/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96123d...9b1079`](./contracts/ethereum-1/0x96123dbfc3253185b594c6a7472ee5a21e9b1079/) | Proxy (impl: DisputeGameFactory) | registry | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x993703...02ae53`](./contracts/ethereum-1/0x9937033cc967eed9d753e31c77d2f146d002ae53/) | KailuaTreasury | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x994e3b...959fec`](./contracts/ethereum-1/0x994e3b01d130944a3e67bfd3b8fc73069b959fec/) | OptimismPortal | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x997793...ecb31f`](./contracts/ethereum-1/0x9977936a421f9b06c81afc0ccf1988b92decb31f/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a45dc...dfa838`](./contracts/ethereum-1/0x9a45dc843f95414eb468f976e5dadf9377dfa838/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b1ab2...ecd0c0`](./contracts/ethereum-1/0x9b1ab202831417076e4d8a4e1650b8bc4eecd0c0/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b3e16...e9263c`](./contracts/ethereum-1/0x9b3e1661bccaf907893b71e4016c01513ae9263c/) | KailuaTreasury | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cc127...8ec3b0`](./contracts/ethereum-1/0x9cc1277bb9b9335f7299d03a86bd80f6f28ec3b0/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dda29...245c16`](./contracts/ethereum-1/0x9dda29c60a2739ef92cd4b3a27f3ba4ccd245c16/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f99e8...3e0c66`](./contracts/ethereum-1/0x9f99e8821813e043a2ded641a3d130cbba3e0c66/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9fe7ef...ee9f41`](./contracts/ethereum-1/0x9fe7ef727da3d79e0308ff43f31ea1d077ee9f41/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7675e...d297bb`](./contracts/ethereum-1/0xa7675ec8b81639caa8a6bd61138d8a45aed297bb/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8e1b7...d5e9da`](./contracts/ethereum-1/0xa8e1b76426ac2b1b93502b30b92445d504d5e9da/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa0a1e...55b590`](./contracts/ethereum-1/0xaa0a1efd35d6578ea6b5704dbc2c40b36a55b590/) | SystemConfig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaaa46f...1d1e07`](./contracts/ethereum-1/0xaaa46f83a17625fc9a9602c33c8b49bf4e1d1e07/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabe2ac...4ed887`](./contracts/ethereum-1/0xabe2ac29b9eb8466c50105137db33154654ed887/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xacb886...1c5393`](./contracts/ethereum-1/0xacb886b75d76d1c8d9248cfddfa09b70c71c5393/) | Proxy (impl: SystemConfig) | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad8a04...920aa2`](./contracts/ethereum-1/0xad8a0432b0d78189adae17b535f1e9e110920aa2/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae6770...e0dde9`](./contracts/ethereum-1/0xae6770a207e86fae3b191564fa55ce7bfee0dde9/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb05ad4...523179`](./contracts/ethereum-1/0xb05ad4e4087cbd315f193532e8c63db3d1523179/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb39553...52b13b`](./contracts/ethereum-1/0xb3955302e58fffdf2da247e999cd9755f652b13b/) | BridgeEndpoint | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb443da...0d6fb4`](./contracts/ethereum-1/0xb443da3e07052204a02d630a8933dac05a0d6fb4/) | OptimismPortal2 | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb53144...8c7777`](./contracts/ethereum-1/0xb531445401926029b1647669cfac8b4e5d8c7777/) | L1ERC20TokenBridge | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9a5d8...848e96`](./contracts/ethereum-1/0xb9a5d8f774f6c3085e0cdd2e028b3dff0c848e96/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9fe6b...88a676`](./contracts/ethereum-1/0xb9fe6b5d872f2efe7f2472a6a0ea18cb1088a676/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdbb63...323dd1`](./contracts/ethereum-1/0xbdbb63f938c8961af31ead3deba5c96e6a323dd1/) | SideToken | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe48fb...490164`](./contracts/ethereum-1/0xbe48fb5d4d1cf72f77685b943a291c7293490164/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2391b...4f075c`](./contracts/ethereum-1/0xc2391b7307c783d3c8c93de55c6ea3f7e94f075c/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6441c...73d157`](./contracts/ethereum-1/0xc6441cb2d7620c92b636be864c35da068f73d157/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7bef1...8bc630`](./contracts/ethereum-1/0xc7bef1384ad5285f2db983bc1c6673008f8bc630/) | PermissionedDisputeGame | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbce91...f21ad3`](./contracts/ethereum-1/0xcbce919d7f5df70481ed1af23d7534f319f21ad3/) | BridgeEndpoint | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc3eb6...8c30ab`](./contracts/ethereum-1/0xcc3eb61737b3161438ab859d1d0dd1a1138c30ab/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfffbd...a463ab`](./contracts/ethereum-1/0xcfffbd937a2b03808a5582b550e9f8f151a463ab/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0216b...535431`](./contracts/ethereum-1/0xd0216bdcc195abdf77746b6a6347ce85e2535431/) | AnchorStateRegistry | registry | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd37b0b...9e742b`](./contracts/ethereum-1/0xd37b0bedd9094988a31dbbb6bf77dc97269e742b/) | KailuaGame | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6acca...7c773f`](./contracts/ethereum-1/0xd6acca55ec6adf37b114a5fa10414d290c7c773f/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf79be...bf80a3`](./contracts/ethereum-1/0xdf79be157c4fabcf3644c2043de48fe97cbf80a3/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe652...96ee3c`](./contracts/ethereum-1/0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c/) | OPContractsManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe05685...413ab8`](./contracts/ethereum-1/0xe05685cd4b6b3f120ee7539c6c44647caa413ab8/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe34577...9ca82a`](./contracts/ethereum-1/0xe34577e7d8bbdf044de236b15df132b1409ca82a/) | KailuaGame | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3d981...547eda`](./contracts/ethereum-1/0xe3d981643b806fb8030cdb677d6e60892e547eda/) | Proxy (impl: L1CrossDomainMessenger) | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe43415...7a053b`](./contracts/ethereum-1/0xe4341585b9bbc55a44c20a3c037058891e7a053b/) | KailuaGame | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe711a0...a75d95`](./contracts/ethereum-1/0xe711a0489deae50340e9950fa14072ab40a75d95/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7ef4a...aa6423`](./contracts/ethereum-1/0xe7ef4a761f195c5c6e9574d874b6a82d9caa6423/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe92520...965c46`](./contracts/ethereum-1/0xe925205ad05d8d612ac205c4941ccd61fc965c46/) | Proxy (impl: SuperchainConfig) | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe99af5...5fb895`](./contracts/ethereum-1/0xe99af5f4c60e06beb3827f4ffdd06e88c55fb895/) | KailuaTreasury | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeba14d...e43fef`](./contracts/ethereum-1/0xeba14d52f1b19ca65455e5ecab72d2ffd9e43fef/) | Proxy (impl: AnchorStateRegistry) | registry | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef0d12...a338d3`](./contracts/ethereum-1/0xef0d1247f9fb0148a85bb342eb8b98b56ba338d3/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef98e4...4c587b`](./contracts/ethereum-1/0xef98e4cad451f55178e3af2fca79e67b9d4c587b/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf12de0...68312e`](./contracts/ethereum-1/0xf12de004d643a8e942267a1f0a1933ec4168312e/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1b866...6a2b6f`](./contracts/ethereum-1/0xf1b86628c060603d213d23076df06abbf86a2b6f/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1f61f...6107d9`](./contracts/ethereum-1/0xf1f61f7d92c4d242180f83d331f82453f56107d9/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2748c...03c0e0`](./contracts/ethereum-1/0xf2748c4bc1842b38f466a860d30de2330203c0e0/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2dc77...3dfdc7`](./contracts/ethereum-1/0xf2dc77c697e892542cc53336178a78bb313dfdc7/) | AddressManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf42326...1e4f22`](./contracts/ethereum-1/0xf4232686a18468fdd4c60b69033235e6c61e4f22/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf55809...8ad347`](./contracts/ethereum-1/0xf558094831fbe4edb248e401847229230c8ad347/) | RevokableVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa1807...498ed7`](./contracts/ethereum-1/0xfa1807d861cad31255bf75534e41e7115d498ed7/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc19ce...b4cd09`](./contracts/ethereum-1/0xfc19ce8f91955458ad135beddd201d554db4cd09/) | SupporterVester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdfed8...cafb3a`](./contracts/ethereum-1/0xfdfed82309b14b7e3edfc768bb5ebf80ddcafb3a/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 140 |
| upstream | 25 |
| standard_library | 17 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [1369] /URI ()>>
- [1370] BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf
- [1371] BOB-Onramp-security-review.md
- [1372] BOB-Staking-security-review_2025-10-18.md
- [1374] BOB-security-review-August.md
- [1375] BOB-security-review-June.md
- [1376] BOB-security-review-September.md
- [1377] BOB-security-review_2025-03-17.md
- [1378] BOB-Onramp-security-review.pdf
- [1379] BOB-Staking-security-review_2025-10-18.pdf
- [1381] BOB-security-review-August.pdf
- [1382] BOB-security-review-June.pdf
- [1383] BOB-security-review-September.pdf
- [1384] BOB-security-review_2025-03-17.pdf
- [1385] Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf

Fork inheritance lineage and inherited audits are included when available.
