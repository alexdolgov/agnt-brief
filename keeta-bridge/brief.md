# Agentic Audit Brief: Keeta Bridge

## Project Overview

- Project: Keeta Bridge (`keeta-bridge`)
- Website: [https://keeta.com/](https://keeta.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.158Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: base
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $1,061,302.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 4 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchPermit | periphery | base | n/a | [`0x9d4e74...e1a1ab`](./contracts/base-8453/0x9d4e74fa61715fa077dcced4acc8096958e1a1ab/) | ⚠️ Unaudited |
| BatchSender | periphery | base | n/a | [`0x036c16...d5bf36`](./contracts/base-8453/0x036c169dcb2f1b24500be6cb0e1b6d6f6fd5bf36/) | ⚠️ Unaudited |
| Bridge | operational_periphery | base | n/a | [`0x1c24a0...fcc698`](./contracts/base-8453/0x1c24a0fb7bcf2154a9d37b7b3aa443bc63fcc698/) | ⚠️ Unaudited |
| Contract | unknown | base | n/a | [`0xc06340...498973`](./contracts/base-8453/0xc0634090f2fe6c6d75e61be2b949464abb498973/) | ⚠️ Unaudited |

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
