# Agentic Audit Brief: Bunni

## Project Overview

- Project: Bunni (`bunni`)
- Website: [https://bunni.xyz](https://bunni.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:09.974Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: base, bsc, ethereum
- Contract surface: 24 unique implementations (24 raw deployments)
- DeFi Llama TVL: $325,902.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 23 project-authored contract(s) across 3 chain(s); 3 ERC20 tokens; built on solady.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (guarded, basehook, amamm). Dominant framework: solady.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/24 (45.8%)
- Deployed-live implementations: 24 of 24 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/24
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 24
- Raw deployments: 24
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 45.8% (Cyfrin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 10 | 41.7% | 2024-09 |
| Trail of Bits | Tier 1 | 10 | 41.7% | 2025-01 |
| Cyfrin | Tier 1 | 5 | 20.8% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BunniHook | unknown | ethereum | n/a | [`0x000052423c1db6b7ff8641b85a7eefc7b2791888`](./contracts/ethereum-1/0x000052423c1db6b7ff8641b85a7eefc7b2791888/) | ✅ Audited |
| BunniHub | unknown | ethereum | n/a | [`0x000000000049c7bcbca294e63567b4d21eb765f1`](./contracts/ethereum-1/0x000000000049c7bcbca294e63567b4d21eb765f1/) | ✅ Audited |
| BunniQuoter | unknown | ethereum | n/a | [`0x00000000217dd3feb84e447fa4abe3a97db7a767`](./contracts/ethereum-1/0x00000000217dd3feb84e447fa4abe3a97db7a767/) | ✅ Audited |
| BunniZone | unknown | ethereum | n/a | [`0x00000000ff3ba1257149f69cd0d22263dd0a14ea`](./contracts/ethereum-1/0x00000000ff3ba1257149f69cd0d22263dd0a14ea/) | ✅ Audited |
| BuyTheDipGeometricDistribution | unknown | ethereum | n/a | [`0x000000003691653855719a5722eb10f6d9636936`](./contracts/ethereum-1/0x000000003691653855719a5722eb10f6d9636936/) | ✅ Audited |
| CarpetedDoubleGeometricDistribution | unknown | ethereum | n/a | [`0x000000000b757686c9596cada54fa28f8c429e0d`](./contracts/ethereum-1/0x000000000b757686c9596cada54fa28f8c429e0d/) | ✅ Audited |
| CarpetedGeometricDistribution | unknown | ethereum | n/a | [`0x000000007ca9919151b275fabea64a4f557aa1f6`](./contracts/ethereum-1/0x000000007ca9919151b275fabea64a4f557aa1f6/) | ✅ Audited |
| DoubleGeometricDistribution | unknown | ethereum | n/a | [`0x000000004a3e16323618d0e43e93b4dd64151edb`](./contracts/ethereum-1/0x000000004a3e16323618d0e43e93b4dd64151edb/) | ✅ Audited |
| GeometricDistribution | unknown | ethereum | n/a | [`0x000000002a6e7022d123eab81ba9fa19aa9d2069`](./contracts/ethereum-1/0x000000002a6e7022d123eab81ba9fa19aa9d2069/) | ✅ Audited |
| OracleUniGeoDistribution | unknown | ethereum | n/a | [`0x00000000b5cd5d1e09a5c1fb166d26d1cef0c33c`](./contracts/ethereum-1/0x00000000b5cd5d1e09a5c1fb166d26d1cef0c33c/) | ✅ Audited |
| UniformDistribution | unknown | ethereum | n/a | [`0x00000000d5248262c18c5a8c706b2a3e740b8760`](./contracts/ethereum-1/0x00000000d5248262c18c5a8c706b2a3e740b8760/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BUNNI | unknown | ethereum | n/a | [`0x000000c396558ffbab5ea628f39658bdf61345b3`](./contracts/ethereum-1/0x000000c396558ffbab5ea628f39658bdf61345b3/) | ⚠️ Unaudited |
| BunniHookOracle | unknown | ethereum | n/a | [`0x0000001cc485ca6d3c966fbcba7dba6302c45ba9`](./contracts/ethereum-1/0x0000001cc485ca6d3c966fbcba7dba6302c45ba9/) | ⚠️ Unaudited |
| BunniLens | unknown | ethereum | n/a | [`0xb73f303472c4fd4ff3b9f59ce0f9b13e47fbfd19`](./contracts/ethereum-1/0xb73f303472c4fd4ff3b9f59ce0f9b13e47fbfd19/) | ⚠️ Unaudited |
| BunniZapIn | unknown | ethereum | n/a | [`0x0000000000dfe4c0014a4fb7fc63bb174b8adb93`](./contracts/ethereum-1/0x0000000000dfe4c0014a4fb7fc63bb174b8adb93/) | ⚠️ Unaudited |
| FeeDistributor | unknown | ethereum | n/a | [`0x000000dd5e3922232566fdac8cb8bf4e7e4b70e8`](./contracts/ethereum-1/0x000000dd5e3922232566fdac8cb8bf4e7e4b70e8/) | ⚠️ Unaudited |
| L2BUNNI | unknown | base | n/a | [`0x000000c396558ffbab5ea628f39658bdf61345b3`](./contracts/base-8453/0x000000c396558ffbab5ea628f39658bdf61345b3/) | ⚠️ Unaudited |
| MasterBunni | unknown | ethereum | n/a | [`0x0000009856ebf1b73b431fb59f2a2f200e9e78b0`](./contracts/ethereum-1/0x0000009856ebf1b73b431fb59f2a2f200e9e78b0/) | ⚠️ Unaudited |
| OptionsToken | unknown | ethereum | n/a | [`0x000000dc51b82dc9c14c2c034341c912907d0d59`](./contracts/ethereum-1/0x000000dc51b82dc9c14c2c034341c912907d0d59/) | ⚠️ Unaudited |
| PermissionedBunniZone | unknown | bsc | n/a | [`0x0000000d2ae8907a686d988eeda193a90d90d0b0`](./contracts/bsc-56/0x0000000d2ae8907a686d988eeda193a90d90d0b0/) | ⚠️ Unaudited |
| TimelessToken | unknown | ethereum | n/a | [`0xfd0205066521550d7d7ab19da8f72bb004b4c341`](./contracts/ethereum-1/0xfd0205066521550d7d7ab19da8f72bb004b4c341/) | ⚠️ Unaudited |
| TokenMigrator | unknown | ethereum | n/a | [`0x000000c2552ac621a551170d95b5ae6cb97ad811`](./contracts/ethereum-1/0x000000c2552ac621a551170d95b5ae6cb97ad811/) | ⚠️ Unaudited |
| VeAirdrop | unknown | ethereum | n/a | [`0x0000005f3a0733345412b510b63fc2d3ca5375f0`](./contracts/ethereum-1/0x0000005f3a0733345412b510b63fc2d3ca5375f0/) | ⚠️ Unaudited |
| Voting Escrow | unknown | ethereum | n/a | [`0x00000042877f4a1cc0693383ebdac7c0e0a1bf77`](./contracts/ethereum-1/0x00000042877f4a1cc0693383ebdac7c0e0a1bf77/) | ⚠️ Unaudited |

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
| [DL audit link](https://reports.yaudit.dev/08-2022-Bunni) | yAudit | Audit | 2022 | stale | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/reports/03-2022-Bunni-Zap](https://reports.yaudit.dev/03-2022-Bunni-Zap) | yAudit | Audit | 2022 | stale | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/reports/05-2023-timeless-gauges](https://reports.yaudit.dev/05-2023-timeless-gauges) | yAudit | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [Pashov Audit Group -- Bunni v2.1](https://github.com/pashov/audits/blob/master/team/pdf/Bunni-security-review-August.pdf) | Pashov Audit Group | Audit | 2024-09 | aging | Direct | contract_name | 10 | high |
| [Trail of Bits -- Bunni v2.1](https://github.com/trailofbits/publications/blob/master/reviews/2025-01-bacon-labs-bunniv2-securityreview.pdf) | Trail of Bits | Audit | 2025-01 | aging | Direct | contract_name | 10 | high |
| [Cyfrin -- Bunni v2.1](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-06-10-cyfrin-bunni-v2.1.pdf) | Cyfrin | Audit | 2025-06 | aging | Direct | contract_name | 5 | high |
| [Cyfrin -- Bunni Fee Override Hooklet](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-07-19-cyfrin-bunni-fee-override-hooklet-v2.0.pdf) | Cyfrin | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x000000c396558ffbab5ea628f39658bdf61345b3`](./contracts/ethereum-1/0x000000c396558ffbab5ea628f39658bdf61345b3/) | BUNNI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0000001cc485ca6d3c966fbcba7dba6302c45ba9`](./contracts/ethereum-1/0x0000001cc485ca6d3c966fbcba7dba6302c45ba9/) | BunniHookOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb73f303472c4fd4ff3b9f59ce0f9b13e47fbfd19`](./contracts/ethereum-1/0xb73f303472c4fd4ff3b9f59ce0f9b13e47fbfd19/) | BunniLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0000000000dfe4c0014a4fb7fc63bb174b8adb93`](./contracts/ethereum-1/0x0000000000dfe4c0014a4fb7fc63bb174b8adb93/) | BunniZapIn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000dd5e3922232566fdac8cb8bf4e7e4b70e8`](./contracts/ethereum-1/0x000000dd5e3922232566fdac8cb8bf4e7e4b70e8/) | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x000000c396558ffbab5ea628f39658bdf61345b3`](./contracts/base-8453/0x000000c396558ffbab5ea628f39658bdf61345b3/) | L2BUNNI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0000009856ebf1b73b431fb59f2a2f200e9e78b0`](./contracts/ethereum-1/0x0000009856ebf1b73b431fb59f2a2f200e9e78b0/) | MasterBunni | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000dc51b82dc9c14c2c034341c912907d0d59`](./contracts/ethereum-1/0x000000dc51b82dc9c14c2c034341c912907d0d59/) | OptionsToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0000000d2ae8907a686d988eeda193a90d90d0b0`](./contracts/bsc-56/0x0000000d2ae8907a686d988eeda193a90d90d0b0/) | PermissionedBunniZone | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd0205066521550d7d7ab19da8f72bb004b4c341`](./contracts/ethereum-1/0xfd0205066521550d7d7ab19da8f72bb004b4c341/) | TimelessToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000c2552ac621a551170d95b5ae6cb97ad811`](./contracts/ethereum-1/0x000000c2552ac621a551170d95b5ae6cb97ad811/) | TokenMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0000005f3a0733345412b510b63fc2d3ca5375f0`](./contracts/ethereum-1/0x0000005f3a0733345412b510b63fc2d3ca5375f0/) | VeAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00000042877f4a1cc0693383ebdac7c0e0a1bf77`](./contracts/ethereum-1/0x00000042877f4a1cc0693383ebdac7c0e0a1bf77/) | Voting Escrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=25

Zero-match audit list:

- [19620] DL audit link
- [19621] reports.yaudit.dev/reports/03-2022-Bunni-Zap
- [19622] reports.yaudit.dev/reports/05-2023-timeless-gauges
- [19626] Cyfrin -- Bunni Fee Override Hooklet

Fork inheritance lineage and inherited audits are included when available.
