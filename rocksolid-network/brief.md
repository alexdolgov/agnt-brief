# Agentic Audit Brief: RockSolid Network

## Project Overview

- Project: RockSolid Network (`rocksolid-network`)
- Website: [https://rocksolid.network/](https://rocksolid.network/)
- Lifecycle: active (Tier 0, 32.8% below peak)
- Generated: 2026-06-17T07:00:53.452Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $19,763,159.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

RockSolid Network is an actively managed liquid DeFi vault platform that offers single-click deposits into vault strategies and supports institutional, white-label, and tailored vault solutions. Its vault products may use ERC-4626-style tokenized vault standards where verified, but should not be described only as passive yield vaults.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 1 (0 live, 1 unknown).
- Excluded by liveness: 0 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CombinedRateProvider | unknown | ethereum | n/a | [`0x716f0c...df445e`](./contracts/ethereum-1/0x716f0c5453099690b54e7b72d9491a72b8df445e/) | ⚠️ Unaudited |

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
| [spaces/5vcVbvvRrtwZ0uaFrufF/uploads/fnXfTtKlAKAD5g9oG2nS/NM_0581_FINAL_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2FfnXfTtKlAKAD5g9oG2nS%2FNM_0581_FINAL_Lagoon.pdf) | Lagoon Finance | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2F8HkE2EU7hepf08gYGPsx%2FNM_0534_Lagoon.pdf) | Lagoon Finance | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1848] spaces/5vcVbvvRrtwZ0uaFrufF/uploads/fnXfTtKlAKAD5g9oG2nS/NM_0581_FINAL_Lagoon.pdf
- [1849] spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf

Fork inheritance lineage and inherited audits are included when available.
