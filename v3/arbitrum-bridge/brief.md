# Agentic Audit Brief: Arbitrum Bridge

## Project Overview

- Project: Arbitrum Bridge (`arbitrum-bridge`)
- Website: [https://portal.arbitrum.io/bridge](https://portal.arbitrum.io/bridge)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:30.083Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: arbitrum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $2,579,897,257.65
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 32 (32 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 17 aging, 14 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x912ce5...9e6548`](./contracts/arbitrum-42161/0x912ce59144191c1204e64559fe8253a0e49e6548/) | ⚠️ Unaudited |

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
| [Manual audit seed](https://docs.arbitrum.io/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_05_06_trail_of_bits_arbos_40_nitro_summary_report-769a942c08fe0f917eef523cba81a459.pdf) | Trail of Bits | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_04_18_trail_of_bits_reward_distributor_fixes_security_review-95acad5683bf61562ac3cedea313e749.pdf) | Trail of Bits | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_03_11_trail_of_bits_sequencer_liveness_security_review-298b2cd6810968ed840dff94df1e0c0e.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_28_trail_of_bits_security_council_rotation_security_review-6feca69ad7afe171104ecabaefe8971a.pdf) | Trail of Bits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_28_trail_of_bits_disable_gateway_action_security_review-11ed2e1370d062c2ade5e5d6b085a8f3.pdf) | Trail of Bits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_14_trail_of_bits_custom_fee_token_exchange_rate_security_review-640d7ef454d21c739e50c594fac727d9.pdf) | Trail of Bits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_14_trail_of_bits_geth_14_4_security_review-f24eef2e97e06e030fd5c1cc3a54ce5d.pdf) | Trail of Bits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_02_trail_of_bits_custom_fee_erc20_bridge_security_review-ccd6d481c1f7d41436a3ceb474bcd0f3.pdf) | Trail of Bits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_12_26_trail_of_bits_bold_fixes_security_review-95c9ee3b07ccb11e59e57744ddc017d2.pdf) | Trail of Bits | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_10_30_trail_of_bits_security_audit_nitro_contracts_with_bold-90984d87c800f448601b84972e544e1d.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_10_23_trail_of_bits_security_audit_arbos32_emergency_fixes-d3e018abb506e80f9625508dbaab2358.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_10_07_trail_of_bits_security_audit_bold_optimized_history_commitments-025bd74c8af33bb436e606b55a3ef550.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_09_25_trail_of_bits_security_audit_timeboost_auction_contracts-2a8dbdf7b139db4224d30d6d1015aa85.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_09_05_open_zeppelin_security_audit_stylus_rust_sdk-a78b94ded01f4e5f96dfd55a47158680.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_08_29_trail_of_bits_security_audit_orbit_and_governance_upgrade_actions_v2_1-8d6150a317148e1bfcf428b4e2c8ef2d.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_08_29_trail_of_bits_security_audit_usdc_custom_gateway_and_arbos_upgrade_at_timestamp_action-f490e6aa741551bfbf4b2349fcc82579.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_08_05_trail_of_bits_security_audit_bold_and_dac_rewards_updates-d0d6028126d4539be649eb05db5380c4.pdf) | Code4rena | Contest | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_08_01_trail_of_bits_security_audit_custom_fee_token-7ce514634632f4735a710c81b55f2d27.pdf) | Trail of Bits | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_07_26_trail_of_bits_security_audit_arbos_31-4538d946ebcd4187b211a868b6e8ea08.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_07_26_trail_of_bits_security_audit_arbos30_nitro_upgrade-d3b44d44e482a44a1710c80014a6630a.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_06_17_code4rena_security_audit_arbos30_nitro_upgrade-3663f40614e5dadebbf4ef0e6a8e5c1e.pdf) | Code4rena | Contest | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_06_10_trail_of_bits_security_audit_stylus-f2f68cbe59f5ac1c085292f6811c8ac9.pdf) | Trail of Bits | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_05_02_trail_of_bits_security_audit_bold_delay_buffer-7329f073827e7e12aede9a9203db1e01.pdf) | Trail of Bits | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_08_20_chainsecurity_security_audit_nova_fee_router_update_arbos_31-12a4328ecb6f0966acacb54da8f49698.pdf) | ChainSecurity | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_03_18_trail_of_bits_security_audit_l1_l3_teleporter-76736686c28613a9473c149615f94765.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2023_08_02_trail_of_bits_security_audit_challenge_protocol_v2-b63429218c10faec79c4834f8582f9d3.pdf) | Code4rena | Contest | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2023_06_23_trail_of_bits_security_audit_governance_report_governance_token_bridge-ca76b55fb6c017c17ef78d0721f7e714.pdf) | Trail of Bits | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2022_10_22_trail_of_bits_security_audit_nitro_2_of_2-11d8ca6bdf6e154c9b62e401b3220b1e.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_06_24_consensys_diligence_security_audit_nitro_contracts-b89f0db3702d3eec15a9211233ace9a6.pdf) | Consensys Diligence | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2022_03_14_trail_of_bits_security_audit_nitro_1_of_2-d777111730bd602222978f7d98713d40.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2021_11_05_consensys_diligence_security_audit_core_contracts_token_bridge-664fbe3e5a14a41acaee4af64ae06100.pdf) | Consensys Diligence | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 32
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [23981] Manual audit seed
- [23982] view
- [23983] view
- [23984] view
- [23985] view
- [23986] view
- [23987] view
- [23988] view
- [23989] view
- [23990] view
- [23991] view
- [23992] view
- [23993] view
- [23994] view
- [23995] view
- [23996] view
- [23997] view
- [23998] view
- [23999] view
- [24000] view
- [24001] view
- [24002] view
- [24003] view
- [24004] view
- [24005] view
- [24006] view
- [24007] view
- [24008] view
- [24009] view
- [24010] view
- [24011] view
- [24012] view

Fork inheritance lineage and inherited audits are included when available.
