# Agentic Audit Brief: Wan Bridge

## Project Overview

- Project: Wan Bridge (`wan-bridge`)
- Website: [https://bridge.wanchain.org](https://bridge.wanchain.org)
- Lifecycle: active (Tier 0, 38% below peak)
- Generated: 2026-06-17T07:00:36.952Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, linea, metis, moonbeam, moonriver, optimism, polygon, polygon-zkevm, zksync-era
- Contract surface: 49 unique implementations (78 raw deployments)
- DeFi Llama TVL: $24,281,486.03
- On-chain TVL (included contracts): $4,398.71
- TVL by chain: Base $3,871.21 | Avalanche $527.50

## Project Description

Wan Bridge is Wanchain's cross-chain interoperability and asset-transfer protocol. Its relevant protocol surface should be limited to bridge, router, proxy, token-manager, oracle, verifier, and messaging infrastructure used for cross-chain transfers. Staking, farming, liquidity-pool, reward, and unrelated token contracts should not be described as Wan Bridge core functionality unless independently verified as project-owned bridge infrastructure.

### Architecture

The Wan Bridge family relies on CrossProxy and CrossDelegateV4 contracts to manage cross-chain message passing and asset transfers, while bVault and various pool contracts handle liquidity and staking. Governance controllers (FarmV2Controller, FarmV3Controller) and reward contracts (NyanRewards, etc.) support farming incentives, and oracle proxies provide price feeds across chains.

## Contract Surface Quality

- Indexed contracts: 354; live-surface contracts included: 78 (53 live, 25 unknown).
- Excluded by liveness: 206 inactive, 70 singleton, 0 uninitialized.
- Deployment units: 11/53 live.
- Detected codebases: none
- Unverified dependencies: 1/2.

## Audit Coverage Summary

- Verified implementations audited: 0/35 (0.0%)
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 1
- Unverified implementations: 14
- Unique implementations: 49
- Raw deployments: 78
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,398.71
- Latest audit: 2019-07 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WrappedToken | token | base | n/a | 4 deployments: base [`0x1e7e46...b4a625`](./contracts/base-8453/0x1e7e46945e50bbe7df7014c086b642e6b7b4a625/); base `0x72ccf6...9178ae`; base `0x7e5fe1...a35aac`; base `0xc5cd7e...3810c2` | ⚠️ Unaudited |
| MappingTokenV2 | token | moonriver | n/a | 13 deployments: moonbeam `0x455feb...878d90`; moonbeam `0x5f0061...d52776`; moonriver [`0x15b9ca...b3d445`](./contracts/moonriver-1285/0x15b9ca9659f5dff2b7d35a98dd0790a3cbb3d445/); moonriver `0x41562a...36b09f`; moonriver `0x576fde...af1111`; moonriver `0x748134...4bdeb3`; moonriver `0x78f811...2897c3`; moonriver `0x9d5bc9...bba2fe`; moonriver `0xc005a7...304993`; moonriver `0xd924f1...6039de`; moonriver `0xe936ca...84cda7`; moonriver `0xffef26...b20613`; avalanche `0xea6887...5cddef` | ⚠️ Unaudited |
| ARBIS | unknown | arbitrum | n/a | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | celo | n/a | 2 deployments: moonriver `0xfada8c...d4680e`; celo [`0xdd11b6...12303f`](./contracts/celo-42220/0xdd11b66b90402f294a017c4688509c364312303f/) | ⚠️ Unaudited |
| Bn128SchnorrVerifier | periphery | metis | n/a | [`0x8d42d3...3f3fe8`](./contracts/metis-1088/0x8d42d317b2bd6b60183461ed41bd00f17c3f3fe8/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | polygon | unit-23594 | [`0x221607...f201ab`](./contracts/polygon-137/0x2216072a246a84f7b9ce0f1415dd239c9bf201ab/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | metis | n/a | 2 deployments: metis [`0xc02642...383e41`](./contracts/metis-1088/0xc0264277fcca5fcfabd41a8bc01c1fcaf8383e41/); metis `0xc95a4b...55446d` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | moonbeam | unit-23599 | [`0x6372ae...6b95b5`](./contracts/moonbeam-1284/0x6372aec6263aa93eacedc994d38aa9117b6b95b5/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | moonriver | unit-23605 | [`0xde1ae3...d6671d`](./contracts/moonriver-1285/0xde1ae3c465354f01189150f3836c7c15a1d6671d/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | arbitrum | unit-23619 | [`0xf7ba15...b97613`](./contracts/arbitrum-42161/0xf7ba155556e2cd4dfe3fe26e506a14d2f4b97613/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | celo | unit-23620 | [`0x14ca89...4d6a1d`](./contracts/celo-42220/0x14ca89ac9cd73b01bf71a3af3f8cf8fd224d6a1d/) | ⚠️ Unaudited |
| CrossDelegateV6 | unknown | bsc | unit-23593 | [`0xc3711b...82baee`](./contracts/bsc-56/0xc3711bdbe7e3063bf6c22e7fed42f782ac82baee/) | ⚠️ Unaudited |
| CrossProxy | unknown | metis | n/a | [`0xc6ae1d...bf9dbf`](./contracts/metis-1088/0xc6ae1db6c66d909f7bfeeeb24f9adb8620bf9dbf/) | ⚠️ Unaudited |
| CrossProxy | proxy | avalanche | unit-23626 | [`0x74e121...037c3a`](./contracts/avalanche-43114/0x74e121a34a66d54c33f3291f2cdf26b1cd037c3a/) | ⚠️ Unaudited |
| GroupApprove | unknown | blast | n/a | 6 deployments: optimism `0x329f16...f1cf83`; metis `0x16b389...3b4c6b`; base `0xd97de6...2ca082`; celo `0x48dbcc...204d38`; linea `0x3cc979...3c1058`; blast [`0x131dfc...655132`](./contracts/blast-81457/0x131dfc3ca32d3a959012606855320cbe8e655132/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | unit-23615 | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | arbitrum | n/a | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | ⚠️ Unaudited |
| MulticallV2 | periphery | metis | n/a | [`0x0d10a0...22353b`](./contracts/metis-1088/0x0d10a02696cb9cfdc4de45bd5580eda85f22353b/) | ⚠️ Unaudited |
| NFTLibV1 | token | metis | n/a | [`0x50133f...1f0cf2`](./contracts/metis-1088/0x50133f6836cb91237e17177e2985cbdad51f0cf2/) | ⚠️ Unaudited |
| NyanRewards | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/); arbitrum `0x62ff5b...d2da2c` | ⚠️ Unaudited |
| OracleDelegate | operational_periphery | metis | n/a | [`0xc21e55...91f603`](./contracts/metis-1088/0xc21e5553c8dddf2e4a93e5bedbae436d4291f603/) | ⚠️ Unaudited |
| OracleProxy | operational_periphery | metis | n/a | [`0xbe5187...5000d3`](./contracts/metis-1088/0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3/) | ⚠️ Unaudited |
| RapidityLibV4 | unknown | metis | n/a | [`0x1289f7...ac9f8b`](./contracts/metis-1088/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/) | ⚠️ Unaudited |
| SignatureVerifier | periphery | metis | n/a | [`0x09cdfc...82bcd2`](./contracts/metis-1088/0x09cdfc56439643d151585b77899d0dc0f982bcd2/) | ⚠️ Unaudited |
| SimpleMultiSender | unknown | base | n/a | 2 deployments: optimism `0x1e7e46...b4a625`; base [`0x0e57db...a9f1df`](./contracts/base-8453/0x0e57db96f34aaa743a3f77e8fc0b17641ca9f1df/) | ⚠️ Unaudited |
| stARBIS | unknown | arbitrum | n/a | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | ⚠️ Unaudited |
| TimelockController | governance | blast | n/a | 4 deployments: optimism `0x858df5...462155`; metis `0x7f27b1...319c4b`; celo `0xf865a3...436e24`; blast [`0x6584d7...856006`](./contracts/blast-81457/0x6584d72dbc6b1a5d74f49bc9300042b586856006/) | ⚠️ Unaudited |
| TokenManagerDelegateV2 | governance | metis | n/a | [`0xd4b5f1...8a1437`](./contracts/metis-1088/0xd4b5f10d61916bd6e0860144a91ac658de8a1437/) | ⚠️ Unaudited |
| TokenManagerProxy | governance | metis | n/a | [`0x1ed353...232fb6`](./contracts/metis-1088/0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | unit-23585 | [`0xeb986d...373674`](./contracts/ethereum-1/0xeb986da994e4a118d5956b02d8b7c3c7ce373674/) | ⚠️ Unaudited |
| WanCctpV2 | unknown | optimism | unit-23592 | [`0xf5db31...3b5d43`](./contracts/optimism-10/0xf5db314d1bb8e6166a2b54b057dca934ac3b5d43/) | ⚠️ Unaudited |
| WanCctpV2 | unknown | base | n/a | 2 deployments: optimism `0x2f676c...2296fb`; base [`0x2ab376...38c838`](./contracts/base-8453/0x2ab37662ac4dc8aada595256cd57221c0c38c838/) | ⚠️ Unaudited |
| WanCctpV2 | unknown | base | unit-23613 | [`0x76c513...a4610e`](./contracts/base-8453/0x76c51350705756030c70ccb82ef23345c2a4610e/) | ⚠️ Unaudited |
| WrappedERC721T1 | token | polygon | n/a | [`0xcfad8a...66c472`](./contracts/polygon-137/0xcfad8a6ed9b7075c5a3b42557cf2b343b266c472/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Fee | unknown | base | n/a | 2 deployments: optimism `0x592de3...02e0b6`; base [`0x012297...c86f86`](./contracts/base-8453/0x012297f3d1cb0d685b195a70231730f4c8c86f86/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | fantom | n/a | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9c30e4...ed894e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xccffe9...d69ee3` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x102f0c...8389a1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x691201...5640c6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdd4b9b...be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xb13afe...39a754` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xbe5187...5000d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xc21e55...91f603` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x864a0b...23f213` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbf19c3...de343a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb58078...39aeef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xccf619...818e24` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe0866e...03047f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Wanchain 1.0.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%201.0.pdf) | unknown | Audit | 2018-07 | stale | Direct | n/a | 0 | n/a |
| [Wanchain Open Storeman.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%20Open%20Storeman.pdf) | unknown | Audit | 2019-02 | stale | Direct | n/a | 0 | n/a |
| [Wanchain PoS.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%20PoS.pdf) | unknown | Audit | 2019-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3319] Wanchain 1.0.pdf
- [3320] Wanchain Open Storeman.pdf
- [3321] Wanchain PoS.pdf

Fork inheritance lineage and inherited audits are included when available.
