# Agentic Audit Brief: AlphaPing

## Project Overview

- Project: AlphaPing (`alphaping`)
- Website: [https://alphaping.ch/](https://alphaping.ch/)
- Lifecycle: active (Tier 0, 30.4% below peak)
- Generated: 2026-06-17T07:00:50.535Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 5 unique implementations (17 raw deployments)
- DeFi Llama TVL: $75,877,833.29
- On-chain TVL (included contracts): $73,583,464.49
- TVL by chain: Ethereum $73,583,464.49

## Project Description

AlphaPing is a mandate-driven, non-custodial on-chain credit/lending vault protocol with explicit risk constraints and verifiable accounting. Its live protocol surface is expected to include vault, share-token, strategy, accounting, manager, or related protocol contracts beyond the captured Safe multisig/admin wallet.

### Architecture

The protocol consists of a single product family centered on a Safe multisig, which serves as the core infrastructure for risk curation activities.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 17
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $73,583,464.49
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultV2 | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x0bf016...eaa334`](./contracts/ethereum-1/0x0bf0164d17469241b6e086da4016dcc54feaa334/); ethereum `0x153bd1...d64a57`; ethereum `0x35cbe8...b4f560`; ethereum `0x610f5b...e4ae7e`; ethereum `0x951a9f...b6c0f8`; ethereum `0x9f39b1...eefa82`; ethereum `0xeb6719...bf202c`; ethereum `0xf1ca44...76f9a1` | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | unit-18535 | [`0xd8cd72...da0c27`](./contracts/ethereum-1/0xd8cd72a2eb7a4312404c00aed5172c0026da0c27/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | 6 deployments: ethereum [`0x47fe8a...f47efc`](./contracts/ethereum-1/0x47fe8ab9ee47dd65c24df52324181790b9f47efc/); ethereum `0x670195...45cb90`; ethereum `0x874e7f...81939c`; ethereum `0xb0f05e...504ba9`; ethereum `0xf9b85b...e8d4c8`; ethereum `0xfa7ed4...c40c63` | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-18536 | [`0xeb4af6...c04645`](./contracts/ethereum-1/0xeb4af6fa3afa08b10d593ec8ff87efb03bc04645/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
