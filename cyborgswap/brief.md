# Agentic Audit Brief: CyborgSwap

⚠️ Lifecycle status: DECLINING - TVL dropped 11.1% over 90 days

## Project Overview

- Project: CyborgSwap (`cyborgswap`)
- Lifecycle: declining (Tier 0, 99.8% below peak)
- Generated: 2026-06-20T01:10:31.351Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: cronos
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $28,419.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CyborgSwap is a decentralized exchange (DEX) on Cronos that enables users to swap tokens, provide liquidity, and earn fees. It appears to be a fork or adaptation of ChronoSwap, offering automated market-making (AMM) functionality.

### Architecture

All contracts belong to a single product family with no explicit separation of core and supporting roles; they likely represent the factory, router, and pair contracts typical of a Uniswap-v2 style DEX, sharing a common infrastructure for liquidity pools and swaps.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (0 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-12 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

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

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x322e21...1d7c76` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x3790f3...c7fd2a` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x4bbce1...1b0bf9` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x6c50ee...7d6da5` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x9b7621...768f7e` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xa46d57...028ab1` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xabad73...30a8e0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/chronoswap) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TECHAUDIT_CHRONOSWAP.pdf](https://github.com/Tech-Audit/Smart-Contract-Audits/blob/main/TECHAUDIT_CHRONOSWAP.pdf) | unknown | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12965] DL audit link
- [12966] TECHAUDIT_CHRONOSWAP.pdf

Fork inheritance lineage and inherited audits are included when available.
