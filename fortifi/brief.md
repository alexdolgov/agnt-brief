# Agentic Audit Brief: FortiFi

## Project Overview

- Project: FortiFi (`fortifi`)
- Website: [https://www.fortifi.pro](https://www.fortifi.pro)
- Lifecycle: active (Tier 0, 79.4% below peak)
- Generated: 2026-06-21T12:12:08.106Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: avalanche
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $348,998.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

FortiFi is a yield aggregator on Avalanche that optimizes returns on deposited assets through automated strategies. It offers vaults that accept standard tokens and wrapped native tokens, compounding yields for users.

### Architecture

The two vault contracts share a common codebase and are deployed by the same deployer, indicating a single product family with no separate supporting infrastructure visible in the contract surface.

## Contract Surface Quality

- Indexed contracts: 108; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 106 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 3/39.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FortiFiWNativeMASSVaultV2 | core_logic | avalanche | n/a | [`0x853e7a...9d2d73`](./contracts/avalanche-43114/0x853e7a9dcc5037cd624834dc5f33151aa49d2d73/) | ⚠️ Unaudited |
| FortiFiWombatGGAvaxZapper | adapter | avalanche | n/a | [`0xdf4280...558a5d`](./contracts/avalanche-43114/0xdf4280b0e67f8cdd90bd1d4b441ac00d29558a5d/) | ⚠️ Unaudited |

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
| [FortiFi-audit-report-[26-Oct-2023].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/f/fortifi/FortiFi-audit-report-%5B26-Oct-2023%5D.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Audits](https://blaize.tech/clients/smart-contract-security-audit-for-fortifi) | Blaize | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x853e7a...9d2d73`](./contracts/avalanche-43114/0x853e7a9dcc5037cd624834dc5f33151aa49d2d73/) | FortiFiWNativeMASSVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdf4280...558a5d`](./contracts/avalanche-43114/0xdf4280b0e67f8cdd90bd1d4b441ac00d29558a5d/) | FortiFiWombatGGAvaxZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
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

- [13131] FortiFi-audit-report-[26-Oct-2023].pdf
- [13132] Audits

Fork inheritance lineage and inherited audits are included when available.
