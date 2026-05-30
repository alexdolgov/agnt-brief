# Agentic Audit Brief: Universal Bridge

## Project Overview

- Project: Universal Bridge (`universal-bridge`)
- Website: [https://www.universal.xyz](https://www.universal.xyz)
- Lifecycle: active (Tier 0, 72.3% below peak)
- Generated: 2026-05-30T11:30:15.446Z
- Pipeline run: v2-pipeline-2026-05-30-255779-2e4e
- Chains: base
- Contract surface: 1 unique implementations (96 raw deployments)
- DeFi Llama TVL: $7,681,089.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Universal Bridge is a cross-chain asset bridging protocol that enables users to transfer tokens between different blockchain networks. It achieves this by deploying wrapped asset contracts (WrappedAssetV2) on the Base chain, which represent tokens from other chains.

### Architecture

Both product families share the same WrappedAssetV2 implementation contract (0xb5458e51d22df7b1deb7a05c4b98df978b48b959) via BeaconProxy, indicating a common infrastructure for wrapped asset logic. The families are distinguished by deployer clusters and deployment windows, suggesting separate operational contexts but no direct on-chain interaction between them.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 96
- Audits discovered: 24
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 23 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WrappedAssetV2 | unknown | base | 96 deployments: base [`0x0340ff...94fad1`](./contracts/base-8453/0x0340ff1765f0099b3bd1c4664ce03d8fd794fad1/); base `0x05f191...ecb274`; base `0x0935b2...7ee87b`; base `0x0f813f...09efc6`; base `0x12a063...b3da7e`; base `0x12e96c...723736`; base `0x135ff4...fd95ac`; base `0x16275f...932c48`; base `0x17f8d5...b3c3e2`; base `0x1b0dcc...5fd625`; base `0x1b9433...f678d0`; base `0x1cff25...e57c11`; base `0x20fbd1...257d41`; base `0x2198b7...d9bc05`; base `0x239b9c...5e9fce`; base `0x2615a9...a693ae`; base `0x2f15a6...aa6c50`; base `0x2f2041...34fee8`; base `0x30f16e...49a5c8`; base `0x31d664...16ed25`; base `0x378c32...5fab64`; base `0x3a51f2...031af3`; base `0x3a6b4b...f479a2`; base `0x3c07ef...1ed482`; base `0x3c5692...31bc51`; base `0x3d0028...6dfd8f`; base `0x3eb097...547c52`; base `0x3ecb91...07ca71`; base `0x40318e...3bbedd`; base `0x444fa3...25cf52`; base `0x44951c...ff2025`; base `0x4aae30...6f0177`; base `0x4b92ea...6f6913`; base `0x508e75...8db52a`; base `0x544f87...ba1650`; base `0x5a0384...55d99e`; base `0x5ed25e...65a617`; base `0x6814e4...247519`; base `0x6a2ed5...79ef28`; base `0x6ca225...b09701`; base `0x6e9342...3f30ee`; base `0x704786...c2fa42`; base `0x71a672...c0249d`; base `0x7383e8...4f9e51`; base `0x7be0cc...d02e0f`; base `0x83f31a...ff6ed2`; base `0x893adc...9bf7c5`; base `0x898937...c7f19e`; base `0x8c655c...7296e3`; base `0x8ccf84...1200b0`; base `0x8f2bd2...57d951`; base `0x90131d...f4b7a4`; base `0x901754...4174e4`; base `0x91b1b3...81cc89`; base `0x9af46f...617e85`; base `0x9b8df6...dddb55`; base `0x9c0e04...52c337`; base `0xa260ba...9de694`; base `0xa2fd26...4a35bf`; base `0xa3a34a...1335aa`; base `0xab1f32...8bc455`; base `0xacbf16...7a3762`; base `0xb0505e...d26ea4`; base `0xba0020...d1920b`; base `0xc5cdeb...8492be`; base `0xc79e06...c63898`; base `0xcb474f...4ee503`; base `0xd01cb4...244d64`; base `0xd045be...0543ff`; base `0xd403d1...fe32b2`; base `0xd61bcf...738c5d`; base `0xd6a34b...1788cb`; base `0xd6a746...b08e59`; base `0xd76d45...96f06a`; base `0xd7d5c5...d64499`; base `0xdb18fb...c07788`; base `0xdbbc41...274532`; base `0xdcc741...0cd559`; base `0xdef336...c3ce2a`; base `0xdf5913...8e9388`; base `0xe3ae3e...cc6880`; base `0xe5c436...7d57c4`; base `0xe868c3...a79dad`; base `0xed1a31...b091b0`; base `0xede6b5...b1c85d`; base `0xf08170...8b5548`; base `0xf1143f...c44ed1`; base `0xf38307...ad463c`; base `0xf413af...d48f23`; base `0xf56ce5...fb599e`; base `0xf5c9e4...badc74`; base `0xf653e8...611241`; base `0xfa15f1...2b1a9d`; base `0xfb3cb9...89d290`; base `0xfdca15...1d2c22`; base `0xfdf116...b170ca` | ⚠️ Unaudited |

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
| [Alongside - Universal Contracts report - Final.pdf](https://github.com/r0bert-ethack/audits/blob/main/Alongside%20-%20Universal%20Contracts%20report%20-%20Final.pdf) | unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [README.md (also discovered via alternate URL)](https://github.com/r0bert-ethack/audits/blob/main/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SUMMARY.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/SUMMARY.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [api.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/developers/api.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [asset-logos.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/developers/asset-logos.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [custodians.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/developers/protocol-concepts/custodians.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [issuance.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/developers/protocol-concepts/issuance.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [merchants.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/developers/protocol-concepts/merchants.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [redemption.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/developers/protocol-concepts/redemption.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [reserves.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/developers/protocol-concepts/reserves.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [protocol.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/developers/protocol.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sdk.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/developers/sdk.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [smart-contracts.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/developers/smart-contracts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [v4-hook.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/developers/v4-hook.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [core-contributors.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/introduction/core-contributors.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-universal.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/introduction/what-is-universal.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [brand-kit.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/resources/brand-kit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [support.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/resources/support.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [deposits-withdrawals.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/trade/deposits-withdrawals.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [how-it-works.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/trade/how-it-works.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [placing-a-trade.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/trade/placing-a-trade.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [points.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/trade/points.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [referrals.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/trade/referrals.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [risks.md](https://github.com/0xgaut/gitbook/blob/gitbook-import/docs/trade/risks.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 24
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11340] Alongside - Universal Contracts report - Final.pdf
- [11341] README.md
- [11343] SUMMARY.md
- [11345] api.md
- [11346] asset-logos.md
- [11348] custodians.md
- [11349] issuance.md
- [11350] merchants.md
- [11351] redemption.md
- [11352] reserves.md
- [11353] protocol.md
- [11354] sdk.md
- [11355] smart-contracts.md
- [11356] v4-hook.md
- [11358] core-contributors.md
- [11359] what-is-universal.md
- [11361] brand-kit.md
- [11362] support.md
- [11364] deposits-withdrawals.md
- [11365] how-it-works.md
- [11366] placing-a-trade.md
- [11367] points.md
- [11368] referrals.md
- [11369] risks.md

Fork inheritance lineage and inherited audits are included when available.
