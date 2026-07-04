# Agentic Audit Brief: Universal Bridge

## Project Overview

- Project: Universal Bridge (`universal-bridge`)
- Website: [https://www.universal.xyz](https://www.universal.xyz)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:02.917Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: base
- Contract surface: 2 unique implementations (97 raw deployments)
- DeFi Llama TVL: $6,509,351.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 97; live-surface contracts included: 97 (97 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 97
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WrappedAssetV2 | unknown | base | n/a | 96 deployments: base [`0x0340ff...94fad1`](./contracts/base-8453/0x0340ff1765f0099b3bd1c4664ce03d8fd794fad1/); base `0x05f191...ecb274`; base `0x0935b2...7ee87b`; base `0x0f813f...09efc6`; base `0x12a063...b3da7e`; base `0x12e96c...723736`; base `0x135ff4...fd95ac`; base `0x16275f...932c48`; base `0x17f8d5...b3c3e2`; base `0x1b0dcc...5fd625`; base `0x1b9433...f678d0`; base `0x1cff25...e57c11`; base `0x20fbd1...257d41`; base `0x2198b7...d9bc05`; base `0x239b9c...5e9fce`; base `0x2615a9...a693ae`; base `0x2f15a6...aa6c50`; base `0x2f2041...34fee8`; base `0x30f16e...49a5c8`; base `0x31d664...16ed25`; base `0x378c32...5fab64`; base `0x3a51f2...031af3`; base `0x3a6b4b...f479a2`; base `0x3c07ef...1ed482`; base `0x3c5692...31bc51`; base `0x3d0028...6dfd8f`; base `0x3eb097...547c52`; base `0x3ecb91...07ca71`; base `0x40318e...3bbedd`; base `0x444fa3...25cf52`; base `0x44951c...ff2025`; base `0x4aae30...6f0177`; base `0x4b92ea...6f6913`; base `0x508e75...8db52a`; base `0x544f87...ba1650`; base `0x5a0384...55d99e`; base `0x5ed25e...65a617`; base `0x6814e4...247519`; base `0x6a2ed5...79ef28`; base `0x6ca225...b09701`; base `0x6e9342...3f30ee`; base `0x704786...c2fa42`; base `0x71a672...c0249d`; base `0x7383e8...4f9e51`; base `0x7be0cc...d02e0f`; base `0x83f31a...ff6ed2`; base `0x893adc...9bf7c5`; base `0x898937...c7f19e`; base `0x8c655c...7296e3`; base `0x8ccf84...1200b0`; base `0x8f2bd2...57d951`; base `0x90131d...f4b7a4`; base `0x901754...4174e4`; base `0x91b1b3...81cc89`; base `0x9af46f...617e85`; base `0x9b8df6...dddb55`; base `0x9c0e04...52c337`; base `0xa260ba...9de694`; base `0xa2fd26...4a35bf`; base `0xa3a34a...1335aa`; base `0xab1f32...8bc455`; base `0xacbf16...7a3762`; base `0xb0505e...d26ea4`; base `0xba0020...d1920b`; base `0xc5cdeb...8492be`; base `0xc79e06...c63898`; base `0xcb474f...4ee503`; base `0xd01cb4...244d64`; base `0xd045be...0543ff`; base `0xd403d1...fe32b2`; base `0xd61bcf...738c5d`; base `0xd6a34b...1788cb`; base `0xd6a746...b08e59`; base `0xd76d45...96f06a`; base `0xd7d5c5...d64499`; base `0xdb18fb...c07788`; base `0xdbbc41...274532`; base `0xdcc741...0cd559`; base `0xdef336...c3ce2a`; base `0xdf5913...8e9388`; base `0xe3ae3e...cc6880`; base `0xe5c436...7d57c4`; base `0xe868c3...a79dad`; base `0xed1a31...b091b0`; base `0xede6b5...b1c85d`; base `0xf08170...8b5548`; base `0xf1143f...c44ed1`; base `0xf38307...ad463c`; base `0xf413af...d48f23`; base `0xf56ce5...fb599e`; base `0xf5c9e4...badc74`; base `0xf653e8...611241`; base `0xfa15f1...2b1a9d`; base `0xfb3cb9...89d290`; base `0xfdca15...1d2c22`; base `0xfdf116...b170ca` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafeL2 | governance | base | n/a | [`0x74ed5e...954abe`](./contracts/base-8453/0x74ed5ed72df3bff374e4c87b8ff4bdebca954abe/) | ⚠️ Unaudited |

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
| [Alongside - Universal Contracts report - Final.pdf](https://github.com/r0bert-ethack/audits/blob/main/Alongside%20-%20Universal%20Contracts%20report%20-%20Final.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | 96 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=96

Fork inheritance lineage and inherited audits are included when available.
