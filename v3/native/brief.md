# Agentic Audit Brief: Native

## Project Overview

- Project: Native (`native`)
- Website: [https://native.org](https://native.org)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:35.187Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, base, bsc, ethereum, manta, polygon
- Contract surface: 94 unique implementations (507 raw deployments)
- DeFi Llama TVL: $49,087,004.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 41 project-authored contract(s) across 6 chain(s); 8 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 18 common project-authored base contract(s) (ownable2step, reentrancyguardtransient, eip712). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 507; live-surface contracts included: 502 (470 live, 32 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/66 (0.0%)
- Deployed-live implementations: 66 of 94 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/66
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 94
- Raw deployments: 507
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 1 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraInterfaceMulticall | periphery | arbitrum | n/a | [`0xcc1902...94b70d`](./contracts/arbitrum-42161/0xcc190252fc83165ab2b327cd1f9f38b0c094b70d/) | ⚠️ Unaudited |
| AquaLpToken | unknown | base | n/a | 3 deployments: base [`0x498087...9bc289`](./contracts/base-8453/0x4980871713f17eec1537645e9466bc27819bc289/); base `0x58f3d3...74b9e0`; base `0x812c4e...c87df0` | ⚠️ Unaudited |
| AquaLpToken | unknown | base | n/a | 3 deployments: base [`0x5d5543...efffe3`](./contracts/base-8453/0x5d55432c6aaedb4d34523b2744e959f03aefffe3/); base `0x8d3197...464b08`; base `0x971ef3...a9351d` | ⚠️ Unaudited |
| AquaLpToken | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x0954ee...316ba1`](./contracts/arbitrum-42161/0x0954ee3e83749283b6709e99a25b44c231316ba1/); arbitrum `0x131f17...eff4d4`; arbitrum `0x497243...c09dd6`; arbitrum `0x6d6cea...60892f`; arbitrum `0x7d1921...6e1990`; arbitrum `0xa54bf3...094b30`; arbitrum `0xec4470...bb2041` | ⚠️ Unaudited |
| AquaLpToken | unknown | arbitrum | n/a | 12 deployments: arbitrum [`0x4588fa...baffc2`](./contracts/arbitrum-42161/0x4588fae785828ac36d897f23e8adf5fac7baffc2/); arbitrum `0x58cfd8...f4e758`; arbitrum `0x654f2e...6aaf8f`; arbitrum `0x71c592...1ac3d3`; arbitrum `0x76bc52...971ff1`; arbitrum `0x90e3e4...64f209`; arbitrum `0x94febd...190810`; arbitrum `0xbea22a...d08c9d`; arbitrum `0xc29680...40a730`; arbitrum `0xc7f34f...42a258`; arbitrum `0xca459f...b6c9d3`; arbitrum `0xd03c04...64d972` | ⚠️ Unaudited |
| AquaVault | core_logic | base | n/a | 3 deployments: base [`0x074f6c...fd3110`](./contracts/base-8453/0x074f6c79165580726093024fd3cdcfba15fd3110/); base `0xb0f9c8...1ef3ba`; base `0xf3c7ce...19cfdf` | ⚠️ Unaudited |
| AquaVault | unknown | base | n/a | 2 deployments: base [`0x54673a...1d411b`](./contracts/base-8453/0x54673a0bbf1e429222a78b5a1652d4ee441d411b/); base `0x6b2a6c...83496d` | ⚠️ Unaudited |
| AquaVault | unknown | base | n/a | 2 deployments: base [`0x62d45d...510297`](./contracts/base-8453/0x62d45d7ed3e314469d4ba609a99560fb64510297/); base `0xa6d87c...b63ee6` | ⚠️ Unaudited |
| AquaVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3ba16a...fd95d9`](./contracts/arbitrum-42161/0x3ba16ac2a67d126bf1dba0a81e6c75073efd95d9/); arbitrum `0x795e5c...de2d2b` | ⚠️ Unaudited |
| AquaVaultLogic | core_logic | base | n/a | 5 deployments: base [`0x55d0ce...9a9328`](./contracts/base-8453/0x55d0ce6928598c6bfdf23fa72698ce68809a9328/); base `0x5bea1e...cf81b8`; base `0x6857c0...2c3b6b`; base `0xba76af...0e6eee`; arbitrum `0xd3fbcf...0ac4c1` | ⚠️ Unaudited |
| AquaVaultSignatureCheck | core_logic | base | n/a | 4 deployments: base [`0x34fc2d...1540e2`](./contracts/base-8453/0x34fc2d4eccf7d745ad98b99f56ee33a73e1540e2/); base `0xbbf24e...23582f`; base `0xe37469...16b8c9`; arbitrum `0x4a6afe...4200f9` | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x5b9338...e465c1`](./contracts/ethereum-1/0x5b933868f5e710070b146213ed2cd71628e465c1/); ethereum `0xd24ffc...c2235c` | ⚠️ Unaudited |
| ConstantSumPricer | operational_periphery | polygon | n/a | 6 deployments: polygon [`0x163785...79ba51`](./contracts/polygon-137/0x163785236514f476a7a45e354c24bff5a879ba51/); polygon `0x40173f...eb9c06`; polygon `0x60332d...0c38f3`; manta `0xd65406...40c4b2`; base `0xd65406...40c4b2`; arbitrum `0xc5d4c5...abec4f` | ⚠️ Unaudited |
| CreditVault | core_logic | base | n/a | 11 deployments: ethereum `0xe3d41d...f5f2ef`; ethereum `0xf6f8de...7bb3c5`; bsc `0xba8db0...4cc05d`; base [`0x097534...7fe1b1`](./contracts/base-8453/0x097534f09eb81cc5b69adf36df3d3fa11b7fe1b1/); base `0x124ed3...3fd785`; base `0x2dad22...205e5d`; base `0x74a4cd...4a1367`; arbitrum `0x0aadf2...764885`; arbitrum `0x273ecf...8f03bd`; arbitrum `0x319fc7...aadfea`; arbitrum `0xba1cf8...5eff09` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | 3 deployments: polygon [`0x3cc7ed...2eb04c`](./contracts/polygon-137/0x3cc7ed6b90f727d68d76f2318437a8dcd32eb04c/); polygon `0x497de8...236d8d`; polygon `0x9a5b94...4839ee` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | manta | n/a | 4 deployments: manta [`0x3ba16a...fd95d9`](./contracts/manta-169/0x3ba16ac2a67d126bf1dba0a81e6c75073efd95d9/); manta `0x4c34ba...d207f9`; manta `0xc6f7a7...fd9ef1`; manta `0xd3fbcf...0ac4c1` | ⚠️ Unaudited |
| FixedTermYield | unknown | ethereum | n/a | 11 deployments: ethereum [`0x0035ce...a8c55d`](./contracts/ethereum-1/0x0035ce4f140a1358798d1b360795524222a8c55d/); bsc `0x164a63...332018`; bsc `0x4d333a...ac2925`; bsc `0x5d4766...3b716a`; bsc `0x7d93d5...0a26c7`; bsc `0x856de4...7c9b22`; bsc `0x98a83e...f61fbe`; bsc `0xa86613...b65265`; bsc `0xaf6383...cd063a`; bsc `0xfcee38...50f013`; bsc `0xff3c15...f919b9` | ⚠️ Unaudited |
| JumpRateModelV2 | operational_periphery | base | n/a | 2 deployments: base [`0x035e49...bc0b52`](./contracts/base-8453/0x035e49133ce424a6f34cf56df249040bf0bc0b52/); arbitrum `0x31ea0c...4ae73d` | ⚠️ Unaudited |
| LiquidatorHelper | operational_periphery | arbitrum | n/a | [`0x22a27a...009e75`](./contracts/arbitrum-42161/0x22a27a710ec32229a279343ae95dbcce62009e75/) | ⚠️ Unaudited |
| LiquidityPairing | unknown | ethereum | n/a | 12 deployments: ethereum [`0x1bb447...a383ce`](./contracts/ethereum-1/0x1bb447ee7fcd573a60377446b26a3487d2a383ce/); ethereum `0x3cde92...5729fb`; ethereum `0x571af1...35ce5b`; ethereum `0xaec634...a5f576`; bsc `0x314c74...cfeb43`; bsc `0x479291...1626fe`; bsc `0x8e593c...e624c2`; bsc `0x9121c6...bcaaff`; bsc `0x9db777...debe46`; bsc `0xb87336...7a07ad`; bsc `0xd06e78...5349c0`; bsc `0xd3d139...04eb56` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | bsc | n/a | 3 deployments: ethereum `0x5e65ce...9181ca`; bsc [`0x1bb447...a383ce`](./contracts/bsc-56/0x1bb447ee7fcd573a60377446b26a3487d2a383ce/); bsc `0x27f428...f0c8c3` | ⚠️ Unaudited |
| Metadata | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x2271e4...6e9c13`](./contracts/arbitrum-42161/0x2271e448674c7f7ef2a3e8e3d9a49af3a46e9c13/); arbitrum `0x27f428...f0c8c3`; arbitrum `0x828ea3...7ade33` | ⚠️ Unaudited |
| MockToken | token | bsc | n/a | [`0x650d80...7f6943`](./contracts/bsc-56/0x650d804e35f6b0001f620dd57499c4a6147f6943/) | ⚠️ Unaudited |
| NativeBridge | operational_periphery | arbitrum | n/a | 22 deployments: ethereum `0x2dc033...309f02`; ethereum `0x5d4766...3b716a`; ethereum `0xa1cc67...961934`; ethereum `0xcd016c...3b60f3`; ethereum `0xcebfc5...8831d2`; ethereum `0xe67291...07fc74`; bsc `0x5b9338...e465c1`; bsc `0x928501...9c803d`; bsc `0xb4e72a...2f13d0`; bsc `0xef5551...a9b470`; base `0x36e208...f16501`; base `0x667e81...2bb9cb`; base `0xa11f7c...0c96a8`; base `0xa6f3e1...3abd09`; arbitrum [`0x01d201...bfae16`](./contracts/arbitrum-42161/0x01d20118e797e4f894c5d33537622be146bfae16/); arbitrum `0x23cf40...2fe7fe`; arbitrum `0x249110...0af1da`; arbitrum `0x5e65ce...9181ca`; arbitrum `0x6b19f6...214caa`; arbitrum `0x8e65c0...b0e8f3`; arbitrum `0xaec634...a5f576`; arbitrum `0xfd8141...9e2f2d` | ⚠️ Unaudited |
| NativeBridge | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2c9ebb...be3643`](./contracts/arbitrum-42161/0x2c9ebb806f47ecb6559e48f51e1a1913dabe3643/); arbitrum `0x508db9...e5738c` | ⚠️ Unaudited |
| NativeBridge | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3317a2...4e2bb0`](./contracts/arbitrum-42161/0x3317a2a25eaab17e9d22f8487e41a391b84e2bb0/); arbitrum `0x582a50...1c3a39` | ⚠️ Unaudited |
| NativeDistributor | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x177f87...e7d8fa`](./contracts/arbitrum-42161/0x177f8791120a6dd64e405584158aec194ae7d8fa/); arbitrum `0xa8cdf0...f90cff`; arbitrum `0xe7b39e...c07833` | ⚠️ Unaudited |
| NativeFixedPriceLiquidityPoolFactory | operational_periphery | polygon | n/a | [`0x1936b3...19c656`](./contracts/polygon-137/0x1936b310d4ac6d0fcc46a1ff15df0c6f2819c656/) | ⚠️ Unaudited |
| NativeLPToken | token | ethereum | n/a | 101 deployments: ethereum [`0x014b16...6362aa`](./contracts/ethereum-1/0x014b16e50eab39657e18c66c1dd744ad2b6362aa/); ethereum `0x0d5c25...c676bd`; ethereum `0x1ba406...005134`; ethereum `0x24b6b8...cc8527`; ethereum `0x2aeae5...def2b0`; ethereum `0x2dad22...205e5d`; ethereum `0x319fc7...aadfea`; ethereum `0x3cf346...bba441`; ethereum `0x4e041b...c1243d`; ethereum `0x5810aa...de8b97`; ethereum `0x599425...89b24b`; ethereum `0x59bf9b...8bed94`; ethereum `0x626684...9f9250`; ethereum `0x66550d...4fffeb`; ethereum `0x6ea0da...9fc4f7`; ethereum `0x716338...d025a9`; ethereum `0x91f70f...cc6c28`; ethereum `0xa28b75...84d7ef`; ethereum `0xa2efe8...ccb630`; ethereum `0xa6f3e1...3abd09`; ethereum `0xb158e0...da080d`; ethereum `0xb2655c...de7655`; ethereum `0xb3c455...27d2a8`; ethereum `0xb4e72a...2f13d0`; ethereum `0xdd3dc6...4b7958`; ethereum `0xe0ded2...d2c129`; ethereum `0xef312b...8f3e85`; ethereum `0xf2ab57...ad049c`; bsc [`0x014b16...6362aa`](./contracts/bsc-56/0x014b16e50eab39657e18c66c1dd744ad2b6362aa/); bsc `0x01fbf0...09e8bf`; bsc `0x035ed8...908a51`; bsc `0x03d1e2...50fb81`; bsc `0x07bbc8...9af6e6`; bsc `0x0fc85a...ae3eab`; bsc `0x20f184...66cfd1`; bsc `0x298d0b...1266da`; bsc `0x2c173d...6c16b8`; bsc `0x31d29a...3e49c1`; bsc `0x337ec5...c935b1`; bsc `0x366d82...fdb2d8`; bsc `0x3cf346...bba441`; bsc `0x3e53b5...807edb`; bsc `0x467fe7...524324`; bsc `0x4e041b...c1243d`; bsc `0x4fda5d...53404f`; bsc `0x5593dd...aa9f0b`; bsc `0x599425...89b24b`; bsc `0x6a2a79...7079f9`; bsc `0x7fb8c2...3bec6f`; bsc `0x826f48...2b76e9`; bsc `0x834b78...29cf98`; bsc `0x891017...3a4d24`; bsc `0x9c9fb6...93d2cf`; bsc `0xa11f7c...0c96a8`; bsc `0xa2efe8...ccb630`; bsc `0xa92107...a48a4a`; bsc `0xb043e0...af1058`; bsc `0xc8b542...60e080`; bsc `0xc9452f...aa10b5`; bsc `0xca4f50...cd689e`; bsc `0xcdb60a...aedb1a`; bsc `0xd54772...78dcb8`; bsc `0xd83e91...027605`; bsc `0xdcf362...12a75b`; bsc `0xe2d490...c57821`; bsc `0xe54c4e...b9e98c`; bsc `0xe9b4b7...a118de`; bsc `0xea9113...226644`; bsc `0xf2ab57...ad049c`; bsc `0xf5bbb1...7ae4b6`; bsc `0xf6f8de...7bb3c5`; bsc `0xf87927...a888cd`; bsc `0xfdba3e...80ca11`; base `0x03c6b5...d56348`; base `0x2271e4...6e9c13`; base `0x2beb9e...59abc9`; base `0x3972b8...abe730`; base `0x5593dd...aa9f0b`; base `0x5ef0b9...e720df`; base `0x6833e3...2224e6`; base `0x7f1bcc...42430a`; base `0x96a068...049080`; base `0x9db777...debe46`; base `0xab5e9d...f62560`; base `0xca135c...ad86de`; base `0xf72369...389ce4`; base `0xfb64fa...d1a6d4`; arbitrum `0x21d5d0...24010d`; arbitrum `0x4e041b...c1243d`; arbitrum `0x82e441...2fb855`; arbitrum `0x8a5fca...528ce2`; arbitrum `0x8e0092...df1bd9`; arbitrum `0x91f70f...cc6c28`; arbitrum `0xb49236...7fc218`; arbitrum `0xbe131f...875751`; arbitrum `0xc6ab8b...bbcf97`; arbitrum `0xc9452f...aa10b5`; arbitrum `0xce55b8...96535e`; arbitrum `0xe18e79...c1de85`; arbitrum `0xe50ac1...5d385e`; arbitrum `0xf2ab57...ad049c` | ⚠️ Unaudited |
| NativePool | core_logic | polygon | n/a | 12 deployments: polygon [`0x06ba69...9b86d9`](./contracts/polygon-137/0x06ba69aa7b591adb63367edc63aed3cd119b86d9/); polygon `0x483772...4f5219`; polygon `0x504902...b2e369`; polygon `0x587f4d...796edc`; polygon `0x786b9a...47a8d4`; polygon `0x92e5fa...59af9f`; polygon `0xa1b972...fd05c4`; manta `0x3960f0...937a77`; base `0xaaf908...f8684a`; base `0xda9e5f...37ea34`; base `0xdff290...6f785f`; arbitrum `0x0cfc71...b80c12` | ⚠️ Unaudited |
| NativePoolFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x01dd13...6c6a8a`](./contracts/polygon-137/0x01dd1399fbdf65195a4b8cabc17868ee3b6c6a8a/); polygon `0x4be6a8...6b6d9a` | ⚠️ Unaudited |
| NativePoolFactory | registry | polygon | n/a | [`0x6d2d10...afde77`](./contracts/polygon-137/0x6d2d10dc033751ca0485d1c2bd463d5b87afde77/) | ⚠️ Unaudited |
| NativePoolFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x83b9fc...4c3de8`](./contracts/polygon-137/0x83b9fcea670d66626d9db79af00fc718014c3de8/); polygon `0xd8a5c1...2d6c22` | ⚠️ Unaudited |
| NativePoolFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x8737d3...7d9fee`](./contracts/polygon-137/0x8737d37813ed35b07f16fc78317681b7277d9fee/); polygon `0xbc0e7f...d9b1ba` | ⚠️ Unaudited |
| NativePoolFactory | unknown | base | n/a | 2 deployments: base [`0x30b11d...5ed5c5`](./contracts/base-8453/0x30b11deeeafab5a9ce71d2c604d8a1a5ee5ed5c5/); base `0x4c34ba...d207f9` | ⚠️ Unaudited |
| NativePoolFactory | unknown | base | n/a | 2 deployments: base [`0x9c9c3c...715fb3`](./contracts/base-8453/0x9c9c3c4aa821d5ab6849db65275053f126715fb3/); base `0xeb3acc...d87d1f` | ⚠️ Unaudited |
| NativePoolFactory | registry | arbitrum | n/a | 6 deployments: polygon `0xc5d4c5...abec4f`; polygon `0xf241a6...fb4f38`; manta `0x71b5b9...457b28`; manta `0xf9c95f...7a27aa`; base `0x71b5b9...457b28`; arbitrum [`0x436bf2...ab77b8`](./contracts/arbitrum-42161/0x436bf25ee0801d55a106072f0142300366ab77b8/) | ⚠️ Unaudited |
| NativePoolFactory | registry | arbitrum | n/a | [`0x85b0f6...278ef9`](./contracts/arbitrum-42161/0x85b0f66e83515ff4e825dfcaa58e040e08278ef9/) | ⚠️ Unaudited |
| NativeResolver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2cdae1...440b95`](./contracts/ethereum-1/0x2cdae177c3eab6a09cc0180b9e1d36b239440b95/); ethereum `0xe8e50f...f48ebd` | ⚠️ Unaudited |
| NativeRFQPool | core_logic | ethereum | n/a | 34 deployments: ethereum [`0x0d7ffb...a7c2d9`](./contracts/ethereum-1/0x0d7ffb31714e5a70bad0ed21376120f22ea7c2d9/); ethereum `0x0fc85a...ae3eab`; ethereum `0x5d1a34...a9ee7c`; ethereum `0x6833e3...2224e6`; ethereum `0x9af2f3...57a44c`; ethereum `0xa92107...a48a4a`; ethereum `0xc419e6...234c17`; ethereum `0xe9b4b7...a118de`; bsc `0x122ef4...fc4e23`; bsc `0x5984c2...fe3d02`; bsc `0x828ea3...7ade33`; bsc `0x9197a8...a6b980`; bsc `0x9af2f3...57a44c`; bsc `0xdb725b...7773dc`; bsc `0xe1c026...732ba3`; base `0x1c4692...3fb114`; base `0x24102e...8fe89c`; base `0x343df3...090868`; base `0x571af1...35ce5b`; base `0x5874e0...b7c21f`; base `0x910367...d9c5e8`; base `0xb71490...99b06f`; base `0xb90971...27cec6`; base `0xbf4093...930053`; base `0xce55b8...96535e`; arbitrum `0x249516...8f5b91`; arbitrum `0x30db7b...df41e8`; arbitrum `0x3972b8...abe730`; arbitrum `0x599425...89b24b`; arbitrum `0x989560...6daf7b`; arbitrum `0x9ef4a8...769a65`; arbitrum `0xa3f730...1091b9`; arbitrum `0xd3eab3...134329`; arbitrum `0xf860c3...090de6` | ⚠️ Unaudited |
| NativeRouter | unknown | polygon | n/a | 2 deployments: polygon [`0x0cfc71...b80c12`](./contracts/polygon-137/0x0cfc718330823abf8339f4649beb1c9c82b80c12/); polygon `0xb467fc...743141` | ⚠️ Unaudited |
| NativeRouter | unknown | polygon | n/a | 2 deployments: polygon [`0x101e69...92805b`](./contracts/polygon-137/0x101e6924b24dd9a71c20c8abf5573d44e192805b/); polygon `0x181c0c...0e656d` | ⚠️ Unaudited |
| NativeRouter | unknown | polygon | n/a | 2 deployments: polygon [`0x382ebc...0b0960`](./contracts/polygon-137/0x382ebc9e5c490dbfbc0f6ab7c59f3096f40b0960/); polygon `0x83820a...8d37e2` | ⚠️ Unaudited |
| NativeRouter | adapter | polygon | n/a | [`0x8c42cf...5d7d7d`](./contracts/polygon-137/0x8c42cf13fbea2ac15b0fe5a5f3cf35eec65d7d7d/) | ⚠️ Unaudited |
| NativeRouter | adapter | polygon | n/a | [`0xb02966...f9dd3c`](./contracts/polygon-137/0xb02966c419d28051ed4bca9bafd21b1c39f9dd3c/) | ⚠️ Unaudited |
| NativeRouter | adapter | base | n/a | [`0x41d7b3...b6cc5a`](./contracts/base-8453/0x41d7b3abcfecf1f1b4b1b962da8f086114b6cc5a/) | ⚠️ Unaudited |
| NativeRouter | unknown | base | n/a | 2 deployments: base [`0xa95fc4...d04aee`](./contracts/base-8453/0xa95fc4e1b5ad1414014a8e323aee0f7ec4d04aee/); base `0xc6f7a7...fd9ef1` | ⚠️ Unaudited |
| NativeRouter | adapter | arbitrum | n/a | 53 deployments: ethereum `0x0f9f23...52d2cf`; ethereum `0x36e208...f16501`; ethereum `0x52ce35...83bbab`; ethereum `0x6e6283...175443`; ethereum `0x8a2ddc...eb2a00`; ethereum `0xa2a260...252c2b`; ethereum `0xa42c9f...1950aa`; ethereum `0xa540ec...854f22`; ethereum `0xde5ba5...b9dd81`; bsc `0x0f9f23...52d2cf`; bsc `0x12bd22...1c6ae8`; bsc `0x3c6154...42d395`; bsc `0xb2d1f3...598333`; bsc `0xbe131f...875751`; bsc `0xee82bd...b2ed0a`; bsc `0xf064b0...28a968`; polygon `0x04a336...3d4f74`; polygon `0x11186e...f3552b`; polygon `0x31320f...46ecd5`; polygon `0x33ae5b...2e8c35`; polygon `0x47dfca...abc588`; polygon `0x559447...a3bd09`; polygon `0x6d852f...d3302c`; polygon `0x86e7a7...d35bf5`; polygon `0x8cedd7...dc337c`; polygon `0xe4dacc...a51193`; manta `0x4a6afe...4200f9`; manta `0x803526...be5202`; manta `0xc29680...40a730`; manta `0xc7f34f...42a258`; base `0x02ff73...7f1be0`; base `0x0a5d88...84d0c9`; base `0x12bc04...0b0ba0`; base `0x2e791f...f8c367`; base `0x49bbe8...c79b73`; base `0x664514...367cfb`; base `0x6894a7...4ca91b`; base `0x768d46...291c35`; base `0x803526...be5202`; base `0x976708...18e486`; base `0xaec634...a5f576`; base `0xcba65c...8de457`; base `0xd54772...78dcb8`; arbitrum [`0x01dd13...6c6a8a`](./contracts/arbitrum-42161/0x01dd1399fbdf65195a4b8cabc17868ee3b6c6a8a/); arbitrum `0x0fc85a...ae3eab`; arbitrum `0x1d92e4...8536ee`; arbitrum `0x24400d...f7304a`; arbitrum `0x7a27bb...be2a9d`; arbitrum `0x7d1c48...c3341b`; arbitrum `0x9ee907...3ce8e0`; arbitrum `0x9f98d5...b40376`; arbitrum `0xa9bad9...7d9ba3`; arbitrum `0xd7983a...c7185f` | ⚠️ Unaudited |
| NativeRouter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4d0100...98f2fe`](./contracts/arbitrum-42161/0x4d0100c13d5814b9d3d8712b16c973851f98f2fe/); arbitrum `0xead050...508a76` | ⚠️ Unaudited |
| NativeV3Factory | registry | base | n/a | 3 deployments: base [`0x3c6154...42d395`](./contracts/base-8453/0x3c6154b5a9bf28807520999f40d8647d4942d395/); base `0xc70008...2c8d2e`; arbitrum [`0x3c6154...42d395`](./contracts/arbitrum-42161/0x3c6154b5a9bf28807520999f40d8647d4942d395/) | ⚠️ Unaudited |
| NativeV3PoolDeployer | core_logic | base | n/a | 3 deployments: base [`0xa7b0d4...10995e`](./contracts/base-8453/0xa7b0d47004c4db88827b5263df8253aac810995e/); base `0xba8db0...4cc05d`; arbitrum `0xba8db0...4cc05d` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | 4 deployments: base [`0x24400d...f7304a`](./contracts/base-8453/0x24400d2ec38db5881d03e16aed463b1b48f7304a/); base `0x5b916f...82d30b`; base `0xe3d41d...f5f2ef`; arbitrum `0xe3d41d...f5f2ef` | ⚠️ Unaudited |
| PermissionedMulticall3 | periphery | arbitrum | n/a | [`0x63bc33...307639`](./contracts/arbitrum-42161/0x63bc33a6e6adfdf1a94613bded1ad13fb7307639/) | ⚠️ Unaudited |
| QuoterV2 | periphery | base | n/a | 4 deployments: base [`0xd3eab3...134329`](./contracts/base-8453/0xd3eab36d3d16b4afd66d7cb231712e758d134329/); base `0xd9a9d4...e894cf`; base `0xde5ba5...b9dd81`; arbitrum `0xde5ba5...b9dd81` | ⚠️ Unaudited |
| RDOReward | unknown | bsc | n/a | 3 deployments: ethereum `0xca135c...ad86de`; bsc [`0x06b795...491530`](./contracts/bsc-56/0x06b7953c06c43bba4f1ac82f3ddaead647491530/); bsc `0xa21696...1bb18b` | ⚠️ Unaudited |
| Registry | registry | polygon | n/a | 6 deployments: polygon [`0x0e2fe0...f27d89`](./contracts/polygon-137/0x0e2fe00c6ab903e0f492cb641705cd47f0f27d89/); polygon `0x69c166...502741`; polygon `0x7a27bb...be2a9d`; polygon `0x898269...c0ffa4`; manta `0x70b622...b60cd1`; base `0x70b622...b60cd1` | ⚠️ Unaudited |
| SwapRouter | adapter | base | n/a | 4 deployments: base [`0x2e55b6...30ff13`](./contracts/base-8453/0x2e55b67ae4c2952e86c4d2b52b7cdc76df30ff13/); base `0x548857...1c1eb0`; base `0xa92107...a48a4a`; arbitrum `0xa92107...a48a4a` | ⚠️ Unaudited |
| SwapRouter02ExecutorUpgradable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1688a2...1b1501`](./contracts/arbitrum-42161/0x1688a23f62aaec03dba971171964fcda121b1501/); arbitrum `0x4c8eb1...c5e292` | ⚠️ Unaudited |
| SwapRouter02ExecutorUpgradable | adapter | arbitrum | n/a | 4 deployments: arbitrum [`0x2d715d...b1edc6`](./contracts/arbitrum-42161/0x2d715df935fd800c951ae7263eb0ee8641b1edc6/); arbitrum `0x3c2a60...f5fe2f`; arbitrum `0xc13f5c...08e0f9`; arbitrum `0xedb6ae...57993a` | ⚠️ Unaudited |
| SwapRouter02ExecutorUpgradable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3edd06...95dd7a`](./contracts/arbitrum-42161/0x3edd06770d805096ee02edce533b6565ae95dd7a/); arbitrum `0xf4f148...8dcb30` | ⚠️ Unaudited |
| SwapRouter02ExecutorUpgradable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x68b346...20c138`](./contracts/arbitrum-42161/0x68b34608fac830ebf58beb312f39ee421e20c138/); arbitrum `0x8b9a32...2dedfa` | ⚠️ Unaudited |
| TickLens | periphery | base | n/a | 3 deployments: base [`0x531037...a5281b`](./contracts/base-8453/0x53103770501f011de9f7056c3149ffee9ea5281b/); base `0xea9113...226644`; arbitrum `0xea9113...226644` | ⚠️ Unaudited |
| Weth9Unwrapper | token | polygon | n/a | 9 deployments: polygon [`0x022a0e...73aa71`](./contracts/polygon-137/0x022a0e2e9d6a212ba881c426e038e46b1573aa71/); polygon `0x616c66...49190d`; polygon `0xd01971...07b0c9`; polygon `0xfc35f8...295d99`; manta `0xca459f...b6c9d3`; manta `0xdff290...6f785f`; base `0x0a5094...60b83a`; base `0x2cfa70...b189ff`; arbitrum `0xea472f...1e03d5` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | ethereum | n/a | 32 deployments: ethereum [`0x0016d9...aed2bb`](./contracts/ethereum-1/0x0016d9be93bb9d5d511e2e94eaf8249179aed2bb/); ethereum `0x0a1a4d...ad228a`; ethereum `0x225ac4...130525`; ethereum `0x231c39...8e18a1`; ethereum `0x480ec2...3e883c`; ethereum `0x64e6fa...785481`; ethereum `0x65dd59...e5b734`; ethereum `0x79dcfe...d08b66`; ethereum `0xd1f2d9...64791c`; ethereum `0xf40338...139b16`; ethereum `0xfafae0...bd0721`; bsc `0x38eda6...5bc3f1`; bsc `0x3906f7...e481a8`; bsc `0x3c47f2...2bde0d`; bsc `0x5b8382...a5e798`; bsc `0x863450...ff15d7`; bsc `0x929032...7ef24b`; bsc `0x9441f3...600f5a`; bsc `0x9e0de0...3cb956`; bsc `0xa038e0...77ae29`; bsc `0xb88791...162bfa`; bsc `0xe93053...e14701`; bsc `0xf1a967...0297a5`; bsc `0xf76c61...d872b5`; base `0x288b1b...1f0c0a`; base `0x337ec5...c935b1`; base `0x9af2f3...57a44c`; base `0xa2efe8...ccb630`; base `0xcb0fec...3c082c`; base `0xdb725b...7773dc`; base `0xe3941f...2314a5`; base `0xe7d6b7...acb53e` | ⚠️ Unaudited |
| WNLP | unknown | ethereum | n/a | 8 deployments: ethereum [`0x03d1e2...50fb81`](./contracts/ethereum-1/0x03d1e2527ece8997befac28888c691270b50fb81/); ethereum `0x5593dd...aa9f0b`; ethereum `0xa32b45...790d5c`; ethereum `0xcdb60a...aedb1a`; ethereum `0xfa1412...47cb0f`; bsc `0x59bf9b...8bed94`; bsc `0xe745b0...063e6f`; bsc `0xfd8141...9e2f2d` | ⚠️ Unaudited |
| WrappedNLP | unknown | base | n/a | 23 deployments: ethereum `0x3c3392...dbea1a`; ethereum `0x50ecab...d29853`; ethereum `0x834b78...29cf98`; ethereum `0x9441f3...600f5a`; ethereum `0xb88791...162bfa`; ethereum `0xc31dae...ffc959`; ethereum `0xe14f77...e6b225`; bsc `0x2f6f30...611bd8`; bsc `0x7a04d9...fb2d61`; bsc `0x8592ff...bf6f0d`; bsc `0x85f08a...392afa`; bsc `0xa1cc67...961934`; bsc `0xb2655c...de7655`; bsc `0xea5ff2...5d8ee7`; bsc `0xfafae0...bd0721`; base [`0x0872c6...b59e9e`](./contracts/base-8453/0x0872c63c9b1f55ea4166752ba3b890a444b59e9e/); base `0x90256c...fd59b6`; base `0xc750fe...fc03bf`; base `0xe745b0...063e6f`; arbitrum `0x9db777...debe46`; arbitrum `0xb87336...7a07ad`; arbitrum `0xd88659...06adfa`; arbitrum `0xe83ce0...d9e27f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x19dfe9...5802dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x400c12...1e967c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81245b...688b7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85f08a...392afa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbddc28...bd7b18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3a626...53cb80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5810aa...de8b97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2c0ef...6f017b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea472f...1e03d5` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x335c04...1ed924` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52ce35...83bbab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62f6e7...79ad11` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9cfd53...eaf4e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5f700...b58865` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf50c1a...d743d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x163785...79ba51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x288b1b...1f0c0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x314c74...cfeb43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x343df3...090868` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x73a8df...457bf8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x768d46...291c35` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f1bcc...42430a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9121c6...bcaaff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6734c...3fb9a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac6392...c0db8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb043e0...af1058` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd08519...2967cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9c95f...7a27aa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/LeVxGNxqMaI9b0Jtikux/Native_PendleNativeLPSY_Audit_Report_by_WatchPug.pdf (also discovered via alternate URL)](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2FLeVxGNxqMaI9b0Jtikux%2FNative_PendleNativeLPSY_Audit_Report_by_WatchPug.pdf?alt=media) | WatchPug | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2F4AzmcJJ2mjjuznQA30nS%2F2025.06.18%20-%20Final%20-%20native%20Private%20Bug%20Bounty%20Audit%20Report.pdf?alt=media) | yAudit | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf (also discovered via alternate URL)](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2FBIa5rllzsBWJ3y7fGicH%2FQuantstamp-Audit-Report-Native-V2.pdf?alt=media) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2Fy74TpGvBHzpRiakXs7wy%2FNative%20Audit%20-%20Halborn.pdf?alt=media) | Halborn | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf](https://2554447728-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F1KSTkRlEw1XexgySFans%2Fuploads%2FWCaQWlFu2OvUPPhd1ayY%2FVeridise.pdf) | Veridise | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf](https://2554447728-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F1KSTkRlEw1XexgySFans%2Fuploads%2Fxduwjo5uN8PMjy7lz3UL%2FSalus.pdf) | Salus | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [nat-001.pdf](https://symbolic.software/pdf/nat-001.pdf) | Symbolic Software | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b](https://omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b) | Omniscia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf](https://2236132028-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2FpSkHM5aAd9BYFQOyJU1B%2F2025.06.18%20-%20Final%20-%20native%20Private%20Bug%20Bounty%20Audit%20Report.pdf) | yAudit | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 94 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20856] spaces/ta4g2TwHaleDMaDKVgwR/uploads/LeVxGNxqMaI9b0Jtikux/Native_PendleNativeLPSY_Audit_Report_by_WatchPug.pdf
- [20857] spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf
- [20858] spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf
- [20859] spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf
- [20860] spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf
- [20861] spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf
- [20862] nat-001.pdf
- [20863] omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b
- [20865] spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
