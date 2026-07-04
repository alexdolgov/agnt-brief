# Agentic Audit Brief: Synthetix

## Project Overview

- Project: Synthetix (`synthetix`)
- Website: [https://synthetix.io](https://synthetix.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.412Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 68 unique implementations (167 raw deployments)
- DeFi Llama TVL: $1,304,903.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Synthetics. Structurally: 76 project-authored contract(s) across 4 chain(s); 5 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 12 common project-authored base contract(s) (eip712, externstatetoken, selfdestructible). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 267; live-surface contracts included: 166 (137 live, 29 unknown).
- Excluded by liveness: 101 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 19/34 (55.9%)
- Deployed-live implementations: 39 of 68 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 19/39
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 68
- Raw deployments: 167
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 19 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| iosiro | Tier 2 | 19 | 48.7% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountModule | unknown | optimism | n/a | 7 deployments: optimism [`0x162847...f4712b`](./contracts/optimism-10/0x1628476203829db18e4df095d3c67e9344f4712b/); optimism `0x3b078d...872649`; optimism `0x435358...a003ec`; optimism `0x786e8e...a78923`; optimism `0xd007f8...85ce2d`; base `0x35606a...c69a8d`; base `0xd5fccd...186869` | ✅ Audited |
| AccountTokenModule | unknown | base | n/a | 2 deployments: base [`0xd10cd9...cfecdd`](./contracts/base-8453/0xd10cd91683301c8c15eda40f59e73d1b0bcfecdd/); base `0xf28e37...bc11a1` | ✅ Audited |
| AssociateDebtModule | unknown | optimism | n/a | 11 deployments: optimism [`0x12e3f8...dc9332`](./contracts/optimism-10/0x12e3f8d1d01f8534c685fa4d99cbc31597dc9332/); optimism `0x1588fc...0a36b2`; optimism `0x1a122d...87a0f4`; optimism `0x243670...7da400`; optimism `0x7782a4...93ca30`; optimism `0xc09a31...c21b9b`; optimism `0xd57521...02d025`; optimism `0xe48954...523135`; optimism `0xef35b9...dde7cb`; base `0x2f9158...f231aa`; base `0x3091ac...0c8506` | ✅ Audited |
| AssociatedSystemsModule | unknown | base | n/a | 2 deployments: base [`0x0daea0...8a359c`](./contracts/base-8453/0x0daea0367d7b82644c4db4d992cf4ba39c8a359c/); base `0xdae65a...917515` | ✅ Audited |
| CollateralConfigurationModule | unknown | optimism | n/a | 3 deployments: optimism [`0x7c67fe...a4b08b`](./contracts/optimism-10/0x7c67fe1ca0a66faad30046cb9492ac13ffa4b08b/); base `0xb16a8b...d0c1a3`; base `0xfc10ce...643a41` | ✅ Audited |
| CollateralModule | unknown | optimism | n/a | 12 deployments: optimism [`0x3caa81...c18e36`](./contracts/optimism-10/0x3caa810450ce5473a1a0d386e29a03f4a3c18e36/); optimism `0x5c4909...8e064e`; optimism `0x5e528c...4e9381`; optimism `0x8e4461...f11ec5`; optimism `0x917271...3df1a3`; optimism `0x9476e8...ad9d9e`; optimism `0xbdef7a...421b64`; optimism `0xcbcdab...944ea6`; optimism `0xeb30f4...626d26`; optimism `0xef738d...9a81f9`; base `0x7ea002...e1ca5d`; base `0xe082bd...ebecb0` | ✅ Audited |
| CoreRouter | adapter | base | n/a | [`0x32c222...72c696`](./contracts/base-8453/0x32c222a9a159782afd7529c87fa34b96ca72c696/) | ✅ Audited |
| FeatureFlagModule | unknown | base | n/a | 6 deployments: base [`0x27a64e...448376`](./contracts/base-8453/0x27a64e368cf200c4d106b3f225cdbb2d02448376/); base `0x569e1a...5bdc8d`; base `0x6a8a99...d8bee5`; base `0x7e2308...42faee`; base `0xd966c6...f58d70`; base `0xe00ce1...deddbc` | ✅ Audited |
| InitialModuleBundle | unknown | optimism | n/a | [`0x6dff97...28bc34`](./contracts/optimism-10/0x6dff970f25f7dcb049a9f9688ed8b537a528bc34/) | ✅ Audited |
| IssueUSDModule | unknown | optimism | n/a | 10 deployments: optimism [`0x0a1708...660400`](./contracts/optimism-10/0x0a1708b3a55dbbae213fdd1ef46b8553c0660400/); optimism `0x3a6061...317524`; optimism `0x5c68b5...33776d`; optimism `0x608bb8...201718`; optimism `0x7beac3...21670c`; optimism `0xcf195e...360fa2`; optimism `0xe63606...3d59a4`; optimism `0xf02b4c...727f92`; base `0xb3da45...baa25c`; base `0xe8f3c0...3763b9` | ✅ Audited |
| LiquidationModule | unknown | optimism | n/a | 14 deployments: optimism [`0x23e161...b65d10`](./contracts/optimism-10/0x23e1614f360ca09fd1c431df52d44abcd1b65d10/); optimism `0x4cb44d...e9159e`; optimism `0x6e045e...0b8424`; optimism `0x7a1351...d2ba67`; optimism `0x93ee4d...f5d677`; optimism `0x973e9a...dc354f`; optimism `0xaa2c0b...8e95f9`; optimism `0xd5603b...11d74a`; optimism `0xe1ba4a...bdc965`; base `0x661a88...d6f9ba`; base `0x6f7e8e...237a02`; base `0x72e13c...d807d2`; base `0x94433f...f4ab7b`; base `0xbc4804...07088b` | ✅ Audited |
| MarketCollateralModule | unknown | optimism | n/a | 5 deployments: optimism [`0x8b9b5a...3497f1`](./contracts/optimism-10/0x8b9b5a5b9c438729a8ade38a0432a3f3ab3497f1/); optimism `0x91b618...1ac9e9`; optimism `0xbb46f9...2beaaf`; base `0xa29c7b...b729f0`; base `0xf326af...f2b027` | ✅ Audited |
| MarketManagerModule | unknown | base | n/a | 2 deployments: base [`0x758a39...5e72e4`](./contracts/base-8453/0x758a399e97d9d7f0253a854af451e6d1275e72e4/); base `0xf273aa...9dd93e` | ✅ Audited |
| PoolConfigurationModule | unknown | optimism | n/a | 2 deployments: optimism [`0x3093cb...3bf927`](./contracts/optimism-10/0x3093cbba626e60e4164975f5b15dd1c0d03bf927/); base `0x3f10b7...7a8c46` | ✅ Audited |
| PoolModule | unknown | base | n/a | 3 deployments: optimism `0x600f30...a13cf3`; base [`0x026969...026b03`](./contracts/base-8453/0x02696911702740f85ed8ad8b6de6c37e44026b03/); base `0xbcc471...29bfb7` | ✅ Audited |
| RewardsManagerModule | unknown | optimism | n/a | 10 deployments: optimism [`0x17996f...f541c8`](./contracts/optimism-10/0x17996f2047f3ca1cbc1d7a2820d5f31b68f541c8/); optimism `0x3d3161...0e43a9`; optimism `0x69052d...21968a`; optimism `0x7cea62...feec27`; optimism `0xcb3707...32e144`; optimism `0xd0683a...51ac63`; optimism `0xe4cf03...a36ce2`; optimism `0xf93e40...f42788`; base `0x184f59...7f2477`; base `0xa51b34...b1675b` | ✅ Audited |
| USDTokenModule | unknown | base | n/a | 2 deployments: optimism `0xdaf89f...697b91`; base [`0x6e78b9...9601c4`](./contracts/base-8453/0x6e78b99d441bd1a78c7fbb61195e58e07e9601c4/) | ✅ Audited |
| UtilsModule | unknown | optimism | n/a | 2 deployments: optimism [`0x750714...7168d3`](./contracts/optimism-10/0x750714ec1357042e2102bc25e20e5359c27168d3/); base `0xfcad0f...2f127a` | ✅ Audited |
| VaultModule | unknown | optimism | n/a | 11 deployments: optimism [`0x0dce58...a093a8`](./contracts/optimism-10/0x0dce5804aaf8ededf133d87785e65af718a093a8/); optimism `0x255fd9...414e7d`; optimism `0x52c89f...4ca334`; optimism `0xa49ef9...a01158`; optimism `0xa861ed...e06f63`; optimism `0xae3d2a...c3514d`; optimism `0xdb83d8...9a32af`; optimism `0xec09d3...a36a9b`; optimism `0xf69845...29faa0`; base `0xd9f395...cb8783`; base `0xebe6f4...d2a7c2` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CoreRouter | adapter | ethereum | n/a | [`0xffffff...875847`](./contracts/ethereum-1/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | ⚠️ Unaudited |
| CoreRouter | adapter | optimism | n/a | [`0xffffff...875847`](./contracts/optimism-10/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | ⚠️ Unaudited |
| CoreRouter | adapter | arbitrum | n/a | [`0xffffff...875847`](./contracts/arbitrum-42161/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xeb3107...917769`](./contracts/ethereum-1/0xeb3107117fead7de89cd14d463d340a2e6917769/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | n/a | [`0xbb63ca...e83c82`](./contracts/base-8453/0xbb63ca5554dc4ccaca4edd6ecc2837d5efe83c82/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | [`0xd3dfa1...13a93b`](./contracts/arbitrum-42161/0xd3dfa13cdc7c133b1700c243f03a8c6df513a93b/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | n/a | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| LegacyMarket | unknown | ethereum | n/a | [`0x3acf16...38b2f5`](./contracts/ethereum-1/0x3acf163b9e6a384d539e10dac7e11213c638b2f5/) | ⚠️ Unaudited |
| LegacyMarket | unknown | optimism | n/a | 2 deployments: optimism [`0x19f03f...66170c`](./contracts/optimism-10/0x19f03fcf06204df85b2593145b87134d3366170c/); optimism `0xa9056e...3348ab` | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PerpsMarketRouter | adapter | base | n/a | [`0x0a2af9...e1c9ce`](./contracts/base-8453/0x0a2af931effd34b81ebcc57e3d3c9b1e1de1c9ce/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 10 deployments: ethereum [`0x29a904...65f7d0`](./contracts/ethereum-1/0x29a904eecbcab49b667b2f5a1e5d5ad72065f7d0/); ethereum `0x3eb064...00e037`; ethereum `0x559e84...28b2cf`; ethereum `0x62492f...29af88`; ethereum `0x64d5df...f09a99`; ethereum `0xb440dd...92d309`; ethereum `0xdce506...368a33`; ethereum `0xe05d80...c2bfa3`; ethereum `0xed4699...fd381a`; ethereum `0xf48129...713258` | ⚠️ Unaudited |
| ProxyERC20 | token | optimism | n/a | [`0x8700da...7599b4`](./contracts/optimism-10/0x8700daec35af8ff88c16bdf0418774cb3d7599b4/) | ⚠️ Unaudited |
| PythERC7412Wrapper | unknown | base | n/a | [`0x9cb0b4...b1953a`](./contracts/base-8453/0x9cb0b428632fc7dc56fdf453aed890ba55b1953a/) | ⚠️ Unaudited |
| RetiredSynthsUSD | unknown | optimism | n/a | [`0x9614b0...dcb1c3`](./contracts/optimism-10/0x9614b0d381c3c08449b4e569f0e280252cdcb1c3/) | ⚠️ Unaudited |
| SafeDecimalMath | unknown | ethereum | n/a | [`0x84d626...8f3e7b`](./contracts/ethereum-1/0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b/) | ⚠️ Unaudited |
| SpotMarketFactoryModule | unknown | base | n/a | 2 deployments: base [`0x3400f8...7f351b`](./contracts/base-8453/0x3400f899ee37db540681fbf0fb49bef2bc7f351b/); base `0x6a7921...2fc7e0` | ⚠️ Unaudited |
| SpotMarketRouter | adapter | base | n/a | [`0x181415...4caa61`](./contracts/base-8453/0x18141523403e2595d31b22604acb8fc06a4caa61/) | ⚠️ Unaudited |
| SynthetixDepositContract | core_logic | ethereum | n/a | [`0xd62595...dbd37b`](./contracts/ethereum-1/0xd62595c3c23b690baee0935e107a209cb1dbd37b/) | ⚠️ Unaudited |
| TrustedMulticallForwarder | periphery | base | n/a | 2 deployments: base [`0xe2c565...5a1e3e`](./contracts/base-8453/0xe2c5658cc5c448b48141168f3e475df8f65a1e3e/); arbitrum [`0xe2c565...5a1e3e`](./contracts/arbitrum-42161/0xe2c5658cc5c448b48141168f3e475df8f65a1e3e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x00e047...433134` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x058850...eef8c9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1b7484...509c07` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x228f4a...086494` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x26d4ff...7587b8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x299ece...be312c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2b75d3...e1699d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3b5940...5db619` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3ee05e...34c94b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3f0535...dbbac4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x46eaf2...a67102` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4e2d8d...2bfc64` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x514130...73b542` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5764ba...07e130` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5d379c...cc7c9f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x683a66...c3221f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x70da0e...e52ad4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8a6102...d16585` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x90e42b...67fe38` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa7ae6d...ef672f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa99616...ce4a0b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb36393...15416a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb606f2...b57e1a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb87b56...671e91` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe0385f...e21cf8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe7f85b...e7c2bf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfcb6e4...f2c78e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfdb10b...8b0643` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe46d0...f5bbed` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [iosiro.com/audits/synthetix-v3-smart-contract-audit](https://iosiro.com/audits/synthetix-v3-smart-contract-audit) | iosiro | Audit | 2023-04 | stale | Direct | contract_name | 106 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xffffff...875847`](./contracts/ethereum-1/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xffffff...875847`](./contracts/optimism-10/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xffffff...875847`](./contracts/arbitrum-42161/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3acf16...38b2f5`](./contracts/ethereum-1/0x3acf163b9e6a384d539e10dac7e11213c638b2f5/) | LegacyMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x19f03f...66170c`](./contracts/optimism-10/0x19f03fcf06204df85b2593145b87134d3366170c/) | LegacyMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a2af9...e1c9ce`](./contracts/base-8453/0x0a2af931effd34b81ebcc57e3d3c9b1e1de1c9ce/) | PerpsMarketRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8700da...7599b4`](./contracts/optimism-10/0x8700daec35af8ff88c16bdf0418774cb3d7599b4/) | ProxyERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9cb0b4...b1953a`](./contracts/base-8453/0x9cb0b428632fc7dc56fdf453aed890ba55b1953a/) | PythERC7412Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9614b0...dcb1c3`](./contracts/optimism-10/0x9614b0d381c3c08449b4e569f0e280252cdcb1c3/) | RetiredSynthsUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84d626...8f3e7b`](./contracts/ethereum-1/0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b/) | SafeDecimalMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3400f8...7f351b`](./contracts/base-8453/0x3400f899ee37db540681fbf0fb49bef2bc7f351b/) | SpotMarketFactoryModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x181415...4caa61`](./contracts/base-8453/0x18141523403e2595d31b22604acb8fc06a4caa61/) | SpotMarketRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd62595...dbd37b`](./contracts/ethereum-1/0xd62595c3c23b690baee0935e107a209cb1dbd37b/) | SynthetixDepositContract | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe2c565...5a1e3e`](./contracts/base-8453/0xe2c5658cc5c448b48141168f3e475df8f65a1e3e/) | TrustedMulticallForwarder | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=106

Fork inheritance lineage and inherited audits are included when available.
