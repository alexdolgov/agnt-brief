# Agentic Audit Brief: Monday Trade

## Project Overview

- Project: Monday Trade (`monday-trade`)
- Website: [https://app.monday.trade/](https://app.monday.trade/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:35.053Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: base, ethereum
- Contract surface: 17 unique implementations (17 raw deployments)
- DeFi Llama TVL: $692,486.00
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
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 3 unknown
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
| UnnamedContract | unknown | ethereum | n/a | `0x0a439a...7d0e3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15bc3c...1b4470` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e3234...d37d90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x327ebb...ab4b71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e423a...77b591` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fe49f...04fc9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68b507...daec44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x736237...ce034f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f889b...eb868c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad8974...afe232` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb97ecd...9880c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1e98d...80aa21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd70e97...b81417` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc6722...190ec9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdfba57...6d9628` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe951b...67632f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2e3234...d37d90` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [monday-trade-spot-audit.pdf](https://files.monday.trade/files/monday-trade-spot-audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [mhjfbmdgcfjbbpaeojofohoefgiehjai/fe58c300-bc4b-4b88-b720-7b94f9536373](chrome-extension://mhjfbmdgcfjbbpaeojofohoefgiehjai/fe58c300-bc4b-4b88-b720-7b94f9536373) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [mhjfbmdgcfjbbpaeojofohoefgiehjai/cfd313f2-c337-4cd3-a4d7-52d8372b1dfd](chrome-extension://mhjfbmdgcfjbbpaeojofohoefgiehjai/cfd313f2-c337-4cd3-a4d7-52d8372b1dfd) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13519] monday-trade-spot-audit.pdf
- [13520] mhjfbmdgcfjbbpaeojofohoefgiehjai/fe58c300-bc4b-4b88-b720-7b94f9536373
- [13521] mhjfbmdgcfjbbpaeojofohoefgiehjai/cfd313f2-c337-4cd3-a4d7-52d8372b1dfd

Fork inheritance lineage and inherited audits are included when available.
