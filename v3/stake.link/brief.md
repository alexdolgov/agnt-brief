# Agentic Audit Brief: stake.link

## Export Authority

- Production state: **published scope**
- Raw selected rows: 40 across 15 audit(s)
- Eligible audit results: 20 (15 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: stake.link (`stake.link`)
- Website: [https://stake.link](https://stake.link)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 37 unique implementations (39 raw deployments)
- Coverage basis: 17/32 confirmed own live verified implementations (53.1%); conservative 53.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $62,170,842.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for stake.link. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 51 contract row(s) across arbitrum, base, ethereum, polygon. Structural roles: 28 unclassified, 12 core, 11 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 51
- Structural roles: unclassified (28), core (12), supporting (11)
- Contract kinds: contract (51)
- Detected standards: ownable (14), erc20 (11), erc165 (7), erc1967proxy (5), pausable (3), accesscontrol (2)
- Frameworks: openzeppelin (19), chainlink (5), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x031de5...91db9a`, chain 1)
- UnnamedContract (`0x455e53...ffc3f6`, chain 1)
- UnnamedContract (`0x514910...f986ca`, chain 1)
- BurnMintERC20 (`0x1d0347...b4b2ae`, chain 137)
- BurnMintERC677 (`0x3106e2...4972fb`, chain 42161)
- BurnMintERC677 (`0xdfea35...d0eec0`, chain 42161)
- ERC1967Proxy (`0x0b2ef9...48ca4d`, chain 1)
- FactoryBurnMintERC20 (`0xc271a1...c20a9c`, chain 137)
- FactoryBurnMintERC20 (`0xe5b64a...ce26e6`, chain 8453)
- FactoryBurnMintERC20 (`0xf2f790...771297`, chain 8453)
- GovernanceTimelock (`0xb72d8f...78349f`, chain 1)
- RebaseController (`0x1711e9...bdbec4`, chain 1)
- RebaseController (`0x5537f6...5ddb90`, chain 1)
- RebaseController (`0xda669f...5b1c1f`, chain 1)
- RewardsPoolWSD (`0x4a18ae...490342`, chain 1)
- RewardsPoolWSD (`0x77f555...6b5a56`, chain 1)
- RewardsPoolWSD (`0x8753c0...f8cc72`, chain 1)
- StakingAllowance (`0xa95c5e...a28c23`, chain 1)
- WrappedSDToken (`0x2091d8...9555e6`, chain 1)
- WrappedSDToken (`0x43ff5f...f30a48`, chain 1)
- WrappedSDToken (`0x911d86...c803da`, chain 1)

## Contract Surface Quality

- Indexed contracts: 51; live-surface contracts included: 51 (34 live, 17 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/48 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 17/32 (53.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 35 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Deployed-live implementations: 35 of 37 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 17/32
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 37
- Raw deployments: 39
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 4 fresh, 8 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 17 match-unverified
- Tier 1 coverage: 43.8% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 14 | 43.8% | 2026-03 |
| unknown | Tier 2 | 8 | 25.0% | 2025-02 |
| Sigma Prime | Tier 2 | 5 | 15.6% | 2023-01 |
| Zellic | Tier 2 | 2 | 6.3% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CommunityVCS | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393141 | `0xac1229...fbc1b5` | ✅ Audited |
| EspressoFundFlowController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393144 | `0xf36bdb...7104bd` | ✅ Audited |
| EspressoStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393152 | `0xf0fb3a...540344` | ✅ Audited |
| FundFlowController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393150 | `0xd2e738...6a0200` | ✅ Audited |
| OperatorVCS | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393142 | `0x4852e4...39d2a4` | ✅ Audited |
| PolygonFundFlowController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393153 | `0x70f7da...f65951` | ✅ Audited |
| PolygonStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393140 | `0x7d145a...0300aa` | ✅ Audited |
| PriorityPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393148 | `0xcfa197...8b9d67` | ✅ Audited |
| PriorityPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393139 | `0xdc2686...375fd3` | ✅ Audited |
| PriorityPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393145 | `0xddc796...fd60ea` | ✅ Audited |
| RebaseController | governance | project_anchor | own_supporting | 0 | ethereum | unit-393107 | `0x1711e9...bdbec4` | ✅ Audited |
| RebaseController | governance | project_anchor | own_supporting | 0 | ethereum | unit-393114 | `0x5537f6...5ddb90` | ✅ Audited |
| SDLPool | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393147 | `0x0b2ef9...48ca4d` | ✅ Audited |
| StakingAllowance | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393119 | `0xa95c5e...a28c23` | ✅ Audited |
| StakingPool | unknown | project_anchor | own_supporting | 3 | ethereum | unit-393143 (3 proxies) | 3 deployments: ethereum `0x2ff439...541753`; ethereum `0x5273a7...cb6e50`; ethereum `0xb8b295...c43cd5` | ✅ Audited |
| WithdrawalPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393149 | `0xa60b51...d0c248` | ✅ Audited |
| WrappedSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-393118 | `0x911d86...c803da` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BurnMintERC20 | token | project_anchor | own_supporting | 0 | polygon | unit-393122 | `0x1d0347...b4b2ae` | ⚠️ Unaudited |
| BurnMintERC677 | token | project_anchor | own_supporting | 0 | arbitrum | unit-393135 | `0x3106e2...4972fb` | ⚠️ Unaudited |
| BurnMintERC677 | token | project_anchor | own_supporting | 0 | arbitrum | unit-393136 | `0xdfea35...d0eec0` | ⚠️ Unaudited |
| DelegatorPool | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-393146 | `0xaef186...1c2284` | ⚠️ Unaudited |
| DistributionOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-393109 | `0x2285ac...b443cf` | ⚠️ Unaudited |
| FactoryBurnMintERC20 | registry | project_anchor | own_supporting | 0 | polygon | unit-393132 | `0xc271a1...c20a9c` | ⚠️ Unaudited |
| FactoryBurnMintERC20 | registry | project_anchor | own_supporting | 0 | base | unit-393137 | `0xe5b64a...ce26e6` | ⚠️ Unaudited |
| FactoryBurnMintERC20 | registry | project_anchor | own_supporting | 0 | base | unit-393138 | `0xf2f790...771297` | ⚠️ Unaudited |
| GovernanceTimelock | governance | project_anchor | own_supporting | 0 | ethereum | unit-393120 | `0xb72d8f...78349f` | ⚠️ Unaudited |
| RebaseController | governance | project_anchor | own_supporting | 0 | ethereum | unit-393121 | `0xda669f...5b1c1f` | ⚠️ Unaudited |
| RewardsPoolWSD | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393112 | `0x4a18ae...490342` | ⚠️ Unaudited |
| RewardsPoolWSD | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393116 | `0x77f555...6b5a56` | ⚠️ Unaudited |
| RewardsPoolWSD | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393117 | `0x8753c0...f8cc72` | ⚠️ Unaudited |
| WithdrawalPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393151 | `0x908b89...6d3690` | ⚠️ Unaudited |
| WithdrawalPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393154 | `0xbfbf47...096458` | ⚠️ Unaudited |
| WrappedSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-393108 | `0x2091d8...9555e6` | ⚠️ Unaudited |
| WrappedSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-393110 | `0x43ff5f...f30a48` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393106 | `0x031de5...91db9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393111 | `0x455e53...ffc3f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393113 | `0x514910...f986ca` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[2025-07-02] Zellic - Polygon Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-07-02%5D%20Zellic%20-%20Polygon%20Staking.pdf) | Zellic | Audit | 2025-07 | aging | Direct | n/a | matched | 2 | 2 | 0 | 3 | n/a |
| [[2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2022-08-01%5D%20Sigma%20Prime%20-%20Core%20Staking%20Contracts%20Report.pdf) | Sigma Prime | Audit | 2022-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 15 | high |
| [[2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-01-01%5D%20Sigma%20Prime%20-%20Core%20%26%20LINK%20Staking%20Report.pdf) | Sigma Prime | Audit | 2023-01 | stale | Direct | contract_name | matched | 5 | 3 | 0 | 20 | high |
| [[2023-03-07] Cyfrin - LSD Index Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-03-07%5D%20Cyfrin%20-%20LSD%20Index%20Pool%20Report.pdf) | Cyfrin | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [[2023-08-06] Trust Security - SDLPool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-08-06%5D%20Trust%20Security%20-%20SDLPool%20Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | matched | 2 | 2 | 0 | 3 | n/a |
| [[2023-08-25] Cyfrin - Priority Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-08-25%5D%20Cyfrin%20-%20Priority%20Pool%20Report.pdf) | Cyfrin | Audit | 2023-08 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 1 | medium |
| [[2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-10-01%5D%20Trust%20Security%20-%20Priority%20Pool%20%26%20LINK%20Staking%20v0.2%20Report.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | matched | 4 | 4 | 0 | 6 | n/a |
| [[2024-04-30] Trust Security - Insurance Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-04-30%5D%20Trust%20Security%20-%20Insurance%20Pool%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [[2024-04-30] Trust Security - Metis Staking Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-04-30%5D%20Trust%20Security%20-%20Metis%20Staking%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [[2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-09-17%5D%20Cyfrin%20-%20LINK%20Staking%20Withdrawals.pdf) | Cyfrin | Audit | 2024-09 | aging | Direct | contract_name | matched | 3 | 3 | 0 | 17 | high |
| [[2024-11-27] Codehawks - LINK Staking Withdrawals.md](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-11-27%5D%20Codehawks%20-%20LINK%20Staking%20Withdrawals.md) | Cyfrin | Audit | 2024-11 | aging | Direct | contract_name | matched | 3 | 3 | 0 | 10 | high |
| [[2025-01-20] Cyfrin Staking Proxy.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-01-20%5D%20Cyfrin%20Staking%20Proxy.pdf) | Cyfrin | Audit | 2025-01 | aging | Direct | contract_name | matched | 2 | 2 | 0 | 6 | high |
| [[2025-02-04] Trust - LINK Staking Withdrawals.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-02-04%5D%20Trust%20-%20LINK%20Staking%20Withdrawals.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | matched | 5 | 4 | 0 | 6 | high |
| [[2025-02-28] Cyfrin - CL Rewards Claiming.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-02-28%5D%20Cyfrin%20-%20CL%20Rewards%20Claiming.pdf) | Cyfrin | Audit | 2025-02 | aging | Direct | contract_name | matched | 3 | 3 | 0 | 7 | high |
| [[2025-05-19] Cyfrin - Polygon Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-05-19%5D%20Cyfrin%20-%20Polygon%20Staking.pdf) | Cyfrin | Audit | 2025-05 | aging | Direct | contract_name | matched | 2 | 2 | 0 | 1 | high |
| [[2025-06-04] Cyfrin - LINK Migrator.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-06-04%5D%20Cyfrin%20-%20LINK%20Migrator.pdf) | Cyfrin | Audit | 2025-06 | aging | Direct | n/a | matched | 1 | 1 | 0 | 2 | n/a |
| [[2025-08-02] Cyfrin - SDL Vesting.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-08-02%5D%20Cyfrin%20-%20SDL%20Vesting.pdf) | Cyfrin | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [[2025-08-02] Cyfrin - Vesting.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-08-02%5D%20Cyfrin%20-%20Vesting.pdf) | Cyfrin | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [[2026-02-04] Cyfrin - Espresso Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2026-02-04%5D%20Cyfrin%20-%20Espresso%20Staking.pdf) | Cyfrin | Audit | 2026-02 | fresh | Direct | contract_name | matched | 2 | 2 | 0 | 1 | high |
| [[2026-03-23] Cyfrin - Rebase Batching.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2026-03-23%5D%20Cyfrin%20-%20Rebase%20Batching.pdf) | Cyfrin | Audit | 2026-03 | fresh | Direct | contract_name | matched | 4 | 3 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4624] [2025-07-02] Zellic - Polygon Staking.pdf — matched: No reason recorded
- [10452] [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf — matched: Scope section explicitly lists 16 Solidity files. Audit date is August 2022, mapped to last day of month.
- [10453] [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf — matched: Extracted 25 contract names from the scope section and findings. Audit date is January 2023, mapped to last day of month.
- [10454] [2023-03-07] Cyfrin - LSD Index Pool Report.pdf — no match: Scope section explicitly lists contracts in liquidSDIndex folder. Audit date from cover page: March 10, 2023.
- [10455] [2023-08-06] Trust Security - SDLPool Report.pdf — matched: No reason recorded
- [10456] [2023-08-25] Cyfrin - Priority Pool Report.pdf — matched: Scope section not explicitly present; contracts inferred from report content. Audit date from cover page.
- [10457] [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf — matched: No reason recorded
- [10458] [2024-04-30] Trust Security - Insurance Pool Report.pdf — no match: Scope section lists 4 files; audit date from document versioning (30/04/24).
- [10459] [2024-04-30] Trust Security - Metis Staking Report.pdf — no match: Scope section lists 4 files; audit date from document versioning (30/04/24).
- [10460] [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf — matched: All contracts listed in the Audit Scope section were extracted. The audit date is from the cover page.
- [10461] [2024-11-27] Codehawks - LINK Staking Withdrawals.md — matched: Extracted contract names from findings and scope references. Audit date from contest summary: Sep 30th, 2024 - Oct 17th, 2024, using end date.
- [10462] [2025-01-20] Cyfrin Staking Proxy.pdf — matched: All contracts listed in Audit Scope section (page 2) are extracted. Date from cover page.
- [10463] [2025-02-04] Trust - LINK Staking Withdrawals.pdf — matched: All 11 contracts listed in the Scope section of the audit report.
- [10464] [2025-02-28] Cyfrin - CL Rewards Claiming.pdf — matched: All contracts listed in Audit Scope section (page 2) are extracted. Audit date from cover page: February 28, 2025.
- [10465] [2025-05-19] Cyfrin - Polygon Staking.pdf — matched: Scope section explicitly lists three contracts: PolygonFundFlowController.sol, PolygonVault.sol, PolygonStrategy.sol. Audit date is May 19, 2025 from the cover page.
- [10466] [2025-06-04] Cyfrin - LINK Migrator.pdf — matched: No reason recorded
- [10468] [2025-08-02] Cyfrin - SDL Vesting.pdf — no match: No reason recorded
- [10469] [2025-08-02] Cyfrin - Vesting.pdf — no match: No reason recorded
- [10470] [2026-02-04] Cyfrin - Espresso Staking.pdf — matched: Audit scope explicitly lists three contracts: EspressoFundFlowController.sol, EspressoStrategy.sol, EspressoVault.sol. Date found on cover page: February 4, 2026.
- [10471] [2026-03-23] Cyfrin - Rebase Batching.pdf — matched: Scope explicitly lists CommunityVCS.sol and VaultControllerStrategy.sol. Other contracts appear in PoC or findings but are not in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [2025-07-02] Zellic - Polygon Staking.pdf | LSTRewardsSplitter | unmatched — not counted | — | — | no |
| [2025-07-02] Zellic - Polygon Staking.pdf | LSTRewardsSplitterController | unmatched — not counted | — | — | no |
| [2025-07-02] Zellic - Polygon Staking.pdf | PolygonFundFlowController | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x70f7da...f65951` — deployed 2025-07-16 19:38:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-07-02] Zellic - Polygon Staking.pdf | PolygonStrategy | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d145a...0300aa` — deployed 2025-07-16 19:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-07-02] Zellic - Polygon Staking.pdf | PolygonVault | unmatched — not counted | — | — | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | MerkleDistributor | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | BorrowingPool | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | LendingPool | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | PoolOwners | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | PoolRouter | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | RewardsPool | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | StakingPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x5273a7...cb6e50` — deployed 2026-02-09 22:16:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0x2ff439...541753` — deployed 2025-07-16 19:34:11+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xb8b295...c43cd5` — deployed 2022-12-05 14:06:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | RewardsPoolController | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | StakingRewardsPool | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | LinkPoolNFT | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | StakingAllowance | own contract | StakingAllowance (selected) `0xa95c5e...a28c23` — deployed 2022-12-05 13:59:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | WrappedSDToken | ambiguous — not counted | WrappedSDToken (alternative) `0x43ff5f...f30a48` — deployed 2026-02-09 22:18:35+03 — liveness: live (code_present_context)<br>WrappedSDToken (alternative) `0x2091d8...9555e6` — deployed 2025-07-16 19:36:11+03 — liveness: live (code_present_context)<br>WrappedSDToken (alternative) `0x911d86...c803da` — deployed 2022-12-05 14:07:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | ERC677 | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | VirtualERC20 | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | VirtualERC677 | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | DelegatorPool | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | GovernanceController | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | PoolRouter | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | RewardsPool | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | RewardsPoolWSD | ambiguous — not counted | RewardsPoolWSD (alternative) `0x4a18ae...490342` — deployed 2026-02-09 22:19:59+03 — liveness: live (current_address_book_code)<br>RewardsPoolWSD (alternative) `0x77f555...6b5a56` — deployed 2025-07-16 19:38:47+03 — liveness: live (current_address_book_code)<br>RewardsPoolWSD (alternative) `0x8753c0...f8cc72` — deployed 2023-09-20 19:35:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | SlashingKeeper | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | StakingPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x5273a7...cb6e50` — deployed 2026-02-09 22:16:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0x2ff439...541753` — deployed 2025-07-16 19:34:11+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xb8b295...c43cd5` — deployed 2022-12-05 14:06:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-12-05 was 57d from audit; next candidate 897d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | RewardsPoolController | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | StakingRewardsPool | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | Flat | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | RampUpCurve | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | LinkPoolNFT | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | LPLMigration | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | StakingAllowance | own contract | StakingAllowance (selected) `0xa95c5e...a28c23` — deployed 2022-12-05 13:59:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | WrappedSDToken | own contract | WrappedSDToken (alternative) `0x43ff5f...f30a48` — deployed 2026-02-09 22:18:35+03 — liveness: live (code_present_context)<br>WrappedSDToken (alternative) `0x2091d8...9555e6` — deployed 2025-07-16 19:36:11+03 — liveness: live (code_present_context)<br>WrappedSDToken (selected) `0x911d86...c803da` — deployed 2022-12-05 14:07:23+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-12-05 was 57d from audit; next candidate 897d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | ERC677 | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | ERC677Upgradeable | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | CommunityVault | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | CommunityVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xac1229...fbc1b5` — deployed 2023-11-22 19:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | OperatorVault | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | OperatorVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4852e4...39d2a4` — deployed 2022-12-06 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | VaultControllerStrategy | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | FlatFee | unmatched — not counted | — | mentioned in findings as FlatFee.sol | no |
| [2023-03-07] Cyfrin - LSD Index Pool Report.pdf | LiquidSDIndexPool | unmatched — not counted | — | listed in scope and findings | no |
| [2023-03-07] Cyfrin - LSD Index Pool Report.pdf | LiquidSDAdapter | unmatched — not counted | — | listed in scope and findings | no |
| [2023-03-07] Cyfrin - LSD Index Pool Report.pdf | LidoSTETHAdapter | unmatched — not counted | — | listed in scope and findings | no |
| [2023-03-07] Cyfrin - LSD Index Pool Report.pdf | RocketPoolRETHAdapter | unmatched — not counted | — | listed in scope and findings | no |
| [2023-03-07] Cyfrin - LSD Index Pool Report.pdf | LiquidSDAdapterMock | unmatched — not counted | — | listed in findings | no |
| [2023-08-06] Trust Security - SDLPool Report.pdf | DelegatorPool | unmatched — not counted | — | — | no |
| [2023-08-06] Trust Security - SDLPool Report.pdf | LinearBoostController | unmatched — not counted | — | — | no |
| [2023-08-06] Trust Security - SDLPool Report.pdf | OperatorVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4852e4...39d2a4` — deployed 2022-12-06 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-08-06] Trust Security - SDLPool Report.pdf | OperatorVault | unmatched — not counted | — | — | no |
| [2023-08-06] Trust Security - SDLPool Report.pdf | SDLPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0b2ef9...48ca4d` — deployed 2023-09-20 19:34:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-08-25] Cyfrin - Priority Pool Report.pdf | PriorityPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0xdc2686...375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xddc796...fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xcfa197...8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-09-20 was 26d from audit; next candidate 691d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-08-25] Cyfrin - Priority Pool Report.pdf | StakingQueue | unmatched — not counted | — | mentioned in executive summary and additional comments as original name | no |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | CommunityVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xac1229...fbc1b5` — deployed 2023-11-22 19:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | CommunityVault | unmatched — not counted | — | — | no |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | OperatorVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4852e4...39d2a4` — deployed 2022-12-06 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | OperatorVault | unmatched — not counted | — | — | no |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | PriorityPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0xdc2686...375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xddc796...fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xcfa197...8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-09-20 was 11d from audit; next candidate 654d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | SlashingKeeper | unmatched — not counted | — | — | no |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | StakingPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x5273a7...cb6e50` — deployed 2026-02-09 22:16:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0x2ff439...541753` — deployed 2025-07-16 19:34:11+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xb8b295...c43cd5` — deployed 2022-12-05 14:06:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-12-05 was 300d from audit; next candidate 654d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | StakingRewardsPool | unmatched — not counted | — | — | no |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | Vault | unmatched — not counted | — | — | no |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | VaultControllerStrategy | unmatched — not counted | — | — | no |
| [2024-04-30] Trust Security - Insurance Pool Report.pdf | SequencerVault | unmatched — not counted | — | listed in scope | no |
| [2024-04-30] Trust Security - Insurance Pool Report.pdf | SequencerVCS | unmatched — not counted | — | listed in scope | no |
| [2024-04-30] Trust Security - Insurance Pool Report.pdf | SequencerRewardsCCIPReceiver | unmatched — not counted | — | listed in scope | no |
| [2024-04-30] Trust Security - Insurance Pool Report.pdf | SequencerRewardsCCIPSender | unmatched — not counted | — | listed in scope | no |
| [2024-04-30] Trust Security - Metis Staking Report.pdf | SequencerVault | unmatched — not counted | — | listed in scope | no |
| [2024-04-30] Trust Security - Metis Staking Report.pdf | SequencerVCS | unmatched — not counted | — | listed in scope | no |
| [2024-04-30] Trust Security - Metis Staking Report.pdf | SequencerRewardsCCIPReceiver | unmatched — not counted | — | listed in scope | no |
| [2024-04-30] Trust Security - Metis Staking Report.pdf | SequencerRewardsCCIPSender | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | VaultControllerStrategy | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | CommunityVault | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | CommunityVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xac1229...fbc1b5` — deployed 2023-11-22 19:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | OperatorVault | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | OperatorVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4852e4...39d2a4` — deployed 2022-12-06 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | FundFlowController | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd2e738...6a0200` — deployed 2025-02-06 20:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | PPKeeper | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | SequencerVCS | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | PriorityPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xdc2686...375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xddc796...fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xcfa197...8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | WithdrawalPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xa60b51...d0c248` — deployed 2025-02-06 20:53:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xbfbf47...096458` — deployed 2025-07-16 19:36:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x908b89...6d3690` — deployed 2026-02-09 22:18:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | StakingRewardsPool | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | IStrategy | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | IStaking | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | IRewardVault | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | IStakingPool | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | IPriorityPool | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | IWithdrawalPool | unmatched — not counted | — | listed in scope | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | OperatorStakingPool | unmatched — not counted | — | listed in scope and findings | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | LSTRewardsSplitterController | unmatched — not counted | — | listed in scope and findings | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | LSTRewardsSplitter | unmatched — not counted | — | listed in scope and findings | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | OperatorVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4852e4...39d2a4` — deployed 2022-12-06 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | WithdrawalPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xa60b51...d0c248` — deployed 2025-02-06 20:53:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xbfbf47...096458` — deployed 2025-07-16 19:36:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x908b89...6d3690` — deployed 2026-02-09 22:18:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | PriorityPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xdc2686...375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xddc796...fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xcfa197...8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | StakingPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x5273a7...cb6e50` — deployed 2026-02-09 22:16:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0x2ff439...541753` — deployed 2025-07-16 19:34:11+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xb8b295...c43cd5` — deployed 2022-12-05 14:06:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | StakingRewardsPool | unmatched — not counted | — | listed in scope and findings | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | FundFlowController | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd2e738...6a0200` — deployed 2025-02-06 20:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | VaultControllerStrategy | unmatched — not counted | — | listed in scope and findings | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | CommunityVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xac1229...fbc1b5` — deployed 2023-11-22 19:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | OperatorVault | unmatched — not counted | — | listed in scope and findings | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | VaultDepositController | unmatched — not counted | — | listed in scope and findings | no |
| [2025-01-20] Cyfrin Staking Proxy.pdf | StakingProxy | unmatched — not counted | — | listed in scope | no |
| [2025-01-20] Cyfrin Staking Proxy.pdf | PriorityPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xdc2686...375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xddc796...fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xcfa197...8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2025-01-20] Cyfrin Staking Proxy.pdf | WithdrawalPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xa60b51...d0c248` — deployed 2025-02-06 20:53:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xbfbf47...096458` — deployed 2025-07-16 19:36:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x908b89...6d3690` — deployed 2026-02-09 22:18:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-02-06 was 17d from audit; next candidate 177d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-01-20] Cyfrin Staking Proxy.pdf | SDLPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0b2ef9...48ca4d` — deployed 2023-09-20 19:34:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-01-20] Cyfrin Staking Proxy.pdf | RewardsPoolController | unmatched — not counted | — | listed in scope | no |
| [2025-01-20] Cyfrin Staking Proxy.pdf | RewardsPool | unmatched — not counted | — | listed in scope | no |
| [2025-01-20] Cyfrin Staking Proxy.pdf | RewardsPoolTimeBased | unmatched — not counted | — | listed in scope | no |
| [2025-01-20] Cyfrin Staking Proxy.pdf | RewardsPoolWSD | ambiguous — not counted | RewardsPoolWSD (alternative) `0x4a18ae...490342` — deployed 2026-02-09 22:19:59+03 — liveness: live (current_address_book_code)<br>RewardsPoolWSD (alternative) `0x77f555...6b5a56` — deployed 2025-07-16 19:38:47+03 — liveness: live (current_address_book_code)<br>RewardsPoolWSD (alternative) `0x8753c0...f8cc72` — deployed 2023-09-20 19:35:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | PriorityPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xdc2686...375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xddc796...fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xcfa197...8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | WithdrawalPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xa60b51...d0c248` — deployed 2025-02-06 20:53:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xbfbf47...096458` — deployed 2025-07-16 19:36:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x908b89...6d3690` — deployed 2026-02-09 22:18:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-02-06 was 2d from audit; next candidate 162d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | VaultControllerStrategy | unmatched — not counted | — | listed in scope | no |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | FundFlowController | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd2e738...6a0200` — deployed 2025-02-06 20:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | StakingPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x5273a7...cb6e50` — deployed 2026-02-09 22:16:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0x2ff439...541753` — deployed 2025-07-16 19:34:11+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xb8b295...c43cd5` — deployed 2022-12-05 14:06:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | RebaseController | own contract | RebaseController (alternative) `0xda669f...5b1c1f` — deployed 2025-07-16 19:35:23+03 — liveness: live (current_address_book_code)<br>RebaseController (selected) `0x1711e9...bdbec4` — deployed 2025-02-06 20:53:35+03 — liveness: live (current_address_book_code)<br>RebaseController (alternative) `0x5537f6...5ddb90` — deployed 2026-02-09 22:18:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-02-06 was 2d from audit; next candidate 162d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | OperatorVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4852e4...39d2a4` — deployed 2022-12-06 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | CommunityVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xac1229...fbc1b5` — deployed 2023-11-22 19:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | OperatorVault | unmatched — not counted | — | listed in scope | no |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | CommunityVault | unmatched — not counted | — | listed in scope | no |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | CommunityVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xac1229...fbc1b5` — deployed 2023-11-22 19:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | CommunityVault | unmatched — not counted | — | listed in Audit Scope | no |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | FundFlowController | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd2e738...6a0200` — deployed 2025-02-06 20:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | OperatorVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4852e4...39d2a4` — deployed 2022-12-06 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | OperatorVault | unmatched — not counted | — | listed in Audit Scope | no |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | Vault | unmatched — not counted | — | listed in Audit Scope | no |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | VaultControllerStrategy | unmatched — not counted | — | listed in Audit Scope | no |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | IDelegateRegistry | unmatched — not counted | — | listed in Audit Scope | no |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | IVault | unmatched — not counted | — | listed in Audit Scope | no |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | IVaultControllerStrategy | unmatched — not counted | — | listed in Audit Scope | no |
| [2025-05-19] Cyfrin - Polygon Staking.pdf | PolygonFundFlowController | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x70f7da...f65951` — deployed 2025-07-16 19:38:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-05-19] Cyfrin - Polygon Staking.pdf | PolygonVault | unmatched — not counted | — | listed in scope | no |
| [2025-05-19] Cyfrin - Polygon Staking.pdf | PolygonStrategy | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d145a...0300aa` — deployed 2025-07-16 19:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-06-04] Cyfrin - LINK Migrator.pdf | IPriorityPool | unmatched — not counted | — | — | no |
| [2025-06-04] Cyfrin - LINK Migrator.pdf | LINKMigrator | unmatched — not counted | — | — | no |
| [2025-06-04] Cyfrin - LINK Migrator.pdf | PriorityPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0xdc2686...375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xddc796...fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xcfa197...8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-07-16 was 45d from audit; next candidate 253d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-08-02] Cyfrin - SDL Vesting.pdf | SDLVesting | unmatched — not counted | — | — | no |
| [2025-08-02] Cyfrin - Vesting.pdf | SDLVesting | unmatched — not counted | — | — | no |
| [2026-02-04] Cyfrin - Espresso Staking.pdf | EspressoFundFlowController | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf36bdb...7104bd` — deployed 2026-02-09 22:19:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2026-02-04] Cyfrin - Espresso Staking.pdf | EspressoStrategy | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf0fb3a...540344` — deployed 2026-02-09 22:19:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2026-02-04] Cyfrin - Espresso Staking.pdf | EspressoVault | unmatched — not counted | — | listed in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | CommunityVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xac1229...fbc1b5` — deployed 2023-11-22 19:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | VaultControllerStrategy | unmatched — not counted | — | listed in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | RebaseController | own contract | RebaseController (alternative) `0xda669f...5b1c1f` — deployed 2025-07-16 19:35:23+03 — liveness: live (current_address_book_code)<br>RebaseController (alternative) `0x1711e9...bdbec4` — deployed 2025-02-06 20:53:35+03 — liveness: live (current_address_book_code)<br>RebaseController (selected) `0x5537f6...5ddb90` — deployed 2026-02-09 22:18:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2026-02-09 was 43d from audit; next candidate 251d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | StakingPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x5273a7...cb6e50` — deployed 2026-02-09 22:16:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0x2ff439...541753` — deployed 2025-07-16 19:34:11+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xb8b295...c43cd5` — deployed 2022-12-05 14:06:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2026-02-09 was 43d from audit; next candidate 251d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | StrategyMock | unmatched — not counted | — | used in PoC but not in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | CommunityVault | unmatched — not counted | — | deployed in PoC but not in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | VaultDepositController | unmatched — not counted | — | deployed in PoC but not in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | StakingRewardsMock | unmatched — not counted | — | deployed in PoC but not in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | StakingMock | unmatched — not counted | — | deployed in PoC but not in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | PriorityPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xdc2686...375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xddc796...fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xcfa197...8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2026-02-09 was 43d from audit; next candidate 251d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | SecurityPool | unmatched — not counted | — | deployed in PoC but not in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | ERC677 | unmatched — not counted | — | deployed in PoC but not in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x1d0347...b4b2ae` | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3106e2...4972fb` | BurnMintERC677 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdfea35...d0eec0` | BurnMintERC677 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc271a1...c20a9c` | FactoryBurnMintERC20 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe5b64a...ce26e6` | FactoryBurnMintERC20 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf2f790...771297` | FactoryBurnMintERC20 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb72d8f...78349f` | GovernanceTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xda669f...5b1c1f` | RebaseController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4a18ae...490342` | RewardsPoolWSD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x77f555...6b5a56` | RewardsPoolWSD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8753c0...f8cc72` | RewardsPoolWSD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x908b89...6d3690` | WithdrawalPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbfbf47...096458` | WithdrawalPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2091d8...9555e6` | WrappedSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x43ff5f...f30a48` | WrappedSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 40 own (35 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 12 ambiguous, 109 unmatched
- Matched-own operational status: 40 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, medium=1
- Match method counts: temporal_name=12, unique_name=28

Zero-match audit list:

- [10454] [2023-03-07] Cyfrin - LSD Index Pool Report.pdf
- [10458] [2024-04-30] Trust Security - Insurance Pool Report.pdf
- [10459] [2024-04-30] Trust Security - Metis Staking Report.pdf
- [10468] [2025-08-02] Cyfrin - SDL Vesting.pdf
- [10469] [2025-08-02] Cyfrin - Vesting.pdf

Fork inheritance lineage and inherited audits are included when available.
