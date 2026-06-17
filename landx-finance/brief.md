# Agentic Audit Brief: LandX Finance

## Project Overview

- Project: LandX Finance (`landx-finance`)
- Website: [https://landx.fi](https://landx.fi)
- Lifecycle: active (Tier 0, 21.4% below peak)
- Generated: 2026-06-17T07:01:00.802Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 9 unique implementations (12 raw deployments)
- DeFi Llama TVL: $1,774,635.96
- On-chain TVL (included contracts): $27,337.66
- TVL by chain: Ethereum $27,337.66

## Project Description

LandX Finance is an agriculture/RWA financing protocol that provides on-chain exposure to yield from future harvests backed or secured by farmland. Its CToken and supporting infrastructure are part of a system for accessing agricultural yield opportunities, without implying direct farmland ownership, farmland shares, or crop rent distributions.

### Architecture

CToken represents tokenized farmland shares, OraclePrices provides price feeds for asset valuation, and RentFoundation likely manages rental income distribution, all deployed together as a cohesive unit.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 12 (6 live, 6 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 21; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/9 (22.2%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 12
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $27,337.66
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 2 | 22.2% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CToken | token | ethereum | n/a | [`0x44c7ac...473ac9`](./contracts/ethereum-1/0x44c7aca9c406ded532748194da0d691808473ac9/) | ✅ Audited |
| OraclePrices | operational_periphery | ethereum | n/a | [`0xf49a08...da8784`](./contracts/ethereum-1/0xf49a0863d532e6036d693fbacfd2417aebda8784/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniswapV3Pool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x8c0023...84f1d6`](./contracts/ethereum-1/0x8c00238b17397a194c4dd5a623b1fcdff684f1d6/); ethereum `0xe81901...1001dc` | ⚠️ Unaudited |
| KeyProtocolVariables | unknown | ethereum | n/a | [`0xa6c319...0a8b53`](./contracts/ethereum-1/0xa6c319a1c3d4ed22d4ee1e6b53d3342cc70a8b53/) | ⚠️ Unaudited |
| LNDX | unknown | ethereum | n/a | [`0x08a1c3...742539`](./contracts/ethereum-1/0x08a1c30bbb26425c1031ee9e43fa0b9960742539/) | ⚠️ Unaudited |
| TWAP | unknown | ethereum | n/a | [`0x5eb612...e96e5c`](./contracts/ethereum-1/0x5eb612f924dad205eab02911b198520effe96e5c/) | ⚠️ Unaudited |
| xBasket | unknown | ethereum | n/a | [`0x6fc27f...5232d3`](./contracts/ethereum-1/0x6fc27f5cc0aafec8e2b8bc4e6393ac89e45232d3/) | ⚠️ Unaudited |
| XToken | token | ethereum | n/a | 3 deployments: ethereum [`0x1b2b0f...e8362e`](./contracts/ethereum-1/0x1b2b0fa9283595f5036c007dd99ed0aa6de8362e/); ethereum `0x335632...7ffab5`; ethereum `0x5074c4...39e859` | ⚠️ Unaudited |
| xTokenRouter | adapter | ethereum | n/a | [`0x189ca2...7076a8`](./contracts/ethereum-1/0x189ca29981b6ad3ab01c2959b90eafca637076a8/) | ⚠️ Unaudited |

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
| [DL audit link](https://certificate.quantstamp.com/full/land-x-finance.pdf) | Quantstamp | Audit | 2023-02 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa6c319...0a8b53`](./contracts/ethereum-1/0xa6c319a1c3d4ed22d4ee1e6b53d3342cc70a8b53/) | KeyProtocolVariables | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08a1c3...742539`](./contracts/ethereum-1/0x08a1c30bbb26425c1031ee9e43fa0b9960742539/) | LNDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5eb612...e96e5c`](./contracts/ethereum-1/0x5eb612f924dad205eab02911b198520effe96e5c/) | TWAP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fc27f...5232d3`](./contracts/ethereum-1/0x6fc27f5cc0aafec8e2b8bc4e6393ac89e45232d3/) | xBasket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b2b0f...e8362e`](./contracts/ethereum-1/0x1b2b0fa9283595f5036c007dd99ed0aa6de8362e/) | XToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x189ca2...7076a8`](./contracts/ethereum-1/0x189ca29981b6ad3ab01c2959b90eafca637076a8/) | xTokenRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
