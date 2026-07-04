# Agentic Audit Brief: Coinsquare

## Project Overview

- Project: Coinsquare (`coinsquare`)
- Website: [https://coinsquare.com](https://coinsquare.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:41.901Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $10,315,028.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CEX. Structurally: 5 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (clockauction, clockauctionbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GeneScience | unknown | ethereum | n/a | [`0xf97e0a...946a2b`](./contracts/ethereum-1/0xf97e0a5b616dffc913e72455fde9ea8bbe946a2b/) | ⚠️ Unaudited |
| KittyCore | unknown | ethereum | n/a | [`0x06012c...7a266d`](./contracts/ethereum-1/0x06012c8cf97bead5deae237070f9587f8e7a266d/) | ⚠️ Unaudited |
| Migrations | unknown | ethereum | n/a | [`0x08ea78...141751`](./contracts/ethereum-1/0x08ea78fb540fe5361afd39a6b421a0662e141751/) | ⚠️ Unaudited |
| SaleClockAuction | unknown | ethereum | n/a | [`0x7163cd...89a9e5`](./contracts/ethereum-1/0x7163cd869f445a0fe0c5049a979c9e27b589a9e5/) | ⚠️ Unaudited |
| SiringClockAuction | unknown | ethereum | n/a | [`0x6b5a1e...2c4aac`](./contracts/ethereum-1/0x6b5a1ed9e51448c1c76dc4ddf24e243d402c4aac/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
