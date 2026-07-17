# Agentic Audit Brief: Taiko Bridge

## Project Overview

- Project: Taiko Bridge (`taiko-bridge`)
- Website: [https://bridge.taiko.xyz/](https://bridge.taiko.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.694Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 54 unique implementations (148 raw deployments)
- DeFi Llama TVL: $11,772,373.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 38 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 7 common project-authored base contract(s) (addressmanager, rollupaddresscache, addresscache). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 208; live-surface contracts included: 142 (134 live, 8 unknown).
- Excluded by liveness: 66 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 28/46 (60.9%)
- Deployed-live implementations: 46 of 54 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 28/46
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 54
- Raw deployments: 148
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 28 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 60.9% (Code4rena, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 25 | 54.3% | 2026-01 |
| Code4rena | Tier 1 | 13 | 28.3% | 2024-03 |
| Sigma Prime | Tier 2 | 11 | 23.9% | 2024-02 |
| Quill Audits | Tier 2 | 9 | 19.6% | 2024-02 |
| Halborn | Tier 2 | 1 | 2.2% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9ca1ab10c9fac5153f8b78e67f03aaa69c9c6a15`](./contracts/ethereum-1/0x9ca1ab10c9fac5153f8b78e67f03aaa69c9c6a15/); ethereum `0xd912ab787624c9eb96a37e658e9596e114360440`; ethereum `0xf1ca1f1a068468e1dcf90da6add185467de80943` | ✅ Audited |
| AssignmentHook | unknown | ethereum | n/a | 3 deployments: ethereum [`0x25206cbd98edaea26e8eadd285c66c951aada046`](./contracts/ethereum-1/0x25206cbd98edaea26e8eadd285c66c951aada046/); ethereum `0x4f664222c3ff6207558a745648b568d095dda170`; ethereum `0xe226fad08e2f0ae68c32eb5d8210ffedb736fb0d` | ✅ Audited |
| AssignmentHook | unknown | ethereum | n/a | 2 deployments: ethereum [`0x537a2f0d3a5879b41bcb5a2afe2ea5c4961796f6`](./contracts/ethereum-1/0x537a2f0d3a5879b41bcb5a2afe2ea5c4961796f6/); ethereum `0xf77cbfafe15df84e6638df267d25d1af8e5e53f2` | ✅ Audited |
| AutomataDcapV3Attestation | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5f73f0adc7daa6134fe751c4a78d524f9384e0b5`](./contracts/ethereum-1/0x5f73f0adc7daa6134fe751c4a78d524f9384e0b5/); ethereum `0x8d7c954960a36a7596d7ea4945ddf891967ca8a3` | ✅ Audited |
| AutomataDcapV3Attestation | unknown | ethereum | n/a | 2 deployments: ethereum [`0xde1b1fbe7d721af4a56651272ef91a59b7303323`](./contracts/ethereum-1/0xde1b1fbe7d721af4a56651272ef91a59b7303323/); ethereum `0xee8fc1dbb8d345f5bf35dfb939c6f9edc5fcdafc` | ✅ Audited |
| Bridge | unknown | ethereum | n/a | 11 deployments: ethereum [`0x01e7d369a619ef1b0e92563d8737f42c09789986`](./contracts/ethereum-1/0x01e7d369a619ef1b0e92563d8737f42c09789986/); ethereum `0x02f21b4c3d4dbff70ce851741175a727c8d782be`; ethereum `0x271bc33a38b81038499f07a0072228f4e8f0b218`; ethereum `0x40f8be2969d0d5717768f6799c8840e5d5d603f7`; ethereum `0x4a1091c2fb37d9c4a661c2384ff539d94ccf853d`; ethereum `0x4cab75dbe321084fd15c7aa9f7398e073a7eabd0`; ethereum `0x71c2f41aede913aaef2c62596e03702e348d6cd0`; ethereum `0x91d593d34f2e1904cdce3d5290a74563f87bcf6f`; ethereum `0xc71cc3b0a47149878fad337fb2ca54e546a645ba`; ethereum `0xd28f2c26ad8ba88b0691f6bb41ff021878052561`; ethereum `0xe148cceffcd5494301c20e047634995c60611e57` | ✅ Audited |
| BridgedERC1155 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x39e4c1214e733639d059979079a151911e42791d`](./contracts/ethereum-1/0x39e4c1214e733639d059979079a151911e42791d/); ethereum `0x3c90963cfba436400b0f9c46aa9224cb379c2c40`; ethereum `0xe7782ddeb61ed050e2fbd2d497b5aadb640d689d` | ✅ Audited |
| BridgedERC20 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x79bc0aada00fcf6e7ab514bfeb093b5fae3653e3`](./contracts/ethereum-1/0x79bc0aada00fcf6e7ab514bfeb093b5fae3653e3/); ethereum `0xcc5d488073fa918cbbd73b9a523f3858c4de7372` | ✅ Audited |
| BridgedERC721 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc3310905e2bc9cfb198695b75ef3e5b69c6a1bf7`](./contracts/ethereum-1/0xc3310905e2bc9cfb198695b75ef3e5b69c6a1bf7/); ethereum `0xc4096e9ff1526bd1840b65e9f45695135ac12de7` | ✅ Audited |
| ERC1155Vault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x01329a1cde2509421cbe99dd3feb3c1b212332fa`](./contracts/ethereum-1/0x01329a1cde2509421cbe99dd3feb3c1b212332fa/); ethereum `0x097bbbef669aad66030ab223195d200ef9a47dc3`; ethereum `0x7748da086a2e6edd8db97ed236840910013c6396`; ethereum `0xca92880829139b310b6b0cb41f66d566db1a59c8`; ethereum `0xd90b5fcf8d00d333d107e4ab7f94c0c0a41cdcfe` | ✅ Audited |
| ERC20Vault | unknown | ethereum | n/a | 7 deployments: ethereum [`0x15d9f7e12aea18daef5c651fbf97567cad4a4bec`](./contracts/ethereum-1/0x15d9f7e12aea18daef5c651fbf97567cad4a4bec/); ethereum `0x4f750d13005444407d44daa30922128db0374ca1`; ethereum `0x540fe6291b14dd3fff86a291374d64ebd50b56ff`; ethereum `0x75b5e276c5c1e9378e899cb3a87977421980eb22`; ethereum `0xa303784b0557bf1f1fb8b8abef2b18a005722689`; ethereum `0xc722d9f3f8d60288589f7f67a9cfad34d3b9bf8e`; ethereum `0xf8bdac4e68ba2595be8381aaa5456917e374e737` | ✅ Audited |
| ERC721Vault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x2dfef0339009ce10786fc118c883bb97af3163ed`](./contracts/ethereum-1/0x2dfef0339009ce10786fc118c883bb97af3163ed/); ethereum `0x41a7bdd153a5affb10ed1ad3d6a4e5ad001495fa`; ethereum `0x55b5df6b53466446221180498bfd1c59e54732c4`; ethereum `0x7dae6496dcea54bc92ad6d031726076887b1ed5c`; ethereum `0xec04849e7722fd69797a155796db75ac8f94f692` | ✅ Audited |
| GuardianProver | unknown | ethereum | n/a | 7 deployments: ethereum [`0x253e47f2b1e91f2001d3578aeb24c0ccf464b65e`](./contracts/ethereum-1/0x253e47f2b1e91f2001d3578aeb24c0ccf464b65e/); ethereum `0x468f6a9c0ad2e9c8370687d2844a9e70fe942d5c`; ethereum `0x717dc5e3814591790bcb1fd9259eeda7c14ce9cf`; ethereum `0x750221e951b77a2cb4046de41ec5f6d1aa7942d2`; ethereum `0x7e717ffd6f7dd1008192bdc7193904fab25bc8a4`; ethereum `0x97f5a07aad4a88f05542808a5e0c76cab603b28c`; ethereum `0xce6b4076c427c2b4a659081a796644ff9c877e15` | ✅ Audited |
| MainnetInbox | unknown | ethereum | n/a | [`0x06a9ab27c7e2255df1815e6cc0168d7755feb19a`](./contracts/ethereum-1/0x06a9ab27c7e2255df1815e6cc0168d7755feb19a/) | ✅ Audited |
| PEMCertChainLib | unknown | ethereum | n/a | [`0x02772b7b3a5bea0141c993dbb8d0733c19f46169`](./contracts/ethereum-1/0x02772b7b3a5bea0141c993dbb8d0733c19f46169/) | ✅ Audited |
| PreconfWhitelist | unknown | ethereum | n/a | [`0xfd019460881e6eec632258222393d5821029b2ac`](./contracts/ethereum-1/0xfd019460881e6eec632258222393d5821029b2ac/) | ✅ Audited |
| QuotaManager | unknown | ethereum | n/a | [`0x49c5e5f131314bb24b17e249960f8b12f925ef22`](./contracts/ethereum-1/0x49c5e5f131314bb24b17e249960f8b12f925ef22/) | ✅ Audited |
| QuotaManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x91f67118dd47d502b1f0c354d0611997b022f29e`](./contracts/ethereum-1/0x91f67118dd47d502b1f0c354d0611997b022f29e/); ethereum `0xdb627bfd79e81fe42138eb875287f94fad5bbc64` | ✅ Audited |
| Risc0Verifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x55902b2d3df2a65370a89c86ae9dd71ecd508edc`](./contracts/ethereum-1/0x55902b2d3df2a65370a89c86ae9dd71ecd508edc/); ethereum `0xefe30a0d56a5804f695f971010597262cad9a2c3` | ✅ Audited |
| SgxVerifier | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3f54067ef5d8b414bdb1945cdf482bd158aad175`](./contracts/ethereum-1/0x3f54067ef5d8b414bdb1945cdf482bd158aad175/); ethereum `0xb0b782cf0fcece896e0c041f8e54f86ca4cc8e9f`; ethereum `0xf381868dd6b2ac8cca468d63b42f9040de2257e9` | ✅ Audited |
| SignalService | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3d59c18b31a7d950ef9bd15ed285b6c182e0f0bb`](./contracts/ethereum-1/0x3d59c18b31a7d950ef9bd15ed285b6c182e0f0bb/); ethereum `0xb11cd7ba46a12f238b4ad831f6f296262c1e652d`; ethereum `0xe1d91bae44b70bd66e8b688b8421fd62dcc33c72` | ✅ Audited |
| SignalService | unknown | ethereum | n/a | [`0x9e0a24964e5397b566c1ed39258e21ab5e35c77c`](./contracts/ethereum-1/0x9e0a24964e5397b566c1ed39258e21ab5e35c77c/) | ✅ Audited |
| SP1Verifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x00c04822ba7aea1113b2a7a29bbcdca70e257c7b`](./contracts/ethereum-1/0x00c04822ba7aea1113b2a7a29bbcdca70e257c7b/); ethereum `0x1e18454ed45101ba3af5351f3d6d2daffe5a34bf` | ✅ Audited |
| SP1Verifier | unknown | ethereum | n/a | 9 deployments: ethereum [`0x0ad6f49969ad86ead94941439b340bfc54588b8c`](./contracts/ethereum-1/0x0ad6f49969ad86ead94941439b340bfc54588b8c/); ethereum `0x2d33d748644dab8b3fb0e07642d9de96b816d067`; ethereum `0x2d4ce746aa4913ec79c535b291966d92903b22dc`; ethereum `0x5673e375a71930bf6496af98fd3b9cb017942448`; ethereum `0x68593ad19705e9ce919b2e368f5cb7baf04f7371`; ethereum `0x7c3498cbe70800ddc8f7a5b662af1451355bbe50`; ethereum `0x7e0fbf18efa7b1ef9ff361731e91d34d65f24e05`; ethereum `0xd024e0106d97cfe782967a5253192833b00926c0`; ethereum `0xd05aed1042ed06dbf2ce7626afcbc01029e68287` | ✅ Audited |
| SP1Verifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5c44f2239925b0d86d2bfee539f19cd0a08af452`](./contracts/ethereum-1/0x5c44f2239925b0d86d2bfee539f19cd0a08af452/); ethereum `0x5f5b83ca87e2fbc513b800fed6ccd626536d7219` | ✅ Audited |
| SP1Verifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6e520fc0b5ca5b9903d88ca1076e8dd63a536fa8`](./contracts/ethereum-1/0x6e520fc0b5ca5b9903d88ca1076e8dd63a536fa8/); ethereum `0xd31868d23dcb8f2b61a2265135f99328e007d08f` | ✅ Audited |
| TaikoL1 | unknown | ethereum | n/a | 11 deployments: ethereum [`0x0468745a07de44a9a3138adac35875ecaf7a20d5`](./contracts/ethereum-1/0x0468745a07de44a9a3138adac35875ecaf7a20d5/); ethereum `0x3505a0700db72dec7abff1af231bb5d87abf2944`; ethereum `0x4b2743b869b85d5f7d8020566f92664995e4f3c5`; ethereum `0x5fc54737ecc1de49d58ae1195d4a296257f1e31b`; ethereum `0x78bcdaac841b86187fe1f08084ee4d1d317c2f00`; ethereum `0x99ba70e62cab0cb983e66f72330fbddc11d85501`; ethereum `0x9fbbedbbcbb753e7214be08381efe10d89d712fe`; ethereum `0xa200c2268d77737a8fd2ca1698da6eeab2a85ceb`; ethereum `0xb9e1e58bcf33b79ccff99c298963546a6c334388`; ethereum `0xcee590facd976b9bde87bc1b7620b284c5edd2c3`; ethereum `0xe0a5d394878723ceaec8b993e04756df1f4b44ef` | ✅ Audited |
| TaikoToken | unknown | ethereum | n/a | 4 deployments: ethereum [`0x55833da2962c2330cccf043ff8037e6d2939bcf6`](./contracts/ethereum-1/0x55833da2962c2330cccf043ff8037e6d2939bcf6/); ethereum `0x7df8bfbf0f09e94200b6a158b421e2ccacc4830f`; ethereum `0xcfe803378d79d1180ebf030455040ea6513869df`; ethereum `0xea53c0f4b129cf3f3fba896f9f23ca18246e9b3c` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgedERC20V2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x65666141a541423606365123ed280ab16a09a2e1`](./contracts/ethereum-1/0x65666141a541423606365123ed280ab16a09a2e1/); ethereum `0x7714f50839a9dcd5e62e230d64650f36ec860f8c` | ⚠️ Unaudited |
| MainnetBridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2705b12a971da766a3f9321a743d61cead67da2f`](./contracts/ethereum-1/0x2705b12a971da766a3f9321a743d61cead67da2f/); ethereum `0xd60247c6848b7ca29eddf63aa924e53db6ddd8ec` | ⚠️ Unaudited |
| MainnetERC1155Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x838ed469db456b67eb3b0b74d759be4da999b9c8`](./contracts/ethereum-1/0x838ed469db456b67eb3b0b74d759be4da999b9c8/); ethereum `0xaf145913ea4a56be22e120ed9c24589659881702` | ⚠️ Unaudited |
| MainnetERC1155Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x89c68bc7028f8b1e69a91382b0a4b1825085617b`](./contracts/ethereum-1/0x89c68bc7028f8b1e69a91382b0a4b1825085617b/); ethereum `0xec0fd48d9a3ed293db3077259ccd3e7bc9e8674d` | ⚠️ Unaudited |
| MainnetERC20Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x76d73ac0a0c89bdb75068901d51431694ab3ab63`](./contracts/ethereum-1/0x76d73ac0a0c89bdb75068901d51431694ab3ab63/); ethereum `0x7acfbb369a552c45d402448a4d64b9da54c3ff30` | ⚠️ Unaudited |
| MainnetERC20Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x996282ca11e5deb6b5d122cc3b9a1fcaad4415ab`](./contracts/ethereum-1/0x996282ca11e5deb6b5d122cc3b9a1fcaad4415ab/); ethereum `0xb20c8ffc2dd49596508d262b6e8b6817e9790e63` | ⚠️ Unaudited |
| MainnetERC721Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0b470dd3a0e1c41228856fb319649e7c08f419aa`](./contracts/ethereum-1/0x0b470dd3a0e1c41228856fb319649e7c08f419aa/); ethereum `0xa4c5c20ab33c96b1c281dca37d03e23609274c49` | ⚠️ Unaudited |
| MainnetERC721Vault | unknown | ethereum | n/a | [`0xd961e3ef2d7df58cdc67bfd9055255430e5e3fec`](./contracts/ethereum-1/0xd961e3ef2d7df58cdc67bfd9055255430e5e3fec/) | ⚠️ Unaudited |
| MainnetGuardianProver | unknown | ethereum | n/a | 3 deployments: ethereum [`0x579a8d63a2db646284cbfe31fe5082c9989e985c`](./contracts/ethereum-1/0x579a8d63a2db646284cbfe31fe5082c9989e985c/); ethereum `0xb866e9046caf4d75e2cbcd8b5ea3f07ea74f7b47`; ethereum `0xe3d777143ea25a6e031d1e921f396750885f43ac` | ⚠️ Unaudited |
| MainnetProverSet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x280eabfd252f017b78e15b69580f249f45fb55fa`](./contracts/ethereum-1/0x280eabfd252f017b78e15b69580f249f45fb55fa/); ethereum `0xa01d464ca3982daa97b19fa7f8a232eb11a9ddb3` | ⚠️ Unaudited |
| MainnetProverSet | unknown | ethereum | n/a | 4 deployments: ethereum [`0x3022ed0346cce0c08268c8ad081458afd95e8763`](./contracts/ethereum-1/0x3022ed0346cce0c08268c8ad081458afd95e8763/); ethereum `0x74828e5fe803072af9df512b3911b4223572d652`; ethereum `0xce5a119479337a153ca3bd1b2bf9755c78f2b15a`; ethereum `0xd0d3f025d83d7122de7ec43e86331c57c8a4f30b` | ⚠️ Unaudited |
| MainnetRollupAddressManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0079a79e5d8dda67029051d505e5a11de279b36d`](./contracts/ethereum-1/0x0079a79e5d8dda67029051d505e5a11de279b36d/); ethereum `0x579f40d0be111b823962043702cabe6aaa290780` | ⚠️ Unaudited |
| MainnetSgxVerifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x81dfea931500cdcf0460e9ec45fa283a6b7f0838`](./contracts/ethereum-1/0x81dfea931500cdcf0460e9ec45fa283a6b7f0838/); ethereum `0xb0f3186fc1963f774f52ff455dc86aedd0b31f81` | ⚠️ Unaudited |
| MainnetSharedAddressManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0xec1a9aa1c648f047752fe4eedb2c21ceab0c6449`](./contracts/ethereum-1/0xec1a9aa1c648f047752fe4eedb2c21ceab0c6449/); ethereum `0xef9eaa1dd30a9aa1df01c36411b5f082aa65fbaa` | ⚠️ Unaudited |
| PreconfRouter | adapter | ethereum | n/a | [`0xd5aa0e20e8a6e9b04f080cf8797410fafaa9688a`](./contracts/ethereum-1/0xd5aa0e20e8a6e9b04f080cf8797410fafaa9688a/) | ⚠️ Unaudited |
| ProverSet | unknown | ethereum | n/a | 5 deployments: ethereum [`0x500735343372dd6c9b84dbc7a75babf4479742b9`](./contracts/ethereum-1/0x500735343372dd6c9b84dbc7a75babf4479742b9/); ethereum `0x518845daa8870be2c59e49620fc262ad48953c9a`; ethereum `0x5d528253fa14cd7f637937de847be8d5be0bf5fd`; ethereum `0xd0aee97712a4a88b75c31e3c61dd2ce6e514d85f`; ethereum `0xd547ca5d6b50dc5e900a091978597eb51f18f9d1` | ⚠️ Unaudited |
| TierProviderV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x33879cdf01121dc7bce011b461e64d791ae931f2`](./contracts/ethereum-1/0x33879cdf01121dc7bce011b461e64d791ae931f2/); ethereum `0xf8254fd073063c35811577877f840548e77fd52e` | ⚠️ Unaudited |
| TokenUnlock | unknown | ethereum | n/a | 3 deployments: ethereum [`0x10edc3b383dd87e675e88623ff1cbb09b3cdefde`](./contracts/ethereum-1/0x10edc3b383dd87e675e88623ff1cbb09b3cdefde/); ethereum `0x816628a544aa52b2abee7d482bbec53b80b898a7`; ethereum `0xd6a337d948f44baf9bef85e4f00a5006fe6ff5e7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x2e7797129ec717d38408b2ce81f75cc48cfd61d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x464cc5cd8f6ec9863e033edd11f4af30aaba3691` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x779b676762d552a81ff221c109875751ccc316c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79895c525179680db4bcd6ba62c30e68db9042d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92059835fae629a2ffa7c9a27bc735d776ac6416` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4f138ac136592920a046106da7869436998c5e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdff555328825b0e14e6ffd6dce44bd9335f528ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe462cc45f06982bdf36a080629228d61324f6a55` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [code4rena-2024-03-taiko-final-report.md](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/code4rena-2024-03-taiko-final-report.md) | Code4rena | Contest | 2024-03 | stale | Direct | contract_name | 57 | high |
| [halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf) | Halborn | Audit | 2025-03 | aging | Direct | contract_name | 7 | high |
| [halborn-taiko-dao-contract-audit.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/halborn-taiko-dao-contract-audit.pdf) | Halborn | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [open_zeppelin_taiko_protocol_audit_june_2024.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_audit_june_2024.pdf) | OpenZeppelin | Audit | 2024-06 | stale | Direct | contract_name | 75 | high |
| [open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf) | OpenZeppelin | Audit | 2024-11 | aging | Direct | contract_name | 11 | high |
| [open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf) | OpenZeppelin | Audit | 2026-01 | fresh | Direct | contract_name | 26 | high |
| [quill_audits_taiko_smart_contract_audit_report.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/quill_audits_taiko_smart_contract_audit_report.pdf) | Quill Audits | Audit | 2024-02 | stale | Direct | contract_name | 40 | high |
| [sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | contract_name | 54 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x65666141a541423606365123ed280ab16a09a2e1`](./contracts/ethereum-1/0x65666141a541423606365123ed280ab16a09a2e1/) | BridgedERC20V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2705b12a971da766a3f9321a743d61cead67da2f`](./contracts/ethereum-1/0x2705b12a971da766a3f9321a743d61cead67da2f/) | MainnetBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x838ed469db456b67eb3b0b74d759be4da999b9c8`](./contracts/ethereum-1/0x838ed469db456b67eb3b0b74d759be4da999b9c8/) | MainnetERC1155Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89c68bc7028f8b1e69a91382b0a4b1825085617b`](./contracts/ethereum-1/0x89c68bc7028f8b1e69a91382b0a4b1825085617b/) | MainnetERC1155Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76d73ac0a0c89bdb75068901d51431694ab3ab63`](./contracts/ethereum-1/0x76d73ac0a0c89bdb75068901d51431694ab3ab63/) | MainnetERC20Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x996282ca11e5deb6b5d122cc3b9a1fcaad4415ab`](./contracts/ethereum-1/0x996282ca11e5deb6b5d122cc3b9a1fcaad4415ab/) | MainnetERC20Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b470dd3a0e1c41228856fb319649e7c08f419aa`](./contracts/ethereum-1/0x0b470dd3a0e1c41228856fb319649e7c08f419aa/) | MainnetERC721Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd961e3ef2d7df58cdc67bfd9055255430e5e3fec`](./contracts/ethereum-1/0xd961e3ef2d7df58cdc67bfd9055255430e5e3fec/) | MainnetERC721Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x579a8d63a2db646284cbfe31fe5082c9989e985c`](./contracts/ethereum-1/0x579a8d63a2db646284cbfe31fe5082c9989e985c/) | MainnetGuardianProver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x280eabfd252f017b78e15b69580f249f45fb55fa`](./contracts/ethereum-1/0x280eabfd252f017b78e15b69580f249f45fb55fa/) | MainnetProverSet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3022ed0346cce0c08268c8ad081458afd95e8763`](./contracts/ethereum-1/0x3022ed0346cce0c08268c8ad081458afd95e8763/) | MainnetProverSet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0079a79e5d8dda67029051d505e5a11de279b36d`](./contracts/ethereum-1/0x0079a79e5d8dda67029051d505e5a11de279b36d/) | MainnetRollupAddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81dfea931500cdcf0460e9ec45fa283a6b7f0838`](./contracts/ethereum-1/0x81dfea931500cdcf0460e9ec45fa283a6b7f0838/) | MainnetSgxVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec1a9aa1c648f047752fe4eedb2c21ceab0c6449`](./contracts/ethereum-1/0xec1a9aa1c648f047752fe4eedb2c21ceab0c6449/) | MainnetSharedAddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5aa0e20e8a6e9b04f080cf8797410fafaa9688a`](./contracts/ethereum-1/0xd5aa0e20e8a6e9b04f080cf8797410fafaa9688a/) | PreconfRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x500735343372dd6c9b84dbc7a75babf4479742b9`](./contracts/ethereum-1/0x500735343372dd6c9b84dbc7a75babf4479742b9/) | ProverSet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33879cdf01121dc7bce011b461e64d791ae931f2`](./contracts/ethereum-1/0x33879cdf01121dc7bce011b461e64d791ae931f2/) | TierProviderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10edc3b383dd87e675e88623ff1cbb09b3cdefde`](./contracts/ethereum-1/0x10edc3b383dd87e675e88623ff1cbb09b3cdefde/) | TokenUnlock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7
- Match method counts: extraction_exact=270

Zero-match audit list:

- [21028] halborn-taiko-dao-contract-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
