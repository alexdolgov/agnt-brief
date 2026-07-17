# Agentic Audit Brief: Pay Protocol

## Project Overview

- Project: Pay Protocol (`pay-protocol`)
- Website: [https://payprotocol.network](https://payprotocol.network)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:42.993Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $641,103.41
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Pay Protocol is a non-custodial crypto payment and wallet infrastructure product for B2C businesses. It provides self-custodial checkout and wallet-as-a-service infrastructure, keyless smart-contract wallets, APIs, gas-optimized sweeping, and system-wide multi-signature controls across multiple supported networks. The available evidence does not support describing token swaps as a core product or scoping the project as Ethereum-only.

### Architecture

All contracts are deployed by the same address and belong to a single product family, indicating a tightly integrated system. The supporting contracts likely provide shared infrastructure such as access control or configuration for the core payment contracts.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (0 live, 8 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
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

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x3f44b6490aa9df9ed600d0acfd4a07ccafc1a820` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56768a26ca5b4263dcd4179af3bef741c28de220` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dff633be28a23e82ab6d8d6c97810146f053e4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65594f53320e6fd9720940bdb5c467bc1c2a850e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0000acddcedb7d2f50cdaf6f8db250251ec164f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaaa035f8e37f1699903bdc6fdc6285e3623874c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd16be5bdcc59b77acfd9842ecccc5b152c244ad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc60c82fa8f6bb61c6d3891665e18d4b19174431` | ❓ Unverified |

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
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
