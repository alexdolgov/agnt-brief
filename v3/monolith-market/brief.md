# Agentic Audit Brief: Monolith Market

## Project Overview

- Project: Monolith Market (`monolith-market`)
- Website: [https://monolith.market](https://monolith.market)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:30.244Z
- Pipeline run: v2-2026-07-02-1ba3fd
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

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 7 fresh, 1 aging, 0 stale, 0 unknown
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
| Factory | unknown | ethereum | n/a | [`0x2c13d0...618d83`](./contracts/ethereum-1/0x2c13d0f087c42644fcdeeb0f4d0a272c50618d83/) | ⚠️ Unaudited |
| Lens | unknown | ethereum | n/a | [`0x8aab59...01e60d`](./contracts/ethereum-1/0x8aab59675e123ceefe5e05b0bc1be8fe6101e60d/) | ⚠️ Unaudited |
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
| [yAudit-Monolith-Report-June-2025.pdf](https://monolith-public-files.vercel.app/audits/yAudit-Monolith-Report-June-2025.pdf) | Electisec (yAudit) | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [ChainSecurity-Monolith-Audit-Report-October-2025.pdf](https://monolith-public-files.vercel.app/audits/ChainSecurity-Monolith-Audit-Report-October-2025.pdf) | ChainSecurity | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf](https://monolith-public-files.vercel.app/audits/Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf) | Sherlock | Contest | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf](https://monolith-public-files.vercel.app/audits/ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf) | ChainSecurity | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [Sherlock-AI-Monolith-Audit-Report-April-2026.pdf](https://monolith-public-files.vercel.app/audits/Sherlock-AI-Monolith-Audit-Report-April-2026.pdf) | Sherlock AI | Contest | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [Nemesis-Monolith-Audit-Report-April-2026.md](https://monolith-public-files.vercel.app/audits/Nemesis-Monolith-Audit-Report-April-2026.md) | Nemesis | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [v12.sh/runs/1892/public](https://v12.sh/runs/1892/public) | Zellic (v12) | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [audits.sherlock.xyz/contests/1212](https://audits.sherlock.xyz/contests/1212) | Sherlock | Contest | 2025-12 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21402] yAudit-Monolith-Report-June-2025.pdf
- [21403] ChainSecurity-Monolith-Audit-Report-October-2025.pdf
- [21404] Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf
- [21405] ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf
- [21406] Sherlock-AI-Monolith-Audit-Report-April-2026.pdf
- [21407] Nemesis-Monolith-Audit-Report-April-2026.md
- [21408] v12.sh/runs/1892/public
- [21409] audits.sherlock.xyz/contests/1212

Fork inheritance lineage and inherited audits are included when available.
