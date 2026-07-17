# Agentic Audit Brief: Arbitrum Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 32 (0 matched; 32 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Arbitrum Bridge (`arbitrum-bridge`)
- Website: [https://portal.arbitrum.io/bridge](https://portal.arbitrum.io/bridge)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $2,579,897,257.65
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Arbitrum Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0000000000000000000000000000000000000066`, chain 42161)
- UnnamedContract (`0x5288c571fd7ad117bea99bf60fe0846c4e84f933`, chain 42161)
- UnnamedContract (`0x842ec2c7d803033edf55e478f461fc547bc54eb2`, chain 42161)
- UnnamedContract (`0xb90e53fd945cd28ec4728cbfb566981dd571eb8b`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/92 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 4 own, 22 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 4 of 27 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 27
- Raw deployments: 27
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

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | arbitrum | n/a | `0x912ce59144191c1204e64559fe8253a0e49e6548` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379353 | `0x0000000000000000000000000000000000000064` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379354 | `0x0000000000000000000000000000000000000065` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379355 | `0x0000000000000000000000000000000000000066` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379356 | `0x0000000000000000000000000000000000000068` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379357 | `0x000000000000000000000000000000000000006b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379358 | `0x000000000000000000000000000000000000006c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379359 | `0x000000000000000000000000000000000000006d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379360 | `0x000000000000000000000000000000000000006e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379361 | `0x000000000000000000000000000000000000006f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379362 | `0x0000000000000000000000000000000000000070` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379363 | `0x0000000000000000000000000000000000000071` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379364 | `0x0000000000000000000000000000000000000072` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379365 | `0x00000000000000000000000000000000000000c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379366 | `0x096760f208390250649e3e8763348e783aef5562` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379367 | `0x09e9222e96e7b4ae2a407b98d48e330053351eee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379374 | `0x2f5624dc8800dfa0a82ac03509ef8bb8e7ac000e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379382 | `0x5288c571fd7ad117bea99bf60fe0846c4e84f933` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379391 | `0x6c411ad3e74de3e7bd422b94a27770f5b86c623b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379401 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379403 | `0x842ec2c7d803033edf55e478f461fc547bc54eb2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379404 | `0x8b9d9490a68b1f16ac8a21ddae5fd7ab9d708c14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379406 | `0x8f59c7a53b883563b34cbbb6ff021b03973e823a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379421 | `0xb90e53fd945cd28ec4728cbfb566981dd571eb8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379429 | `0xc840838bc438d73c16c2f8b22d2ce3669963cd48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379435 | `0xd570ace65c43af47101fc6250fd6fc63d1c22a86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379443 | `0xf916bfe431b7a7aae083273f5b862e00a15d60f4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Manual audit seed](https://docs.arbitrum.io/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_05_06_trail_of_bits_arbos_40_nitro_summary_report-769a942c08fe0f917eef523cba81a459.pdf) | Trail of Bits | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_04_18_trail_of_bits_reward_distributor_fixes_security_review-95acad5683bf61562ac3cedea313e749.pdf) | Trail of Bits | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [view](https://docs.arbitrum.io/assets/files/2025_03_11_trail_of_bits_sequencer_liveness_security_review-298b2cd6810968ed840dff94df1e0c0e.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_28_trail_of_bits_security_council_rotation_security_review-6feca69ad7afe171104ecabaefe8971a.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [view](https://docs.arbitrum.io/assets/files/2025_02_28_trail_of_bits_disable_gateway_action_security_review-11ed2e1370d062c2ade5e5d6b085a8f3.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_14_trail_of_bits_custom_fee_token_exchange_rate_security_review-640d7ef454d21c739e50c594fac727d9.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_14_trail_of_bits_geth_14_4_security_review-f24eef2e97e06e030fd5c1cc3a54ce5d.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_02_trail_of_bits_custom_fee_erc20_bridge_security_review-ccd6d481c1f7d41436a3ceb474bcd0f3.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_12_26_trail_of_bits_bold_fixes_security_review-95c9ee3b07ccb11e59e57744ddc017d2.pdf) | Trail of Bits | Audit | 2024-12 | aging | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_10_30_trail_of_bits_security_audit_nitro_contracts_with_bold-90984d87c800f448601b84972e544e1d.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_10_23_trail_of_bits_security_audit_arbos32_emergency_fixes-d3e018abb506e80f9625508dbaab2358.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_10_07_trail_of_bits_security_audit_bold_optimized_history_commitments-025bd74c8af33bb436e606b55a3ef550.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_09_25_trail_of_bits_security_audit_timeboost_auction_contracts-2a8dbdf7b139db4224d30d6d1015aa85.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_09_05_open_zeppelin_security_audit_stylus_rust_sdk-a78b94ded01f4e5f96dfd55a47158680.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_29_trail_of_bits_security_audit_orbit_and_governance_upgrade_actions_v2_1-8d6150a317148e1bfcf428b4e2c8ef2d.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_29_trail_of_bits_security_audit_usdc_custom_gateway_and_arbos_upgrade_at_timestamp_action-f490e6aa741551bfbf4b2349fcc82579.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_05_trail_of_bits_security_audit_bold_and_dac_rewards_updates-d0d6028126d4539be649eb05db5380c4.pdf) | Code4rena | Contest | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_01_trail_of_bits_security_audit_custom_fee_token-7ce514634632f4735a710c81b55f2d27.pdf) | Trail of Bits | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_07_26_trail_of_bits_security_audit_arbos_31-4538d946ebcd4187b211a868b6e8ea08.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_07_26_trail_of_bits_security_audit_arbos30_nitro_upgrade-d3b44d44e482a44a1710c80014a6630a.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [view](https://docs.arbitrum.io/assets/files/2024_06_17_code4rena_security_audit_arbos30_nitro_upgrade-3663f40614e5dadebbf4ef0e6a8e5c1e.pdf) | Code4rena | Contest | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | medium |
| [view](https://docs.arbitrum.io/assets/files/2024_06_10_trail_of_bits_security_audit_stylus-f2f68cbe59f5ac1c085292f6811c8ac9.pdf) | Trail of Bits | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_05_02_trail_of_bits_security_audit_bold_delay_buffer-7329f073827e7e12aede9a9203db1e01.pdf) | Trail of Bits | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_20_chainsecurity_security_audit_nova_fee_router_update_arbos_31-12a4328ecb6f0966acacb54da8f49698.pdf) | ChainSecurity | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_03_18_trail_of_bits_security_audit_l1_l3_teleporter-76736686c28613a9473c149615f94765.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2023_08_02_trail_of_bits_security_audit_challenge_protocol_v2-b63429218c10faec79c4834f8582f9d3.pdf) | Code4rena | Contest | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [view](https://docs.arbitrum.io/assets/files/2023_06_23_trail_of_bits_security_audit_governance_report_governance_token_bridge-ca76b55fb6c017c17ef78d0721f7e714.pdf) | Trail of Bits | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [view](https://docs.arbitrum.io/assets/files/2022_10_22_trail_of_bits_security_audit_nitro_2_of_2-11d8ca6bdf6e154c9b62e401b3220b1e.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_06_24_consensys_diligence_security_audit_nitro_contracts-b89f0db3702d3eec15a9211233ace9a6.pdf) | Consensys Diligence | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 57 | high |
| [view](https://docs.arbitrum.io/assets/files/2022_03_14_trail_of_bits_security_audit_nitro_1_of_2-d777111730bd602222978f7d98713d40.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [view](https://docs.arbitrum.io/assets/files/2021_11_05_consensys_diligence_security_audit_core_contracts_token_bridge-664fbe3e5a14a41acaee4af64ae06100.pdf) | Consensys Diligence | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 51 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [23981] Manual audit seed — no match: The provided text is a table of audit reports with auditor, date, and code description, but no specific contract names or file paths are listed. The descriptions are too generic (e.g., 'ArbOS 60 & 61', 'Reward Distributor Fixes') to extract contract names.
- [23982] view — no match: The audit report does not contain a scope section listing specific smart contracts. The targets are repositories (Nitro, go-ethereum) and PRs, not individual contracts. No contract names are explicitly mentioned as in scope.
- [23983] view — no match: The report explicitly states the scope is changes to the reward distributor contract and mentions two contracts in the code quality appendix: RewardDistributor and ChildToParentRewardRouter.
- [23984] view — no match: The audit report focuses on the Arbitrum Sequencer, which is not a smart contract but a Go-based component. No smart contracts, source files, or modules are explicitly listed in scope. The only file references are tx_options.go and tx_pre_checker.go, but these are Go source files, not smart contracts. The report does not contain a scope section with contract names.
- [23985] view — no match: Only one contract explicitly in scope: SecurityCouncilManager.sol. The report mentions PR #322 and commits, but no other contract names.
- [23986] view — no match: The report does not list specific contract names in scope; it only mentions a governance action and a PR with a commit hash.
- [23987] view — no match: The report does not list specific contract names or file paths in scope; it only mentions 'Nitro contracts' and 'infrastructure smart contract–related changes' without naming individual contracts.
- [23988] view — no match: The audit report does not contain any smart contracts; it reviews changes to go-ethereum (Geth) and ArbOS, which are not smart contracts.
- [23989] view — no match: Scope includes ERC20Bridge upgrade, Orbit action (NitroContracts2Point1Point3UpgradeAction), and EIP-7702 fixes. Contracts mentioned in findings and code snippets are included.
- [23990] view — no match: Extracted contracts from findings targets and project targets section. Audit date from cover page.
- [23991] view — no match: The report scope is the Nitro Contracts repository with specific changes to BoLD contracts. Only Inbox is explicitly targeted in findings; ERC20Inbox and AbsInbox are referenced as containing similar functions. No other contracts are named in scope.
- [23992] view — no match: Extracted 5 governance/emergency action contracts from the Executive Summary. No other contracts were explicitly listed in scope; the report focuses on fixes and governance actions.
- [23993] view — no match: The report covers the BoLD protocol's optimized history commitment feature. The main file in scope is history_commitment.go, with structs HistoryCommitter, Commitment, and History. The audit date is October 7, 2024.
- [23994] view — no match: Extracted contracts from scope table and findings. Audit date from cover page.
- [23995] view — no match: The audit report lists the repository and specific files in scope. The extracted names are the crate/module names derived from the file paths. The audit date is explicitly stated on the cover page.
- [23996] view — no match: Extracted contract names from findings targets and project targets section. Audit date from cover page.
- [23997] view — no match: Extracted contracts from findings targets and code snippets. Audit date from cover page.
- [23998] view — no match: Extracted contract names from Project Targets, Project Coverage, Detailed Findings, and Mutation Testing sections. Audit date from cover page and delivery date.
- [23999] view — no match: Extracted contracts from Project Targets and Detailed Findings sections. Audit date from cover page.
- [24000] view — no match: Audit scope defined by PRs; only two Solidity contracts explicitly named as targets in findings.
- [24001] view — no match: The report lists many Go files in scope but only one Solidity contract (CacheManager) is explicitly named as a target. The Go files are not smart contracts but part of the node software.
- [24002] view — no match: The report does not have a dedicated scope section; contract names were extracted from findings and file paths mentioned throughout the report. The audit date is taken from the report title 'Arbitrum BoLD Findings & Analysis Report 2024-06-17'.
- [24003] view — no match: Extracted contract names from the Project Targets section and from file paths mentioned in findings. The audit date is from the cover page.
- [24004] view — no match: Extracted contract names from scope table and findings targets. Audit date from cover page.
- [24005] view — no match: Three contracts explicitly listed in scope under src/FeeRouter/ directory. Audit date from cover page: March 20, 2024.
- [24006] view — no match: Extracted from Project Targets section and detailed findings. The audit report covers L1-L3 Teleporter contracts with main contracts L1Teleporter, L2Forwarder, and interface IL1Teleporter.
- [24007] view — no match: Extracted contract names from Project Targets section and detailed findings. Audit date from cover page and delivery date.
- [24008] view — no match: Extracted contract names from Project Coverage section and detailed findings. Audit date from cover page and final report delivery date.
- [24009] view — no match: Extracted contract names from Project Targets and Project Coverage sections. Audit date from cover page and final report delivery date.
- [24010] view — no match: Extracted from ConsenSys Diligence audit report for Arbitrum Nitro Smart Contracts. Scope includes all files in contracts/src/ of the Nitro repository. Audit date is May 2022, represented as last day of month.
- [24011] view — no match: Extracted contract names from Project Targets and Project Coverage sections. Audit date from cover page and report readout meeting date.
- [24012] view — no match: Extracted from Arbitrum audit report by ConsenSys Diligence. Scope includes arb-bridge-eth and arb-bridge-peripherals packages. Date is November 2021, approximated to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| view | RewardDistributor | unmatched — not counted | — | listed in scope and code quality recommendations | no |
| view | ChildToParentRewardRouter | unmatched — not counted | — | listed in code quality recommendations | no |
| view | SecurityCouncilManager | unmatched — not counted | — | Target in finding TOB-SC-ROT-1 | no |
| view | ERC20Bridge | unmatched — not counted | — | mentioned as patched version in scope description | no |
| view | NitroContracts2Point1Point3UpgradeAction | unmatched — not counted | — | target of finding TOB-ARBFIX-1 | no |
| view | Inbox | unmatched — not counted | — | referenced in finding code snippet | no |
| view | ProxyAdmin | unmatched — not counted | — | used in upgrade function | no |
| view | TransparentUpgradeableProxy | unmatched — not counted | — | used in upgrade function | no |
| view | IInbox | unmatched — not counted | — | interface used in perform function | no |
| view | IERC20Bridge | unmatched — not counted | — | interface used in perform function | no |
| view | IERC20Bridge_v2 | unmatched — not counted | — | interface used in perform function | no |
| view | ExpressLaneAuction | unmatched — not counted | — | Target in findings 1 and 2 | no |
| view | SetValidatorsAction | unmatched — not counted | — | Target in finding 3, described as a smart contract with perform function | no |
| view | Inbox | unmatched — not counted | — | Target in findings 1 and 2 | no |
| view | ERC20Inbox | unmatched — not counted | — | Mentioned in finding 1 as containing depositERC20 function | no |
| view | AbsInbox | unmatched — not counted | — | Mentioned in finding 1 as containing _createRetryableTicket function | no |
| view | L1ModuleRootArbOneAction | unmatched — not counted | — | mentioned in Executive Summary as governance action to upgrade ArbOS | no |
| view | L1ModuleRootNovaAction | unmatched — not counted | — | mentioned in Executive Summary as governance action to upgrade ArbOS | no |
| view | L2ArbOS32Action | unmatched — not counted | — | mentioned in Executive Summary as governance action to upgrade ArbOS | no |
| view | SetInkPriceOneAction | unmatched — not counted | — | mentioned in Executive Summary as emergency action to disable Stylus | no |
| view | SetWasmMaxStackDepthZeroAction | unmatched — not counted | — | mentioned in Executive Summary as emergency action to disable Stylus | no |
| view | HistoryCommitter | unmatched — not counted | — | Target: history_commitment.go in finding 1 | no |
| view | Commitment | unmatched — not counted | — | Mentioned in code quality recommendations as optimized implementation | no |
| view | History | unmatched — not counted | — | Mentioned in code quality recommendations as unoptimized implementation | no |
| view | ExpressLaneAuction | unmatched — not counted | — | listed in scope and findings | no |
| view | Balance | unmatched — not counted | — | listed in findings | no |
| view | IExpressLaneAuction | unmatched — not counted | — | referenced in findings | no |
| view | Burner | unmatched — not counted | — | mentioned in fix status of finding 3 | no |
| view | stylus-proc | unmatched — not counted | — | listed in scope | no |
| view | stylus-sdk | unmatched — not counted | — | listed in scope | no |
| view | mini-alloc | unmatched — not counted | — | listed in scope | no |
| view | erc20 | unmatched — not counted | — | listed in scope | no |
| view | erc721 | unmatched — not counted | — | listed in scope | no |
| view | single_call | unmatched — not counted | — | listed in scope | no |
| view | EnableFastConfirmAction | unmatched — not counted | — | Target in finding TOB-ORBUPG-001 and TOB-ORBUPG-002 | no |
| view | UpgradeAndEnableFastConfirmAction | unmatched — not counted | — | Mentioned in finding TOB-ORBUPG-001 description | no |
| view | L1ArbitrumGateway | unmatched — not counted | — | mentioned in finding 2 target | no |
| view | L2USDCGateway | unmatched — not counted | — | mentioned in finding 2 target | no |
| view | L2ArbitrumGateway | unmatched — not counted | — | mentioned in finding 2 code snippets | no |
| view | ArbChildToParentRewardRouter | unmatched — not counted | — | listed in Detailed Findings section 1 | no |
| view | OpChildToParentRewardRouter | unmatched — not counted | — | listed in Detailed Findings section 1 | no |
| view | ParentToChildRewardRouter | unmatched — not counted | — | listed in Detailed Findings section 1 | no |
| view | EdgeChallengeManager | unmatched — not counted | — | listed in Project Coverage and Mutation Testing sections | no |
| view | EdgeChallengeManagerLib | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | EdgeStakingPool | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | AssertionStakingPool | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | RollupCore | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | RollupUserLogic | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | RollupAdminLogic | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | ChallengeEdgeLib | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | Rollup | unmatched — not counted | — | listed in Mutation Testing section | no |
| view | ERC20Bridge | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | L1OrbitERC20Gateway | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | L1AtomicTokenBridgeCreator | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | RollupUserLogic | unmatched — not counted | — | Target in finding TOB-STY-2 | no |
| view | RollupAdminLogic | unmatched — not counted | — | Target in finding TOB-STY-2 | no |
| view | CacheManager | unmatched — not counted | — | mentioned in finding TOB-ARBOS30-5 target | no |
| view | DelayBuffer | unmatched — not counted | — | mentioned in M-01 finding | no |
| view | SequencerInbox | unmatched — not counted | — | mentioned in M-01 finding | no |
| view | Bridge | unmatched — not counted | — | mentioned in M-01 finding | no |
| view | EdgeChallengeManagerLib | unmatched — not counted | — | mentioned in H-02 and L-01 findings | no |
| view | RollupAdminLogic | unmatched — not counted | — | mentioned in L-03 and L-06 findings | no |
| view | RollupUserLogic | unmatched — not counted | — | mentioned in H-01 and L-08 findings | no |
| view | RollupCore | unmatched — not counted | — | mentioned in L-09 finding | no |
| view | ArrayUtilsLib | unmatched — not counted | — | mentioned in L-07 finding | no |
| view | BOLDUpgradeAction | unmatched — not counted | — | mentioned in M-02 finding | no |
| view | EdgeChallengeManager | unmatched — not counted | — | mentioned in L-04 finding | no |
| view | Machine | unmatched — not counted | — | listed in scope as part of stylus-contracts repository | no |
| view | OneStepProver0 | unmatched — not counted | — | listed in scope as part of stylus-contracts repository | no |
| view | OneStepProofEntry | unmatched — not counted | — | listed in scope as part of stylus-contracts repository | no |
| view | Value | unmatched — not counted | — | listed in scope as part of stylus-contracts repository | no |
| view | ArbWasm | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | ArbOwner | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | Programs | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | DataPricer | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | EvmApiRequestor | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | StorageCache | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | Node | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | LiveConfig | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | ValidationNode | unmatched — not counted | — | listed in scope as part of stylus repository | no |
| view | AssertionStakingPool | unmatched — not counted | — | listed in scope and findings | no |
| view | EdgeChallengeManager | unmatched — not counted | — | listed in scope and findings | no |
| view | BOLDUpgradeAction | unmatched — not counted | — | listed in findings | no |
| view | Error | unmatched — not counted | — | listed in findings | no |
| view | DelayBuffer | unmatched — not counted | — | listed in findings (test file, but DelayBuffer library is referenced) | no |
| view | ChildToParentRewardRouter | unmatched — not counted | — | listed in scope table | no |
| view | DistributionInterval | unmatched — not counted | — | listed in scope table | no |
| view | ParentToChildRewardRouter | unmatched — not counted | — | listed in scope table | no |
| view | L1Teleporter | unmatched — not counted | — | listed in scope and findings | no |
| view | L2Forwarder | unmatched — not counted | — | listed in findings | no |
| view | IL1Teleporter | unmatched — not counted | — | listed in findings | no |
| view | EdgeChallengeManagerLib | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | ChallengeEdgeLib | unmatched — not counted | — | mentioned in Project Coverage | no |
| view | MerkleTreeLib | unmatched — not counted | — | mentioned in findings | no |
| view | EdgeChallengeManager | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | RollupUserLogic | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | RollupCore | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | prefix_proofs.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | inclusion_proofs.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | commitments.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | edge_tracker.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | edge_tracker_transition_table.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | tree.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | ancestors.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | path_timer.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | watcher.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | assertion_chain.go | unmatched — not counted | — | listed in scope and detailed findings | no |
| view | L1ArbitrumToken | unmatched — not counted | — | listed in Project Coverage section | no |
| view | TokenDistributor | unmatched — not counted | — | listed in Project Coverage section | no |
| view | FixedDelegateErc20Wallet | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L1ArbitrumTimelock | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L2ArbitrumGovernor | unmatched — not counted | — | listed in Project Coverage section | no |
| view | ArbitrumVestingWallet | unmatched — not counted | — | listed in Project Coverage section | no |
| view | UpgradeExecutor | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L1ArbitrumMessenger | unmatched — not counted | — | listed in Project Coverage section | no |
| view | Util | unmatched — not counted | — | listed in Project Coverage section | no |
| view | ArbitrumTimelock | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L2GovernanceFactory | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L2ArbitrumGateway | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L1ReverseCustomGateway | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L2CustomGateway | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L1ERC20Gateway | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L1ArbitrumGateway | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L1CustomGateway | unmatched — not counted | — | listed in Project Coverage section | no |
| view | L1GatewayRouter | unmatched — not counted | — | listed in Project Coverage section | no |
| view | StandardArbERC20 | unmatched — not counted | — | mentioned in finding 15 | no |
| view | BytesParser | unmatched — not counted | — | mentioned in finding 15 | no |
| view | L1ReverseToken | unmatched — not counted | — | mentioned in finding 13 | no |
| view | IArbToken | unmatched — not counted | — | mentioned in finding 13 | no |
| view | L1MintableToken | unmatched — not counted | — | mentioned in finding 13 | no |
| view | Inbox | unmatched — not counted | — | listed in Project Coverage section | no |
| view | SequencerInbox | unmatched — not counted | — | listed in Project Coverage section and finding TOB-ArbOS-12 | no |
| view | Bridge | unmatched — not counted | — | listed in Project Coverage section | no |
| view | HashProofHelper | unmatched — not counted | — | listed in Project Coverage section and finding TOB-ArbOS-9 | no |
| view | NitroMigrator | unmatched — not counted | — | listed in Project Coverage section and finding TOB-ArbOS-9 | no |
| view | ArbOS | unmatched — not counted | — | listed in Project Targets and Project Coverage sections | no |
| view | RollupAdmin | unmatched — not counted | — | mentioned in finding TOB-ArbOS-14 | no |
| view | Sequencer | unmatched — not counted | — | mentioned in Appendix F code quality recommendations | no |
| view | Bridge | unmatched — not counted | — | listed in scope | no |
| view | Inbox | unmatched — not counted | — | listed in scope | no |
| view | Outbox | unmatched — not counted | — | listed in scope | no |
| view | SequencerInbox | unmatched — not counted | — | listed in scope | no |
| view | ChallengeManager | unmatched — not counted | — | listed in scope | no |
| view | OneStepProofEntry | unmatched — not counted | — | listed in scope | no |
| view | RollupAdminLogic | unmatched — not counted | — | listed in scope | no |
| view | RollupUserLogic | unmatched — not counted | — | listed in scope | no |
| view | ERC20RollupUserLogic | unmatched — not counted | — | listed in scope | no |
| view | AbsRollupUserLogic | unmatched — not counted | — | listed in scope | no |
| view | RollupCore | unmatched — not counted | — | listed in scope | no |
| view | RollupEventBridge | unmatched — not counted | — | listed in scope | no |
| view | BridgeCreator | unmatched — not counted | — | listed in scope | no |
| view | ValidatorUtils | unmatched — not counted | — | listed in scope | no |
| view | ValidatorWalletCreator | unmatched — not counted | — | listed in scope | no |
| view | ValidatorWallet | unmatched — not counted | — | listed in scope | no |
| view | RollupCreator | unmatched — not counted | — | listed in scope | no |
| view | ArbitrumProxy | unmatched — not counted | — | listed in scope | no |
| view | AdminFallbackProxy | unmatched — not counted | — | listed in scope | no |
| view | SecondaryLogicUUPSUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | DoubleLogicERC1967Upgrade | unmatched — not counted | — | listed in scope | no |
| view | GasRefundEnabled | unmatched — not counted | — | listed in scope | no |
| view | MerkleLib | unmatched — not counted | — | listed in scope | no |
| view | MerkleProofLib | unmatched — not counted | — | listed in scope | no |
| view | Deserialize | unmatched — not counted | — | listed in scope | no |
| view | Machine | unmatched — not counted | — | listed in scope | no |
| view | ValueLib | unmatched — not counted | — | listed in scope | no |
| view | GlobalStateLib | unmatched — not counted | — | listed in scope | no |
| view | MachineLib | unmatched — not counted | — | listed in scope | no |
| view | ChallengeLib | unmatched — not counted | — | listed in scope | no |
| view | NodeLib | unmatched — not counted | — | listed in scope | no |
| view | IGasRefunder | unmatched — not counted | — | listed in scope | no |
| view | IInbox | unmatched — not counted | — | listed in scope | no |
| view | IOutbox | unmatched — not counted | — | listed in scope | no |
| view | IBridge | unmatched — not counted | — | listed in scope | no |
| view | ISequencerInbox | unmatched — not counted | — | listed in scope | no |
| view | IChallengeManager | unmatched — not counted | — | listed in scope | no |
| view | IRollupAdmin | unmatched — not counted | — | listed in scope | no |
| view | IRollupUser | unmatched — not counted | — | listed in scope | no |
| view | IRollupUserERC20 | unmatched — not counted | — | listed in scope | no |
| view | IRollupUserAbs | unmatched — not counted | — | listed in scope | no |
| view | IRollupCore | unmatched — not counted | — | listed in scope | no |
| view | IChallengeResultReceiver | unmatched — not counted | — | listed in scope | no |
| view | IMessageProvider | unmatched — not counted | — | listed in scope | no |
| view | IERC1822Proxiable | unmatched — not counted | — | listed in scope | no |
| view | UUPSUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | UUPSNotUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | OwnableUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | PausableUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | DelegateCallAware | unmatched — not counted | — | listed in scope | no |
| view | ContextUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | Initializable | unmatched — not counted | — | listed in scope | no |
| view | AddressUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | ERC1967Upgrade | unmatched — not counted | — | listed in scope | no |
| view | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| view | ProxyAdmin | unmatched — not counted | — | listed in scope | no |
| view | Proxy | unmatched — not counted | — | listed in scope | no |
| view | Inbox | unmatched — not counted | — | listed in Project Coverage: Ethereum Smart Contracts | no |
| view | SequencerInbox | unmatched — not counted | — | listed in Project Coverage: Ethereum Smart Contracts | no |
| view | Bridge | unmatched — not counted | — | listed in Project Coverage: Ethereum Smart Contracts | no |
| view | OneStepProver | unmatched — not counted | — | listed in Project Coverage: Ethereum Smart Contracts | no |
| view | OneStepProver0 | unmatched — not counted | — | mentioned in findings TOB-NITRO-WAVM-1, TOB-NITRO-WAVM-2, TOB-NITRO-WAVM-3, TOB-NITRO-WAVM-4, TOB-NITRO-WAVM-5 | no |
| view | Rollup | unmatched — not counted | — | listed in Project Coverage: Ethereum Smart Contracts | no |
| view | ChallengeManager | unmatched — not counted | — | listed in Project Coverage: Ethereum Smart Contracts | no |
| view | AdminFallbackProxy | unmatched — not counted | — | mentioned in finding TOB-NITRO-SC-1 | no |
| view | ArbRetryableTx | unmatched — not counted | — | mentioned in finding TOB-NITRO-ARBOS-2 | no |
| view | ArbSys | unmatched — not counted | — | mentioned in finding TOB-NITRO-ARBOS-6 | no |
| view | ArbAggregator | unmatched — not counted | — | mentioned in finding TOB-NITRO-ARBOS-21 | no |
| view | Bridge | unmatched — not counted | — | listed in scope | no |
| view | Inbox | unmatched — not counted | — | listed in scope | no |
| view | Outbox | unmatched — not counted | — | listed in scope | no |
| view | Rollup | unmatched — not counted | — | listed in scope | no |
| view | AdminFacet | unmatched — not counted | — | listed in scope | no |
| view | UserFacet | unmatched — not counted | — | listed in scope | no |
| view | RollupCreator | unmatched — not counted | — | listed in scope | no |
| view | BridgeCreator | unmatched — not counted | — | listed in scope | no |
| view | NodeFactory | unmatched — not counted | — | listed in scope | no |
| view | ChallengeFactory | unmatched — not counted | — | listed in scope | no |
| view | RollupAdminFacet | unmatched — not counted | — | listed in scope | no |
| view | RollupUserFacet | unmatched — not counted | — | listed in scope | no |
| view | Challenge | unmatched — not counted | — | listed in scope | no |
| view | L1Router | unmatched — not counted | — | listed in scope | no |
| view | L2Router | unmatched — not counted | — | listed in scope | no |
| view | L1GatewayRouter | unmatched — not counted | — | listed in scope | no |
| view | L2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| view | L1ArbitrumGateway | unmatched — not counted | — | listed in scope | no |
| view | L2ArbitrumGateway | unmatched — not counted | — | listed in scope | no |
| view | L1WETHGateway | unmatched — not counted | — | listed in scope | no |
| view | L2WETHGateway | unmatched — not counted | — | listed in scope | no |
| view | L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| view | L2ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| view | L1CustomGateway | unmatched — not counted | — | listed in scope | no |
| view | L2CustomGateway | unmatched — not counted | — | listed in scope | no |
| view | StandardArbERC20 | unmatched — not counted | — | listed in scope | no |
| view | L2GatewayToken | unmatched — not counted | — | listed in scope | no |
| view | aeWETH | unmatched — not counted | — | listed in scope | no |
| view | aeERC20 | unmatched — not counted | — | listed in scope | no |
| view | TransferAndCallToken | unmatched — not counted | — | listed in scope | no |
| view | BeaconProxyFactory | unmatched — not counted | — | listed in scope | no |
| view | ClonableBeaconProxy | unmatched — not counted | — | listed in scope | no |
| view | GasRefunder | unmatched — not counted | — | listed in scope | no |
| view | SequencerInbox | unmatched — not counted | — | listed in scope | no |
| view | OldOutbox | unmatched — not counted | — | listed in scope | no |
| view | Whitelist | unmatched — not counted | — | listed in scope | no |
| view | AddressAliasHelper | unmatched — not counted | — | listed in scope | no |
| view | MerkleLib | unmatched — not counted | — | listed in scope | no |
| view | GatewayRouter | unmatched — not counted | — | listed in scope | no |
| view | ITokenGateway | unmatched — not counted | — | listed in scope | no |
| view | IArbToken | unmatched — not counted | — | listed in scope | no |
| view | IWETH9 | unmatched — not counted | — | listed in scope | no |
| view | IOneStepProof | unmatched — not counted | — | listed in scope | no |
| view | OneStepProof | unmatched — not counted | — | listed in scope | no |
| view | OneStepProof2 | unmatched — not counted | — | listed in scope | no |
| view | Machine | unmatched — not counted | — | listed in scope | no |
| view | RollupEventBridge | unmatched — not counted | — | listed in scope | no |
| view | ValidatorWalletCreator | unmatched — not counted | — | listed in scope | no |
| view | RetryableTicketCreator | unmatched — not counted | — | listed in scope | no |
| view | ProxySetter | unmatched — not counted | — | listed in scope | no |
| view | L1ArbitrumMessenger | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 32
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 257 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=24, low=6, medium=2
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
