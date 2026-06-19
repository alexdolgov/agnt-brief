# Agentic Audit Brief: Xfai

## Project Overview

- Project: Xfai (`xfai`)
- Lifecycle: active (Tier 0, 66.3% below peak)
- Generated: 2026-06-19T06:14:54.241Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: linea
- Contract surface: 6 unique implementations (7 raw deployments)
- DeFi Llama TVL: $835,471.25
- On-chain TVL (included contracts): $0.00
- TVL by chain: Linea $0.00

## Project Description

Xfai is a decentralized exchange on Linea for token swaps and entangled liquidity pools. USD+/portfolio-management, Mark2Market, HedgeExchanger, PythOracle, and strategy-yield narratives should not be described as part of Xfai unless supported by project documentation; upstream oracle infrastructure should be treated as a third-party dependency rather than Xfai-owned core contracts.

### Architecture

The Xfai family shares infrastructure through proxy-based upgradeability, with core contracts like PortfolioManager and Exchange interacting with various strategy contracts (e.g., StrategyEts, StrategyUsdc) to manage assets. Yield-bearing tokens (UsdPlusTokenV3) are minted via these strategies, and Mark2Market provides valuation, while HedgeExchanger facilitates asset swaps.

## Contract Surface Quality

- Indexed contracts: 83; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 49 inactive, 27 singleton, 0 uninitialized.
- Deployment units: 1/14 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 6
- Raw deployments: 7
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $0.00
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UsdPlusTokenV3 | token | linea | unit-23636 (2 proxies) | 2 deployments: linea [`0x1e1f50...3b7f13`](./contracts/linea-59144/0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13/); linea `0xb79dd0...de4376` | ⚠️ Unaudited |
| XfaiINFT | token | linea | n/a | [`0xa155f1...c5239a`](./contracts/linea-59144/0xa155f12d3be29bf20b615e1e7f066ae9e3c5239a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | linea | n/a | `0x9a8aeb...2a77f8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xabbe92...a0883f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb694ce...a49a4e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd538be...b0ef33` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://xfai.com/audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0xa155f1...c5239a`](./contracts/linea-59144/0xa155f12d3be29bf20b615e1e7f066ae9e3c5239a/) | XfaiINFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3227] DL audit link

Fork inheritance lineage and inherited audits are included when available.
