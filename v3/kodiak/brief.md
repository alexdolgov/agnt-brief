# Agentic Audit Brief: Kodiak

## Project Overview

- Project: Kodiak (`kodiak`)
- Website: [https://kodiak.finance/](https://kodiak.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:20.035Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16da
- Chains: berachain
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $16,916,591.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 4 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

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
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xMacro | Tier 2 | 2 | 50.0% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KodiakToken | token | berachain | n/a | [`0xc0d1ac...7e21df`](./contracts/berachain-80094/0xc0d1ac00a30fa4e30e44afc7313d6312c87e21df/) | ✅ Audited |
| XKodiakToken | token | berachain | n/a | [`0x040ea7...c04677`](./contracts/berachain-80094/0x040ea7d4b559357425407fdfc3c774c5dfc04677/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KodiakRewards | unknown | berachain | n/a | [`0xbc3dfe...eaf6af`](./contracts/berachain-80094/0xbc3dfe5ee6bce8b301a3661b3528a5c605eaf6af/) | ⚠️ Unaudited |
| TokenMigrator | token | berachain | n/a | [`0x88eb43...de8210`](./contracts/berachain-80094/0x88eb43086eddf189856af7b00a09259598de8210/) | ⚠️ Unaudited |

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
| [spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/s1TqcqIFZ5UkYF7iD5Nt/kodiak_A3_by_0xmacro.pdf](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2Fs1TqcqIFZ5UkYF7iD5Nt%2Fkodiak_A3_by_0xmacro.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FierRx3DPkFpZU4OY3fB5%2Fkodiak_A1_by_0xmacro.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Sz7GaLLOLF7H4FmxpGTR/kodiak_A2_by_0xmacro.pdf](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FSz7GaLLOLF7H4FmxpGTR%2Fkodiak_A2_by_0xmacro.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FEGTuI70lM40vmr8YwZQT%2F%5BKALOS%5D%20KODIAK%20Audit%20Report%20(ENG).pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Ei2WQL3ewlsPDWDnlV9D/AstraSec-AuditReport-Kodiak-Bault.pdf](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FEi2WQL3ewlsPDWDnlV9D%2FAstraSec-AuditReport-Kodiak-Bault.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/HLRHY2QFxlXLD1Yxcqku/AstraSec-AuditReport-Kodiak-DEX.pdf](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FHLRHY2QFxlXLD1Yxcqku%2FAstraSec-AuditReport-Kodiak-DEX.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [audits.md](https://documentation.kodiak.finance/security/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [3261] spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/s1TqcqIFZ5UkYF7iD5Nt/kodiak_A3_by_0xmacro.pdf
- [3264] spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Sz7GaLLOLF7H4FmxpGTR/kodiak_A2_by_0xmacro.pdf
- [16516] spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf
- [16518] spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Ei2WQL3ewlsPDWDnlV9D/AstraSec-AuditReport-Kodiak-Bault.pdf
- [16519] spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/HLRHY2QFxlXLD1Yxcqku/AstraSec-AuditReport-Kodiak-DEX.pdf
- [16520] audits.md

Fork inheritance lineage and inherited audits are included when available.
