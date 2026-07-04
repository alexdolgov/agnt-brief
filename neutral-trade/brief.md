# Agentic Audit Brief: Neutral Trade

## Project Overview

- Project: Neutral Trade (`neutral-trade`)
- Website: [https://www.neutral.trade/](https://www.neutral.trade/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.702Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: ethereum, hyperliquid
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $11,832,278.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Neutral Trade is a Solana-based marketplace for professionally managed on-chain quant strategy vaults, enabling users to allocate capital to curated trading and yield strategies managed by quantitative strategy providers.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (0 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 2 unknown
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

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xaae8a5...f84651` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb03715...1fb823` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2246d...6fcd68` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x799e01...3ae6f9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.halborn.com/audits/neutral-trade/neutral-trade---smart-contract-assessment-0777aa](https://www.halborn.com/audits/neutral-trade/neutral-trade---smart-contract-assessment-0777aa) | Halborn | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [index.html](https://certificate.quantstamp.com/full/neutral-trade/52a6403b-648c-4ea6-be5e-c8b525acc9b7/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/11Ck5gkVXLot_se_hxPRWUU_FT_vjsrar/view](https://drive.google.com/file/d/11Ck5gkVXLot_se_hxPRWUU_FT_vjsrar/view?usp=sharing) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1915] www.halborn.com/audits/neutral-trade/neutral-trade---smart-contract-assessment-0777aa
- [1916] index.html
- [1917] drive.google.com/file/d/11Ck5gkVXLot_se_hxPRWUU_FT_vjsrar/view

Fork inheritance lineage and inherited audits are included when available.
