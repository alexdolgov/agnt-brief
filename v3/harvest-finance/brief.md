# Agentic Audit Brief: Harvest Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 6 audit(s)
- Eligible audit results: 11 (6 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Harvest Finance (`harvest-finance`)
- Website: [https://harvest.finance/](https://harvest.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, polygon
- Contract surface: 15 unique implementations (16 raw deployments)
- Coverage basis: 1/6 confirmed own live verified implementations (16.7%); conservative 16.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $11,710,769.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Harvest Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, base, bsc, ethereum, polygon. Structural roles: 4 core, 2 supporting, 1 unclassified. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), supporting (2), unclassified (1)
- Contract kinds: contract (7)
- Detected standards: erc20 (3), erc165 (2), erc20permit (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (2), solmate (2)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AnyswapV3ERC20 (`0x4b5c23...d33743`, chain 56)
- ClonableBeaconProxy (`0x8553d2...c83c70`, chain 42161)
- ClonableBeaconProxy (`0x9dca58...8d46c1`, chain 42161)
- OptimismMintableERC20 (`0xd08a29...fb4034`, chain 8453)
- OptimismMintableERC20 (`0xe7798f...5a77ea`, chain 8453)
- UChildERC20Proxy (`0xab0b2d...d7bbff`, chain 137)

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/6 (16.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 9 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 6 of 15 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 16
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/harvest/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 16.7% | 2020-11 |
| Haechi | Tier 2 | 1 | 16.7% | 2020-09 |
| PeckShield | Tier 2 | 1 | 16.7% | 2020-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NotifyHelper | unknown | project_anchor | own_supporting | 0 | bsc | unit-241747 | `0xf71042...2cc9f0` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnyswapV3ERC20 | token | project_anchor | own_supporting | 0 | bsc | unit-241746 | `0x4b5c23...d33743` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-241748 | `0xd08a29...fb4034` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-241749 | `0xe7798f...5a77ea` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 2 | arbitrum | unit-241751 (2 proxies) | 2 deployments: arbitrum `0x8553d2...c83c70`; arbitrum `0x9dca58...8d46c1` | ⚠️ Unaudited |
| UChildERC20 | token | project_anchor | own_supporting | 1 | polygon | unit-241750 | `0xab0b2d...d7bbff` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x008671...ee2236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19762b...5fa57c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x252e7e...de653c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49d711...981c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x843002...2faa40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08a29...fb4034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7798f...5a77ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf00dd2...bf5f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf00dd2...bf5f7f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [LeastAuthority-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/LeastAuthority-Harvest.pdf) | LeastAuthority | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [Haechi-Harvest.pdf (also discovered via alternate URL)](https://github.com/harvestfi/audits/blob/main/Haechi-Harvest.pdf) | Haechi | Audit | 2020-09 | stale | Direct | contract_name|n/a | matched | 1 | 0 | 0 | 15 | high |
| [PeckShield-Harvest.pdf (also discovered via alternate URL)](https://github.com/harvestfi/audits/blob/main/PeckShield-Harvest.pdf) | PeckShield | Audit | 2020-10 | stale | Direct | contract_name|n/a | matched | 1 | 0 | 0 | 15 | high |
| [CertiK-Harvest.pdf (also discovered via alternate URL)](https://github.com/harvestfi/audits/blob/main/CertiK-Harvest.pdf) | CertiK | Audit | 2020-11 | stale | Direct | contract_name|n/a | matched | 1 | 0 | 0 | 55 | high |
| [Halborn-Harvest-2025.pdf](https://github.com/harvestfi/audits/blob/main/Halborn-Harvest-2025.pdf) | Halborn | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 57 | n/a |
| [LeastAuthority-Harvest.pdf](https://github.com/harvest-finance/harvest/blob/master/audits/LeastAuthority-Harvest.pdf) | Least Authority | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [www.harvest.finance/security](https://www.harvest.finance/security) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [immunefi.com/bug-bounty/harvest/information](https://immunefi.com/bug-bounty/harvest/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [6932] LeastAuthority-Harvest.pdf — no match: No reason recorded
- [6933] Haechi-Harvest.pdf — matched: Contracts extracted from 'Contracts Subject to Audit' section and issues. Date from cover page.
- [6934] PeckShield-Harvest.pdf — matched: Extracted contract names from findings targets and scope description. Audit date from cover page and version history.
- [6935] CertiK-Harvest.pdf — matched: Extracted all contracts from the 'Files In Scope' table in the audit report. The audit date is from the cover page: 'November 15th, 2020'.
- [6940] Halborn-Harvest-2025.pdf — no match: No reason recorded
- [15666] LeastAuthority-Harvest.pdf — no match: No reason recorded
- [15668] www.harvest.finance/security — no match: The document is a summary page listing audit reports from various firms, but does not contain a detailed scope section with specific contract names or file paths. Only high-level references to 'core vault infrastructure' and 'CRVStrategyStable.depositArbCheck()' are mentioned, but no explicit contract names are provided.
- [15670] immunefi.com/bug-bounty/harvest/information — no match: The document is a bug bounty program description, not an audit report. It does not list specific contracts in scope, only mentions repositories and that only contracts in active use are in scope. No contract names or audit date are provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| LeastAuthority-Harvest.pdf | CompoundWETHFoldStrategy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | Controller | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | IdleFinanceStrategy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | LiquidityRecipient | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | SushiMasterChefLPStrategy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | Vault | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | VaultProxy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | VaultStorage | unmatched — not counted | — | — | no |
| Haechi-Harvest.pdf | CRVStrategyStable | unmatched — not counted | — | listed in scope and issues | no |
| Haechi-Harvest.pdf | CRVStrategySwerve | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | CRVStrategyWRenBTC | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | CRVStrategyYCRV | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | Controller | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | DelayMinter | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | FeeRewardForwarder | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | Governable | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | HardRewards | unmatched — not counted | — | listed in scope and issues | no |
| Haechi-Harvest.pdf | NoMintRewardPool | unmatched — not counted | — | listed in scope and issues | no |
| Haechi-Harvest.pdf | NotifyHelper | own contract | NotifyHelper (selected) `0xf71042...2cc9f0` — deployed 2021-03-25 18:39:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Haechi-Harvest.pdf | RewardPool | unmatched — not counted | — | listed in scope and issues | no |
| Haechi-Harvest.pdf | RewardToken | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | SNXRewardStrategy | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | Storage | unmatched — not counted | — | listed in scope | no |
| Haechi-Harvest.pdf | Vault | unmatched — not counted | — | listed in scope and issues | no |
| PeckShield-Harvest.pdf | CRVStrategyStable | unmatched — not counted | — | Target in findings PVE-009, PVE-010, PVE-011, PVE-012, PVE-014, PVE-016 | no |
| PeckShield-Harvest.pdf | CRVStrategySwerve | unmatched — not counted | — | Mentioned in recommendation of PVE-011 | no |
| PeckShield-Harvest.pdf | CRVStrategyWRenBTC | unmatched — not counted | — | Mentioned in recommendation of PVE-011 | no |
| PeckShield-Harvest.pdf | CRVStrategyYCRV | unmatched — not counted | — | Target in findings PVE-010, PVE-011, PVE-015 | no |
| PeckShield-Harvest.pdf | Controller | unmatched — not counted | — | Target in findings PVE-004, PVE-017 | no |
| PeckShield-Harvest.pdf | DelayMinter | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Harvest.pdf | DepositHelper | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Harvest.pdf | FeeRewardForwarder | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Harvest.pdf | HardRewards | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Harvest.pdf | LPTokenWrapper | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Harvest.pdf | NotifyHelper | own contract | NotifyHelper (selected) `0xf71042...2cc9f0` — deployed 2021-03-25 18:39:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Harvest.pdf | RewardToken | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield-Harvest.pdf | SNXRewardStrategy | unmatched — not counted | — | Target in findings PVE-008, PVE-013 | no |
| PeckShield-Harvest.pdf | StakeLPToken | unmatched — not counted | — | Target in finding PVE-006 | no |
| PeckShield-Harvest.pdf | Vault | unmatched — not counted | — | Target in findings PVE-003, PVE-007, PVE-011 | no |
| PeckShield-Harvest.pdf | Vaults | unmatched — not counted | — | Target in finding PVE-002 | no |
| CertiK-Harvest.pdf | CRVStrategyRENBTCMainnet | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategyStable | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategyStableMainnet | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategySwerve | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategySwerveDAIMainnet | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategySwerveUSDCMainnet | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategyWBTCMainnet | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategyWRenBTC | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategyYCRV | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CRVStrategyYCRVMainnet | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CTokenInterfaces | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CompleteCToken | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | CompoundInteractor | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | ComptrollerInterface | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | Controllable | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | Controller | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | DelayMinter | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | DepositHelper | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | FeeRewardForwarder | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | Gauge | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | HardRewards | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IController | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | ICurveFi | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | ICurveFiWbtc | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IPriceConvertor | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IRewardPool | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IStrategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | ISwerveFi | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IUniswapV1Exchange | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IUniswapV1Factory | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IUniswapV2Migrator | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IUniswapV2Pair | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IVault | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | InterestRateModel | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | NotifyHelper | own contract | NotifyHelper (selected) `0xf71042...2cc9f0` — deployed 2021-03-25 18:39:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CertiK-Harvest.pdf | PriceConvertor | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | ProfitNotifier | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | RewardPool | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | RewardToken | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | RewardTokenProfitNotifier | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | SNXRewardInterface | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | SNXRewardStrategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | SNXRewardUniLPStrategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | Storage | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | VaultDAI | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | VaultUSDC | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | VaultUSDT | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | VaultYCRV | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | WETH9 | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | WETHCreamNoFoldStrategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Harvest.pdf | yVault | unmatched — not counted | — | listed in scope table | no |
| Halborn-Harvest-2025.pdf | AerodromeStableStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | AerodromeStableStrategyMainnet_jEUR_EURC | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | AerodromeVolatileStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | AerodromeVolatileStrategyMainnet_AERO_USDC | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | BaseUpgradeabilityProxy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | BaseUpgradeableStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | BaseUpgradeableStrategyStorage | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | CompoundStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | CompoundStrategyMainnet_USDbC | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ComptrollerInterface | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | Controllable | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ControllableInit | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | Controller | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | DataTypes | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | EIP20NonStandardInterface | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ErrorReporter | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ExtraFiLendStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ExtraFiLendStrategyMainnet_AERO | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | FluidLendStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | FluidLendStrategyMainnet_USDC | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | Governable | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | GovernableInit | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IBVault | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IComet | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ICometRewards | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IController | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IDex | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IERC4626 | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IGauge | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ILendingPool | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IPool | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IPotPool | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IProfitSharingReceiver | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IRewardForwarder | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IRouter | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IStakingRewards | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IUniversalLiquidator | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IUniversalLiquidatorRegistry | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IUpgradableStrategy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IUpgradeSource | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IVault | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | IWETH | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | InterestRateModel | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | MTokenInterfaces | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | MoonwellFoldStrategyV2 | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | MoonwellFoldStrategyV2Mainnet_USDC | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | MoonwellFoldStrategyV2Mainnet_WETH | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | PotPool | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | ReentrancyGuardUpgradeable | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | RewardForwarder | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | Storage | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | StrategyProxy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | VaultProxy | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | VaultStorage | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | VaultV1 | unmatched — not counted | — | — | no |
| Halborn-Harvest-2025.pdf | VaultV2 | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | CompoundWETHFoldStrategy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | Controller | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | IdleFinanceStrategy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | LiquidityRecipient | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | SushiMasterChefLPStrategy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | Vault | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | VaultProxy | unmatched — not counted | — | — | no |
| LeastAuthority-Harvest.pdf | VaultStorage | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xd08a29...fb4034` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe7798f...5a77ea` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8553d2...c83c70` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xab0b2d...d7bbff` | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 158 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=2
- Match method counts: unique_name=6

Zero-match audit list:

- [6932] LeastAuthority-Harvest.pdf
- [6940] Halborn-Harvest-2025.pdf
- [15666] LeastAuthority-Harvest.pdf
- [15668] www.harvest.finance/security

Fork inheritance lineage and inherited audits are included when available.
