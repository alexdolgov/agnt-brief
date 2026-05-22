# Agentic Audit Brief: Taiko Bridge

## Project Overview

- Project: Taiko Bridge (`taiko-bridge`)
- Website: [https://bridge.taiko.xyz/](https://bridge.taiko.xyz/)
- Lifecycle: active (Tier 0, 90.7% below peak)
- Generated: 2026-05-22T19:25:39.581Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 52 unique implementations (210 raw deployments)
- DeFi Llama TVL: $17,255,954.39
- On-chain TVL (included contracts): $1,415,595.32
- TVL by chain: Ethereum $1,415,595.32

## Project Description

Taiko Bridge is the canonical bridge for the Taiko rollup, enabling users to deposit and withdraw ERC-20, ERC-721, and ERC-1155 tokens between Ethereum and Taiko. It uses a vault-based architecture with verifiers and provers to ensure secure cross-chain message passing.

### Architecture

The bridge family relies on shared infrastructure: SignalService for cross-chain message passing, verifiers (SP1, Risc0, Sgx) for proof validation, and address managers for contract resolution. Vaults handle token locking/unlocking, while MainnetBridge orchestrates message sending and receiving, with guardian provers and prover sets ensuring security.

## Audit Coverage Summary

- Verified implementations audited: 0/44 (0.0%)
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 52
- Raw deployments: 210
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,415,595.32
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MainnetERC20Vault | core_logic | ethereum | 4 deployments: ethereum [`0x76d73a...b3ab63`](./contracts/ethereum-1/0x76d73ac0a0c89bdb75068901d51431694ab3ab63/); ethereum `0x7acfbb...c3ff30`; ethereum `0x996282...4415ab`; ethereum `0xb20c8f...790e63` | ⚠️ Unaudited |
| AddressManager | governance | ethereum | 3 deployments: ethereum [`0x9ca1ab...9c6a15`](./contracts/ethereum-1/0x9ca1ab10c9fac5153f8b78e67f03aaa69c9c6a15/); ethereum `0xd912ab...360440`; ethereum `0xf1ca1f...e80943` | ⚠️ Unaudited |
| AssignmentHook | unknown | ethereum | 5 deployments: ethereum [`0x25206c...ada046`](./contracts/ethereum-1/0x25206cbd98edaea26e8eadd285c66c951aada046/); ethereum `0x4f6642...dda170`; ethereum `0x537a2f...1796f6`; ethereum `0xe226fa...36fb0d`; ethereum `0xf77cbf...5e53f2` | ⚠️ Unaudited |
| AutomataDcapV3Attestation | unknown | ethereum | 4 deployments: ethereum [`0x5f73f0...84e0b5`](./contracts/ethereum-1/0x5f73f0adc7daa6134fe751c4a78d524f9384e0b5/); ethereum `0x8d7c95...7ca8a3`; ethereum `0xde1b1f...303323`; ethereum `0xee8fc1...fcdafc` | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | 11 deployments: ethereum [`0x01e7d3...789986`](./contracts/ethereum-1/0x01e7d369a619ef1b0e92563d8737f42c09789986/); ethereum `0x02f21b...d782be`; ethereum `0x271bc3...f0b218`; ethereum `0x40f8be...d603f7`; ethereum `0x4a1091...cf853d`; ethereum `0x4cab75...7eabd0`; ethereum `0x71c2f4...8d6cd0`; ethereum `0x91d593...7bcf6f`; ethereum `0xc71cc3...a645ba`; ethereum `0xd28f2c...052561`; ethereum `0xe148cc...611e57` | ⚠️ Unaudited |
| BridgedERC1155 | operational_periphery | ethereum | 3 deployments: ethereum [`0x39e4c1...42791d`](./contracts/ethereum-1/0x39e4c1214e733639d059979079a151911e42791d/); ethereum `0x3c9096...9c2c40`; ethereum `0xe7782d...0d689d` | ⚠️ Unaudited |
| BridgedERC20 | operational_periphery | ethereum | 2 deployments: ethereum [`0x79bc0a...3653e3`](./contracts/ethereum-1/0x79bc0aada00fcf6e7ab514bfeb093b5fae3653e3/); ethereum `0xcc5d48...de7372` | ⚠️ Unaudited |
| BridgedERC20V2 | operational_periphery | ethereum | 2 deployments: ethereum [`0x656661...09a2e1`](./contracts/ethereum-1/0x65666141a541423606365123ed280ab16a09a2e1/); ethereum `0x7714f5...860f8c` | ⚠️ Unaudited |
| BridgedERC721 | operational_periphery | ethereum | 2 deployments: ethereum [`0xc33109...6a1bf7`](./contracts/ethereum-1/0xc3310905e2bc9cfb198695b75ef3e5b69c6a1bf7/); ethereum `0xc4096e...c12de7` | ⚠️ Unaudited |
| ERC1155Vault | core_logic | ethereum | 5 deployments: ethereum [`0x01329a...2332fa`](./contracts/ethereum-1/0x01329a1cde2509421cbe99dd3feb3c1b212332fa/); ethereum `0x097bbb...a47dc3`; ethereum `0x7748da...3c6396`; ethereum `0xca9288...1a59c8`; ethereum `0xd90b5f...1cdcfe` | ⚠️ Unaudited |
| ERC20Vault | core_logic | ethereum | 7 deployments: ethereum [`0x15d9f7...4a4bec`](./contracts/ethereum-1/0x15d9f7e12aea18daef5c651fbf97567cad4a4bec/); ethereum `0x4f750d...374ca1`; ethereum `0x540fe6...0b56ff`; ethereum `0x75b5e2...80eb22`; ethereum `0xa30378...722689`; ethereum `0xc722d9...b9bf8e`; ethereum `0xf8bdac...74e737` | ⚠️ Unaudited |
| ERC721Vault | core_logic | ethereum | 5 deployments: ethereum [`0x2dfef0...3163ed`](./contracts/ethereum-1/0x2dfef0339009ce10786fc118c883bb97af3163ed/); ethereum `0x41a7bd...1495fa`; ethereum `0x55b5df...4732c4`; ethereum `0x7dae64...b1ed5c`; ethereum `0xec0484...94f692` | ⚠️ Unaudited |
| GuardianProver | governance | ethereum | 7 deployments: ethereum [`0x253e47...64b65e`](./contracts/ethereum-1/0x253e47f2b1e91f2001d3578aeb24c0ccf464b65e/); ethereum `0x468f6a...942d5c`; ethereum `0x717dc5...4ce9cf`; ethereum `0x750221...7942d2`; ethereum `0x7e717f...5bc8a4`; ethereum `0x97f5a0...03b28c`; ethereum `0xce6b40...877e15` | ⚠️ Unaudited |
| L1RollupAddressManager | governance | ethereum | 3 deployments: ethereum [`0x29a88d...154900`](./contracts/ethereum-1/0x29a88d60246c76e4f28806b9c8a42d2183154900/); ethereum `0x8af466...d07a9a`; ethereum `0x8eef31...903af6` | ⚠️ Unaudited |
| L1SharedAddressManager | governance | ethereum | 2 deployments: ethereum [`0x25d846...672b5c`](./contracts/ethereum-1/0x25d8465fd0c8d89bfde910e47c41f4e465672b5c/); ethereum `0x949650...398a17` | ⚠️ Unaudited |
| MainnetBridge | operational_periphery | ethereum | 5 deployments: ethereum [`0x2705b1...67da2f`](./contracts/ethereum-1/0x2705b12a971da766a3f9321a743d61cead67da2f/); ethereum `0x3abf0f...75abf2`; ethereum `0x68756c...12f179`; ethereum `0xac96ff...915af3`; ethereum `0xd60247...ddd8ec` | ⚠️ Unaudited |
| MainnetERC1155Vault | core_logic | ethereum | 4 deployments: ethereum [`0x838ed4...99b9c8`](./contracts/ethereum-1/0x838ed469db456b67eb3b0b74d759be4da999b9c8/); ethereum `0x89c68b...85617b`; ethereum `0xaf1459...881702`; ethereum `0xec0fd4...e8674d` | ⚠️ Unaudited |
| MainnetERC721Vault | core_logic | ethereum | 3 deployments: ethereum [`0x0b470d...f419aa`](./contracts/ethereum-1/0x0b470dd3a0e1c41228856fb319649e7c08f419aa/); ethereum `0xa4c5c2...274c49`; ethereum `0xd961e3...5e3fec` | ⚠️ Unaudited |
| MainnetGuardianProver | governance | ethereum | 4 deployments: ethereum [`0x3c40cc...c8df98`](./contracts/ethereum-1/0x3c40cc51e78b4a622622f9a4df1b40068bc8df98/); ethereum `0x579a8d...9e985c`; ethereum `0xb866e9...4f7b47`; ethereum `0xe3d777...5f43ac` | ⚠️ Unaudited |
| MainnetInbox | unknown | ethereum | [`0x06a9ab...feb19a`](./contracts/ethereum-1/0x06a9ab27c7e2255df1815e6cc0168d7755feb19a/) | ⚠️ Unaudited |
| MainnetProverSet | unknown | ethereum | 6 deployments: ethereum [`0x280eab...fb55fa`](./contracts/ethereum-1/0x280eabfd252f017b78e15b69580f249f45fb55fa/); ethereum `0x3022ed...5e8763`; ethereum `0x74828e...72d652`; ethereum `0xa01d46...a9ddb3`; ethereum `0xce5a11...f2b15a`; ethereum `0xd0d3f0...a4f30b` | ⚠️ Unaudited |
| MainnetRollupAddressManager | governance | ethereum | 9 deployments: ethereum [`0x0079a7...79b36d`](./contracts/ethereum-1/0x0079a79e5d8dda67029051d505e5a11de279b36d/); ethereum `0x08aab2...a0a6db`; ethereum `0x190d5d...e096be`; ethereum `0x3202fc...04ee37`; ethereum `0x4f6d5d...18e8e9`; ethereum `0x52ca3c...4fc788`; ethereum `0x579f40...290780`; ethereum `0x6d8e6e...f6fb3d`; ethereum `0x85cd63...4f7bf6` | ⚠️ Unaudited |
| MainnetSgxVerifier | periphery | ethereum | 4 deployments: ethereum [`0x7ee4ce...0f07f3`](./contracts/ethereum-1/0x7ee4cef8a945639e09ddf3032e9d95c8d90f07f3/); ethereum `0x81dfea...7f0838`; ethereum `0xb0f318...b31f81`; ethereum `0xee5f66...88ff24` | ⚠️ Unaudited |
| MainnetSharedAddressManager | governance | ethereum | 4 deployments: ethereum [`0x2f7126...08e2fd`](./contracts/ethereum-1/0x2f7126f78365ad54eab26fd7faec60435008e2fd/); ethereum `0xc99d6f...00bc5f`; ethereum `0xec1a9a...0c6449`; ethereum `0xef9eaa...65fbaa` | ⚠️ Unaudited |
| MainnetSignalService | unknown | ethereum | 4 deployments: ethereum [`0x45fed1...f499f3`](./contracts/ethereum-1/0x45fed11ba70d4217545f18e27ddaf7d76ff499f3/); ethereum `0x6e8804...51896a`; ethereum `0xbddf61...f7d37c`; ethereum `0xdf8642...f315df` | ⚠️ Unaudited |
| MainnetTaikoL1 | unknown | ethereum | 14 deployments: ethereum [`0x0205ea...aa4040`](./contracts/ethereum-1/0x0205ea1e1162bc50e1030f36412e5dd69daa4040/); ethereum `0x1de54d...64141a`; ethereum `0x278442...37588d`; ethereum `0x30923a...3ee5d9`; ethereum `0x4229d1...cdab2d`; ethereum `0x4b4051...6f1fd4`; ethereum `0x511063...74d7ca`; ethereum `0xa3e75e...dcdb17`; ethereum `0xb74a66...758162`; ethereum `0xba1d90...d83231`; ethereum `0xd4896d...d65e1c`; ethereum `0xe7c4b4...8e9a5b`; ethereum `0xede3c9...e395bc`; ethereum `0xf0e6d3...ffdf2f` | ⚠️ Unaudited |
| MainnetTierRouter | adapter | ethereum | 14 deployments: ethereum [`0x02d6ab...33f915`](./contracts/ethereum-1/0x02d6ab2b54e1465fb854c08d41db1e547533f915/); ethereum `0x082fb5...2fa572`; ethereum `0x1c02d1...0f34e3`; ethereum `0x2ae894...c26065`; ethereum `0x2cd242...c7afd0`; ethereum `0x394e30...1935b0`; ethereum `0x44d307...c86db6`; ethereum `0x46d230...3bfcce`; ethereum `0x6cc408...db269e`; ethereum `0x7037ae...a7bb75`; ethereum `0x8a4c69...e52e66`; ethereum `0x8f1c1d...6b5542`; ethereum `0xe93588...a58814`; ethereum `0xfb6a87...019d06` | ⚠️ Unaudited |
| P256Verifier | periphery | ethereum | [`0x11a9eb...fbeab0`](./contracts/ethereum-1/0x11a9eba17ebf92b40fcf9a640ebbc47db6fbeab0/) | ⚠️ Unaudited |
| PEMCertChainLib | unknown | ethereum | [`0x02772b...f46169`](./contracts/ethereum-1/0x02772b7b3a5bea0141c993dbb8d0733c19f46169/) | ⚠️ Unaudited |
| ProverSet | unknown | ethereum | 5 deployments: ethereum [`0x500735...9742b9`](./contracts/ethereum-1/0x500735343372dd6c9b84dbc7a75babf4479742b9/); ethereum `0x518845...953c9a`; ethereum `0x5d5282...0bf5fd`; ethereum `0xd0aee9...14d85f`; ethereum `0xd547ca...18f9d1` | ⚠️ Unaudited |
| ProxylessAssignmentHook | unknown | ethereum | [`0xa641a2...085248`](./contracts/ethereum-1/0xa641a2d6c0112e5ec6baf2fa40d519323a085248/) | ⚠️ Unaudited |
| QuotaManager | governance | ethereum | 3 deployments: ethereum [`0x49c5e5...25ef22`](./contracts/ethereum-1/0x49c5e5f131314bb24b17e249960f8b12f925ef22/); ethereum `0x91f671...22f29e`; ethereum `0xdb627b...5bbc64` | ⚠️ Unaudited |
| Risc0Verifier | periphery | ethereum | 2 deployments: ethereum [`0x55902b...508edc`](./contracts/ethereum-1/0x55902b2d3df2a65370a89c86ae9dd71ecd508edc/); ethereum `0xefe30a...d9a2c3` | ⚠️ Unaudited |
| RiscZeroGroth16Verifier | periphery | ethereum | 5 deployments: ethereum [`0x48e32e...83dd98`](./contracts/ethereum-1/0x48e32efbe22e180a3ffe617f4955cd83b983dd98/); ethereum `0x683a78...6192a9`; ethereum `0x7e8ce5...8f2da5`; ethereum `0xcf706d...e5308d`; ethereum `0xf31de4...2855e9` | ⚠️ Unaudited |
| SgxVerifier | periphery | ethereum | 3 deployments: ethereum [`0x3f5406...aad175`](./contracts/ethereum-1/0x3f54067ef5d8b414bdb1945cdf482bd158aad175/); ethereum `0xb0b782...cc8e9f`; ethereum `0xf38186...2257e9` | ⚠️ Unaudited |
| SignalService | unknown | ethereum | 4 deployments: ethereum [`0x3d59c1...e0f0bb`](./contracts/ethereum-1/0x3d59c18b31a7d950ef9bd15ed285b6c182e0f0bb/); ethereum `0x9e0a24...35c77c`; ethereum `0xb11cd7...1e652d`; ethereum `0xe1d91b...c33c72` | ⚠️ Unaudited |
| SigVerifyLib | unknown | ethereum | [`0x47bb41...80e6e9`](./contracts/ethereum-1/0x47bb416ee947fe4a4b655011af7d6e3a1b80e6e9/) | ⚠️ Unaudited |
| SP1Verifier | periphery | ethereum | 15 deployments: ethereum [`0x00c048...257c7b`](./contracts/ethereum-1/0x00c04822ba7aea1113b2a7a29bbcdca70e257c7b/); ethereum `0x0ad6f4...588b8c`; ethereum `0x1e1845...5a34bf`; ethereum `0x2d33d7...16d067`; ethereum `0x2d4ce7...3b22dc`; ethereum `0x5673e3...942448`; ethereum `0x5c44f2...8af452`; ethereum `0x5f5b83...6d7219`; ethereum `0x68593a...4f7371`; ethereum `0x6e520f...536fa8`; ethereum `0x7c3498...5bbe50`; ethereum `0x7e0fbf...f24e05`; ethereum `0xd024e0...0926c0`; ethereum `0xd05aed...e68287`; ethereum `0xd31868...07d08f` | ⚠️ Unaudited |
| TaikoL1 | unknown | ethereum | 11 deployments: ethereum [`0x046874...7a20d5`](./contracts/ethereum-1/0x0468745a07de44a9a3138adac35875ecaf7a20d5/); ethereum `0x3505a0...bf2944`; ethereum `0x4b2743...e4f3c5`; ethereum `0x5fc547...f1e31b`; ethereum `0x78bcda...7c2f00`; ethereum `0x99ba70...d85501`; ethereum `0x9fbbed...d712fe`; ethereum `0xa200c2...a85ceb`; ethereum `0xb9e1e5...334388`; ethereum `0xcee590...edd2c3`; ethereum `0xe0a5d3...4b44ef` | ⚠️ Unaudited |
| TaikoToken | token | ethereum | 4 deployments: ethereum [`0x55833d...39bcf6`](./contracts/ethereum-1/0x55833da2962c2330cccf043ff8037e6d2939bcf6/); ethereum `0x7df8bf...c4830f`; ethereum `0xcfe803...3869df`; ethereum `0xea53c0...6e9b3c` | ⚠️ Unaudited |
| TierProviderV2 | unknown | ethereum | 4 deployments: ethereum [`0x33879c...e931f2`](./contracts/ethereum-1/0x33879cdf01121dc7bce011b461e64d791ae931f2/); ethereum `0x3a1a90...b71ddd`; ethereum `0x4cffe5...ae3a23`; ethereum `0xf8254f...7fd52e` | ⚠️ Unaudited |
| TierRouter | adapter | ethereum | [`0x6e997f...43155a`](./contracts/ethereum-1/0x6e997f1f22c40ba37f633b08f3b07e10ed43155a/) | ⚠️ Unaudited |
| TokenUnlock | token | ethereum | 3 deployments: ethereum [`0x10edc3...cdefde`](./contracts/ethereum-1/0x10edc3b383dd87e675e88623ff1cbb09b3cdefde/); ethereum `0x816628...b898a7`; ethereum `0xd6a337...6ff5e7` | ⚠️ Unaudited |
| TokenUnlocking | token | ethereum | [`0x244108...191a62`](./contracts/ethereum-1/0x244108e321fe03b0e33fe63ef62285f05d191a62/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x2e7797...fd61d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x464cc5...ba3691` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x779b67...c316c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x79895c...9042d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x920598...ac6416` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd4f138...98c5e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdff555...f528ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe462cc...4f6a55` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x76d73a...b3ab63`](./contracts/ethereum-1/0x76d73ac0a0c89bdb75068901d51431694ab3ab63/) | MainnetERC20Vault | core_logic | $1,415,595.32 | Verified native implementation with $1,415,595.32 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ca1ab...9c6a15`](./contracts/ethereum-1/0x9ca1ab10c9fac5153f8b78e67f03aaa69c9c6a15/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25206c...ada046`](./contracts/ethereum-1/0x25206cbd98edaea26e8eadd285c66c951aada046/) | AssignmentHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01e7d3...789986`](./contracts/ethereum-1/0x01e7d369a619ef1b0e92563d8737f42c09789986/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39e4c1...42791d`](./contracts/ethereum-1/0x39e4c1214e733639d059979079a151911e42791d/) | BridgedERC1155 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x79bc0a...3653e3`](./contracts/ethereum-1/0x79bc0aada00fcf6e7ab514bfeb093b5fae3653e3/) | BridgedERC20 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x656661...09a2e1`](./contracts/ethereum-1/0x65666141a541423606365123ed280ab16a09a2e1/) | BridgedERC20V2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc33109...6a1bf7`](./contracts/ethereum-1/0xc3310905e2bc9cfb198695b75ef3e5b69c6a1bf7/) | BridgedERC721 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01329a...2332fa`](./contracts/ethereum-1/0x01329a1cde2509421cbe99dd3feb3c1b212332fa/) | ERC1155Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15d9f7...4a4bec`](./contracts/ethereum-1/0x15d9f7e12aea18daef5c651fbf97567cad4a4bec/) | ERC20Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dfef0...3163ed`](./contracts/ethereum-1/0x2dfef0339009ce10786fc118c883bb97af3163ed/) | ERC721Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x253e47...64b65e`](./contracts/ethereum-1/0x253e47f2b1e91f2001d3578aeb24c0ccf464b65e/) | GuardianProver | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29a88d...154900`](./contracts/ethereum-1/0x29a88d60246c76e4f28806b9c8a42d2183154900/) | L1RollupAddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25d846...672b5c`](./contracts/ethereum-1/0x25d8465fd0c8d89bfde910e47c41f4e465672b5c/) | L1SharedAddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2705b1...67da2f`](./contracts/ethereum-1/0x2705b12a971da766a3f9321a743d61cead67da2f/) | MainnetBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x838ed4...99b9c8`](./contracts/ethereum-1/0x838ed469db456b67eb3b0b74d759be4da999b9c8/) | MainnetERC1155Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c40cc...c8df98`](./contracts/ethereum-1/0x3c40cc51e78b4a622622f9a4df1b40068bc8df98/) | MainnetGuardianProver | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x280eab...fb55fa`](./contracts/ethereum-1/0x280eabfd252f017b78e15b69580f249f45fb55fa/) | MainnetProverSet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0079a7...79b36d`](./contracts/ethereum-1/0x0079a79e5d8dda67029051d505e5a11de279b36d/) | MainnetRollupAddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ee4ce...0f07f3`](./contracts/ethereum-1/0x7ee4cef8a945639e09ddf3032e9d95c8d90f07f3/) | MainnetSgxVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f7126...08e2fd`](./contracts/ethereum-1/0x2f7126f78365ad54eab26fd7faec60435008e2fd/) | MainnetSharedAddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45fed1...f499f3`](./contracts/ethereum-1/0x45fed11ba70d4217545f18e27ddaf7d76ff499f3/) | MainnetSignalService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0205ea...aa4040`](./contracts/ethereum-1/0x0205ea1e1162bc50e1030f36412e5dd69daa4040/) | MainnetTaikoL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02d6ab...33f915`](./contracts/ethereum-1/0x02d6ab2b54e1465fb854c08d41db1e547533f915/) | MainnetTierRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x500735...9742b9`](./contracts/ethereum-1/0x500735343372dd6c9b84dbc7a75babf4479742b9/) | ProverSet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa641a2...085248`](./contracts/ethereum-1/0xa641a2d6c0112e5ec6baf2fa40d519323a085248/) | ProxylessAssignmentHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49c5e5...25ef22`](./contracts/ethereum-1/0x49c5e5f131314bb24b17e249960f8b12f925ef22/) | QuotaManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f5406...aad175`](./contracts/ethereum-1/0x3f54067ef5d8b414bdb1945cdf482bd158aad175/) | SgxVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d59c1...e0f0bb`](./contracts/ethereum-1/0x3d59c18b31a7d950ef9bd15ed285b6c182e0f0bb/) | SignalService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47bb41...80e6e9`](./contracts/ethereum-1/0x47bb416ee947fe4a4b655011af7d6e3a1b80e6e9/) | SigVerifyLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x046874...7a20d5`](./contracts/ethereum-1/0x0468745a07de44a9a3138adac35875ecaf7a20d5/) | TaikoL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55833d...39bcf6`](./contracts/ethereum-1/0x55833da2962c2330cccf043ff8037e6d2939bcf6/) | TaikoToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e997f...43155a`](./contracts/ethereum-1/0x6e997f1f22c40ba37f633b08f3b07e10ed43155a/) | TierRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10edc3...cdefde`](./contracts/ethereum-1/0x10edc3b383dd87e675e88623ff1cbb09b3cdefde/) | TokenUnlock | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x244108...191a62`](./contracts/ethereum-1/0x244108e321fe03b0e33fe63ef62285f05d191a62/) | TokenUnlocking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
