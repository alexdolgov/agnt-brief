# Agentic Audit Brief: EigenCloud

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: EigenCloud (`eigencloud`)
- Website: [https://www.eigencloud.xyz](https://www.eigencloud.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 75 unique implementations (75 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $4,439,614,231.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for EigenCloud. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across ethereum, sepolia. Structural roles: 5 supporting, 1 core, 1 infra. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: supporting (5), core (1), infra (1)
- Contract kinds: abstract (6), contract (1)
- Detected standards: erc1967proxy (5), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (6)
- Upgradeable-pattern rows: 6

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 7; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 65 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 58
- Unique implementations: 75
- Raw deployments: 75
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BackingEigen | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-236696 | `0x83e911...456e75` | ⚠️ Unaudited |
| DelayedWithdrawalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44bcb0...83e2af` | ⚠️ Unaudited |
| DelegationManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-236695 | `0x39053d...8ef37a` | ⚠️ Unaudited |
| Eigen | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b716d...aae451` | ⚠️ Unaudited |
| EigenPod | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-236692 | `0x5a2a4f...909073` | ⚠️ Unaudited |
| EigenPodManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-236694 | `0x91e677...d3a338` | ⚠️ Unaudited |
| EigenStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27e7a3...c00428` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x179f00...eb55ba` | ⚠️ Unaudited |
| PauserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c431c...977060` | ⚠️ Unaudited |
| ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-236691 | `0x8b9566...b72444` | ⚠️ Unaudited |
| SignedDistributor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-236690 | `0x035bda...d4ad02` | ⚠️ Unaudited |
| Slasher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd92145...c1c3cd` | ⚠️ Unaudited |
| StrategyBaseTVLLimits | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-236693 | `0x1bee69...25dcd2` | ⚠️ Unaudited |
| StrategyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d25ee...e342fb` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6db1a...210eaf` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2520c6...9e9ff2` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab2346...f8e0c1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (58)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x0011fa...a8dd38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x066cf9...79730d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x0b415f...c81536` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x0e19e5...0cacf4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x0f264e...b00f5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x12988b...383173` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x151ece...2175d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1afc1e...2c68e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1bef05...c51b5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x287381...a1352a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2e3d6c...c47a5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x321604...136d69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x3f98d8...fbc5ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x41675c...c7461a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x424246...f5efbc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x425830...002d07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x427e62...2697d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x44632d...8f5a37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x46cfa3...9616db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x49a800...eb5adb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x4a93d2...713084` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x4fda89...4470f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x56bfeb...56034a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x56e88c...946fa1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x59b11b...fcf525` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x59c8d7...e16bf4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x5ac170...0bff61` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x5ae815...029349` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x63aae4...9d20f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x65147e...ee2d6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x67cec1...562ac6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6f8459...4fbac6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6ffe77...83672b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7a2b8c...b18f5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7d59f2...37e6f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7ec6a0...bfbd6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x87cffb...2e4f31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8b29d9...86a574` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8e9324...17d1d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8f31bf...9e5cef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa4db30...db162a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa59163...344c28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa6fec5...33c0f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa789c9...7af545` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb02a15...e11476` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb094ba...4923b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb1b6da...d3b533` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb3cd1a...70a96f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb99cc5...f96b26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xbe2f96...95a0b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc5b857...77eb5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd4a7e1...42e84b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd9db27...709552` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe8e469...487afc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xebda1f...15b720` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xee4182...c9ca1a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xfc8685...ab7b26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xff58a3...43373a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Certora - Eigenlayer Incentive Council.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/Certora%20-%20Eigenlayer%20Incentive%20Council.pdf) | Certora | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [EigenLayer Merkle - Certora - Security Assessment Final Report - July 2025.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/EigenLayer%20Merkle%20-%20Certora%20-%20Security%20Assessment%20Final%20Report%20-%20July%202025.pdf) | Certora | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [M1 Mainnet - Sigma Prime - May 2023.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/M1%20Mainnet%20-%20Sigma%20Prime%20-%20May%202023.pdf) | Sigma Prime | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Rewards v2 - SigmaPrime - Dec 2024.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/Rewards%20v2%20-%20SigmaPrime%20-%20Dec%202024.pdf) | Sigma Prime | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [RewardsCoordinator - Sigma Prime - May 2024.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/RewardsCoordinator%20-%20Sigma%20Prime%20-%20May%202024.pdf) | Sigma Prime | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20688] Certora - Eigenlayer Incentive Council.pdf — no match: The provided text is a GitHub page navigation and does not contain the actual audit report content. No contracts or dates could be extracted.
- [20691] EigenLayer Merkle - Certora - Security Assessment Final Report - July 2025.pdf — no match: Only one contract in scope: Merkle library.
- [20696] M1 Mainnet - Sigma Prime - May 2023.pdf — no match: Contracts extracted from 'Asset' fields in detailed findings. Date from cover page: 'May, 2023' -> last day of month.
- [20703] Rewards v2 - SigmaPrime - Dec 2024.pdf — no match: Extracted contracts from scope section and findings assets. Date from cover page: 'January, 2025' -> last day of month.
- [20705] RewardsCoordinator - Sigma Prime - May 2024.pdf — no match: Only one contract in scope: RewardsCoordinator (originally PaymentCoordinator). Offchain rewards calculation docs were also reviewed but are not a smart contract.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| EigenLayer Merkle - Certora - Security Assessment Final Report - July 2025.pdf | Merkle | unmatched — not counted | — | listed in scope | no |
| M1 Mainnet - Sigma Prime - May 2023.pdf | Slasher | unmatched — not counted | — | Asset listed in findings: EGN2-01, EGN2-05 | no |
| M1 Mainnet - Sigma Prime - May 2023.pdf | StrategyManager | unmatched — not counted | — | Asset listed in findings: EGN2-01, EGN2-02, EGN2-04 | no |
| M1 Mainnet - Sigma Prime - May 2023.pdf | DelegationManager | unmatched — not counted | — | Asset listed in finding: EGN2-02 | no |
| M1 Mainnet - Sigma Prime - May 2023.pdf | DelayedWithdrawalRouter | unmatched — not counted | — | Asset listed in finding: EGN2-03 | no |
| M1 Mainnet - Sigma Prime - May 2023.pdf | EigenPod | unmatched — not counted | — | Referenced in test suite and finding EGN2-03 | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | RewardsCoordinator | unmatched — not counted | — | listed in scope | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | RewardsCoordinatorStorage | unmatched — not counted | — | listed in scope | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | IRewardsCoordinator | unmatched — not counted | — | listed in scope | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | ServiceManagerBase | unmatched — not counted | — | listed in scope | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | ServiceManagerBaseStorage | unmatched — not counted | — | listed in scope | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | IServiceManager | unmatched — not counted | — | listed in scope | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | ECDSAServiceManagerBase | unmatched — not counted | — | listed in scope | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | operatorAvsSplitSnapshots | unmatched — not counted | — | mentioned in findings as asset | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | operatorPISplitSnapshots | unmatched — not counted | — | mentioned in findings as asset | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | operatorDirectedRewardSubmissions | unmatched — not counted | — | mentioned in findings as asset | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | baseEigenState | unmatched — not counted | — | mentioned in findings as asset | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | OperatorPISplitModel | unmatched — not counted | — | mentioned in findings as asset | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | OperatorDirectedRewardSubmissionsModel | unmatched — not counted | — | mentioned in findings as asset | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | OperatorDirectedRewardSubmission | unmatched — not counted | — | mentioned in findings as asset | no |
| RewardsCoordinator - Sigma Prime - May 2024.pdf | RewardsCoordinator | unmatched — not counted | — | Scope section states: 'strictly limited to PaymentCoordinator.sol file at commit 3eec97d. Note, the file in scope has been later renamed to RewardsCoordinator.sol at commit d8ac41a.' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 58 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: n/a

Zero-match audit list:

- [20688] Certora - Eigenlayer Incentive Council.pdf
- [20691] EigenLayer Merkle - Certora - Security Assessment Final Report - July 2025.pdf
- [20696] M1 Mainnet - Sigma Prime - May 2023.pdf
- [20703] Rewards v2 - SigmaPrime - Dec 2024.pdf
- [20705] RewardsCoordinator - Sigma Prime - May 2024.pdf

Fork inheritance lineage and inherited audits are included when available.
