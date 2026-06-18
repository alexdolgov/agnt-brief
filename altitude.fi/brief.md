# Agentic Audit Brief: Altitude.Fi

⚠️ Lifecycle status: DECLINING - TVL dropped 19.2% over 90 days

## Project Overview

- Project: Altitude.Fi (`altitude.fi`)
- Website: [https://www.altitude.fi/](https://www.altitude.fi/)
- Lifecycle: declining (Tier 0, 69.8% below peak)
- Generated: 2026-06-18T12:06:25.897Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-a45b
- Chains: ethereum
- Contract surface: 25 unique implementations (36 raw deployments)
- DeFi Llama TVL: $7,607,623.17
- On-chain TVL (included contracts): $669.92
- TVL by chain: Ethereum $669.92

## Project Description

Altitude.Fi is an Ethereum DeFi borrowing and lending aggregator focused on self-repaying loans against BTC and ETH collateral. The protocol routes collateral and debt positions through integrations such as Aave, Morpho, and other venues to optimize rates, uses vault-based accounting with supply and debt tokens, and applies yield/rebalancing mechanics to help pay down USDC debt over time.

### Architecture

All product families share the core Altitude.Fi contracts (VaultERC20, SupplyToken, DebtToken) as their implementation logic. The v2 pools (cbBTC-USDC and wstETH-USDC) reuse the same FarmBufferDispatcher and VaultRegistryV1 infrastructure, while the v1 wstETH-USDC pool appears to be an earlier, less modular version.

## Contract Surface Quality

- Indexed contracts: 196; live-surface contracts included: 36 (19 live, 17 unknown).
- Excluded by liveness: 126 inactive, 34 singleton, 0 uninitialized.
- Deployment units: 1/16 live.
- Detected codebases: aave-v2
- Unverified dependencies: 3/26.

## Audit Coverage Summary

- Verified implementations audited: 5/15 (33.3%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 25
- Raw deployments: 36
- Audits discovered: 7
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $669.92
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 7 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $669.92 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Oxorio | Tier 2 | 4 | 26.7% | 2025-05 |
| Team Omega | Tier 2 | 4 | 26.7% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConfigurableManager | governance | ethereum | n/a | [`0xff75e7...9ee8d6`](./contracts/ethereum-1/0xff75e700356f8eac53d771ab5398d4c5309ee8d6/) | ✅ Audited |
| MorphoVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0xb649d1...0cef44`](./contracts/ethereum-1/0xb649d15333f5d267d6b385e2b2c9923f360cef44/); ethereum `0xc1d41a...8393dc`; ethereum `0xcd91fa...cb1068` | ✅ Audited |
| RebalanceIncentivesController | governance | ethereum | n/a | 4 deployments: ethereum [`0x052f21...5c6f16`](./contracts/ethereum-1/0x052f21dce83f8f9e5a0396a79500d875c05c6f16/); ethereum `0x560357...ae768d`; ethereum `0x5e55df...fc5f04`; ethereum `0x8f18b3...dc4d52` | ✅ Audited |
| TokensFactory | registry | ethereum | n/a | [`0xf10b37...d0bcb0`](./contracts/ethereum-1/0xf10b3792009bee22e8c762ea2a79cb97bed0bcb0/) | ✅ Audited |
| VaultERC20 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x57192e...af1536`](./contracts/ethereum-1/0x57192ec32e649cf51380b8b314b26e73aaaf1536/); ethereum `0xe59247...7d4cec` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolInstance | core_logic | ethereum | unit-36952 | [`0x87870b...4fa4e2`](./contracts/ethereum-1/0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2/) | ⚠️ Unaudited |
| FlashloanHelper | periphery | ethereum | n/a | [`0x8797a8...be02e8`](./contracts/ethereum-1/0x8797a833405e8c1dcda552d8cf807dc47bbe02e8/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| MorphoFlashLoanStrategy | core_logic | ethereum | n/a | [`0xf2cf52...580b02`](./contracts/ethereum-1/0xf2cf5261575d4f6f51d7575a154bf17412580b02/) | ⚠️ Unaudited |
| MorphoVaultV2 | core_logic | ethereum | n/a | [`0xd36d47...c1f48e`](./contracts/ethereum-1/0xd36d4739b5392481bcff4035db4c8462f1c1f48e/) | ⚠️ Unaudited |
| RebalanceAutomation | unknown | ethereum | n/a | [`0xe3c732...15faaa`](./contracts/ethereum-1/0xe3c732c02ff2fee1eb9714742e9770f9e415faaa/) | ⚠️ Unaudited |
| StrategyAaveV3 | core_logic | ethereum | n/a | [`0xbaeb17...852bdc`](./contracts/ethereum-1/0xbaeb17360ec019529934ff7be22567d069852bdc/) | ⚠️ Unaudited |
| StrategyPendlePT | core_logic | ethereum | n/a | 6 deployments: ethereum [`0xb4b973...8be9f8`](./contracts/ethereum-1/0xb4b9732dfa1b27bd1d689f864a3bcee7e88be9f8/); ethereum `0xbd1e64...44a407`; ethereum `0xf3a574...85a87b`; ethereum `0xf3d73e...92ec13`; ethereum `0xf43986...952e0d`; ethereum `0xf9de0e...5dd606` | ⚠️ Unaudited |
| UniswapV3Strategy | core_logic | ethereum | n/a | [`0xfde703...476848`](./contracts/ethereum-1/0xfde703415c8b6f63d9db15f5e27018b41c476848/) | ⚠️ Unaudited |
| UserLiquidationHelper | periphery | ethereum | n/a | [`0x0b8566...5249c2`](./contracts/ethereum-1/0x0b856647cd3946db3fdfdaabb8770bdfe45249c2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x840449...a0c928` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x874566...4e6b1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd130a9...6ab29b` | ❓ Unverified |
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
| [**report**](https://github.com/OmegaAudits/audits/blob/main/202505-Altitude.pdf) | Team Omega | Audit | 2025-05 | aging | Direct | contract_name | 6 | high |
| [**report**](https://oxor-io.github.io/public_audits/Altitude/Altitude-v2-Audit-Report.pdf) | Oxorio | Audit | 2025-05 | aging | Direct | contract_name | 8 | high |
| [**report**](https://github.com/OmegaAudits/audits/blob/main/202501-Altitude-parallel-farming.pdf) | Team Omega | Audit | 2025-05 | aging | Direct | contract_name | 1 | high |
| [**report**](https://github.com/OmegaAudits/audits/blob/main/202408-Altitude-morpho-integration.pdf) | Team Omega | Audit | 2025-01 | aging | Direct | contract_name | 3 | high |
| [**report**](https://oxor-io.github.io/public_audits/Altitude/Altitude-Audit-Report.pdf) | Oxorio | Audit | 2024-08 | aging | Direct | contract_name | 8 | high |
| [**report 1**](https://github.com/OmegaAudits/audits/blob/main/202207-Altitude-v1.0.pdf) | Team Omega | Audit | 2024-07 | aging | Direct | contract_name | 2 | high |
| [**report 2**](https://github.com/OmegaAudits/audits/blob/main/202310-Altitude-v1.1.pdf) | Team Omega | Audit | 2024-07 | aging | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8797a8...be02e8`](./contracts/ethereum-1/0x8797a833405e8c1dcda552d8cf807dc47bbe02e8/) | FlashloanHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3c732...15faaa`](./contracts/ethereum-1/0xe3c732c02ff2fee1eb9714742e9770f9e415faaa/) | RebalanceAutomation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbaeb17...852bdc`](./contracts/ethereum-1/0xbaeb17360ec019529934ff7be22567d069852bdc/) | StrategyAaveV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4b973...8be9f8`](./contracts/ethereum-1/0xb4b9732dfa1b27bd1d689f864a3bcee7e88be9f8/) | StrategyPendlePT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b8566...5249c2`](./contracts/ethereum-1/0x0b856647cd3946db3fdfdaabb8770bdfe45249c2/) | UserLiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 6 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=164

Zero-match audit list:

- [1994] **report 2**

Fork inheritance lineage and inherited audits are included when available.
