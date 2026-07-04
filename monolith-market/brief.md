# Agentic Audit Brief: Monolith Market

## Project Overview

- Project: Monolith Market (`monolith-market`)
- Website: [https://monolith.market](https://monolith.market)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:35.085Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $223,963.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 4 project-authored contract(s) across 1 chain(s); built on solmate.

### Architecture

The protocol forms a single structural family (Core Logic) of 4 contract(s).

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/4 (50.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/4
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 7 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 50.0% (ChainSecurity, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 2 | 50.0% | 2026-03 |
| Electisec (yAudit) | Tier 2 | 2 | 50.0% | 2025-06 |
| Nemesis | Tier 2 | 2 | 50.0% | 2026-04 |
| Sherlock | Tier 1 | 2 | 50.0% | 2025-12 |
| Sherlock AI | Tier 2 | 2 | 50.0% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Factory | unknown | ethereum | n/a | [`0x2c13d0...618d83`](./contracts/ethereum-1/0x2c13d0f087c42644fcdeeb0f4d0a272c50618d83/) | ✅ Audited |
| Lens | unknown | ethereum | n/a | [`0x8aab59...01e60d`](./contracts/ethereum-1/0x8aab59675e123ceefe5e05b0bc1be8fe6101e60d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Metadata | unknown | ethereum | n/a | [`0x2afb12...8f581a`](./contracts/ethereum-1/0x2afb125bb848049b54d0903a1fd365e7518f581a/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x926df1...659d5b`](./contracts/ethereum-1/0x926df14a23be491164dcf93f4c468a50ef659d5b/) | ⚠️ Unaudited |

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
| [yAudit-Monolith-Report-June-2025.pdf](https://monolith-public-files.vercel.app/audits/yAudit-Monolith-Report-June-2025.pdf) | Electisec (yAudit) | Audit | 2025-06 | aging | Direct | contract_name | 2 | high |
| [ChainSecurity-Monolith-Audit-Report-October-2025.pdf](https://monolith-public-files.vercel.app/audits/ChainSecurity-Monolith-Audit-Report-October-2025.pdf) | ChainSecurity | Audit | 2025-10 | fresh | Direct | contract_name | 2 | high |
| [Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf](https://monolith-public-files.vercel.app/audits/Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf) | Sherlock | Contest | 2025-12 | fresh | Direct | contract_name | 2 | high |
| [ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf](https://monolith-public-files.vercel.app/audits/ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf) | ChainSecurity | Audit | 2026-03 | fresh | Direct | contract_name | 2 | high |
| [Sherlock-AI-Monolith-Audit-Report-April-2026.pdf](https://monolith-public-files.vercel.app/audits/Sherlock-AI-Monolith-Audit-Report-April-2026.pdf) | Sherlock AI | Contest | 2026-04 | fresh | Direct | contract_name | 2 | high |
| [Nemesis-Monolith-Audit-Report-April-2026.md](https://monolith-public-files.vercel.app/audits/Nemesis-Monolith-Audit-Report-April-2026.md) | Nemesis | Audit | 2026-04 | fresh | Direct | contract_name | 2 | high |
| [v12.sh/runs/1892/public](https://v12.sh/runs/1892/public) | Zellic (v12) | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [audits.sherlock.xyz/contests/1212](https://audits.sherlock.xyz/contests/1212) | Sherlock | Contest | 2025-12 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2afb12...8f581a`](./contracts/ethereum-1/0x2afb125bb848049b54d0903a1fd365e7518f581a/) | Metadata | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x926df1...659d5b`](./contracts/ethereum-1/0x926df14a23be491164dcf93f4c468a50ef659d5b/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=12

Zero-match audit list:

- [21408] v12.sh/runs/1892/public
- [21409] audits.sherlock.xyz/contests/1212

Fork inheritance lineage and inherited audits are included when available.
