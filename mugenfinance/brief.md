# Agentic Audit Brief: MugenFinance

## Project Overview

- Project: MugenFinance (`mugenfinance`)
- Website: [https://www.mugenfinance.com](https://www.mugenfinance.com)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:59:07.820Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum
- Contract surface: 12 unique implementations (19 raw deployments)
- DeFi Llama TVL: $3,354,846.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

MugenFinance is a DeFi project tracked by DefiLlama on Arbitrum One and associated with the on-chain Mugen token contract. The current mugenfinance.com homepage appears stale, mismatched, or repurposed and should not be used as live protocol evidence. Protocol details should be verified against DefiLlama, archived/project documentation, and contract source with manual review; claims about governance and auto-compounding should not be included unless corroborated.

### Architecture

The Mugen token is the core asset, while xMugen represents staked Mugen for yield accrual. The Treasury contract manages protocol-owned funds and supports the yield strategies.

## Audit Coverage Summary

- Verified implementations audited: 0/10 (0.0%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 12
- Raw deployments: 19
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ArbitrumSwaps | unknown | arbitrum | [`0x4f1bc1...796479`](./contracts/arbitrum-42161/0x4f1bc106664c174aad15df9beb5c168511796479/) | ⚠️ Unaudited |
| CapStrategy | core_logic | arbitrum | 4 deployments: arbitrum [`0x029782...6b702e`](./contracts/arbitrum-42161/0x029782b403811e46a5a45983bbc59bbc766b702e/); arbitrum `0x21df7f...768a8e`; arbitrum `0x93db14...4e3cb8`; arbitrum `0xe4c071...258f1d` | ⚠️ Unaudited |
| FeeCollector | unknown | arbitrum | [`0xb09f29...14ac8a`](./contracts/arbitrum-42161/0xb09f29e2ba229fdb2bb68dd0e2049a76c014ac8a/) | ⚠️ Unaudited |
| GMXStrategy | core_logic | arbitrum | 4 deployments: arbitrum [`0x5ffeed...62e563`](./contracts/arbitrum-42161/0x5ffeed2bdfce53a64c31b86bcd19d4ca6d62e563/); arbitrum `0x9a41d4...34970e`; arbitrum `0xbbff5c...dd3f22`; arbitrum `0xd6ee20...02634f` | ⚠️ Unaudited |
| Mugen | unknown | arbitrum | [`0xfc77b8...22856e`](./contracts/arbitrum-42161/0xfc77b86f3ade71793e1eec1e7944db074922856e/) | ⚠️ Unaudited |
| MugenRedemption | unknown | arbitrum | [`0xfae58b...b35860`](./contracts/arbitrum-42161/0xfae58b1f4d70619b0810239ae5382af2dbb35860/) | ⚠️ Unaudited |
| StrategyHub | core_logic | arbitrum | [`0x002361...22296e`](./contracts/arbitrum-42161/0x00236173844ac7f7091d69d6cbf7e0430222296e/) | ⚠️ Unaudited |
| Treasury | operational_periphery | arbitrum | [`0xf7be84...86f3dd`](./contracts/arbitrum-42161/0xf7be8476ae27d27ebc236e33020150b23a86f3dd/) | ⚠️ Unaudited |
| xMugen | unknown | arbitrum | 2 deployments: arbitrum [`0x25b9f8...3d15ea`](./contracts/arbitrum-42161/0x25b9f82d1f1549f97b86bd0873738e30f23d15ea/); arbitrum `0xc9bec4...14c58d` | ⚠️ Unaudited |
| YieldDistributor | operational_periphery | arbitrum | [`0xfc22da...3fad8b`](./contracts/arbitrum-42161/0xfc22dafae9ef61535019df250e1f60a21c3fad8b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | `0x510e2e...122100` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5a45fa...47ff65` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x029782...6b702e`](./contracts/arbitrum-42161/0x029782b403811e46a5a45983bbc59bbc766b702e/) | CapStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb09f29...14ac8a`](./contracts/arbitrum-42161/0xb09f29e2ba229fdb2bb68dd0e2049a76c014ac8a/) | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfc77b8...22856e`](./contracts/arbitrum-42161/0xfc77b86f3ade71793e1eec1e7944db074922856e/) | Mugen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfae58b...b35860`](./contracts/arbitrum-42161/0xfae58b1f4d70619b0810239ae5382af2dbb35860/) | MugenRedemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x002361...22296e`](./contracts/arbitrum-42161/0x00236173844ac7f7091d69d6cbf7e0430222296e/) | StrategyHub | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf7be84...86f3dd`](./contracts/arbitrum-42161/0xf7be8476ae27d27ebc236e33020150b23a86f3dd/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x25b9f8...3d15ea`](./contracts/arbitrum-42161/0x25b9f82d1f1549f97b86bd0873738e30f23d15ea/) | xMugen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfc22da...3fad8b`](./contracts/arbitrum-42161/0xfc22dafae9ef61535019df250e1f60a21c3fad8b/) | YieldDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
