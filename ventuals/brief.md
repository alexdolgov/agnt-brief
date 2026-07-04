# Agentic Audit Brief: Ventuals

## Project Overview

- Project: Ventuals (`ventuals`)
- Website: [https://ventuals.com/trade](https://ventuals.com/trade)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.891Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: hyperliquid
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $5,334,523.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Interface. Structurally: 4 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol forms a single structural family (Supporting Contracts) of 4 contract(s).

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x888888...05b20c`](./contracts/hyperliquid-999/0x88888880793f89ce85777ff2e0e2d366bf05b20c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x888888...c3beda`](./contracts/hyperliquid-999/0x8888888192a4a0593c13532ba48449fc24c3beda/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x888888...d77930`](./contracts/hyperliquid-999/0x8888888f0651a534011d7ad277c302e7d2d77930/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x888888...c216fa`](./contracts/hyperliquid-999/0x8888888fdaac0e7cf8c6523c8955bf7954c216fa/) | ⚠️ Unaudited |

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
| [20251008_nethermind.pdf (also discovered via alternate URL)](https://github.com/ventuals/ventuals-contracts/blob/main/docs/audits/20251008_nethermind.pdf) | Nethermind Security | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [20251014_zenith.pdf (also discovered via alternate URL)](https://github.com/ventuals/ventuals-contracts/blob/main/docs/audits/20251014_zenith.pdf) | Zenith | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21304] 20251008_nethermind.pdf
- [21306] 20251014_zenith.pdf

Fork inheritance lineage and inherited audits are included when available.
