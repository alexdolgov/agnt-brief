# Agentic Audit Brief: Keeta Bridge

## Project Overview

- Project: Keeta Bridge (`keeta-bridge`)
- Website: [https://keeta.com/](https://keeta.com/)
- Lifecycle: active (Tier 0, 20.4% below peak)
- Generated: 2026-05-31T08:35:04.390Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: base
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $1,058,144.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Keeta Bridge is a canonical bridge protocol on Base that enables cross-chain asset transfers. It provides a secure mechanism for moving tokens between different blockchain networks.

### Architecture

The Bridge contract serves as the core operational component, while the supporting Contract likely provides auxiliary functionality such as access control or registry services. Both contracts are deployed by the same deployer, indicating a unified infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BatchPermit | periphery | base | [`0x9d4e74...e1a1ab`](./contracts/base-8453/0x9d4e74fa61715fa077dcced4acc8096958e1a1ab/) | ⚠️ Unaudited |
| BatchSender | periphery | base | [`0x036c16...d5bf36`](./contracts/base-8453/0x036c169dcb2f1b24500be6cb0e1b6d6f6fd5bf36/) | ⚠️ Unaudited |
| Bridge | operational_periphery | base | [`0x1c24a0...fcc698`](./contracts/base-8453/0x1c24a0fb7bcf2154a9d37b7b3aa443bc63fcc698/) | ⚠️ Unaudited |
| Contract | unknown | base | [`0xc06340...498973`](./contracts/base-8453/0xc0634090f2fe6c6d75e61be2b949464abb498973/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x9d4e74...e1a1ab`](./contracts/base-8453/0x9d4e74fa61715fa077dcced4acc8096958e1a1ab/) | BatchPermit | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x036c16...d5bf36`](./contracts/base-8453/0x036c169dcb2f1b24500be6cb0e1b6d6f6fd5bf36/) | BatchSender | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1c24a0...fcc698`](./contracts/base-8453/0x1c24a0fb7bcf2154a9d37b7b3aa443bc63fcc698/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc06340...498973`](./contracts/base-8453/0xc0634090f2fe6c6d75e61be2b949464abb498973/) | Contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
