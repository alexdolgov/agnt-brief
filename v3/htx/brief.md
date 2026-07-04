# Agentic Audit Brief: HTX

## Project Overview

- Project: HTX (`htx`)
- Website: [https://www.htx.com/](https://www.htx.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.694Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: avalanche, ethereum, polygon
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $3,833,142,179.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CEX. Structurally: 5 project-authored contract(s) across 3 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (bridgeadmin, container). Dominant framework: openzeppelin.

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
| Bridge | unknown | ethereum | n/a | [`0xa92902...1e490c`](./contracts/ethereum-1/0xa929022c9107643515f5c777ce9a910f0d1e490c/) | ⚠️ Unaudited |
| BridgeLogic | unknown | ethereum | n/a | [`0x9a91ab...f129b8`](./contracts/ethereum-1/0x9a91ab68ebffd2e527d8144f54e9fe8250f129b8/) | ⚠️ Unaudited |
| BridgeStorage | unknown | ethereum | n/a | [`0x47343b...d0ae2f`](./contracts/ethereum-1/0x47343b0046908c1607cbb4cef5764296fcd0ae2f/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | polygon | n/a | [`0x2177c7...688726`](./contracts/polygon-137/0x2177c77a1f3c4900de7668662706633db4688726/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | avalanche | n/a | [`0x8b6a35...4a44d5`](./contracts/avalanche-43114/0x8b6a3587676719a4fecbb24b503a3634c44a44d5/) | ⚠️ Unaudited |

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
