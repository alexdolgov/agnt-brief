# Agentic Audit Brief: Oni Exchange

⚠️ Lifecycle status: UNKNOWN - TVL dropped 10.7% over 90 days

## Project Overview

- Project: Oni Exchange (`oni-exchange`)
- Lifecycle: unknown (Tier 0, 93.7% below peak)
- Generated: 2026-06-19T18:12:15.882Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $1,289.18
- On-chain TVL (included contracts): $1,017,313.55
- TVL by chain: Bsc $1,017,313.55

## Project Description

Oni Exchange is a decentralized exchange (DEX) on BSC that enables users to trade tokens via automated market-making (AMM) pools. It appears to be a Uniswap V2 fork, providing liquidity provision and token swapping functionality.

### Architecture

The protocol consists of a single product family centered around the OniToken, which likely serves as the governance or fee token for the exchange. No additional infrastructure contracts are identified in the provided inventory.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 10 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/3 (33.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $1,017,313.55
- Latest audit: 2021-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $1,017,313.55 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 33.3% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0x09a852...7783f9`](./contracts/bsc-56/0x09a8521fc838d795555113fcb5b8fc8c267783f9/); bsc `0xe93fc7...4f0cb8` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OniToken | token | bsc | n/a | [`0x6c77bb...d2fd2a`](./contracts/bsc-56/0x6c77bb19c69d66bea9e3cdaea108a76ea8d2fd2a/) | ⚠️ Unaudited |
| OniRouter02 | adapter | bsc | n/a | [`0x974a89...22dfa2`](./contracts/bsc-56/0x974a8959c52f6109c59d0a6d63d4ea4cc522dfa2/) | ⚠️ Unaudited |

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
| [Oni MasterChef.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/2018-21%20N-Z/Oni%20MasterChef.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x6c77bb...d2fd2a`](./contracts/bsc-56/0x6c77bb19c69d66bea9e3cdaea108a76ea8d2fd2a/) | OniToken | token | $1,017,313.55 | Verified native implementation with $1,017,313.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x974a89...22dfa2`](./contracts/bsc-56/0x974a8959c52f6109c59d0a6d63d4ea4cc522dfa2/) | OniRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
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
