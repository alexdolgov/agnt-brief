# Agentic Audit Brief: Rubicon

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Rubicon (`rubicon`)
- Website: [https://app.rubicon.finance/swap](https://app.rubicon.finance/swap)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 79 unique implementations (79 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $152,211.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Rubicon. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across arbitrum, base, ethereum, optimism. Structural roles: 4 core, 1 infra, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (4), infra (1), supporting (1)
- Contract kinds: contract (6)
- Detected standards: erc165 (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 1

## Fork Analysis

2 of 29 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

**ArbitrumBridgeExecutor** (`0x64307c...b7a16d`, chain 42161)
Origin: compound-finance (`0x0e3759...46eacf`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OptimismBridgeExecutor** (`0x2b290e...39c442`, chain 10)
Origin: compound-finance (`0x0e3759...46eacf`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x27ec13...617f8a`, chain 1)
- UnnamedContract (`0x7483e8...32d9c4`, chain 1)
- UnnamedContract (`0x7b42e9...131025`, chain 1)
- UnnamedContract (`0x80e429...2d9986`, chain 1)
- UnnamedContract (`0xbabeb7...84d4a4`, chain 1)
- UnnamedContract (`0xbc0f42...2ffd86`, chain 1)
- UnnamedContract (`0x0a5f4d...978114`, chain 10)
- UnnamedContract (`0x5c1fc5...713048`, chain 10)
- UnnamedContract (`0x80bfd0...bc11a2`, chain 10)
- UnnamedContract (`0xbc547e...6fc06b`, chain 10)
- UnnamedContract (`0xfe3b2f...fb30fb`, chain 10)
- UnnamedContract (`0x1db5b4...659cba`, chain 8453)
- UnnamedContract (`0x3a9a3f...34b61c`, chain 8453)
- UnnamedContract (`0x4e973a...ccfe2a`, chain 8453)
- UnnamedContract (`0x5a4f8e...5b98b6`, chain 8453)
- UnnamedContract (`0x91b4a1...fd5a3d`, chain 8453)
- UnnamedContract (`0x95827f...c579ff`, chain 8453)
- UnnamedContract (`0xa6311e...50bddf`, chain 8453)
- UnnamedContract (`0x2e5e5f...51fdf3`, chain 42161)
- UnnamedContract (`0x3e0eb7...558d1d`, chain 42161)
- UnnamedContract (`0x524cbc...3e29c7`, chain 42161)
- UnnamedContract (`0x6cf1f4...b4043b`, chain 42161)
- UnnamedContract (`0xcc07b8...87d521`, chain 42161)
- ClonableBeaconProxy (`0x565f12...4f8030`, chain 42161)
- GovernanceStrategy (`0x287672...8b0728`, chain 1)
- MerkleClaimFactory (`0x07f4d8...e33b6c`, chain 10)
- OptimismMintableERC20 (`0xb38360...6b2a2f`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 50 discovered implementations excluded (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Deployed-live implementations: 29 of 79 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 79
- Raw deployments: 79
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (56)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Admin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8d3829...8843b4` | ⚠️ Unaudited |
| AquilaFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x035022...70d2b0` | ⚠️ Unaudited |
| AquilaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x109074...7e7fd1` | ⚠️ Unaudited |
| ArbitrumBridgeExecutor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391775 | `0x64307c...b7a16d` | ⚠️ Unaudited |
| BathBuddy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0299d5...d3ffac` | ⚠️ Unaudited |
| BathHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0daaf7...8b52f5` | ⚠️ Unaudited |
| BathPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x03660e...878a57` | ⚠️ Unaudited |
| BathToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2fd610...e4b8fa` | ⚠️ Unaudited |
| BebraVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x559825...550858` | ⚠️ Unaudited |
| BondAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xece03d...bbe897` | ⚠️ Unaudited |
| BondFixedTermSDA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c2eff...37ac77` | ⚠️ Unaudited |
| BondFixedTermTeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd13a6f...724e5f` | ⚠️ Unaudited |
| ClearingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79f17c...231e04` | ⚠️ Unaudited |
| ClonableBeaconProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-391786 | `0x565f12...4f8030` | ⚠️ Unaudited |
| Collector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1115cf...3a3170` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c2727...fcccd8` | ⚠️ Unaudited |
| GladiusOrderQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56e436...627fd9` | ⚠️ Unaudited |
| GladiusReactor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3c53c0...2d07f9` | ⚠️ Unaudited |
| GovernanceStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391759 | `0x287672...8b0728` | ⚠️ Unaudited |
| HypervisorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb1e99...e43c96` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1456a1...12c181` | ⚠️ Unaudited |
| MarketAid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0fc9b5...5db839` | ⚠️ Unaudited |
| MarketAidFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x04fdd1...6ada1b` | ⚠️ Unaudited |
| MerkleClaimERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x2181f1...fd6ba3` | ⚠️ Unaudited |
| MerkleClaimFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-391765 | `0x07f4d8...e33b6c` | ⚠️ Unaudited |
| MerkleClaimFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e08f1...6a0a63` | ⚠️ Unaudited |
| MerkleMerkleMerkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2618be...6f59ec` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x085ffe...0c6745` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x001c81...e702ab` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x106aa8...c68a52` | ⚠️ Unaudited |
| OptimismBridgeExecutor | unknown | project_anchor | own_supporting | 0 | optimism | unit-391767 | `0x2b290e...39c442` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | project_anchor | own_supporting | 0 | base | unit-391785 | `0xb38360...6b2a2f` | ⚠️ Unaudited |
| PoolArbExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x455f8f...7e0b24` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c4bf0...0da593` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22066f...d3284c` | ⚠️ Unaudited |
| RolesAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x865c9c...8829a4` | ⚠️ Unaudited |
| RubiconFeeController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c2727...fcccd8` | ⚠️ Unaudited |
| RubiconGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x902618...ccc935` | ⚠️ Unaudited |
| RubiconMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d39ed...353aa0` | ⚠️ Unaudited |
| RubiconRewardsVestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39eb71...d78569` | ⚠️ Unaudited |
| RubiconRFQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x293e35...2986af` | ⚠️ Unaudited |
| RubiconRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01fb1a...497d37` | ⚠️ Unaudited |
| RubiconV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x045b70...aa62ba` | ⚠️ Unaudited |
| RubiLPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x424f76...3f0c3d` | ⚠️ Unaudited |
| RubiLPFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ea5bc...a7b8b7` | ⚠️ Unaudited |
| StakingMultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1bcbc9...30329c` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x568cc6...a2cbe9` | ⚠️ Unaudited |
| StrategistUtility | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x02d902...ab4566` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x373948...434541` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x846472...db640c` | ⚠️ Unaudited |
| TransitionBathHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf7cad9...5aba25` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x264188...20ce02` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x63998c...1cfd90` | ⚠️ Unaudited |
| UniProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5365df...d06d93` | ⚠️ Unaudited |
| UniswapV3Staker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22066f...d3284c` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x420000...000006` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391758 | `0x27ec13...617f8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391760 | `0x7483e8...32d9c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391761 | `0x7b42e9...131025` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391762 | `0x80e429...2d9986` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391763 | `0xbabeb7...84d4a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391764 | `0xbc0f42...2ffd86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391766 | `0x0a5f4d...978114` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391768 | `0x5c1fc5...713048` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391769 | `0x80bfd0...bc11a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391770 | `0xbc547e...6fc06b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-391771 | `0xfe3b2f...fb30fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391778 | `0x1db5b4...659cba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391779 | `0x3a9a3f...34b61c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391780 | `0x4e973a...ccfe2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391781 | `0x5a4f8e...5b98b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391782 | `0x91b4a1...fd5a3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391783 | `0x95827f...c579ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391784 | `0xa6311e...50bddf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391772 | `0x2e5e5f...51fdf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391773 | `0x3e0eb7...558d1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391774 | `0x524cbc...3e29c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391776 | `0x6cf1f4...b4043b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391777 | `0xcc07b8...87d521` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Sherlock bug bounty (opens in a new tab)](https://audits.sherlock.xyz/bug-bounties/77) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [public Code4rena contest (opens in a new tab)](https://code4rena.com/audits/2023-04-rubicon-v2) | Code4rena | Contest | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audit Report (opens in a new tab)](https://code4rena.com/reports/2023-04-rubicon) | Code4rena | Contest | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [Audit Report (opens in a new tab)](https://code4rena.com/reports/2022-05-rubicon) | Code4rena | Contest | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18098] Sherlock bug bounty (opens in a new tab) — no match: The provided text is a bug bounty page header with no contract names or audit report content.
- [18099] public Code4rena contest (opens in a new tab) — no match: The provided text is a leaderboard for a Code4rena audit contest, not the audit report itself. No contracts in scope are listed.
- [18100] Audit Report (opens in a new tab) — no match: Extracted from the audit report's Scope section and findings. The audit took place between April 5 and April 13, 2023, so the end date is used.
- [18101] Audit Report (opens in a new tab) — no match: Scope section explicitly lists 6 smart contracts. Audit date from report header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit Report (opens in a new tab) | RubiconMarket | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | FeeWrapper | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | BathBuddy | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | Position | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | BathHouseV2 | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | V2Migrator | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | RubiconRouter | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | PoolsUtility | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | SimpleMarket | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | ExpiringMarket | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | Comptroller | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | CErc20Delegate | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | CErc20 | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | CToken | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | WhitePaperInterestRateModel | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | DummyPriceOracle | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | TokenWithFaucet | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | IWETH | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | IBathBuddy | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | IBathToken | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | Some3rdPartyProtocol | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | RubiconRouter | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | RubiconMarket | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | BathBuddy | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | BathToken | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | BathPair | unmatched — not counted | — | listed in scope | no |
| Audit Report (opens in a new tab) | BathHouse | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x64307c...b7a16d` | ArbitrumBridgeExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x565f12...4f8030` | ClonableBeaconProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x287672...8b0728` | GovernanceStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x07f4d8...e33b6c` | MerkleClaimFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2b290e...39c442` | OptimismBridgeExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb38360...6b2a2f` | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=2
- Match method counts: n/a

Zero-match audit list:

- [18098] Sherlock bug bounty (opens in a new tab)
- [18099] public Code4rena contest (opens in a new tab)
- [18100] Audit Report (opens in a new tab)
- [18101] Audit Report (opens in a new tab)

Fork inheritance lineage and inherited audits are included when available.
