# Agentic Audit Brief: Capx AI

## Project Overview

- Project: Capx AI (`capx-ai`)
- Website: [https://capx.ai](https://capx.ai)
- Lifecycle: active (Tier 0, 17.6% below peak)
- Generated: 2026-06-17T07:01:00.898Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $2,216,946.73
- On-chain TVL (included contracts): $1,946,022.99
- TVL by chain: Bsc $1,946,022.99

## Project Description

Capx AI is an Ethereum Layer 2 / Capx Chain ecosystem for building, tokenizing, owning, and trading AI apps. The listed BSC FactoryBurnMintERC20 contract should be treated as an associated factory/registry contract rather than the complete protocol surface or the TVL-bearing Capx Chain trading infrastructure.

### Architecture

The single product family contains the core factory contract, which serves as the registry and deployer for all AI agent tokens; no additional infrastructure contracts are present.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (1 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,946,022.99
- Latest audit: 2025-10 (fresh)
- Staleness: 1 fresh, 1 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PancakeV3Pool | core_logic | bsc | n/a | [`0x39aae2...390ab7`](./contracts/bsc-56/0x39aae24d8c04e6aa9405fa7583a9e7bacb390ab7/) | ⚠️ Unaudited |
| FactoryBurnMintERC20 | registry | bsc | n/a | [`0x71fb17...42ed5f`](./contracts/bsc-56/0x71fb1795b084ff2b65eabf51cad22bbefd42ed5f/) | ⚠️ Unaudited |

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
| [DL audit link](https://www.capx.ai/openzeppelin-audit-report.pdf) | OpenZeppelin | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Dedaub - December 20, 2024.pdf](https://github.com/Othentic-Labs/core-contracts/blob/main/audits/Dedaub%20-%20December%2020%2C%202024.pdf) | Dedaub | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Dedaub - September 23, 2024.pdf](https://github.com/Othentic-Labs/core-contracts/blob/main/audits/Dedaub%20-%20September%2023%2C%202024.pdf) | Dedaub | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Security_Review_Final_Report__Othentic_Rewards_V2.pdf](https://github.com/Othentic-Labs/core-contracts/blob/main/audits/Security_Review_Final_Report__Othentic_Rewards_V2.pdf) | Unknown | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x71fb17...42ed5f`](./contracts/bsc-56/0x71fb1795b084ff2b65eabf51cad22bbefd42ed5f/) | FactoryBurnMintERC20 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2880] DL audit link
- [14480] Dedaub - December 20, 2024.pdf
- [14481] Dedaub - September 23, 2024.pdf
- [14482] Security_Review_Final_Report__Othentic_Rewards_V2.pdf

Fork inheritance lineage and inherited audits are included when available.
