# Agentic Audit Brief: Botto

## Project Overview

- Project: Botto (`botto`)
- Website: [https://botto.com/](https://botto.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:40.347Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $2,917,186.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Botto is a decentralized autonomous AI artist governed and trained by its community. The protocol supports the creation and curation of AI-generated art through DAO governance, with token, staking, liquidity-mining, and rewards contracts serving as supporting protocol components.

### Architecture

The Governance family controls parameters for Liquidity Mining and Rewards, which distribute BOTTO tokens to users. The Token family provides the BOTTO token used across all families, with a bridged version on Base for cross-chain functionality.

## Contract Surface Quality

- Indexed contracts: 34; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 16 inactive, 14 singleton, 0 uninitialized.
- Deployment units: 0/7 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessPass | unknown | base | n/a | [`0x49a063...c6bd85`](./contracts/base-8453/0x49a063cd1ab8b5a2980059bc41d82aaa70c6bd85/) | ⚠️ Unaudited |
| BOTTO | unknown | ethereum | n/a | [`0x9dfad1...845bba`](./contracts/ethereum-1/0x9dfad1b7102d46b1b197b90095b5c4e9f5845bba/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0x24914c...6e6a0c`](./contracts/base-8453/0x24914cb6bd01e6a0cf2a9c0478e33c25926e6a0c/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x9ff68f...64bb66`](./contracts/ethereum-1/0x9ff68f61ca5eb0c6606dc517a9d44001e564bb66/) | ⚠️ Unaudited |

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
| [Audit: V2 Governance Contract](https://prong-distance-e49.notion.site/Botto-Governance-V2-Report-e4f25230b7e34187abdb1b7d55f1ab4c) | GoldmanDAO | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit: NFT Contracts](https://www.notion.so/Botto-NFTs-V2-Report-b242862b0dcc48dd94bdfe2cee517660) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [[Audita]() first conducted audits of Botto's Ethereum mainnet contract ecosystem in April 2023. The audit is available for perusal and covers all of Botto's existing contracts:](https://audita.io/) | Audita | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x49a063...c6bd85`](./contracts/base-8453/0x49a063cd1ab8b5a2980059bc41d82aaa70c6bd85/) | AccessPass | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dfad1...845bba`](./contracts/ethereum-1/0x9dfad1b7102d46b1b197b90095b5c4e9f5845bba/) | BOTTO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 1 |
| standard_library | 1 |
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
