# Agentic Audit Brief: Ambient

⚠️ Lifecycle status: DECLINING - TVL dropped 45.0% over 90 days

## Project Overview

- Project: Ambient (`ambient`)
- Website: [https://ambient.finance/](https://ambient.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-03T21:05:27.097Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: blast, canto, ethereum, scroll, swellchain
- Contract surface: 19 unique implementations (30 raw deployments)
- DeFi Llama TVL: $1,748,323.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 18 project-authored contract(s) across 2 chain(s); role-gated via AccessControl; built on foundry.

### Architecture

The protocol comprises 4 functional families. Its contracts share 13 common project-authored base contract(s) (marketsequencer, tradematcher, positionregistrar). Dominant framework: foundry.

## Contract Surface Quality

- Indexed contracts: 34; live-surface contracts included: 29 (18 live, 11 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/14 (7.1%)
- Deployed-live implementations: 14 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/15
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 19
- Raw deployments: 30
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 1 | 6.7% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrocSwapDex | unknown | scroll | n/a | [`0xaaaaaa...a74106`](./contracts/scroll-534352/0xaaaaaaaacb71bf2c8cae522ea5fa455571a74106/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ColdPath | unknown | blast | n/a | 2 deployments: blast [`0x70b161...e9dc4f`](./contracts/blast-81457/0x70b161f2f0a18bd1865021f25f9e895021e9dc4f/); blast `0x852c3a...0e9915` | ⚠️ Unaudited |
| CrocImpact | unknown | blast | n/a | [`0x6a699a...5efdb9`](./contracts/blast-81457/0x6a699ab45adce02891e6115b81dfb46caa5efdb9/) | ⚠️ Unaudited |
| CrocPolicy | unknown | blast | n/a | [`0x503e3d...8c162c`](./contracts/blast-81457/0x503e3dfddd22d1c4a9787d2dac8643afc58c162c/) | ⚠️ Unaudited |
| CrocQuery | unknown | blast | n/a | [`0xa3bd3b...36a8a7`](./contracts/blast-81457/0xa3bd3be19012de72190c885fb270beb93e36a8a7/) | ⚠️ Unaudited |
| CrocSwapRouter | adapter | scroll | n/a | [`0xfb5f26...5fd1fc`](./contracts/scroll-534352/0xfb5f26851e03449a0403ca945ebb4201415fd1fc/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | blast | n/a | [`0xc73c8c...1e36ed`](./contracts/blast-81457/0xc73c8c60ea7d7f4338f9a8542927f4f1471e36ed/) | ⚠️ Unaudited |
| HotProxy | unknown | blast | n/a | [`0x6050cf...d5bb86`](./contracts/blast-81457/0x6050cf4b9125c81dbccb5d662131d4de04d5bb86/) | ⚠️ Unaudited |
| HotProxy | unknown | blast | n/a | 2 deployments: blast [`0x79cf6e...7ef6e9`](./contracts/blast-81457/0x79cf6e6af136b04c145f330509ad547b0d7ef6e9/); blast `0xaaaaaa...1fb958` | ⚠️ Unaudited |
| KnockoutFlagPath | unknown | blast | n/a | [`0xd54874...1dcdc1`](./contracts/blast-81457/0xd54874d2a5715d9d4ccd32e1c6151ac8d51dcdc1/) | ⚠️ Unaudited |
| KnockoutLiqPath | unknown | blast | n/a | [`0x6e2625...03132f`](./contracts/blast-81457/0x6e26253238becf5e7099cbe2e74cbf378d03132f/) | ⚠️ Unaudited |
| LongPath | unknown | blast | n/a | 2 deployments: blast [`0x07ec4a...65cfdd`](./contracts/blast-81457/0x07ec4ad8478d667e5cad4e4601879cd5ae65cfdd/); blast `0x646929...d93fa9` | ⚠️ Unaudited |
| MicroPaths | unknown | blast | n/a | 2 deployments: blast [`0x8296b2...1d1534`](./contracts/blast-81457/0x8296b24386b85471af51ee4bfe6166df1f1d1534/); blast `0xc58f7a...220066` | ⚠️ Unaudited |
| WarmPath | unknown | ethereum | n/a | [`0xaaaaaa...34f688`](./contracts/ethereum-1/0xaaaaaaaaa24eeeb8d57d431224f73832bc34f688/) | ⚠️ Unaudited |
| WarmPath | unknown | blast | n/a | 2 deployments: blast [`0x62223e...0d6ddf`](./contracts/blast-81457/0x62223e90605845cf5cc6dae6e0de4cda130d6ddf/); blast `0x99f213...796ca5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | swellchain | n/a | 7 deployments: swellchain `0x79cf6e...7ef6e9`; swellchain `0x983a06...eb1038`; swellchain `0xaaaaaa...237d85`; swellchain `0xaaaaaa...3bf24d`; swellchain `0xaab174...3f6194`; swellchain `0xd83ef4...7e0362`; canto `0x9290c8...793618` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x754eef...928285` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xaab174...3f6194` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd83ef4...7e0362` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [QuantstampV1.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/QuantstampV1.pdf) | Quantstamp | Audit | 2023-03 | stale | Direct | contract_name | 1 | n/a |
| [QuantstampV2.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/QuantstampV2.pdf) | Quantstamp | Audit | 2023-05 | stale | Direct | contract_name | 1 | n/a |
| [Zellic.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/Zellic.pdf) | Zellic | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| scroll | [`0xfb5f26...5fd1fc`](./contracts/scroll-534352/0xfb5f26851e03449a0403ca945ebb4201415fd1fc/) | CrocSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x6050cf...d5bb86`](./contracts/blast-81457/0x6050cf4b9125c81dbccb5d662131d4de04d5bb86/) | HotProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xd54874...1dcdc1`](./contracts/blast-81457/0xd54874d2a5715d9d4ccd32e1c6151ac8d51dcdc1/) | KnockoutFlagPath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x6e2625...03132f`](./contracts/blast-81457/0x6e26253238becf5e7099cbe2e74cbf378d03132f/) | KnockoutLiqPath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x07ec4a...65cfdd`](./contracts/blast-81457/0x07ec4ad8478d667e5cad4e4601879cd5ae65cfdd/) | LongPath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x8296b2...1d1534`](./contracts/blast-81457/0x8296b24386b85471af51ee4bfe6166df1f1d1534/) | MicroPaths | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaaaaaa...34f688`](./contracts/ethereum-1/0xaaaaaaaaa24eeeb8d57d431224f73832bc34f688/) | WarmPath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [8691] Zellic.pdf

Fork inheritance lineage and inherited audits are included when available.
