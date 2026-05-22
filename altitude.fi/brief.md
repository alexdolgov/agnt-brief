# Agentic Audit Brief: Altitude.Fi

## Project Overview

- Project: Altitude.Fi (`altitude.fi`)
- Website: [https://www.altitude.fi/](https://www.altitude.fi/)
- Lifecycle: active (Tier 0, 69.8% below peak)
- Generated: 2026-05-22T21:24:21.206Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 124 unique implementations (174 raw deployments)
- DeFi Llama TVL: $13,728,110.95
- On-chain TVL (included contracts): $16,144,587.86
- TVL by chain: Ethereum $16,144,587.86

## Project Description

Altitude.Fi is a lending protocol on Ethereum that enables users to supply and borrow assets through isolated lending pools. It uses a vault-based architecture with supply and debt tokens to represent positions, and includes mechanisms for rebalancing and incentives.

### Architecture

All product families share the core Altitude.Fi contracts (VaultERC20, SupplyToken, DebtToken) as their implementation logic. The v2 pools (cbBTC-USDC and wstETH-USDC) reuse the same FarmBufferDispatcher and VaultRegistryV1 infrastructure, while the v1 wstETH-USDC pool appears to be an earlier, less modular version.

## Audit Coverage Summary

- Verified implementations audited: 13/18 (72.2%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 106
- Unique implementations: 124
- Raw deployments: 174
- Audits discovered: 7
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 7 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Oxorio | Tier 2 | 13 | 72.2% | 2025-05 |
| Team Omega | Tier 2 | 8 | 44.4% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SupplyToken | token | ethereum | 5 deployments: ethereum [`0x2ddd6d...333169`](./contracts/ethereum-1/0x2ddd6d576615e6afa823adedde8dc67198333169/); ethereum `0x5c58df...9c1f06`; ethereum `0x5f1294...a447d6`; ethereum `0xe1a846...1971b2`; ethereum `0xe30afe...e8152e` | ✅ Audited |
| DebtToken | token | ethereum | 5 deployments: ethereum [`0x5717f3...5b0056`](./contracts/ethereum-1/0x5717f3f1b566cf2f7113979fcd78d9416f5b0056/); ethereum `0x6a0cc5...2eb355`; ethereum `0x8d280c...66d06c`; ethereum `0xdf612b...827e66`; ethereum `0xeb7a2c...c7e198` | ✅ Audited |
| VaultERC20 | core_logic | ethereum | 7 deployments: ethereum [`0x50659b...7eec8c`](./contracts/ethereum-1/0x50659b26343b59990eb501a45f1ad059077eec8c/); ethereum `0x5481d5...0595d5`; ethereum `0x550f8a...496a6b`; ethereum `0x57192e...af1536`; ethereum `0x994a41...2f0f36`; ethereum `0xaf6062...e5ee8d`; ethereum `0xe59247...7d4cec` | ✅ Audited |
| BorrowVerifier | core_logic | ethereum | 4 deployments: ethereum [`0x13a50b...cd0ee3`](./contracts/ethereum-1/0x13a50bdf76349a5886ee1fbaf328110815cd0ee3/); ethereum `0x4f7aeb...bc97f3`; ethereum `0xbdd8bd...dae3cc`; ethereum `0xe5c0a4...1f01e7` | ✅ Audited |
| ConfigurableManager | governance | ethereum | 3 deployments: ethereum [`0x00d408...cba023`](./contracts/ethereum-1/0x00d4080f63b3c35ce7b74adfc938c8511ecba023/); ethereum `0xcb712c...059f68`; ethereum `0xff75e7...9ee8d6` | ✅ Audited |
| FarmBufferDispatcher | unknown | ethereum | 7 deployments: ethereum [`0x17bd4c...87fa25`](./contracts/ethereum-1/0x17bd4cf21a21d2ce938fed2d54ca061f4f87fa25/); ethereum `0x367b70...d5b70b`; ethereum `0x45f08c...578932`; ethereum `0x5acc3a...05e3ea`; ethereum `0x5b96e5...d418c0`; ethereum `0xd812bb...97a8fd`; ethereum `0xdd4896...a20777` | ✅ Audited |
| GroomableManager | governance | ethereum | 3 deployments: ethereum [`0x297f32...d328db`](./contracts/ethereum-1/0x297f322d51db6e440a224c48d3fa8cf04bd328db/); ethereum `0x35bb44...83be58`; ethereum `0xa9bdf5...17a646` | ✅ Audited |
| Ingress | unknown | ethereum | 4 deployments: ethereum [`0x9e0e30...84a772`](./contracts/ethereum-1/0x9e0e3036315d8b6a98607760e8a4e5736e84a772/); ethereum `0xbde7b9...ec7f95`; ethereum `0xc2e2f4...029e14`; ethereum `0xc39c58...5a34aa` | ✅ Audited |
| LiquidatableManager | governance | ethereum | 3 deployments: ethereum [`0x3ddd3c...f92f4a`](./contracts/ethereum-1/0x3ddd3c646037eb15f9f90a9a239893cdcaf92f4a/); ethereum `0x701390...14b1de`; ethereum `0xc06e0a...5d0813` | ✅ Audited |
| RebalanceIncentivesController | governance | ethereum | 8 deployments: ethereum [`0x052f21...5c6f16`](./contracts/ethereum-1/0x052f21dce83f8f9e5a0396a79500d875c05c6f16/); ethereum `0x299cd3...006e62`; ethereum `0x438661...79119e`; ethereum `0x560357...ae768d`; ethereum `0x5e55df...fc5f04`; ethereum `0x8f18b3...dc4d52`; ethereum `0xbe7924...5e3d26`; ethereum `0xdfc7c8...d5cd90` | ✅ Audited |
| SnapshotableManager | governance | ethereum | 3 deployments: ethereum [`0x090056...2e84d8`](./contracts/ethereum-1/0x090056ffbe50ad88afa881e735bce9bd9c2e84d8/); ethereum `0xaf8aa5...ee4ea4`; ethereum `0xd19ac9...7d995d` | ✅ Audited |
| TokensFactory | registry | ethereum | 3 deployments: ethereum [`0x3c456b...7a11f9`](./contracts/ethereum-1/0x3c456b6fa3872e5c77eb77a84acc7cc39d7a11f9/); ethereum `0x5c792d...885dc6`; ethereum `0xf10b37...d0bcb0` | ✅ Audited |
| VaultRegistryV1 | registry | ethereum | 6 deployments: ethereum [`0x37f310...b6e7b9`](./contracts/ethereum-1/0x37f3108cc26d69833105463ba46e982e85b6e7b9/); ethereum `0x3dbe2d...c9b9cd`; ethereum `0x62c80d...33ef64`; ethereum `0x89cfee...af17ba`; ethereum `0x8c66df...f12ba8`; ethereum `0x999543...7d5387` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FlashloanHelper | periphery | ethereum | [`0x8797a8...be02e8`](./contracts/ethereum-1/0x8797a833405e8c1dcda552d8cf807dc47bbe02e8/) | ⚠️ Unaudited |
| LiquidationBot | unknown | ethereum | [`0x925ab2...f26ee4`](./contracts/ethereum-1/0x925ab23bfd97fedbc2e41aed0e4057b2eaf26ee4/) | ⚠️ Unaudited |
| RebalanceAutomation | unknown | ethereum | [`0xe3c732...15faaa`](./contracts/ethereum-1/0xe3c732c02ff2fee1eb9714742e9770f9e415faaa/) | ⚠️ Unaudited |
| UserLiquidationHelper | periphery | ethereum | [`0x0b8566...5249c2`](./contracts/ethereum-1/0x0b856647cd3946db3fdfdaabb8770bdfe45249c2/) | ⚠️ Unaudited |
| VaultCoreV1Initializer | core_logic | ethereum | 3 deployments: ethereum [`0x4b875a...b26231`](./contracts/ethereum-1/0x4b875a0b50b2d8deeded44cb591c178f47b26231/); ethereum `0x501923...a4ac9c`; ethereum `0xdd2ad2...d6c0e7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (106)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x07f61dba2520687d48fda08043d25fc664e7a24a) | proxy | ethereum | `0x1c1627...044268` | ❓ Unverified |
| Proxy (impl: 0x15c2fbc9d547c029893f5f706413a953076b94a6) | proxy | ethereum | `0x1f7d58...c759b9` | ❓ Unverified |
| Proxy (impl: 0x6317d0ebf4d37528c927019ab5b18329ff2542ce) | proxy | ethereum | `0x5bb85d...e28750` | ❓ Unverified |
| Proxy (impl: 0xd74e561432081c94b9b9553b54e44011046002b3) | proxy | ethereum | `0xed74fd...ace296` | ❓ Unverified |
| Proxy (impl: 0xe1af3b82e18b09ab13a49a085e26b68f336e7314) | proxy | ethereum | `0xdd39b8...61f73e` | ❓ Unverified |
| Proxy (impl: 0xf14a62a5b78e93760bc97fad34704024c6cf02b9) | proxy | ethereum | `0xb381df...55b6d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x048d58...361b9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x075275...777c60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x07f61d...e7a24a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x08bd49...8e19ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0a6191...03ec70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b708b...5ef9d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0c3d8f...841e46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0ebe43...c45234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x13ee63...8c72c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1476f0...7a3997` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1487e1...e51098` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x15c2fb...6b94a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1bd6c9...d30770` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1da11e...1696b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1da520...00a82d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x27825e...4d1fa0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x28d7fa...61c67e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2aeba9...1f4672` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2b7d4e...9342a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d2918...d4888b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d3518...a7d459` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ebbe0...1337fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x39a993...98c0af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b1f0a...03616c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3c9e45...093e74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3e5777...fb3563` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3fc8cd...dc68a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x432391...7385da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x43eb3e...b16bdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x45c9d9...3f09e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b17b0...15380d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4f8048...692936` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4ff6e3...fecf36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x505b5c...335027` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x505bc1...b1a39e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x54b816...9db0d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55d010...a54203` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5715e6...cae155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5a9298...31707b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b7ac0...9a706d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x602d79...4eb15d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6317d0...2542ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x687aef...edcb9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6abe6b...72521a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x711138...cded63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x775826...01dd5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78003d...5b9fe2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7aaa94...66f040` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x840449...a0c928` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x847274...360c2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x84910b...6eab58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x874566...4e6b1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88db8d...b6c081` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x89f8c9...fdbbeb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f3ea9...a9428f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x901f06...22492f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x92a352...bc01f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x96dfad...6978f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98bf71...cd120c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9ec90c...cfd9d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f1339...228020` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1a717...85aac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa2327f...54929d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa2c814...1abeda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa69dd0...74b399` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa75018...6804f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xab769b...637061` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb1a3f6...01fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb2ba12...f700b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb2c41d...67364f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb4165b...b565f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb445db...8c121e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb510cd...e15174` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbed2c...0bfbd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbea847...78f1bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc0631e...c90447` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc29841...bf9bba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6c87c...8368ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xca9fec...056f0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcc96c5...7c0094` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd731d...8ff9a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd1254a...192917` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd130a9...6ab29b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd168b6...742fd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd55f01...11cce8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd74e56...6002b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8c515...2c045b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xda71b4...6326bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdd2e73...c35f26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdd8fdf...116ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdf70a6...4bbf1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe1af3b...6e7314` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf0dd03...6da29d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf14a62...cf02b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4752e...97d8d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4a19f...a4a45f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf60824...1618d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf73ac7...42f2f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd2f78...dd30d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe4b09...7668d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [**report**](https://github.com/OmegaAudits/audits/blob/main/202505-Altitude.pdf) | Team Omega | Audit | 2025-05 | aging | Direct | contract_name | 23 | high |
| [**report**](https://oxor-io.github.io/public_audits/Altitude/Altitude-v2-Audit-Report.pdf) | Oxorio | Audit | 2025-05 | aging | Direct | contract_name | 58 | high |
| [**report**](https://github.com/OmegaAudits/audits/blob/main/202501-Altitude-parallel-farming.pdf) | Team Omega | Audit | 2025-05 | aging | Direct | contract_name | 3 | high |
| [**report**](https://github.com/OmegaAudits/audits/blob/main/202408-Altitude-morpho-integration.pdf) | Team Omega | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [**report**](https://oxor-io.github.io/public_audits/Altitude/Altitude-Audit-Report.pdf) | Oxorio | Audit | 2024-08 | aging | Direct | contract_name | 55 | high |
| [**report 1**](https://github.com/OmegaAudits/audits/blob/main/202207-Altitude-v1.0.pdf) | Team Omega | Audit | 2024-07 | aging | Direct | contract_name | 13 | high |
| [**report 2**](https://github.com/OmegaAudits/audits/blob/main/202310-Altitude-v1.1.pdf) | Team Omega | Audit | 2024-07 | aging | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8797a8...be02e8`](./contracts/ethereum-1/0x8797a833405e8c1dcda552d8cf807dc47bbe02e8/) | FlashloanHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x925ab2...f26ee4`](./contracts/ethereum-1/0x925ab23bfd97fedbc2e41aed0e4057b2eaf26ee4/) | LiquidationBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3c732...15faaa`](./contracts/ethereum-1/0xe3c732c02ff2fee1eb9714742e9770f9e415faaa/) | RebalanceAutomation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b8566...5249c2`](./contracts/ethereum-1/0x0b856647cd3946db3fdfdaabb8770bdfe45249c2/) | UserLiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b875a...b26231`](./contracts/ethereum-1/0x4b875a0b50b2d8deeded44cb591c178f47b26231/) | VaultCoreV1Initializer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 76 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=157

Zero-match audit list:

- [1991] **report**

Fork inheritance lineage and inherited audits are included when available.
