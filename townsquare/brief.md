# Agentic Audit Brief: TownSquare

## Project Overview

- Project: TownSquare (`townsquare`)
- Website: [https://app.townsq.xyz/](https://app.townsq.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.367Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum, mantle
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $1,825,186.06
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

TownSquare is a Monad-based decentralized lending, money-market, leverage and yield application for earning, borrowing and lending assets.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (0 live, 22 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
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

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0394728ef18258ca21f782ce37ebf1a16799d7ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09cd0233ad57bac4f916ca7aa08321b96effbaf2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x103222f020e98bba0ad9809a011fdf8e6f067496` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x106d0e2bff74b39d09636bdcd5d4189f24d91433` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x111111d2bf19e43c34263401e0cad979ed1cdb61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b68626dca36c7fe922fd2d55e4f631d962de19c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3249df5ca0b825e7c3e7d84a4bb11c2eacd8c0f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x336d414754967c6682b5a665c7daf6f1409e63e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4917a5ec9fcb5e10f47cbb197abe6ab63be81fe8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7821ba4e39c86ac4bdd2482e853f9c7ba57d01d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d99267be583d46273803b2b1c5edb98bff6538d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f5996865e952bd7892366712d319de59b9ecc6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3227c5969757783154c60bf0bc1944180ed81b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa3f243731d724f2195271a9c3f5c744f0d0b948` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0fda7f80e772ac3f85735f66ecb1ac964a033f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2108dec68089646c3d4d95f01ea42ee1142e7f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd636d6ab7072483de6ddc067f9147f8c1e512f18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb4e67f878289a820046f46f6304fd6ee1449281` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf358f9e4ba7d210fde8c9a30522bb0063e15c4bb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0c65a0bc65a5d819235b71f554d210d3f80e0852` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x428bebf994c970656854eb66586583fe682cc1d3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xfdd72592a657775249da1b013ac1371ccd45d885` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [TownSquare_Astrasec_20250918.pdf](https://github.com/TowneSquare/audit-reports-2025Q3/blob/main/TownSquare_Astrasec_20250918.pdf) | Astrasec | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [TownSquare_Sherlock_20251017.pdf](https://github.com/TowneSquare/audit-reports-2025Q3/blob/main/TownSquare_Sherlock_20251017.pdf) | Sherlock | Contest | 2025-01 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2973] TownSquare_Astrasec_20250918.pdf
- [2974] TownSquare_Sherlock_20251017.pdf

Fork inheritance lineage and inherited audits are included when available.
