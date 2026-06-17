# Agentic Audit Brief: Seamless Protocol

⚠️ Lifecycle status: DEAD - TVL dropped 77.7% over 90 days

## Project Overview

- Project: Seamless Protocol (`seamless-protocol`)
- Website: [https://www.seamlessprotocol.com](https://www.seamlessprotocol.com)
- Lifecycle: dead (Tier 1, declining)
- Generated: 2026-06-17T07:00:48.782Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, ethereum
- Contract surface: 19 unique implementations (34 raw deployments)
- DeFi Llama TVL: $37,153,928.00
- On-chain TVL (included contracts): $29,433.51
- TVL by chain: Base $29,433.51

## Project Description

Seamless Protocol historically provided non-custodial lending and borrowing markets and tokenized leveraged or complex DeFi strategies on Base and Ethereum, including integrations with Morpho and governance-controlled emissions and rewards. The project is currently winding down, as announced on its homepage.

### Architecture

The Governance family controls protocol parameters and emissions that affect all other families. Leverage Tokens and the weETH/WETH product both rely on Morpho lending adapters and rebalancing infrastructure, while Seamless Vaults on Morpho share the same underlying lending market integration.

## Contract Surface Quality

- Indexed contracts: 321; live-surface contracts included: 34 (30 live, 4 unknown).
- Excluded by liveness: 132 inactive, 155 singleton, 0 uninitialized.
- Deployment units: 5/76 live.
- Detected codebases: aave-v2
- Unverified dependencies: 5/175.

## Audit Coverage Summary

- Verified implementations audited: 4/19 (21.1%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 19
- Raw deployments: 34
- Audits discovered: 5
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $29,433.51
- Latest audit: 2025-10 (fresh)
- Staleness: 1 fresh, 4 aging, 0 stale, 0 unknown
- Tier 1 coverage: 21.1% (Sherlock, Spearbit)
- Note: This protocol is classified as [dead]. ASD of $29,433.51 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 4 | 21.1% | 2025-10 |
| Sherlock | Tier 1 | 3 | 15.8% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LeverageRouter | adapter | base | n/a | 3 deployments: ethereum `0xb0764d...6e6dba`; base [`0x00c669...a11a5c`](./contracts/base-8453/0x00c66934ebca0f2a845812bc368b230f6da11a5c/); base `0xdba92f...9a887c` | ✅ Audited |
| MorphoLendingAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x00c669...a11a5c`](./contracts/ethereum-1/0x00c66934ebca0f2a845812bc368b230f6da11a5c/); ethereum `0xb224f5...129817`; ethereum `0xcb1eff...3aee58`; ethereum `0xe33eaf...9bd809`; ethereum `0xe9a32a...298f1f`; base `0x9558b3...ab253f` | ✅ Audited |
| MorphoLendingAdapterFactory | adapter | ethereum | n/a | [`0xce05fb...7ded71`](./contracts/ethereum-1/0xce05fbed9260810bdded179adfdaf737be7ded71/) | ✅ Audited |
| PricingAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x44cceb...76c88f`](./contracts/ethereum-1/0x44ccebea0dac17105e91a59e182f65f8d176c88f/); base `0xce05fb...7ded71` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WrappedERC20PermissionedDeposit | token | base | n/a | 4 deployments: base [`0x3e8707...da2c5f`](./contracts/base-8453/0x3e8707557d4ad25d6042f590bcf8a06071da2c5f/); base `0x85082b...d062be`; base `0x9660af...645755`; base `0xc9ae3b...98c9e4` | ⚠️ Unaudited |
| LoopStrategy | core_logic | base | unit-29392 | [`0x258730...ea8a4e`](./contracts/base-8453/0x258730e23cf2f25887cb962d32bd10b878ea8a4e/) | ⚠️ Unaudited |
| LoopStrategy | core_logic | base | unit-29411 | [`0x5ed616...c09c8a`](./contracts/base-8453/0x5ed6167232b937b0a5c84b49031139f405c09c8a/) | ⚠️ Unaudited |
| LoopStrategy | core_logic | base | unit-29417 | [`0x68dfad...80291e`](./contracts/base-8453/0x68dfad1a72c63897fec5fb9de9fdb5670280291e/) | ⚠️ Unaudited |
| LoopStrategy | core_logic | base | unit-29395 | [`0x2fb1be...ee78f4`](./contracts/base-8453/0x2fb1bea0a63f77efa77619b903b2830b52ee78f4/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | unit-29432 | [`0xa1b5f2...955a22`](./contracts/base-8453/0xa1b5f2cc9b407177cd8a4acf1699fa0b99955a22/) | ⚠️ Unaudited |
| L2Pool | core_logic | base | n/a | [`0x918e3d...174323`](./contracts/base-8453/0x918e3dfabd8c69a54d542cdeea4a3e0616174323/) | ⚠️ Unaudited |
| LeverageTokenDeploymentBatcher | token | ethereum | n/a | [`0x4466d5...0a0352`](./contracts/ethereum-1/0x4466d52b714ef32657db89ec61fab1b7e30a0352/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | n/a | 3 deployments: base [`0x27d8c7...c65c18`](./contracts/base-8453/0x27d8c7273fd3fcc6956a0b370ce5fd4a7fc65c18/); base `0x5a47c8...22f3c7`; base `0x616a4e...273738` | ⚠️ Unaudited |
| MulticallExecutor | periphery | ethereum | n/a | 2 deployments: ethereum [`0x16d02e...fd22e1`](./contracts/ethereum-1/0x16d02ebd89988cad1ce945807b963ab7a9fd22e1/); base `0x9d04f6...64220e` | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | [`0x16e485...bda6cf`](./contracts/base-8453/0x16e48501634dfbb52f556430d788c110e5bda6cf/) | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | base | n/a | [`0x0e02eb...39f3a0`](./contracts/base-8453/0x0e02eb705be325407707662c6f6d3466e939f3a0/) | ⚠️ Unaudited |
| SeamL1 | unknown | ethereum | n/a | [`0x6b66cc...e726ba`](./contracts/ethereum-1/0x6b66ccd1340c479b07b390d326eadcbb84e726ba/) | ⚠️ Unaudited |
| VeloraAdapter | adapter | base | n/a | 2 deployments: ethereum `0xc4e581...7db6ba`; base [`0x5c37eb...b3e351`](./contracts/base-8453/0x5c37eb148d4a261acd101e2b997a0f163fb3e351/) | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | base | n/a | [`0xaeeb38...aa1af3`](./contracts/base-8453/0xaeeb3898ede6a6e86864688383e211132baa1af3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Cantina](https://cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | 6 | medium |
| [Sherlock](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2025.05.19%20-%20Final%20-%20Seamless%20Protocol%20Collaborative%20Audit%20Report.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 10 | high |
| [Cantina - 1 Oct 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Cantina%20-%201%20Oct%202025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | 5 | high |
| [Cantina - 8 May 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Cantina%20-%208%20May%202025.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 6 | medium |
| [Sherlock - 8 May 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Sherlock%20-%208%20May%202025.pdf) | Sherlock | Contest | 2025-05 | aging | Direct | contract_name | 10 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x3e8707...da2c5f`](./contracts/base-8453/0x3e8707557d4ad25d6042f590bcf8a06071da2c5f/) | WrappedERC20PermissionedDeposit | token | $14,727.45 | Verified native implementation with $14,727.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x918e3d...174323`](./contracts/base-8453/0x918e3dfabd8c69a54d542cdeea4a3e0616174323/) | L2Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4466d5...0a0352`](./contracts/ethereum-1/0x4466d52b714ef32657db89ec61fab1b7e30a0352/) | LeverageTokenDeploymentBatcher | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16d02e...fd22e1`](./contracts/ethereum-1/0x16d02ebd89988cad1ce945807b963ab7a9fd22e1/) | MulticallExecutor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16e485...bda6cf`](./contracts/base-8453/0x16e48501634dfbb52f556430d788c110e5bda6cf/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b66cc...e726ba`](./contracts/ethereum-1/0x6b66ccd1340c479b07b390d326eadcbb84e726ba/) | SeamL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5c37eb...b3e351`](./contracts/base-8453/0x5c37eb148d4a261acd101e2b997a0f163fb3e351/) | VeloraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xaeeb38...aa1af3`](./contracts/base-8453/0xaeeb3898ede6a6e86864688383e211132baa1af3/) | WrappedTokenGatewayV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 4 |
| standard_library | 5 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=2
- Match method counts: extraction_exact=127

Fork inheritance lineage and inherited audits are included when available.
