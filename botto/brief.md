# Agentic Audit Brief: Botto

## Project Overview

- Project: Botto (`botto`)
- Website: [https://botto.com/](https://botto.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T22:08:14.646Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-7a87
- Chains: base, ethereum
- Contract surface: 18 unique implementations (33 raw deployments)
- DeFi Llama TVL: $4,107,150.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Botto is a decentralized autonomous AI artist governed and trained by its community. The protocol supports the creation and curation of AI-generated art through DAO governance, with token, staking, liquidity-mining, and rewards contracts serving as supporting protocol components.

### Architecture

The Governance family controls parameters for Liquidity Mining and Rewards, which distribute BOTTO tokens to users. The Token family provides the BOTTO token used across all families, with a bridged version on Base for cross-chain functionality.

## Audit Coverage Summary

- Verified implementations audited: 0/13 (0.0%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 18
- Raw deployments: 33
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AccessPass | unknown | base | [`0x49a063...c6bd85`](./contracts/base-8453/0x49a063cd1ab8b5a2980059bc41d82aaa70c6bd85/) | ⚠️ Unaudited |
| BOTTO | unknown | ethereum | [`0x9dfad1...845bba`](./contracts/ethereum-1/0x9dfad1b7102d46b1b197b90095b5c4e9f5845bba/) | ⚠️ Unaudited |
| BottoAccessPasses | unknown | ethereum | 2 deployments: ethereum [`0x4465f6...de0072`](./contracts/ethereum-1/0x4465f6f545ce5654362960e56d80ca6315de0072/); ethereum `0x6802df...65cfd3` | ⚠️ Unaudited |
| BottoActiveRewards | unknown | base | 3 deployments: ethereum `0x932982...cb4c47`; base [`0x19cd39...91e8a6`](./contracts/base-8453/0x19cd3998f106ecc40ee7668c19c47e18b491e8a6/); base `0x61b4a8...78038d` | ⚠️ Unaudited |
| BottoGovernance | unknown | ethereum | 3 deployments: ethereum [`0x8a7a59...84f0a9`](./contracts/ethereum-1/0x8a7a5991aaf142b43e58253bd6791e240084f0a9/); base [`0x8a7a59...84f0a9`](./contracts/base-8453/0x8a7a5991aaf142b43e58253bd6791e240084f0a9/); base `0xed39da...e621ef` | ⚠️ Unaudited |
| BottoGovernanceV2 | unknown | ethereum | 2 deployments: ethereum [`0x19cd39...91e8a6`](./contracts/ethereum-1/0x19cd3998f106ecc40ee7668c19c47e18b491e8a6/); ethereum `0x4cb641...4bdfc4` | ⚠️ Unaudited |
| BottoLiquidityMining | unknown | ethereum | 2 deployments: ethereum [`0xa46f99...c92649`](./contracts/ethereum-1/0xa46f99622aae6f666952c4cbe151efcb19c92649/); ethereum `0xd13dc4...0e338b` | ⚠️ Unaudited |
| BottoLiquidityMiningV2 | unknown | ethereum | 2 deployments: ethereum [`0x491299...48fa81`](./contracts/ethereum-1/0x49129912b35283dc64476641837dfe856b48fa81/); ethereum `0xf8515c...f853fd` | ⚠️ Unaudited |
| BottoManifestoCollection | unknown | ethereum | 2 deployments: ethereum [`0x1660f3...db7159`](./contracts/ethereum-1/0x1660f30e91f6d81061c27883e9cfc446ffdb7159/); ethereum `0xcb04ca...d310b5` | ⚠️ Unaudited |
| BottoRetroactiveRewardV2 | unknown | ethereum | 2 deployments: ethereum [`0x2e251b...2535da`](./contracts/ethereum-1/0x2e251bff6c091a1752e1f9983882f7ade82535da/); ethereum `0xe743fa...22e370` | ⚠️ Unaudited |
| BottoRewards | unknown | ethereum | [`0x5f0f39...44971a`](./contracts/ethereum-1/0x5f0f397a8f423ee97d4125bfb00d41bcec44971a/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | [`0x24914c...6e6a0c`](./contracts/base-8453/0x24914cb6bd01e6a0cf2a9c0478e33c25926e6a0c/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 6 deployments: ethereum [`0x61b4a8...78038d`](./contracts/ethereum-1/0x61b4a813fd4e361d40339bca4d8d4e83be78038d/); ethereum `0x6bb104...292efb`; ethereum `0x74fb90...4686ad`; ethereum `0x80b649...ce7a06`; ethereum `0xff2395...59b5c3`; base `0x86b11a...4f9357` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x08b5d7...0d22cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2c397d...56b569` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x49a063...c6bd85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x550d1b...c2e192` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc1929b...63f22f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit: V2 Governance Contract](https://prong-distance-e49.notion.site/Botto-Governance-V2-Report-e4f25230b7e34187abdb1b7d55f1ab4c) | GoldmanDAO | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit: NFT Contracts](https://www.notion.so/Botto-NFTs-V2-Report-b242862b0dcc48dd94bdfe2cee517660) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [[Audita]() first conducted audits of Botto's Ethereum mainnet contract ecosystem in April 2023. The audit is available for perusal and covers all of Botto's existing contracts:](https://audita.io/) | Audita | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x49a063...c6bd85`](./contracts/base-8453/0x49a063cd1ab8b5a2980059bc41d82aaa70c6bd85/) | AccessPass | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dfad1...845bba`](./contracts/ethereum-1/0x9dfad1b7102d46b1b197b90095b5c4e9f5845bba/) | BOTTO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4465f6...de0072`](./contracts/ethereum-1/0x4465f6f545ce5654362960e56d80ca6315de0072/) | BottoAccessPasses | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a7a59...84f0a9`](./contracts/ethereum-1/0x8a7a5991aaf142b43e58253bd6791e240084f0a9/) | BottoGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa46f99...c92649`](./contracts/ethereum-1/0xa46f99622aae6f666952c4cbe151efcb19c92649/) | BottoLiquidityMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x491299...48fa81`](./contracts/ethereum-1/0x49129912b35283dc64476641837dfe856b48fa81/) | BottoLiquidityMiningV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f0f39...44971a`](./contracts/ethereum-1/0x5f0f397a8f423ee97d4125bfb00d41bcec44971a/) | BottoRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2595] Audit: V2 Governance Contract
- [2596] Audit: NFT Contracts
- [2597] [Audita]() first conducted audits of Botto's Ethereum mainnet contract ecosystem in April 2023. The audit is available for perusal and covers all of Botto's existing contracts:

Fork inheritance lineage and inherited audits are included when available.
