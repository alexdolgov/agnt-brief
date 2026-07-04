# Agentic Audit Brief: Flamingo

## Project Overview

- Project: Flamingo (`flamingo`)
- Website: [https://flamingo.finance/lend/overview](https://flamingo.finance/lend/overview)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.351Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $1,336,973.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Flamingo is a NEO-based DeFi protocol currently tracked as Flamingo Lend, focused on lending within the Flamingo/NEO ecosystem. Its contract/component surface should be derived from verified NEO Flamingo contracts, documentation, or DefiLlama adapter data, not from unrelated multi-chain EVM vault, yield-farming, or LP optimizer contracts.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (0 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
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

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x03217e...90875a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4548a3...7a51d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68b938...bb8c5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x799bbf...190560` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2a4cf...e276cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3a41b...85fa21` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [NCC_Group_Onchain_ONCH008_Report_2020-08-07_v0.95.pdf](https://github.com/flamingo-finance/flamingo-audit/blob/master/NCC_Group_Onchain_ONCH008_Report_2020-08-07_v0.95.pdf) | NCC Group | Audit | 2020-08 | stale | Direct | n/a | 0 | n/a |
| [Onchain Audit CertiK Report.pdf](https://github.com/flamingo-finance/flamingo-audit/blob/master/Onchain%20Audit%20CertiK%20Report.pdf) | CertiK | Audit | 2020-08 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-neo-perp-v1.0-2020-128.pdf](https://github.com/flamingo-finance/flamingo-audit/blob/master/PeckShield-Audit-Report-neo-perp-v1.0-2020-128.pdf) | PeckShield | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [peckshield-audit-report-flamingo-proxy-Public-v1.0.pdf](https://github.com/flamingo-finance/flamingo-audit/blob/master/peckshield-audit-report-flamingo-proxy-Public-v1.0.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | n/a | 0 | n/a |
| [peckshield-audit-report-flamingo-staking-Public-v1.0.pdf](https://github.com/flamingo-finance/flamingo-audit/blob/master/peckshield-audit-report-flamingo-staking-Public-v1.0.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | n/a | 0 | n/a |
| [peckshield-audit-report-flamingo-swap-v1.0 (1).pdf](https://github.com/flamingo-finance/flamingo-audit/blob/master/peckshield-audit-report-flamingo-swap-v1.0%20(1).pdf) | PeckShield | Audit | 2020-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2854] NCC_Group_Onchain_ONCH008_Report_2020-08-07_v0.95.pdf
- [2855] Onchain Audit CertiK Report.pdf
- [2856] PeckShield-Audit-Report-neo-perp-v1.0-2020-128.pdf
- [2857] peckshield-audit-report-flamingo-proxy-Public-v1.0.pdf
- [2858] peckshield-audit-report-flamingo-staking-Public-v1.0.pdf
- [2859] peckshield-audit-report-flamingo-swap-v1.0 (1).pdf

Fork inheritance lineage and inherited audits are included when available.
