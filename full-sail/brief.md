# Agentic Audit Brief: Full Sail

## Project Overview

- Project: Full Sail (`full-sail`)
- Website: [https://app.fullsail.finance](https://app.fullsail.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:17.228Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: ethereum
- Contract surface: 17 unique implementations (17 raw deployments)
- DeFi Llama TVL: $428,690.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Contract surface contains 0 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (0 live, 17 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x00c124...3568e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0efb95...212d6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1cde2f...f2a8c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d4a2b...dcc56b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e2b11...a4ed0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x266ff5...cad17b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d5f22...5bbb00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58f1b1...9d10a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6822a3...fe786f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6fad8b...1e2b21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x854b2d...54384c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe36c35...f01c20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe61639...63d019` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe93baa...993926` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7ca99...d039b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb971d...60a027` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc410c...35ea39` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [info.asymptotic.tech/full-sail-clmm-audit](https://info.asymptotic.tech/full-sail-clmm-audit) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [plainshift_full_sail_audit.pdf](https://app.fullsail.finance/static_files/plainshift_full_sail_audit.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [mystenlabs.notion.site/DeFi-Review-Full-Sail-2476d9dcb4e980c5b07beb6a56a30d3e](https://mystenlabs.notion.site/DeFi-Review-Full-Sail-2476d9dcb4e980c5b07beb6a56a30d3e) | Mysten Labs | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1s6GXBMcEgi6THQ1TlKaDhaxwhmU1emUX/view](https://drive.google.com/file/d/1s6GXBMcEgi6THQ1TlKaDhaxwhmU1emUX/view?usp=sharing) | Plainshift | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13168] info.asymptotic.tech/full-sail-clmm-audit
- [13169] plainshift_full_sail_audit.pdf
- [13170] mystenlabs.notion.site/DeFi-Review-Full-Sail-2476d9dcb4e980c5b07beb6a56a30d3e
- [13171] drive.google.com/file/d/1s6GXBMcEgi6THQ1TlKaDhaxwhmU1emUX/view

Fork inheritance lineage and inherited audits are included when available.
