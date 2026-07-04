# Agentic Audit Brief: Kinto

## Project Overview

- Project: Kinto (`kinto`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.236Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $672,216.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SuperToken | unknown | arbitrum | n/a | [`0x6ba19e...fedb58`](./contracts/arbitrum-42161/0x6ba19ee69d5dde3ab70185c801fa404f66fedb58/) | ⚠️ Unaudited |

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
| [certora-mar2024.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Certora-Mar2024/certora-mar2024.pdf) | Certora | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [mixbytes-feb2024.pdf](https://github.com/KintoXYZ/security/blob/main/audits/MixBytes-Feb2024/mixbytes-feb2024.pdf) | MixBytes | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [pessimistic-bridger-apr.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Apr2024/pessimistic-bridger-apr.pdf) | Pessimistic | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [pessimistic-token-apr.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Apr2024/pessimistic-token-apr.pdf) | Pessimistic | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [pessimistic-accessregistry-dec.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Dec2024/pessimistic-accessregistry-dec.pdf) | Pessimistic | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [pessimistic-feb.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Feb2024/pessimistic-feb.pdf) | Pessimistic | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [pessimistic-auction-feb.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Feb2025/pessimistic-auction-feb.pdf) | Pessimistic | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [pessimitic-jan.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Jan2024/pessimitic-jan.pdf) | Pessimistic | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [pessimistic-bridgerv2-jun.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Jun2024/pessimistic-bridgerv2-jun.pdf) | Pessimistic | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [pessimistic-superbridge-jun.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Jun2024/pessimistic-superbridge-jun.pdf) | Pessimistic | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [pessimistic-governance-sept.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Sept2024/pessimistic-governance-sept.pdf) | Pessimistic | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x6ba19e...fedb58`](./contracts/arbitrum-42161/0x6ba19ee69d5dde3ab70185c801fa404f66fedb58/) | SuperToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20606] certora-mar2024.pdf
- [20607] mixbytes-feb2024.pdf
- [20608] pessimistic-bridger-apr.pdf
- [20609] pessimistic-token-apr.pdf
- [20610] pessimistic-accessregistry-dec.pdf
- [20611] pessimistic-feb.pdf
- [20612] pessimistic-auction-feb.pdf
- [20613] pessimitic-jan.pdf
- [20614] pessimistic-bridgerv2-jun.pdf
- [20615] pessimistic-superbridge-jun.pdf
- [20616] pessimistic-governance-sept.pdf

Fork inheritance lineage and inherited audits are included when available.
