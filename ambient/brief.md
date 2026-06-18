# Agentic Audit Brief: Ambient

⚠️ Lifecycle status: DECLINING - TVL dropped 12.0% over 90 days

## Project Overview

- Project: Ambient (`ambient`)
- Website: [https://ambient.finance/](https://ambient.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T17:09:25.278Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-748f
- Chains: blast, canto, scroll, swellchain
- Contract surface: 17 unique implementations (17 raw deployments)
- DeFi Llama TVL: $1,790,446.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Ambient is a decentralized exchange protocol that enables single-contract, multi-chain concentrated and ambient liquidity pools. It supports efficient token swaps, liquidity provision, and on-chain governance across multiple EVM chains.

### Architecture

All chain-specific DEX families (Ambient, Blast, Scroll, Swell Chain) share the same core contract logic (WarmPath/HotProxy) and are governed by the Governance Contracts family. Router contracts on each chain provide user-facing swap interfaces that interact with the respective CrocSwapDex proxy.

## Contract Surface Quality

- Indexed contracts: 59; live-surface contracts included: 17 (10 live, 7 unknown).
- Excluded by liveness: 38 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 1/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/10 (10.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 1 | 10.0% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrocSwapDex | unknown | scroll | n/a | [`0xaaaaaa...a74106`](./contracts/scroll-534352/0xaaaaaaaacb71bf2c8cae522ea5fa455571a74106/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ColdPath | unknown | blast | n/a | [`0x852c3a...0e9915`](./contracts/blast-81457/0x852c3a00162efdbce7e5bee4dfe065116d0e9915/) | ⚠️ Unaudited |
| CrocSwapRouter | adapter | scroll | n/a | [`0xfb5f26...5fd1fc`](./contracts/scroll-534352/0xfb5f26851e03449a0403ca945ebb4201415fd1fc/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | blast | unit-38362 | [`0xc73c8c...1e36ed`](./contracts/blast-81457/0xc73c8c60ea7d7f4338f9a8542927f4f1471e36ed/) | ⚠️ Unaudited |
| HotProxy | unknown | blast | n/a | [`0x6050cf...d5bb86`](./contracts/blast-81457/0x6050cf4b9125c81dbccb5d662131d4de04d5bb86/) | ⚠️ Unaudited |
| KnockoutFlagPath | unknown | blast | n/a | [`0xd54874...1dcdc1`](./contracts/blast-81457/0xd54874d2a5715d9d4ccd32e1c6151ac8d51dcdc1/) | ⚠️ Unaudited |
| KnockoutLiqPath | unknown | blast | n/a | [`0x6e2625...03132f`](./contracts/blast-81457/0x6e26253238becf5e7099cbe2e74cbf378d03132f/) | ⚠️ Unaudited |
| LongPath | unknown | blast | n/a | [`0x07ec4a...65cfdd`](./contracts/blast-81457/0x07ec4ad8478d667e5cad4e4601879cd5ae65cfdd/) | ⚠️ Unaudited |
| MicroPaths | unknown | blast | n/a | [`0x8296b2...1d1534`](./contracts/blast-81457/0x8296b24386b85471af51ee4bfe6166df1f1d1534/) | ⚠️ Unaudited |
| WarmPath | unknown | blast | n/a | [`0x99f213...796ca5`](./contracts/blast-81457/0x99f213608941b6116e8f1fab1908ddb33d796ca5/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | swellchain | n/a | `0x79cf6e...7ef6e9` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | n/a | `0x983a06...eb1038` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | n/a | `0xaaaaaa...237d85` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | n/a | `0xaaaaaa...3bf24d` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | n/a | `0xaab174...3f6194` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | n/a | `0xd83ef4...7e0362` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0x9290c8...793618` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [QuantstampV1.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/QuantstampV1.pdf) | Quantstamp | Audit | 2023-03 | stale | Direct | contract_name | 1 | high |
| [QuantstampV2.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/QuantstampV2.pdf) | Quantstamp | Audit | 2023-05 | stale | Direct | contract_name | 1 | high |
| [Zellic.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/Zellic.pdf) | Zellic | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0x852c3a...0e9915`](./contracts/blast-81457/0x852c3a00162efdbce7e5bee4dfe065116d0e9915/) | ColdPath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0xfb5f26...5fd1fc`](./contracts/scroll-534352/0xfb5f26851e03449a0403ca945ebb4201415fd1fc/) | CrocSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x6050cf...d5bb86`](./contracts/blast-81457/0x6050cf4b9125c81dbccb5d662131d4de04d5bb86/) | HotProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xd54874...1dcdc1`](./contracts/blast-81457/0xd54874d2a5715d9d4ccd32e1c6151ac8d51dcdc1/) | KnockoutFlagPath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x6e2625...03132f`](./contracts/blast-81457/0x6e26253238becf5e7099cbe2e74cbf378d03132f/) | KnockoutLiqPath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x07ec4a...65cfdd`](./contracts/blast-81457/0x07ec4ad8478d667e5cad4e4601879cd5ae65cfdd/) | LongPath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x8296b2...1d1534`](./contracts/blast-81457/0x8296b24386b85471af51ee4bfe6166df1f1d1534/) | MicroPaths | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x99f213...796ca5`](./contracts/blast-81457/0x99f213608941b6116e8f1fab1908ddb33d796ca5/) | WarmPath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=44

Zero-match audit list:

- [8691] Zellic.pdf

Fork inheritance lineage and inherited audits are included when available.
