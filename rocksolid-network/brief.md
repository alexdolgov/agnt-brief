# Agentic Audit Brief: RockSolid Network

## Project Overview

- Project: RockSolid Network (`rocksolid-network`)
- Website: [https://rocksolid.network/](https://rocksolid.network/)
- Lifecycle: active (Tier 0, 32.8% below peak)
- Generated: 2026-06-12T05:36:29.275Z
- Pipeline run: v2-pipeline-2026-06-12-c31370-dba8
- Chains: ethereum
- Contract surface: 2 unique implementations (5 raw deployments)
- DeFi Llama TVL: $19,763,159.08
- On-chain TVL (included contracts): $24,958,194.47
- TVL by chain: Ethereum $24,958,194.47

## Project Description

RockSolid Network is an actively managed liquid DeFi vault platform that offers single-click deposits into vault strategies and supports institutional, white-label, and tailored vault solutions. Its vault products may use ERC-4626-style tokenized vault standards where verified, but should not be described only as passive yield vaults.

### Architecture

All vaults share the same implementation contract (Vault) and are deployed by a single deployer, indicating a unified infrastructure with no separate product families.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 5
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $24,958,194.47
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | ethereum | 4 deployments: ethereum [`0x7a12d4...37e428`](./contracts/ethereum-1/0x7a12d4b719f5aa479ecd60defed909fb2a37e428/); ethereum `0x936fac...d81bc7`; ethereum `0xba7109...6d86ad`; ethereum `0xe50554...d3dedf` | ⚠️ Unaudited |
| CombinedRateProvider | unknown | ethereum | [`0x716f0c...df445e`](./contracts/ethereum-1/0x716f0c5453099690b54e7b72d9491a72b8df445e/) | ⚠️ Unaudited |

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
| needs_review | 2 |

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
