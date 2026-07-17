# Agentic Audit Brief: Buffer Finance

## Project Overview

- Project: Buffer Finance (`buffer-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:09.947Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum
- Contract surface: 14 unique implementations (115 raw deployments)
- DeFi Llama TVL: $178.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 25 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (governable, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 178; live-surface contracts included: 115 (110 live, 5 unknown).
- Excluded by liveness: 63 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/9 (22.2%)
- Deployed-live implementations: 9 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/9
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 14
- Raw deployments: 115
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 22.2% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 2 | 22.2% | 2022-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BufferBinaryPool | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0x6ec7b10bf7331794adaaf235cb47a2a292cd9c7e`](./contracts/arbitrum-42161/0x6ec7b10bf7331794adaaf235cb47a2a292cd9c7e/); arbitrum `0xae0628c88ec6c418b3f5c005f804e905f8123833`; arbitrum `0xfd9f8841c471fcc55f5c09b8ad868bdc9edebde1` | ✅ Audited |
| ReferralStorage | token | arbitrum | n/a | [`0xfea57b9548cd72d8705e4bb0fa83aa35966d9c29`](./contracts/arbitrum-42161/0xfea57b9548cd72d8705e4bb0fa83aa35966d9c29/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BFR | unknown | arbitrum | n/a | [`0x1a5b0aaf478bf1fda7b934c76e7692d722982a6d`](./contracts/arbitrum-42161/0x1a5b0aaf478bf1fda7b934c76e7692d722982a6d/) | ⚠️ Unaudited |
| BufferBinaryOptions | unknown | arbitrum | n/a | 50 deployments: arbitrum [`0x034ee84703f165e3799377029f86f30925ce371c`](./contracts/arbitrum-42161/0x034ee84703f165e3799377029f86f30925ce371c/); arbitrum `0x109b92a6a485ef92616fb1aaf2cb0bca90310d3d`; arbitrum `0x12d974e8f0030f002552e0451d750de0c0ed6bc3`; arbitrum `0x13779aeb682f922770f1971313f2543e5d5f44e8`; arbitrum `0x175e5ce07ad6a15e9cbb49e27ff94ec8e2fc0562`; arbitrum `0x254f94ee41a3b6228f2a191f2c964789f0dcdc31`; arbitrum `0x2578a97ad34c837ea4296190a122bbcf868d9970`; arbitrum `0x2700ea9458a0e7a9ebd0936a0f9c20db3038ad55`; arbitrum `0x32f6ba7bb3f0436fcc080308d1398a3fc2fef3be`; arbitrum `0x37a42a8841fff3d47351e68a2c31add4a1080358`; arbitrum `0x532321e6a2d8a54cf87e34850a7d55466b1ec197`; arbitrum `0x54f0cc19f6b71fa70f028230f97bf9cbdd954098`; arbitrum `0x5b58cc39360472c908a26b129cf19f533ff00ace`; arbitrum `0x5c61a87c2e3cf9e2bf996e0cf93a7b084557e468`; arbitrum `0x5d61fe708c9d41acf59009013f14496d559aad09`; arbitrum `0x5d6f1d376e5ea088532ae03dbe8f46177c42b814`; arbitrum `0x5ee2352d01f3c3e29f06ad0cc99692b43d2814fa`; arbitrum `0x5fc7b38f1bc237069145af7acfbb9eb0a8e1b4b5`; arbitrum `0x63e0af4ec5af8d103c1fb2ab606bd938d3dd27da`; arbitrum `0x65d01535f16b9d08513b2d11c8f6b93e7d58e946`; arbitrum `0x69359690ae2f6d8bfcab5f4fb30d3d2ecbfbb3ef`; arbitrum `0x6c42ce8098ef47a9e2171d931e89f0fb9ff0465d`; arbitrum `0x7b5e6b8ae5840f5e78f79689b29c441b90803cb0`; arbitrum `0x824f6209b6c022be9ac2c121604a509a3ed3960e`; arbitrum `0x89dd9ba4d290045211a6ce597a98181c7f9d899d`; arbitrum `0x8cf36930ee277f537c5e815b3893a1ea8c54a3b3`; arbitrum `0x8d7a09deb687d0f77f47c8b0b3a44015d8cd31fa`; arbitrum `0x9527defa21b8fa469b78f8e4eb1b904dc99fa918`; arbitrum `0x99ce137ac1378db2ab91e1132b084f100be9c2e9`; arbitrum `0xa1568547ca58ef4c5621e031173e003cabb9b438`; arbitrum `0xa51696a6b909314ce0fb66d180d3f05c21804234`; arbitrum `0xa5f3bd207eafab401571751ecfa83278edb1fd8c`; arbitrum `0xa7420114839f487a8dc2f0fc83cc76cc5166e734`; arbitrum `0xac5337d5a53ff32887bf7829a44ae1f5f3166c4b`; arbitrum `0xad6b3a99fe957a9e29d5aa6cf2b3ac1b8794efd9`; arbitrum `0xae10c1434fe50b9c6c65d25a752b43ff43d266ad`; arbitrum `0xb7d8f7efcc91b75237bee6a4083b7552179072cd`; arbitrum `0xbcd52d37f41da2277af92617d70931a787f66fd5`; arbitrum `0xbe4e89945db947abb4f931f9239bb9de8f662b27`; arbitrum `0xc17ba7e19c383e3710e27b7add64e62379eda0a3`; arbitrum `0xcba232eb6b0d3c81d209c921941ec35f15a9e612`; arbitrum `0xd384131b8697f28e8505cc24e1e405962b88b21f`; arbitrum `0xdbedc2a1aa21a87879f4cc062e18190d5525c084`; arbitrum `0xe155bd5ef44549f5b2b7b3bf384c56a3f94325ce`; arbitrum `0xeacaa1f47a90df6d284ddefe6d148c814de1a17c`; arbitrum `0xeec6d471ef314097c3366196c16b9286858c1a44`; arbitrum `0xef5d3501bbd570f62c9a950b1173565856736d0c`; arbitrum `0xf15055aab7c8291d0276a85d9cb34bd23d063600`; arbitrum `0xf2bef06229cd20fbad9c5a64bf04fccfc8f088a9`; arbitrum `0xfe9faeaa880a6109f2adf0e4257dc535c7a5ba20` | ⚠️ Unaudited |
| BufferRouter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0e0a1241c9ce6649d5d30134a194ba3e24130305`](./contracts/arbitrum-42161/0x0e0a1241c9ce6649d5d30134a194ba3e24130305/); arbitrum `0xb25fe2ede3145bd0140098c5923eb0fd377ecebb` | ⚠️ Unaudited |
| ConfigFactory | unknown | arbitrum | n/a | [`0xf7dccf9dc93ee2c40ea054f1f7f3a6503da7bdb9`](./contracts/arbitrum-42161/0xf7dccf9dc93ee2c40ea054f1f7f3a6503da7bdb9/) | ⚠️ Unaudited |
| Controller | unknown | arbitrum | n/a | [`0xeb26c551f606a9692c05fe06af885717db8cdd24`](./contracts/arbitrum-42161/0xeb26c551f606a9692c05fe06af885717db8cdd24/) | ⚠️ Unaudited |
| OptionsConfig | unknown | arbitrum | n/a | 50 deployments: arbitrum [`0x0341f977a2a60d2d88bf5cf13cbf5389814d3c97`](./contracts/arbitrum-42161/0x0341f977a2a60d2d88bf5cf13cbf5389814d3c97/); arbitrum `0x08d5e019fb16f92822befac9986e7b7402dae610`; arbitrum `0x09283f9d0eec02961e61b7b82cb094619f1bf2a0`; arbitrum `0x0c0f15a840f3020e8b5093f89244f775d2a1ceda`; arbitrum `0x102dad71c122822345a0e73f179e2bc58c5e5f82`; arbitrum `0x131ee30dfaba8d5622b4c9bda155284b8eb43b18`; arbitrum `0x13610aa5c469118878adb32ce548f2bbd9aa0180`; arbitrum `0x17cefd379a706db1bee1fb8b62a18b00abe339aa`; arbitrum `0x1b5dcdf5100a76effd86709c03ca94ffd3cefe64`; arbitrum `0x1c7ca44f7feaa8f6ece3833d90c096771ecb7e2c`; arbitrum `0x224d74d62f5760b4f22face7b9e03da8ac200e13`; arbitrum `0x243ff9e6a14b0491f196cc6b942c1a15ed7777f1`; arbitrum `0x264ffdf2437827be429bb25f71668cabd817ee67`; arbitrum `0x27535bde6cfa621d7dc1b0b0736d4809af3303ae`; arbitrum `0x2ce1e8b4c19e019c486093c338e3f5a76dc9d16f`; arbitrum `0x31be72cc1a56de96bf5e3992af70e4db762bfe2d`; arbitrum `0x363bccaf578bcd6f514ea60e96c24ccf3041e731`; arbitrum `0x440c3dfdd4a22634215f89900d42e8746b68685b`; arbitrum `0x475fa4e8f090b778aafa8158f79b35b182eda27a`; arbitrum `0x486bd19965067fe4a77d897b1b976941cf9ad803`; arbitrum `0x48d165ee66cf399f2708718eb53c4ae438aea24f`; arbitrum `0x5c95bda32cde3a8d73fb5237c973cce4f1d60bc8`; arbitrum `0x6d5857eb94f77bb382cf0106b1d0e2425cafb384`; arbitrum `0x86659a6823f443fbbafe0ab5f006290f71591add`; arbitrum `0x8991a7faac110e30e6e900888d01078a361a9af2`; arbitrum `0x8dac2eb302dd9ccb3a9a23263bc021f6f1e8cd9c`; arbitrum `0x92af4ebca254e3543d0603785bb1db9bf16a12e8`; arbitrum `0x9760d89ebea17f9ddef490c37f3fed6e61a06e0b`; arbitrum `0x98ff74b8a3804ceb7b1cfaeb67d7d2c50cf6bd10`; arbitrum `0xab4d8f4f4f39c4ee76f8d6493876995f5a6e9fe3`; arbitrum `0xb4d4a92e84a203bea742356e7f594c24e8902300`; arbitrum `0xb90c35f0f03f16996ce27e23a2ac51adf5ff2c2b`; arbitrum `0xb96cdf0276a36f9159ab04924f2337110f9288cb`; arbitrum `0xbc7dbeb9a7b158711b4b5fb0177f3e0be024125a`; arbitrum `0xbcbbf5630cfe5ffbf048ca56614ca04afa1437c7`; arbitrum `0xbe141b897aede046f9bf3536a3efcba2f21645eb`; arbitrum `0xc143db9b85f8d343742b2e68721603dee82c880f`; arbitrum `0xc1925460fe5669878d5963c29ac51677866de67f`; arbitrum `0xcdeb27302bfbdda79e3d63379d2786d9fb34be49`; arbitrum `0xd27100a2993a2d4f9d8016f6ec0375bd7899491f`; arbitrum `0xdce9f7383c36e3c7e71110a671fe3fde09ad094d`; arbitrum `0xe888ef6957ab087d295cb4b5d7e5fb7198376734`; arbitrum `0xe8a40bd544ecebdcffb6688442f0726c47c1bcc8`; arbitrum `0xeadec1d07f88773e370615fdb44a875871d1dfeb`; arbitrum `0xee78f7ad81cb79d7c6f1c3dfc27002882403da47`; arbitrum `0xef922235657b845a2632371032ecb25377ac3305`; arbitrum `0xf07475d3df900827a567c117acbf930e9904a4d4`; arbitrum `0xf09dad7e91aec1f81011819129bae96e0a12b0bc`; arbitrum `0xf2e6fd172f706ee12b3f9fb1750086b0a72e1230`; arbitrum `0xf9594d38b97eaca0c29a07301e0e395b113fec18` | ⚠️ Unaudited |
| OptionsFactory | unknown | arbitrum | n/a | [`0xcc5bc26441f097a640f7aa12a4e5725d590fbe80`](./contracts/arbitrum-42161/0xcc5bc26441f097a640f7aa12a4e5725d590fbe80/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x162c92fc0a358fde99afa4f1ff0b4ed65353dffc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x222da3977e4d876db75b0ef48b8148a2223c80ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ddd35368e9d0c55d8af6da976cb1a0a40cca45b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63138515fa5ff2e107876ef6cb2761309a9693c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb0fdc2da5c7b867f80663b8cd0b53967ed55018` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2022.12.08 - Final - Buffer Finance Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf) | Sherlock | Contest | 2022-12 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x1a5b0aaf478bf1fda7b934c76e7692d722982a6d`](./contracts/arbitrum-42161/0x1a5b0aaf478bf1fda7b934c76e7692d722982a6d/) | BFR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x034ee84703f165e3799377029f86f30925ce371c`](./contracts/arbitrum-42161/0x034ee84703f165e3799377029f86f30925ce371c/) | BufferBinaryOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e0a1241c9ce6649d5d30134a194ba3e24130305`](./contracts/arbitrum-42161/0x0e0a1241c9ce6649d5d30134a194ba3e24130305/) | BufferRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf7dccf9dc93ee2c40ea054f1f7f3a6503da7bdb9`](./contracts/arbitrum-42161/0xf7dccf9dc93ee2c40ea054f1f7f3a6503da7bdb9/) | ConfigFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb26c551f606a9692c05fe06af885717db8cdd24`](./contracts/arbitrum-42161/0xeb26c551f606a9692c05fe06af885717db8cdd24/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0341f977a2a60d2d88bf5cf13cbf5389814d3c97`](./contracts/arbitrum-42161/0x0341f977a2a60d2d88bf5cf13cbf5389814d3c97/) | OptionsConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcc5bc26441f097a640f7aa12a4e5725d590fbe80`](./contracts/arbitrum-42161/0xcc5bc26441f097a640f7aa12a4e5725d590fbe80/) | OptionsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
