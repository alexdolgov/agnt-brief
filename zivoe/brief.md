# Agentic Audit Brief: Zivoe

⚠️ Lifecycle status: DECLINING - TVL dropped 15.8% over 90 days

## Project Overview

- Project: Zivoe (`zivoe`)
- Website: [https://zivoe.com/](https://zivoe.com/)
- Lifecycle: declining (Tier 0, 83.4% below peak)
- Generated: 2026-06-11T04:26:12.877Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-026d
- Chains: ethereum
- Contract surface: 31 unique implementations (46 raw deployments)
- DeFi Llama TVL: $13,834,786.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Zivoe is a real-world asset private credit protocol where qualified participants deposit USDC or other stablecoins to receive zVLT exposure to yield from private credit and consumer lending. Tranche, governance, and rewards contracts should be treated as protocol or legacy architecture only where still supported by current contract and product evidence.

### Architecture

The Governance & Accounting family sets global parameters and distributes yield to the Tranches and Yield Generation families. The Primary Contracts family (vault and credit origination) interacts with Tranches for funding and with Yield Generation for deploying capital, while the Zivoe Governance Token family provides the staking and rewards layer that ties into governance.

## Audit Coverage Summary

- Verified implementations audited: 13/30 (43.3%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 31
- Raw deployments: 46
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 0 unknown
- Tier 1 coverage: 33.3% (Sherlock)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 10 | 33.3% | 2024-06 |
| Runtime Verification | Tier 2 | 3 | 10.0% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| OCC_Modular | unknown | ethereum | 4 deployments: ethereum [`0x5d4c6c...b932b3`](./contracts/ethereum-1/0x5d4c6c020bebc4d168b5bb359a6a7f9d1fb932b3/); ethereum `0x9d0613...c029b9`; ethereum `0xf02125...bb3341`; ethereum `0xfab4e8...262698` | ✅ Audited |
| OCL_ZVE | unknown | ethereum | [`0x067683...6b8425`](./contracts/ethereum-1/0x067683698f65bd903d393b85aa3fc119d76b8425/) | ✅ Audited |
| OCT_Convert | unknown | ethereum | 2 deployments: ethereum [`0x6e300a...4b321e`](./contracts/ethereum-1/0x6e300a96e5d6b015e1761488a85e4341bd4b321e/); ethereum `0x8c5fa1...951a85` | ✅ Audited |
| OCY_Convex_A | unknown | ethereum | [`0x2c0508...41e427`](./contracts/ethereum-1/0x2c0508d0c6340d7d9a383109d6171c3cbf41e427/) | ✅ Audited |
| OCY_Convex_C | unknown | ethereum | [`0x0df8aa...4b9df6`](./contracts/ethereum-1/0x0df8aa43a6919926be6ed15c956329f2cd4b9df6/) | ✅ Audited |
| ZivoeGlobals | unknown | ethereum | [`0xea537e...83da66`](./contracts/ethereum-1/0xea537eb0bbcc7783bdf7c595bf9371984583da66/) | ✅ Audited |
| ZivoeITO | unknown | ethereum | [`0xe59023...c52aba`](./contracts/ethereum-1/0xe590233c22e81a79a1768ab8c8597b7a55c52aba/) | ✅ Audited |
| ZivoeRewards | unknown | ethereum | 3 deployments: ethereum [`0x0d45c2...9ded5d`](./contracts/ethereum-1/0x0d45c292bacdc47ce850e4c83a2fa2e8509ded5d/); ethereum `0xb397aa...6b2dce`; ethereum `0xcacdb1...78aa7c` | ✅ Audited |
| ZivoeRewardsVesting | operational_periphery | ethereum | [`0x520f2b...1168f6`](./contracts/ethereum-1/0x520f2b5766176fd94b62507c848599b6251168f6/) | ✅ Audited |
| ZivoeRouter | adapter | ethereum | [`0x420909...a2c3b6`](./contracts/ethereum-1/0x420909ba4b361853703668e19461b3a5dea2c3b6/) | ✅ Audited |
| ZivoeTranches | core_logic | ethereum | [`0x6282b4...4715a8`](./contracts/ethereum-1/0x6282b480f0b989f0b603f821a840d964bc4715a8/) | ✅ Audited |
| ZivoeVault | core_logic | ethereum | [`0x94babe...fbedd4`](./contracts/ethereum-1/0x94babe9ee75c38034920bc6ed42748e8eefbedd4/) | ✅ Audited |
| ZivoeYDL | unknown | ethereum | [`0xfb7920...474b2b`](./contracts/ethereum-1/0xfb7920b55887840643e20952f22eb18ddc474b2b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ATokenInstance | token | ethereum | [`0x98c23e...e16f5c`](./contracts/ethereum-1/0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c/) | ⚠️ Unaudited |
| FrxUSD | unknown | ethereum | [`0xcacd6f...586e29`](./contracts/ethereum-1/0xcacd6fd266af91b8aed52accc382b4e165586e29/) | ⚠️ Unaudited |
| OCC_Cycle | unknown | ethereum | 3 deployments: ethereum [`0x09c977...ddb69c`](./contracts/ethereum-1/0x09c977130743feec9a8cbe260b187814ebddb69c/); ethereum `0x161c42...ccc17f`; ethereum `0xb63c6a...986573` | ⚠️ Unaudited |
| OCC_Variable | unknown | ethereum | [`0x26ac86...26f29e`](./contracts/ethereum-1/0x26ac8662f7502ef246f763311176e3131326f29e/) | ⚠️ Unaudited |
| OCE_ZVE | unknown | ethereum | [`0xbe2623...25c7be`](./contracts/ethereum-1/0xbe26238bce96a517c619c2b3140ef5c69625c7be/) | ⚠️ Unaudited |
| OCR_Cycle | unknown | ethereum | [`0x12e46e...78ad6f`](./contracts/ethereum-1/0x12e46e69623350ab3ae6d52cab86a152a078ad6f/) | ⚠️ Unaudited |
| OCR_Instant | unknown | ethereum | 5 deployments: ethereum [`0x18e710...fa47eb`](./contracts/ethereum-1/0x18e71004880fd5b3e5c867a8ee114578b6fa47eb/); ethereum `0x7720e6...2a89ec`; ethereum `0x90784f...20f737`; ethereum `0xa12d63...2c89ae`; ethereum `0xc25cd3...2be0d1` | ⚠️ Unaudited |
| OCT_DAO | unknown | ethereum | [`0xd70233...78d108`](./contracts/ethereum-1/0xd702332915fddf588793d54d63872a97ad78d108/) | ⚠️ Unaudited |
| OCT_YDL | unknown | ethereum | [`0x6172f8...e6ef87`](./contracts/ethereum-1/0x6172f8103d156c49532e610232d33f0796e6ef87/) | ⚠️ Unaudited |
| OCT_ZVL | unknown | ethereum | [`0x79d68d...ce396f`](./contracts/ethereum-1/0x79d68d40ef6f1dc7b220ef0a6df02e753dce396f/) | ⚠️ Unaudited |
| OCY_OUSD | unknown | ethereum | 2 deployments: ethereum [`0x373a78...4270bb`](./contracts/ethereum-1/0x373a78d1ba7269a9164ea78c429fde90024270bb/); ethereum `0xdcfb98...6ae1d6` | ⚠️ Unaudited |
| Safe | unknown | ethereum | 2 deployments: ethereum [`0x50c72f...eb0fd5`](./contracts/ethereum-1/0x50c72ff8c5e7498f64beaeb8ed5be83cabeb0fd5/); ethereum `0xc8d624...d5f026` | ⚠️ Unaudited |
| ZivoeDAO | unknown | ethereum | [`0xb65a66...550dd7`](./contracts/ethereum-1/0xb65a66621d7de34afec9b9ac0755133051550dd7/) | ⚠️ Unaudited |
| ZivoeGovernorV2 | governance | ethereum | [`0x94ac60...32a71e`](./contracts/ethereum-1/0x94ac60103b6b0df0cd828086b16eff2a3e32a71e/) | ⚠️ Unaudited |
| ZivoeTLC | unknown | ethereum | [`0xe1a68a...3fc916`](./contracts/ethereum-1/0xe1a68a0404426d6bbc459794e576640dee3fc916/) | ⚠️ Unaudited |
| ZivoeToken | token | ethereum | [`0xe412d4...19a9d2`](./contracts/ethereum-1/0xe412d46a0fbd567332b7689cfffe1f8a4f19a9d2/) | ⚠️ Unaudited |
| ZivoeTrancheToken | core_logic | ethereum | 2 deployments: ethereum [`0x7aa5bf...ad3bb6`](./contracts/ethereum-1/0x7aa5bf30042b2145b9f0629ea68de55b42ad3bb6/); ethereum `0xa923fa...ab6dd0` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | `0xd4b4e6...29c6d2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [| Runtime Verification | Vault | <> |](https://amp.runtimeverification.com/public-report/zivoe-vault) | Runtime Verification | Audit | 2025-03 | aging | Direct | contract_name | 4 | high |
| [`04-25-2024 Sherlock`](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.25%20-%20Final%20-%20Zivoe%20Audit%20Report.pdf) | Sherlock | Contest | 2024-06 | stale | Direct | contract_name | 15 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x09c977...ddb69c`](./contracts/ethereum-1/0x09c977130743feec9a8cbe260b187814ebddb69c/) | OCC_Cycle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26ac86...26f29e`](./contracts/ethereum-1/0x26ac8662f7502ef246f763311176e3131326f29e/) | OCC_Variable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe2623...25c7be`](./contracts/ethereum-1/0xbe26238bce96a517c619c2b3140ef5c69625c7be/) | OCE_ZVE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12e46e...78ad6f`](./contracts/ethereum-1/0x12e46e69623350ab3ae6d52cab86a152a078ad6f/) | OCR_Cycle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18e710...fa47eb`](./contracts/ethereum-1/0x18e71004880fd5b3e5c867a8ee114578b6fa47eb/) | OCR_Instant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd70233...78d108`](./contracts/ethereum-1/0xd702332915fddf588793d54d63872a97ad78d108/) | OCT_DAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6172f8...e6ef87`](./contracts/ethereum-1/0x6172f8103d156c49532e610232d33f0796e6ef87/) | OCT_YDL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x79d68d...ce396f`](./contracts/ethereum-1/0x79d68d40ef6f1dc7b220ef0a6df02e753dce396f/) | OCT_ZVL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb65a66...550dd7`](./contracts/ethereum-1/0xb65a66621d7de34afec9b9ac0755133051550dd7/) | ZivoeDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94ac60...32a71e`](./contracts/ethereum-1/0x94ac60103b6b0df0cd828086b16eff2a3e32a71e/) | ZivoeGovernorV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1a68a...3fc916`](./contracts/ethereum-1/0xe1a68a0404426d6bbc459794e576640dee3fc916/) | ZivoeTLC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe412d4...19a9d2`](./contracts/ethereum-1/0xe412d46a0fbd567332b7689cfffe1f8a4f19a9d2/) | ZivoeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7aa5bf...ad3bb6`](./contracts/ethereum-1/0x7aa5bf30042b2145b9f0629ea68de55b42ad3bb6/) | ZivoeTrancheToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 3 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=19

Fork inheritance lineage and inherited audits are included when available.
