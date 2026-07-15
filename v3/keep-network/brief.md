# Agentic Audit Brief: KEEP Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 6 audit(s)
- Eligible audit results: 18 (6 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: KEEP Network (`keep-network`)
- Website: [https://app.threshold.network/](https://app.threshold.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 41 unique implementations (41 raw deployments)
- Coverage basis: 4/25 confirmed own live verified implementations (16.0%); conservative 16.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $982,073.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for KEEP Network. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 25 contract row(s) across arbitrum, base, ethereum, optimism, polygon. Structural roles: 11 infra, 8 supporting, 6 core. 16 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 25
- Structural roles: infra (11), supporting (8), core (6)
- Contract kinds: contract (25)
- Detected standards: erc1967proxy (14), ownable (7), accesscontrol (2), erc165 (2), erc20 (2), erc20permit (2)
- Frameworks: openzeppelin (25), openzeppelin-upgradeable (9)
- Upgradeable-pattern rows: 16

## Fork Analysis

0 of 39 contracts are derived from known codebases. 39 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x018473...f85a45`, chain 1)
- UnnamedContract (`0x03e342...4ee0f6`, chain 1)
- UnnamedContract (`0x1293a5...a15458`, chain 1)
- UnnamedContract (`0x2111a4...9866b9`, chain 1)
- UnnamedContract (`0x30019d...fbdec2`, chain 1)
- UnnamedContract (`0x46d52e...5204eb`, chain 1)
- UnnamedContract (`0x59fae6...b50106`, chain 1)
- UnnamedContract (`0x5e4861...0e8e7b`, chain 1)
- UnnamedContract (`0x6c84a8...d0de40`, chain 1)
- UnnamedContract (`0xb8df0a...38e6d3`, chain 1)
- UnnamedContract (`0xc9031f...3bc155`, chain 1)
- UnnamedContract (`0xa2a81d...8c512e`, chain 8453)
- UnnamedContract (`0xdebd9a...540bd5`, chain 8453)
- UnnamedContract (`0x1c8d7b...258f9e`, chain 42161)
- CoveragePool (`0x7d7b62...6d811a`, chain 1)
- KeepRandomBeaconServiceImplV1 (`0x099597...599eab`, chain 1)
- RandomBeacon (`0x5499f5...e3d80b`, chain 1)
- Router (`0x80226f...146f7d`, chain 1)
- StakingPortBacker (`0x236aa5...ab794b`, chain 1)
- T (`0xcdf702...94bee5`, chain 1)
- TBTC (`0x18084f...d93a88`, chain 1)
- TBTCVault (`0x9c0700...4fe3cd`, chain 1)
- Timelock (`0x92f2d8...b4913d`, chain 1)
- TimelockController (`0x87f005...75f45f`, chain 1)
- TransparentUpgradeableProxy (`0x186d04...00a1fe`, chain 1)
- TransparentUpgradeableProxy (`0x5d4d83...23dbde`, chain 1)
- TransparentUpgradeableProxy (`0x75a6e4...2c619a`, chain 1)
- TransparentUpgradeableProxy (`0xb810ab...2a341a`, chain 1)
- TransparentUpgradeableProxy (`0x1293a5...a15458`, chain 10)
- TransparentUpgradeableProxy (`0x6c84a8...d0de40`, chain 10)
- TransparentUpgradeableProxy (`0x099597...599eab`, chain 137)
- TransparentUpgradeableProxy (`0x236aa5...ab794b`, chain 137)
- TransparentUpgradeableProxy (`0x099597...599eab`, chain 8453)
- TransparentUpgradeableProxy (`0x236aa5...ab794b`, chain 8453)
- TransparentUpgradeableProxy (`0xe931f1...d2d88b`, chain 8453)
- TransparentUpgradeableProxy (`0x1293a5...a15458`, chain 42161)
- TransparentUpgradeableProxy (`0x6c84a8...d0de40`, chain 42161)
- TransparentUpgradeableProxy (`0xd7cd99...34d9b7`, chain 42161)
- VendingMachineV3 (`0x7570a2...6437e6`, chain 1)

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 25 (25 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 39/67 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/25 (16.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 39 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Deployed-live implementations: 39 of 41 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/25
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 41
- Raw deployments: 41
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 6 fresh, 1 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 4.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Least Authority | Tier 2 | 2 | 8.0% | 2023-08 |
| CertiK | Tier 2 | 1 | 4.0% | 2021-11 |
| ChainSecurity | Tier 1 | 1 | 4.0% | 2021-11 |
| LeastAuthority | Tier 2 | 1 | 4.0% | 2023-08 |
| unknown | Tier 2 | 1 | 4.0% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1BTCRedeemerWormhole | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244016 | `0x5d4d83...23dbde` | ✅ Audited |
| T | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244003 | `0xcdf702...94bee5` | ✅ Audited |
| TBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243969 | `0x18084f...d93a88` | ✅ Audited |
| TBTCVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-243996 | `0x9c0700...4fe3cd` | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrumWormholeGatewayUpgraded | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-244025 | `0x1293a5...a15458` | ⚠️ Unaudited |
| BaseWormholeGatewayUpgraded | unknown | project_anchor | own_supporting | 1 | base | unit-244027 | `0x099597...599eab` | ⚠️ Unaudited |
| BTCDepositorWormhole | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244019 | `0xb810ab...2a341a` | ⚠️ Unaudited |
| CoveragePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-243989 | `0x7d7b62...6d811a` | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | registry | project_anchor | own_supporting | 0 | ethereum | unit-243966 | `0x099597...599eab` | ⚠️ Unaudited |
| L1BTCDepositorWormholeV2Arbitrum | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244018 | `0x75a6e4...2c619a` | ⚠️ Unaudited |
| L1BTCDepositorWormholeV2Base | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244017 | `0x186d04...00a1fe` | ⚠️ Unaudited |
| L2BTCRedeemerWormhole | unknown | project_anchor | own_supporting | 1 | base | unit-244029 | `0xe931f1...d2d88b` | ⚠️ Unaudited |
| L2BTCRedeemerWormhole | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-244024 | `0xd7cd99...34d9b7` | ⚠️ Unaudited |
| L2TBTC | unknown | project_anchor | own_supporting | 1 | optimism | unit-244021 | `0x6c84a8...d0de40` | ⚠️ Unaudited |
| L2TBTC | unknown | project_anchor | own_supporting | 1 | polygon | unit-244023 | `0x236aa5...ab794b` | ⚠️ Unaudited |
| L2TBTC | unknown | project_anchor | own_supporting | 1 | base | unit-244028 | `0x236aa5...ab794b` | ⚠️ Unaudited |
| L2TBTC | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-244026 | `0x6c84a8...d0de40` | ⚠️ Unaudited |
| L2WormholeGateway | unknown | project_anchor | own_supporting | 1 | optimism | unit-244020 | `0x1293a5...a15458` | ⚠️ Unaudited |
| L2WormholeGateway | unknown | project_anchor | own_supporting | 1 | polygon | unit-244022 | `0x099597...599eab` | ⚠️ Unaudited |
| RandomBeacon | registry | project_anchor | own_supporting | 0 | ethereum | unit-243984 | `0x5499f5...e3d80b` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | ethereum | unit-243990 | `0x80226f...146f7d` | ⚠️ Unaudited |
| StakingPortBacker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243972 | `0x236aa5...ab794b` | ⚠️ Unaudited |
| Timelock | governance | project_anchor | own_supporting | 0 | ethereum | unit-243993 | `0x92f2d8...b4913d` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-243992 | `0x87f005...75f45f` | ⚠️ Unaudited |
| VendingMachineV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243988 | `0x7570a2...6437e6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243963 | `0x018473...f85a45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243965 | `0x03e342...4ee0f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243968 | `0x1293a5...a15458` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243971 | `0x2111a4...9866b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243974 | `0x30019d...fbdec2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243980 | `0x46d52e...5204eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243985 | `0x59fae6...b50106` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243986 | `0x5e4861...0e8e7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243987 | `0x6c84a8...d0de40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244000 | `0xb8df0a...38e6d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244002 | `0xc9031f...3bc155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x186d04...00a1fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244014 | `0xa2a81d...8c512e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244015 | `0xdebd9a...540bd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244010 | `0x1c8d7b...258f9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75a6e4...2c619a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [diligence.security/audits/2020/02/thesis-tbtc-and-keep](https://diligence.security/audits/2020/02/thesis-tbtc-and-keep) | Consensys Diligence | Audit | 2020-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |
| [diligence.security/audits/2020/03/thesis-cryptographic-review](https://diligence.security/audits/2020/03/thesis-cryptographic-review) | ConsenSys Diligence | Audit | 2020-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view](https://drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view](https://drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view?usp=sharing) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view](https://drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view](https://drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760](https://www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760?source=copy_link) | Code4rena | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | medium |
| [240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [leastauthority.com/blog/audit-of-keep-network-solana-smart-contracts](https://leastauthority.com/blog/audit-of-keep-network-solana-smart-contracts) | Least Authority | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [29-Sep-2022-LeastAuthority.pdf](https://github.com/threshold-network/security-audits/blob/main/29-Sep-2022-LeastAuthority.pdf) | Least Authority | Audit | 2022-09 | stale | Direct | n/a | matched | 2 | 0 | 0 | 20 | n/a |
| [leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2](https://leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2) | Least Authority | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [19-Nov-2021-CertiK.pdf](https://github.com/threshold-network/security-audits/blob/main/19-Nov-2021-CertiK.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [skynet.certik.com/projects/threshold-network](https://skynet.certik.com/projects/threshold-network) | CertiK | Audit | 2021-11 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [09-Nov-2021-ChainSecurity.pdf](https://github.com/threshold-network/security-audits/blob/main/09-Nov-2021-ChainSecurity.pdf) | ChainSecurity | Audit | 2021-11 | stale | Direct | n/a | matched | 1 | 0 | 0 | 7 | n/a |
| [www.chainsecurity.com/security-audit/threshold-network](https://www.chainsecurity.com/security-audit/threshold-network) | ChainSecurity | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [29-Aug-2023-LeastAuthority.pdf](https://github.com/threshold-network/security-audits/blob/main/29-Aug-2023-LeastAuthority.pdf) | LeastAuthority | Audit | 2023-08 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3402] diligence.security/audits/2020/02/thesis-tbtc-and-keep — no match: Extracted contracts from scope section and findings. Audit date from end of engagement (March 27, 2020).
- [3403] diligence.security/audits/2020/03/thesis-cryptographic-review — no match: Extracted contract/module names from the Code Modules section. The audit date is March 2020, converted to last day of month.
- [3404] drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view — no match: Two contracts in scope: Allowlist and RebateStaking. Audit final report date is September 25, 2025.
- [3405] drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view — no match: Scope lists three files: Bridge.sol, BridgeGovernance.sol, BridgeState.sol. RebateStaking is mentioned as the new contract being integrated, but its file path is not provided. Audit final report date is December 12, 2025.
- [3406] drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view — no match: Scope section lists two files: WalletRegistry.sol and EcdsaDkg.sol. Audit final report date is November 5, 2025.
- [3407] drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view — no match: Only one contract in scope: NativeBTCDepositor. Audit final report date is October 31, 2025.
- [3408] drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view — no match: All contracts explicitly listed in scope section. Audit date from work period end date.
- [3409] drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view — matched: Scope table lists 4 contracts. Audit date from timeline: 03.07.2025 - 05.09.2025, end date used.
- [3410] www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 — no match: The document is a compilation of multiple audit reports with different dates. The published time is used as the audit date. Contract names are extracted from scope descriptions, but many are generic descriptions rather than specific contract names.
- [3411] 240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf — matched: No reason recorded
- [3412] leastauthority.com/blog/audit-of-keep-network-solana-smart-contracts — no match: The provided text is a blog post announcing the audit, not the full report. No contract names or scope details are included.
- [3413] 29-Sep-2022-LeastAuthority.pdf — matched: No reason recorded
- [3414] leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2 — no match: The report text is a blog post summary, not the full report. No specific contract names or file paths are provided. Only the system name 'tBTC Bridge v2' is mentioned.
- [3415] 19-Nov-2021-CertiK.pdf — no match: Only VendingMachine.sol is in scope; T.sol is a third-party dependency mentioned in findings but not in scope.
- [3416] skynet.certik.com/projects/threshold-network — matched: No reason recorded
- [3417] 09-Nov-2021-ChainSecurity.pdf — matched: No reason recorded
- [3418] www.chainsecurity.com/security-audit/threshold-network — no match: The provided text is a summary/overview of an audit report, not the full report with a scope section. No specific contract names or file paths are mentioned.
- [3419] 29-Aug-2023-LeastAuthority.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | Deposit | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | TBTCSystem | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | TBTCDepositToken | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | TBTCToken | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | FeeRebateToken | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | VendingMachine | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | DepositFactory | unmatched — not counted | — | mentioned in findings | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | DepositRedemption | unmatched — not counted | — | mentioned in system overview | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | DepositLiquidation | unmatched — not counted | — | mentioned in system overview | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | DepositFunding | unmatched — not counted | — | mentioned in system overview | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | DepositUtils | unmatched — not counted | — | mentioned in system overview | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | BTCUtils | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | CheckBitcoinSigs | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | ValidateSPV | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | BondedECDSAKeep | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | BondedECDSAKeepFactory | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | BondedECDSAKeepVendor | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | BondedECDSAKeepVendorImplV1 | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | KeepRandomBeaconOperator | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | KeepRandomBeaconService | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | TokenStaking | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | TokenGrant | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | Registry | ambiguous — not counted | RandomBeacon (alternative) `0x5499f5...e3d80b` — deployed 2022-09-29 15:14:23+03 — liveness: live (current_address_book_code)<br>KeepRandomBeaconServiceImplV1 (alternative) `0x099597...599eab` — deployed 2020-09-10 15:49:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | DKGResultVerification | unmatched — not counted | — | mentioned in findings | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | BLS | unmatched — not counted | — | mentioned in findings | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | AltBn128 | unmatched — not counted | — | mentioned in findings | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | protocol.go | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | signing.go | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | altbn128.go | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | bls.go | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | key.go | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | local/signing.go | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | AltBn128.sol | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | BLS.sol | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | ModUtils.sol | unmatched — not counted | — | mentioned as internal library used by AltBn128.sol | no |
| drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view | Allowlist | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view | RebateStaking | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view | Bridge | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view | BridgeGovernance | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view | BridgeState | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view | RebateStaking | unmatched — not counted | — | mentioned as new contract being wired into Bridge | no |
| drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view | WalletRegistry | unmatched — not counted | — | listed in scope section as file in scope | no |
| drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view | EcdsaDkg | unmatched — not counted | — | listed in scope section as file in scope | no |
| drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view | NativeBTCDepositor | unmatched — not counted | — | listed in scope as the only file in scope | no |
| drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view | BurnFromMintTokenPoolUpgradeable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view | LockReleaseTokenPoolUpgradeable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view | TokenPoolUpgradeable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view | Pool | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view | RateLimiter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view | AbstractBTCRedeemer | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view | L2WormholeGateway | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1293a5...a15458` — deployed 2023-04-13 15:40:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x099597...599eab` — deployed 2023-04-14 11:48:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view | L2BTCRedeemerWormhole | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xd7cd99...34d9b7` — deployed 2025-09-08 03:35:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe931f1...d2d88b` — deployed 2025-09-08 04:54:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view | L1BTCRedeemerWormhole | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5d4d83...23dbde` — deployed 2025-09-07 09:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | T staking rebates | unmatched — not counted | — | Scope: Smart contracts for T staking rebates. | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | WalletRegistry | unmatched — not counted | — | Scope: WalletRegistry and EcdsaDkg smart contracts | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | EcdsaDkg | unmatched — not counted | — | Scope: WalletRegistry and EcdsaDkg smart contracts | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | NativeBTCDepositor | unmatched — not counted | — | Scope: NativeBTCDepositor contract | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | Threshold CCIP Update | unmatched — not counted | — | Scope: Threshold CCIP Update | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | Cross-chain bridge transfers | unmatched — not counted | — | Scope: Cross-chain bridge transfers | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | tBTC v2 | unmatched — not counted | — | Scope: Threshold Network tBTC v2 Security Audit Report.pdf | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | tBTC integration with Sui | unmatched — not counted | — | Scope: tBTC integration with the Sui blockchain | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | tBTC integration with StarkNet | unmatched — not counted | — | Scope: tBTC integration with the StarkNet blockchain | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | tBTC integration with Base | unmatched — not counted | — | Scope: tBTC integration with the Base blockchain | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | tBTC Bridge on Solana | unmatched — not counted | — | Scope: Smart contracts for the tBTC Bridge on Solana | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | core tBTC Bridge contracts | unmatched — not counted | — | Scope: Security audit of the core tBTC Bridge contracts | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | Vending machine | unmatched — not counted | — | Scope: Vending machine security audit | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | Staking contracts | unmatched — not counted | — | Scope: Staking contracts, T token logic, and vending machine mechanisms | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | T token logic | unmatched — not counted | — | Scope: Staking contracts, T token logic, and vending machine mechanisms | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | vending machine mechanisms | unmatched — not counted | — | Scope: Staking contracts, T token logic, and vending machine mechanisms | no |
| 240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf | Deposit | unmatched — not counted | — | — | no |
| 240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf | L1BitcoinDepositor | unmatched — not counted | — | — | no |
| 240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf | L2BitcoinDepositor | own contract | 0xdebd9a… (selected) `0xdebd9a...540bd5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 29-Sep-2022-LeastAuthority.pdf | BTCUtils | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Bank | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | BeaconAuthorization | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Bridge | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Bytes | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | CheckBitcoinSigs | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Deposit | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | DonationVault | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | EcdsaAuthorization | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | EcdsaDkgValidator | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Fraud | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | MaintainerProxy | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | MovingFunds | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Redemption | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Rewards | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | SortitionPool | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | TBTC | own contract | TBTC (selected) `0x18084f...d93a88` — deployed 2021-08-17 14:12:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 29-Sep-2022-LeastAuthority.pdf | TBTCVault | own contract | TBTCVault (selected) `0x9c0700...4fe3cd` — deployed 2023-01-24 02:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 29-Sep-2022-LeastAuthority.pdf | ValidateSPV | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | WalletRegistry | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | WalletRegistryGovernance | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Wallets | unmatched — not counted | — | — | no |
| leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2 | tBTC Bridge v2 | unmatched — not counted | — | mentioned in title and description as the audited system | no |
| 19-Nov-2021-CertiK.pdf | VendingMachine | unmatched — not counted | — | listed in Audit Scope table | no |
| skynet.certik.com/projects/threshold-network | T.sol | own contract | T (selected) `0xcdf702...94bee5` — deployed 2021-12-31 12:49:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| skynet.certik.com/projects/threshold-network | VendingMachine.sol | unmatched — not counted | — | — | no |
| 09-Nov-2021-ChainSecurity.pdf | Checkpoints | unmatched — not counted | — | — | no |
| 09-Nov-2021-ChainSecurity.pdf | IApplication | unmatched — not counted | — | — | no |
| 09-Nov-2021-ChainSecurity.pdf | IStaking | unmatched — not counted | — | — | no |
| 09-Nov-2021-ChainSecurity.pdf | PercentUtils | unmatched — not counted | — | — | no |
| 09-Nov-2021-ChainSecurity.pdf | StakingProviders | unmatched — not counted | — | — | no |
| 09-Nov-2021-ChainSecurity.pdf | T | own contract | T (selected) `0xcdf702...94bee5` — deployed 2021-12-31 12:49:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 09-Nov-2021-ChainSecurity.pdf | TokenStaking | unmatched — not counted | — | — | no |
| 09-Nov-2021-ChainSecurity.pdf | VendingMachine | unmatched — not counted | — | — | no |
| 29-Aug-2023-LeastAuthority.pdf | tBTC | own contract | TBTC (selected) `0x18084f...d93a88` — deployed 2021-08-17 14:12:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 29-Aug-2023-LeastAuthority.pdf | wormhole-gateway | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x1293a5...a15458` | ArbitrumWormholeGatewayUpgraded | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x099597...599eab` | BaseWormholeGatewayUpgraded | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb810ab...2a341a` | BTCDepositorWormhole | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7d7b62...6d811a` | CoveragePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x099597...599eab` | KeepRandomBeaconServiceImplV1 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x75a6e4...2c619a` | L1BTCDepositorWormholeV2Arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x186d04...00a1fe` | L1BTCDepositorWormholeV2Base | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe931f1...d2d88b` | L2BTCRedeemerWormhole | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd7cd99...34d9b7` | L2BTCRedeemerWormhole | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x6c84a8...d0de40` | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x236aa5...ab794b` | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x236aa5...ab794b` | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6c84a8...d0de40` | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1293a5...a15458` | L2WormholeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x099597...599eab` | L2WormholeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5499f5...e3d80b` | RandomBeacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x80226f...146f7d` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x236aa5...ab794b` | StakingPortBacker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x92f2d8...b4913d` | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7570a2...6437e6` | VendingMachineV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 98 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=3, medium=1
- Match method counts: unique_name=7

Zero-match audit list:

- [3402] diligence.security/audits/2020/02/thesis-tbtc-and-keep
- [3403] diligence.security/audits/2020/03/thesis-cryptographic-review
- [3404] drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view
- [3405] drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view
- [3406] drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view
- [3407] drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view
- [3408] drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view
- [3410] www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760
- [3412] leastauthority.com/blog/audit-of-keep-network-solana-smart-contracts
- [3414] leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2
- [3415] 19-Nov-2021-CertiK.pdf
- [3418] www.chainsecurity.com/security-audit/threshold-network

Fork inheritance lineage and inherited audits are included when available.
