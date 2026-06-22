# Agentic Audit Brief: EmiSwap

⚠️ Lifecycle status: DECLINING - TVL changed 0.0% over 90 days

## Project Overview

- Project: EmiSwap (`emiswap`)
- Lifecycle: declining (Tier 0, 96% below peak)
- Generated: 2026-06-20T02:02:32.683Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: aurora, ethereum, polygon
- Contract surface: 4 unique implementations (5 raw deployments)
- DeFi Llama TVL: $33,547.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

EmiSwap is a decentralized exchange (DEX) protocol that enables users to swap tokens, provide liquidity, and earn rewards across multiple chains including Ethereum, Polygon, Avalanche, and Aurora.

### Architecture

The EmiFactory registries deploy and track liquidity pools, while the EmiVault manages user deposits and rewards. Proxy contracts provide upgradeability for the factory and token implementations, and the ESW token likely serves as the governance or reward token across the system.

## Contract Surface Quality

- Indexed contracts: 62; live-surface contracts included: 5 (3 live, 2 unknown).
- Excluded by liveness: 49 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 4
- Raw deployments: 5
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EmiRouter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x22b8cc...d79f01`](./contracts/ethereum-1/0x22b8ccdeeeacb1f3879e36e06af413d44fd79f01/); polygon `0x386807...c2c46a` | ⚠️ Unaudited |
| ESW | unknown | ethereum | unit-40933 | [`0x5a75a0...18031d`](./contracts/ethereum-1/0x5a75a093747b72a0e14056352751edf03518031d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | aurora | n/a | `0x5a75a0...18031d` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xe094e3...2044e1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://habanero188resmi.com/) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x22b8cc...d79f01`](./contracts/ethereum-1/0x22b8ccdeeeacb1f3879e36e06af413d44fd79f01/) | EmiRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13078] DL audit link

Fork inheritance lineage and inherited audits are included when available.
