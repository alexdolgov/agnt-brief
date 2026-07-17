# Agentic Audit Brief: Universe Finance

## Project Overview

- Project: Universe Finance (`universe-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.904Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum, polygon
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $19,346.65
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 2 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 14 (1 live, 13 unknown).
- Excluded by liveness: 24 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
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
| UNTToken | unknown | ethereum | n/a | [`0xe4b5936dce1820f84509c89cce0f28c87988bad8`](./contracts/ethereum-1/0xe4b5936dce1820f84509c89cce0f28c87988bad8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x139cfd6860d9cafebc225fe580b5d9220823901c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x208c89128a27b671adf86a2cfbfc549ec7cf22f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28b15e041d2941c4e4b8ec1ef76a471ccc4ca85e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41253e2711ab0996a5ae591e0b7ccaef4de24956` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60703396632412c79d0a752ae805ba50593d4df2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x688036f09ee42b1440343788347dc7c162e818c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70d805501066027cbceffea0bdbdb0ec82fec834` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb76813018dc947645f675beadae864714afd488c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7da5620ae8128890185ab0886545ffc92eb1943` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc98e0bb3e09e7b9f149bbb4309baf796a73b5b09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddee5ab8575192aa2915cdbf1264fb972b2eacff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde59881a9a6012f83196184dd1994cdac255688d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe4b5936dce1820f84509c89cce0f28c87988bad8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/universefinance](https://skynet.certik.com/projects/universefinance) | CertiK | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-UniverseFinance-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-UniverseFinance-v1.0.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe4b5936dce1820f84509c89cce0f28c87988bad8`](./contracts/ethereum-1/0xe4b5936dce1820f84509c89cce0f28c87988bad8/) | UNTToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14055] skynet.certik.com/projects/universefinance
- [14056] PeckShield-Audit-Report-UniverseFinance-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
