# Agentic Audit Brief: Asseto CASH+

⚠️ Lifecycle status: DECLINING - TVL dropped 76.1% over 90 days

## Project Overview

- Project: Asseto CASH+ (`asseto-cash+`)
- Website: [https://asseto.finance/#invest](https://asseto.finance/#invest)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:45.027Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 4 unique implementations (23 raw deployments)
- DeFi Llama TVL: $1,402,698.85
- On-chain TVL (included contracts): $15,349.32
- TVL by chain: Ethereum $15,349.32

## Project Description

Asseto CASH+ is a 1:1 asset-backed RWA token designed to provide stablecoin liquidity and money-market-rate yield, collateralized by the CMS USD Money Market Fund. TVL is reported across Ethereum and Binance/BNB Chain exposure; the indexed Ethereum surface includes ERC1967 proxy deployments and separate SAmMMF implementation contracts, while any Binance/BNB Chain TVL should be treated as unsurfaced unless corresponding contracts are indexed.

### Architecture

All contracts belong to a single product family with no shared infrastructure across families. The proxies point to SAmMMF implementations, indicating a direct tokenization pattern without additional supporting contracts.

## Contract Surface Quality

- Indexed contracts: 36; live-surface contracts included: 23 (22 live, 1 unknown).
- Excluded by liveness: 0 inactive, 13 singleton, 0 uninitialized.
- Deployment units: 0/5 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 23
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $15,349.32
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $15,349.32 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniswapV3Pool | core_logic | ethereum | n/a | [`0xdba395...feefc3`](./contracts/ethereum-1/0xdba395588a758c6075052e194bf5b5a88cfeefc3/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| SAmMMF | unknown | ethereum | n/a | 20 deployments: ethereum [`0x048a8a...60b809`](./contracts/ethereum-1/0x048a8afa8cf69ea53b72298d50033d1e2560b809/); ethereum `0x0d90a6...fe866c`; ethereum `0x1c7952...ef9f8e`; ethereum `0x401336...15e980`; ethereum `0x45c5bd...964303`; ethereum `0x5081c6...a2431f`; ethereum `0x5142df...b3e2b1`; ethereum `0x5b0c6a...c767d2`; ethereum `0x640eb8...1ae3f8`; ethereum `0x6c3de4...48483f`; ethereum `0x734bb4...cc3d28`; ethereum `0x923369...e49e72`; ethereum `0xab935a...5d4459`; ethereum `0xafdfd8...a960c0`; ethereum `0xc43ce4...dd3e19`; ethereum `0xc8faf6...82e5a8`; ethereum `0xcd01a9...b3fa83`; ethereum `0xd37295...f3c05f`; ethereum `0xd9ffec...103940`; ethereum `0xde2ac0...d032ff` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xc9f2d7...f86f64` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CASH+ Smart Contract Audit Report](https://reale-assets.gitbook.io/reale/product/cash+/appendix/cash+-smart-contract-audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x048a8a...60b809`](./contracts/ethereum-1/0x048a8afa8cf69ea53b72298d50033d1e2560b809/) | SAmMMF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3093] CASH+ Smart Contract Audit Report

Fork inheritance lineage and inherited audits are included when available.
