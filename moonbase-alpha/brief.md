# Agentic Audit Brief: Moonbase Alpha

## Project Overview

- Project: Moonbase Alpha (`moonbase-alpha`)
- Website: [https://exchange.themoonbase.app](https://exchange.themoonbase.app)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:35.496Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: arbitrum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $2,525.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 15 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 5 common project-authored base contract(s) (erc20mintable, erc20burnable, erc20permit). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 5 (1 live, 4 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
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
| MoonbaseAlphaV1Router02 | adapter | arbitrum | n/a | [`0x88fcf70243b4bcc0325060805b7be9b3da984805`](./contracts/arbitrum-42161/0x88fcf70243b4bcc0325060805b7be9b3da984805/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x0f3d62c6fe0a71b3e7493ba9f21b0b85df91916a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4002a0037917fad03f229d6154e7ed55a0921926` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c2610d4b52323d033b262317789766e5b65014e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbf4ce01b3ae012ac2707e48af44bda42bfb2e6b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Moonbase-Alpha-Security-Audit-Report-1.pdf](https://rdauditors.com/wp-content/uploads/2023/03/Moonbase-Alpha-Security-Audit-Report-1.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x88fcf70243b4bcc0325060805b7be9b3da984805`](./contracts/arbitrum-42161/0x88fcf70243b4bcc0325060805b7be9b3da984805/) | MoonbaseAlphaV1Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13512] Moonbase-Alpha-Security-Audit-Report-1.pdf

Fork inheritance lineage and inherited audits are included when available.
