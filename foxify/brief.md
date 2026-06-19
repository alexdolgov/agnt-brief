# Agentic Audit Brief: foxify

## Project Overview

- Project: foxify (`foxify`)
- Website: [https://www.foxify.trade/](https://www.foxify.trade/)
- Lifecycle: active (Tier 0, 99.8% below peak)
- Generated: 2026-06-19T06:13:51.589Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: sonic
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $3,463,587.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Foxify is a funded-account/proprietary trading platform for leveraged perpetual trading. Its public product focuses on on-chain and partner-venue perpetual trading, funded trading accounts, and related FOX and ebFOX staking, membership, and rewards features. Current public sources do not evidence an options-trading product, so options should not be described as part of the protocol unless separately verified.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 5 inactive, 5 singleton, 0 uninitialized.
- Deployment units: 0/6 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EBFOX | unknown | sonic | n/a | [`0xbd87a9...64d0ab`](./contracts/sonic-146/0xbd87a909f9a40fdad6d9be703e89a0383064d0ab/) | ⚠️ Unaudited |
| Foxify | unknown | sonic | n/a | [`0x261dfa...af0eb6`](./contracts/sonic-146/0x261dfa2528dfa19011f10b168c856e02baaf0eb6/) | ⚠️ Unaudited |
| FoxifyMaxi | unknown | sonic | n/a | [`0x3725b7...4edd37`](./contracts/sonic-146/0x3725b740b33e75898e4e2e616e9bb519884edd37/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0xbd87a9...64d0ab`](./contracts/sonic-146/0xbd87a909f9a40fdad6d9be703e89a0383064d0ab/) | EBFOX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x261dfa...af0eb6`](./contracts/sonic-146/0x261dfa2528dfa19011f10b168c856e02baaf0eb6/) | Foxify | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3725b7...4edd37`](./contracts/sonic-146/0x3725b740b33e75898e4e2e616e9bb519884edd37/) | FoxifyMaxi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
