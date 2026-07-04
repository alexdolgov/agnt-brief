# Agentic Audit Brief: Altitude.Fi

⚠️ Lifecycle status: DECLINING - TVL dropped 58.5% over 90 days

## Project Overview

- Project: Altitude.Fi (`altitude.fi`)
- Website: [https://www.altitude.fi/](https://www.altitude.fi/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:00.649Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 127 unique implementations (162 raw deployments)
- DeFi Llama TVL: $7,082,102.69
- On-chain TVL (included contracts): $8,494,223.58
- TVL by chain: Ethereum $8,494,223.58

## Project Description

Lending. Structurally: 34 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 17 common project-authored base contract(s) (vaultstorage, joiningblockvault, vaultcorev1). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 196; live-surface contracts included: 158 (52 live, 106 unknown).
- Excluded by liveness: 38 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/20 (30.0%)
- Deployed-live implementations: 27 of 127 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/27
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 100
- Unique implementations: 127
- Raw deployments: 162
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $5,311,444.82
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $5,311,444.82 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Team Omega | Tier 2 | 8 | 29.6% | 2025-05 |
| Oxorio | Tier 2 | 4 | 14.8% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DebtToken | token | ethereum | n/a | 3 deployments: ethereum [`0x5717f3...5b0056`](./contracts/ethereum-1/0x5717f3f1b566cf2f7113979fcd78d9416f5b0056/); ethereum `0xdf612b...827e66`; ethereum `0xeb7a2c...c7e198` | ✅ Audited |
| ChainlinkPrice | unknown | ethereum | n/a | [`0xc2dee6...05b61b`](./contracts/ethereum-1/0xc2dee6f571071801ef9b597e0b8c6b8d6f05b61b/) | ✅ Audited |
| ConfigurableManager | governance | ethereum | n/a | [`0xff75e7...9ee8d6`](./contracts/ethereum-1/0xff75e700356f8eac53d771ab5398d4c5309ee8d6/) | ✅ Audited |
| DebtToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6a0cc5...2eb355`](./contracts/ethereum-1/0x6a0cc50419fc3d021b245d86d1baafb5af2eb355/); ethereum `0x8d280c...66d06c` | ✅ Audited |
| MorphoVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0xb649d1...0cef44`](./contracts/ethereum-1/0xb649d15333f5d267d6b385e2b2c9923f360cef44/); ethereum `0xc1d41a...8393dc`; ethereum `0xcd91fa...cb1068` | ✅ Audited |
| RebalanceIncentivesController | governance | ethereum | n/a | 4 deployments: ethereum [`0x052f21...5c6f16`](./contracts/ethereum-1/0x052f21dce83f8f9e5a0396a79500d875c05c6f16/); ethereum `0x560357...ae768d`; ethereum `0x5e55df...fc5f04`; ethereum `0x8f18b3...dc4d52` | ✅ Audited |
| TokensFactory | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3c456b...7a11f9`](./contracts/ethereum-1/0x3c456b6fa3872e5c77eb77a84acc7cc39d7a11f9/); ethereum `0x5c792d...885dc6`; ethereum `0xf10b37...d0bcb0` | ✅ Audited |
| UniswapV3Strategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc392d6...f4d611`](./contracts/ethereum-1/0xc392d681ec36640530d598effa62852202f4d611/); ethereum `0xfde703...476848` | ✅ Audited |
| VaultERC20 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x57192e...af1536`](./contracts/ethereum-1/0x57192ec32e649cf51380b8b314b26e73aaaf1536/); ethereum `0xe59247...7d4cec` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SupplyToken | token | ethereum | n/a | 3 deployments: ethereum [`0x2ddd6d...333169`](./contracts/ethereum-1/0x2ddd6d576615e6afa823adedde8dc67198333169/); ethereum `0x5c58df...9c1f06`; ethereum `0x5f1294...a447d6` | ⚠️ Unaudited |
| PoolInstance | core_logic | ethereum | n/a | [`0x87870b...4fa4e2`](./contracts/ethereum-1/0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2/) | ⚠️ Unaudited |
| VaultERC20 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5481d5...0595d5`](./contracts/ethereum-1/0x5481d5627aa367aa677442a120fd1021ab0595d5/); ethereum `0x550f8a...496a6b`; ethereum `0xaf6062...e5ee8d` | ⚠️ Unaudited |
| FarmBufferDispatcher | unknown | ethereum | n/a | 3 deployments: ethereum [`0x17bd4c...87fa25`](./contracts/ethereum-1/0x17bd4cf21a21d2ce938fed2d54ca061f4f87fa25/); ethereum `0x45f08c...578932`; ethereum `0xd812bb...97a8fd` | ⚠️ Unaudited |
| FarmBufferDispatcher | unknown | ethereum | n/a | 2 deployments: ethereum [`0x367b70...d5b70b`](./contracts/ethereum-1/0x367b70ea04257165f6a0f512e876ee8c06d5b70b/); ethereum `0x5acc3a...05e3ea` | ⚠️ Unaudited |
| FarmBufferDispatcher | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5b96e5...d418c0`](./contracts/ethereum-1/0x5b96e535525e931848a705cc0e14611437d418c0/); ethereum `0xdd4896...a20777` | ⚠️ Unaudited |
| FlashloanHelper | periphery | ethereum | n/a | [`0x8797a8...be02e8`](./contracts/ethereum-1/0x8797a833405e8c1dcda552d8cf807dc47bbe02e8/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| MorphoFlashLoanStrategy | core_logic | ethereum | n/a | [`0xf2cf52...580b02`](./contracts/ethereum-1/0xf2cf5261575d4f6f51d7575a154bf17412580b02/) | ⚠️ Unaudited |
| MorphoVaultV2 | core_logic | ethereum | n/a | [`0xd36d47...c1f48e`](./contracts/ethereum-1/0xd36d4739b5392481bcff4035db4c8462f1c1f48e/) | ⚠️ Unaudited |
| RebalanceAutomation | unknown | ethereum | n/a | [`0xe3c732...15faaa`](./contracts/ethereum-1/0xe3c732c02ff2fee1eb9714742e9770f9e415faaa/) | ⚠️ Unaudited |
| StrategyAaveV3 | core_logic | ethereum | n/a | [`0xbaeb17...852bdc`](./contracts/ethereum-1/0xbaeb17360ec019529934ff7be22567d069852bdc/) | ⚠️ Unaudited |
| StrategyPendlePT | core_logic | ethereum | n/a | 6 deployments: ethereum [`0xb4b973...8be9f8`](./contracts/ethereum-1/0xb4b9732dfa1b27bd1d689f864a3bcee7e88be9f8/); ethereum `0xbd1e64...44a407`; ethereum `0xf3a574...85a87b`; ethereum `0xf3d73e...92ec13`; ethereum `0xf43986...952e0d`; ethereum `0xf9de0e...5dd606` | ⚠️ Unaudited |
| SupplyToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe1a846...1971b2`](./contracts/ethereum-1/0xe1a846c6d6f8e0c1cf9360a9f9e76e98ff1971b2/); ethereum `0xe30afe...e8152e` | ⚠️ Unaudited |
| UserLiquidationHelper | periphery | ethereum | n/a | [`0x0b8566...5249c2`](./contracts/ethereum-1/0x0b856647cd3946db3fdfdaabb8770bdfe45249c2/) | ⚠️ Unaudited |
| VaultRegistryV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37f310...b6e7b9`](./contracts/ethereum-1/0x37f3108cc26d69833105463ba46e982e85b6e7b9/); ethereum `0x999543...7d5387` | ⚠️ Unaudited |
| VaultRegistryV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3dbe2d...c9b9cd`](./contracts/ethereum-1/0x3dbe2dbc03bbc3c1fa63b94af54f473303c9b9cd/); ethereum `0x62c80d...33ef64` | ⚠️ Unaudited |
| VaultRegistryV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x89cfee...af17ba`](./contracts/ethereum-1/0x89cfeeb9031f0dd7b3bb7eb9c1622cef1aaf17ba/); ethereum `0x8c66df...f12ba8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (100)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x6317d0ebf4d37528c927019ab5b18329ff2542ce) | unknown | ethereum | n/a | 2 deployments: ethereum `0x5bb85d...e28750`; ethereum `0x6317d0...2542ce` | ❓ Unverified |
| Proxy (impl: 0xe1af3b82e18b09ab13a49a085e26b68f336e7314) | unknown | ethereum | n/a | 2 deployments: ethereum `0xdd39b8...61f73e`; ethereum `0xe1af3b...6e7314` | ❓ Unverified |
| Proxy (impl: 0xf14a62a5b78e93760bc97fad34704024c6cf02b9) | unknown | ethereum | n/a | 2 deployments: ethereum `0xb381df...55b6d8`; ethereum `0xf14a62...cf02b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x048d58...361b9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x075275...777c60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x07f61d...e7a24a`; ethereum `0x1c1627...044268` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08bd49...8e19ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a6191...03ec70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b708b...5ef9d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c3d8f...841e46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ebe43...c45234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13ee63...8c72c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1476f0...7a3997` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1487e1...e51098` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x15c2fb...6b94a6`; ethereum `0x1f7d58...c759b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bd6c9...d30770` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1da11e...1696b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1da520...00a82d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27825e...4d1fa0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28d7fa...61c67e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2aeba9...1f4672` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b7d4e...9342a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d2918...d4888b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d3518...a7d459` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ebbe0...1337fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39a993...98c0af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b1f0a...03616c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c9e45...093e74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e5777...fb3563` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fc8cd...dc68a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x432391...7385da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43eb3e...b16bdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45c9d9...3f09e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b17b0...15380d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f8048...692936` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ff6e3...fecf36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x505b5c...335027` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x505bc1...b1a39e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54b816...9db0d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55d010...a54203` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5715e6...cae155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a9298...31707b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b7ac0...9a706d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x602d79...4eb15d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x687aef...edcb9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6abe6b...72521a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x711138...cded63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x775826...01dd5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78003d...5b9fe2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7aaa94...66f040` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x840449...a0c928` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x847274...360c2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84910b...6eab58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x874566...4e6b1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88db8d...b6c081` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89f8c9...fdbbeb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f3ea9...a9428f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x901f06...22492f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92a352...bc01f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96dfad...6978f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98bf71...cd120c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ec90c...cfd9d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f1339...228020` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1a717...85aac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2327f...54929d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2c814...1abeda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa69dd0...74b399` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa75018...6804f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab769b...637061` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1a3f6...01fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2ba12...f700b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2c41d...67364f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4165b...b565f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb445db...8c121e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb510cd...e15174` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbed2c...0bfbd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbea847...78f1bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0631e...c90447` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc29841...bf9bba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6c87c...8368ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca9fec...056f0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc96c5...7c0094` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd731d...8ff9a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1254a...192917` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd130a9...6ab29b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd168b6...742fd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd55f01...11cce8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0xd74e56...6002b3`; ethereum `0xed74fd...ace296` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8c515...2c045b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda71b4...6326bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd2e73...c35f26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd8fdf...116ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf70a6...4bbf1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0dd03...6da29d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4752e...97d8d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4a19f...a4a45f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf60824...1618d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf73ac7...42f2f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd2f78...dd30d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe4b09...7668d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [202505-Altitude.pdf](https://github.com/OmegaAudits/audits/blob/main/202505-Altitude.pdf) | Team Omega | Audit | 2025-05 | aging | Direct | contract_name | 2 | n/a |
| [Altitude-v2-Audit-Report.pdf](https://oxor-io.github.io/public_audits/Altitude/Altitude-v2-Audit-Report.pdf) | Oxorio | Audit | 2025-05 | aging | Direct | contract_name | 4 | n/a |
| [202501-Altitude-parallel-farming.pdf](https://github.com/OmegaAudits/audits/blob/main/202501-Altitude-parallel-farming.pdf) | Team Omega | Audit | 2025-05 | aging | Direct | contract_name | 1 | n/a |
| [202408-Altitude-morpho-integration.pdf](https://github.com/OmegaAudits/audits/blob/main/202408-Altitude-morpho-integration.pdf) | Team Omega | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |
| [Altitude-Audit-Report.pdf](https://oxor-io.github.io/public_audits/Altitude/Altitude-Audit-Report.pdf) | Oxorio | Audit | 2024-08 | aging | Direct | contract_name | 4 | n/a |
| [202207-Altitude-v1.0.pdf](https://github.com/OmegaAudits/audits/blob/main/202207-Altitude-v1.0.pdf) | Team Omega | Audit | 2024-07 | stale | Direct | contract_name | 1 | n/a |
| [202310-Altitude-v1.1.pdf](https://github.com/OmegaAudits/audits/blob/main/202310-Altitude-v1.1.pdf) | Team Omega | Audit | 2024-07 | stale | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2ddd6d...333169`](./contracts/ethereum-1/0x2ddd6d576615e6afa823adedde8dc67198333169/) | SupplyToken | token | $5,310,820.15 | Verified native implementation with $5,310,820.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5481d5...0595d5`](./contracts/ethereum-1/0x5481d5627aa367aa677442a120fd1021ab0595d5/) | VaultERC20 | unknown | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17bd4c...87fa25`](./contracts/ethereum-1/0x17bd4cf21a21d2ce938fed2d54ca061f4f87fa25/) | FarmBufferDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x367b70...d5b70b`](./contracts/ethereum-1/0x367b70ea04257165f6a0f512e876ee8c06d5b70b/) | FarmBufferDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b96e5...d418c0`](./contracts/ethereum-1/0x5b96e535525e931848a705cc0e14611437d418c0/) | FarmBufferDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8797a8...be02e8`](./contracts/ethereum-1/0x8797a833405e8c1dcda552d8cf807dc47bbe02e8/) | FlashloanHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3c732...15faaa`](./contracts/ethereum-1/0xe3c732c02ff2fee1eb9714742e9770f9e415faaa/) | RebalanceAutomation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbaeb17...852bdc`](./contracts/ethereum-1/0xbaeb17360ec019529934ff7be22567d069852bdc/) | StrategyAaveV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4b973...8be9f8`](./contracts/ethereum-1/0xb4b9732dfa1b27bd1d689f864a3bcee7e88be9f8/) | StrategyPendlePT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1a846...1971b2`](./contracts/ethereum-1/0xe1a846c6d6f8e0c1cf9360a9f9e76e98ff1971b2/) | SupplyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b8566...5249c2`](./contracts/ethereum-1/0x0b856647cd3946db3fdfdaabb8770bdfe45249c2/) | UserLiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37f310...b6e7b9`](./contracts/ethereum-1/0x37f3108cc26d69833105463ba46e982e85b6e7b9/) | VaultRegistryV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3dbe2d...c9b9cd`](./contracts/ethereum-1/0x3dbe2dbc03bbc3c1fa63b94af54f473303c9b9cd/) | VaultRegistryV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89cfee...af17ba`](./contracts/ethereum-1/0x89cfeeb9031f0dd7b3bb7eb9c1622cef1aaf17ba/) | VaultRegistryV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 7 |
| standard_library | 0 |
| needs_review | 90 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=13, extraction_exact=8

Fork inheritance lineage and inherited audits are included when available.
