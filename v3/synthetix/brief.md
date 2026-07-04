# Agentic Audit Brief: Synthetix

## Project Overview

- Project: Synthetix (`synthetix`)
- Website: [https://synthetix.io](https://synthetix.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:58.450Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 60 unique implementations (99 raw deployments)
- DeFi Llama TVL: $1,304,903.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Synthetics. Structurally: 76 project-authored contract(s) across 4 chain(s); 5 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 12 common project-authored base contract(s) (eip712, externstatetoken, selfdestructible). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 260; live-surface contracts included: 97 (42 live, 55 unknown).
- Excluded by liveness: 163 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/25 (0.0%)
- Deployed-live implementations: 25 of 60 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/31
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 60
- Raw deployments: 99
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbitrumWormholeGatewayUpgraded | unknown | arbitrum | n/a | [`0x1293a5...a15458`](./contracts/arbitrum-42161/0x1293a54e160d1cd7075487898d65266081a15458/) | ⚠️ Unaudited |
| AssociatedSystemsModule | unknown | base | n/a | 2 deployments: base [`0x0daea0...8a359c`](./contracts/base-8453/0x0daea0367d7b82644c4db4d992cf4ba39c8a359c/); base `0xdae65a...917515` | ⚠️ Unaudited |
| CollateralConfigurationModule | unknown | optimism | n/a | [`0x7c67fe...a4b08b`](./contracts/optimism-10/0x7c67fe1ca0a66faad30046cb9492ac13ffa4b08b/) | ⚠️ Unaudited |
| CoreRouter | adapter | ethereum | n/a | [`0xffffff...875847`](./contracts/ethereum-1/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | ⚠️ Unaudited |
| CoreRouter | adapter | optimism | n/a | [`0xffffff...875847`](./contracts/optimism-10/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | ⚠️ Unaudited |
| CoreRouter | adapter | base | n/a | [`0x32c222...72c696`](./contracts/base-8453/0x32c222a9a159782afd7529c87fa34b96ca72c696/) | ⚠️ Unaudited |
| CoreRouter | adapter | arbitrum | n/a | [`0xffffff...875847`](./contracts/arbitrum-42161/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | ⚠️ Unaudited |
| FeatureFlagModule | unknown | base | n/a | 6 deployments: base [`0x27a64e...448376`](./contracts/base-8453/0x27a64e368cf200c4d106b3f225cdbb2d02448376/); base `0x569e1a...5bdc8d`; base `0x6a8a99...d8bee5`; base `0x7e2308...42faee`; base `0xd966c6...f58d70`; base `0xe00ce1...deddbc` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xeb3107...917769`](./contracts/ethereum-1/0xeb3107117fead7de89cd14d463d340a2e6917769/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | n/a | [`0xbb63ca...e83c82`](./contracts/base-8453/0xbb63ca5554dc4ccaca4edd6ecc2837d5efe83c82/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | [`0xd3dfa1...13a93b`](./contracts/arbitrum-42161/0xd3dfa13cdc7c133b1700c243f03a8c6df513a93b/) | ⚠️ Unaudited |
| IssueUSDModule | unknown | optimism | n/a | 6 deployments: optimism [`0x0a1708...660400`](./contracts/optimism-10/0x0a1708b3a55dbbae213fdd1ef46b8553c0660400/); optimism `0x5c68b5...33776d`; optimism `0x608bb8...201718`; optimism `0x7beac3...21670c`; optimism `0xe63606...3d59a4`; optimism `0xf02b4c...727f92` | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/); arbitrum `0xda534b...681365` | ⚠️ Unaudited |
| LegacyMarket | unknown | ethereum | n/a | [`0x3acf16...38b2f5`](./contracts/ethereum-1/0x3acf163b9e6a384d539e10dac7e11213c638b2f5/) | ⚠️ Unaudited |
| LegacyMarket | unknown | optimism | n/a | 2 deployments: optimism [`0x19f03f...66170c`](./contracts/optimism-10/0x19f03fcf06204df85b2593145b87134d3366170c/); optimism `0xa9056e...3348ab` | ⚠️ Unaudited |
| LiquidationModule | unknown | optimism | n/a | 6 deployments: optimism [`0x23e161...b65d10`](./contracts/optimism-10/0x23e1614f360ca09fd1c431df52d44abcd1b65d10/); optimism `0x7a1351...d2ba67`; optimism `0x93ee4d...f5d677`; optimism `0x973e9a...dc354f`; optimism `0xaa2c0b...8e95f9`; optimism `0xd5603b...11d74a` | ⚠️ Unaudited |
| MarketCollateralModule | unknown | optimism | n/a | 2 deployments: optimism [`0x8b9b5a...3497f1`](./contracts/optimism-10/0x8b9b5a5b9c438729a8ade38a0432a3f3ab3497f1/); optimism `0x91b618...1ac9e9` | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PerpsMarketRouter | adapter | base | n/a | [`0x0a2af9...e1c9ce`](./contracts/base-8453/0x0a2af931effd34b81ebcc57e3d3c9b1e1de1c9ce/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 10 deployments: ethereum [`0x29a904...65f7d0`](./contracts/ethereum-1/0x29a904eecbcab49b667b2f5a1e5d5ad72065f7d0/); ethereum `0x3eb064...00e037`; ethereum `0x559e84...28b2cf`; ethereum `0x62492f...29af88`; ethereum `0x64d5df...f09a99`; ethereum `0xb440dd...92d309`; ethereum `0xdce506...368a33`; ethereum `0xe05d80...c2bfa3`; ethereum `0xed4699...fd381a`; ethereum `0xf48129...713258` | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x02612d...8a3db3`](./contracts/arbitrum-42161/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/) | ⚠️ Unaudited |
| ProxyERC20 | token | optimism | n/a | [`0x8700da...7599b4`](./contracts/optimism-10/0x8700daec35af8ff88c16bdf0418774cb3d7599b4/) | ⚠️ Unaudited |
| PythERC7412Wrapper | unknown | base | n/a | [`0x9cb0b4...b1953a`](./contracts/base-8453/0x9cb0b428632fc7dc56fdf453aed890ba55b1953a/) | ⚠️ Unaudited |
| RetiredSynthsUSD | unknown | optimism | n/a | [`0x9614b0...dcb1c3`](./contracts/optimism-10/0x9614b0d381c3c08449b4e569f0e280252cdcb1c3/) | ⚠️ Unaudited |
| RewardsManagerModule | unknown | optimism | n/a | 5 deployments: optimism [`0x17996f...f541c8`](./contracts/optimism-10/0x17996f2047f3ca1cbc1d7a2820d5f31b68f541c8/); optimism `0x69052d...21968a`; optimism `0xd0683a...51ac63`; optimism `0xe4cf03...a36ce2`; optimism `0xf93e40...f42788` | ⚠️ Unaudited |
| SafeDecimalMath | unknown | ethereum | n/a | [`0x84d626...8f3e7b`](./contracts/ethereum-1/0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b/) | ⚠️ Unaudited |
| SpotMarketFactoryModule | unknown | base | n/a | 2 deployments: base [`0x3400f8...7f351b`](./contracts/base-8453/0x3400f899ee37db540681fbf0fb49bef2bc7f351b/); base `0x6a7921...2fc7e0` | ⚠️ Unaudited |
| SpotMarketRouter | adapter | base | n/a | [`0x181415...4caa61`](./contracts/base-8453/0x18141523403e2595d31b22604acb8fc06a4caa61/) | ⚠️ Unaudited |
| SynthetixDepositContract | core_logic | ethereum | n/a | [`0xd62595...dbd37b`](./contracts/ethereum-1/0xd62595c3c23b690baee0935e107a209cb1dbd37b/) | ⚠️ Unaudited |
| TrustedMulticallForwarder | periphery | base | n/a | 2 deployments: base [`0xe2c565...5a1e3e`](./contracts/base-8453/0xe2c5658cc5c448b48141168f3e475df8f65a1e3e/); arbitrum [`0xe2c565...5a1e3e`](./contracts/arbitrum-42161/0xe2c5658cc5c448b48141168f3e475df8f65a1e3e/) | ⚠️ Unaudited |
| VaultModule | unknown | optimism | n/a | 6 deployments: optimism [`0x0dce58...a093a8`](./contracts/optimism-10/0x0dce5804aaf8ededf133d87785e65af718a093a8/); optimism `0x52c89f...4ca334`; optimism `0xa861ed...e06f63`; optimism `0xae3d2a...c3514d`; optimism `0xdb83d8...9a32af`; optimism `0xec09d3...a36a9b` | ⚠️ Unaudited |

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
| [iosiro.com/audits/synthetix-v3-smart-contract-audit](https://iosiro.com/audits/synthetix-v3-smart-contract-audit) | iosiro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20635] iosiro.com/audits/synthetix-v3-smart-contract-audit

Fork inheritance lineage and inherited audits are included when available.
