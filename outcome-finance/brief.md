# Agentic Audit Brief: Outcome Finance

⚠️ Lifecycle status: DECLINING - TVL changed 60.3% over 90 days

## Project Overview

- Project: Outcome Finance (`outcome-finance`)
- Lifecycle: declining (Tier 0, 99.4% below peak)
- Generated: 2026-06-11T01:38:02.409Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-1f48
- Chains: boba, ethereum, polygon
- Contract surface: 3 unique implementations (13 raw deployments)
- DeFi Llama TVL: $1,326,106.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Outcome Finance is listed by DefiLlama as a Synthetics project that helps DAOs generate positive outcomes and uses UMA-related outcome/synthetic infrastructure. The currently recorded contract surface consists primarily of UMA creator/factory contracts, rather than verified trading venues or the deployed collateral-holding outcome contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 13
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ExpiringMultiPartyCreator | unknown | ethereum | 3 deployments: ethereum [`0x9a077d...35ce87`](./contracts/ethereum-1/0x9a077d4fcf7b26a0514baa4cff0b481e9c35ce87/); ethereum `0xad8fd1...43ef39`; ethereum `0xddfc7e...d018a5` | ⚠️ Unaudited |
| LongShortPairCreator | unknown | ethereum | 9 deployments: ethereum [`0x0b8de4...93a67b`](./contracts/ethereum-1/0x0b8de441b26e36f461b2748919ed71f50593a67b/); ethereum `0x31c893...8aa5a9`; ethereum `0x439a99...1ba04d`; ethereum `0x60f3f5...a82f42`; ethereum `0x9504b4...9cea10`; polygon `0x3e665d...43911a`; polygon `0x4fba85...213424`; polygon `0x5fd7ff...104c9f`; polygon `0x62410e...7a0abe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | boba | `0xc064b1...d41f68` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
