# Agentic Audit Brief: RockSolid Network

## Project Overview

- Project: RockSolid Network (`rocksolid-network`)
- Website: [https://rocksolid.network/](https://rocksolid.network/)
- Lifecycle: active (Tier 0, 15.8% below peak)
- Generated: 2026-06-11T02:25:18.413Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-bd5e
- Chains: ethereum
- Contract surface: 1 unique implementations (3 raw deployments)
- DeFi Llama TVL: $24,218,317.85
- On-chain TVL (included contracts): $24,958,194.47
- TVL by chain: Ethereum $24,958,194.47

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

RockSolid Network is an actively managed liquid DeFi vault platform that offers single-click deposits into vault strategies and supports institutional, white-label, and tailored vault solutions. Its vault products may use ERC-4626-style tokenized vault standards where verified, but should not be described only as passive yield vaults.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 3
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | ethereum | 3 deployments: ethereum [`0x7a12d4...37e428`](./contracts/ethereum-1/0x7a12d4b719f5aa479ecd60defed909fb2a37e428/); ethereum `0x936fac...d81bc7`; ethereum `0xba7109...6d86ad` | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7a12d4...37e428`](./contracts/ethereum-1/0x7a12d4b719f5aa479ecd60defed909fb2a37e428/) | Vault | core_logic | $24,958,194.47 | Verified native implementation with $24,958,194.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

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
