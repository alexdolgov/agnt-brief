# Agentic Audit Brief: Symbiosis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 21 across 7 audit(s)
- Eligible audit results: 15 (7 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Symbiosis (`symbiosis`)
- Website: [https://symbiosis.finance](https://symbiosis.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 32 unique implementations (32 raw deployments)
- Coverage basis: 7/18 confirmed own live verified implementations (38.9%); conservative 38.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $8,730,964.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Symbiosis. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across ethereum, sepolia. Structural roles: 11 core, 6 supporting, 3 infra. 10 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: core (11), supporting (6), infra (3)
- Contract kinds: contract (20)
- Detected standards: erc1967proxy (7), erc20 (5), erc20permit (2), ownable (2), ownable2step (2), pausable (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (7), uniswap (6), foundry (5), solady (4)
- Upgradeable-pattern rows: 10

## Fork Analysis

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BranchedUnlocker (`0x22278f...5fd9a1`, chain 1)
- BtcRefundUnlocker (`0x9a99eb...10c9f0`, chain 1)
- Depository (`0x84deb7...f941a8`, chain 1)
- ERC1967Proxy (`0xd9a442...306a72`, chain 1)
- FiatTokenProxy (`0xa0b869...06eb48`, chain 1)
- GravityTokenG (`0x9c7beb...260649`, chain 1)
- MetaRouter (`0xf621fb...66ff7f`, chain 1)
- MetaRouterGateway (`0xfcef2f...512bcd`, chain 1)
- SimpleToken (`0x4d2244...594381`, chain 1)
- Symbiosis (`0xd38bb4...c76dd9`, chain 1)
- TetherToken (`0xdac17f...831ec7`, chain 1)
- TimedUnlocker (`0xec148f...ed8a3b`, chain 1)
- TransparentUpgradeableProxy (`0x552398...d7227e`, chain 1)
- TransparentUpgradeableProxy (`0xb8f275...9e81a8`, chain 1)
- TransparentUpgradeableProxy (`0xd7c3df...dd38b3`, chain 1)
- WBTC (`0x2260fa...c2c599`, chain 1)
- WETH9 (`0xc02aaa...756cc2`, chain 1)
- WithdrawUnlocker (`0xcd1080...34341e`, chain 1)

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (18 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/18 (38.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Deployed-live implementations: 18 of 32 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 7/18
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 32
- Raw deployments: 32
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/symbiosis/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 16.7% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zokyo | Tier 2 | 5 | 27.8% | 2024-10 |
| HashCloak | Tier 2 | 3 | 16.7% | 2022-04 |
| Omniscia | Tier 2 | 3 | 16.7% | 2022-03 |
| SlowMist | Tier 1 | 3 | 16.7% | 2022-02 |
| Decurity | Tier 2 | 1 | 5.6% | 2025-07 |
| yAudit | Tier 2 | 1 | 5.6% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeV2 | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-257757 | `0x552398...d7227e` | ✅ Audited |
| Depository | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257734 | `0x84deb7...f941a8` | ✅ Audited |
| MetaRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-257742 | `0xf621fb...66ff7f` | ✅ Audited |
| MetaRouterGateway | adapter | project_anchor | own_supporting | 0 | ethereum | unit-257743 | `0xfcef2f...512bcd` | ✅ Audited |
| Portal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257760 | `0xb8f275...9e81a8` | ✅ Audited |
| Symbiosis | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257739 | `0xd38bb4...c76dd9` | ✅ Audited |
| Synthesis | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257756 | `0xd7c3df...dd38b3` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BranchedUnlocker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257730 | `0x22278f...5fd9a1` | ⚠️ Unaudited |
| BtcRefundUnlocker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257735 | `0x9a99eb...10c9f0` | ⚠️ Unaudited |
| FflonkVerifier | periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-257733 | `0x4f9a0e...38e6e9` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | ethereum | unit-257759 | `0xa0b869...06eb48` | ⚠️ Unaudited |
| GravityTokenG | token | project_anchor | own_supporting | 0 | ethereum | unit-257736 | `0x9c7beb...260649` | ⚠️ Unaudited |
| PufferVaultV5 | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-257758 | `0xd9a442...306a72` | ⚠️ Unaudited |
| SimpleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-257732 | `0x4d2244...594381` | ⚠️ Unaudited |
| SyntFabric | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-257761 | `0xbbfb7c...769428` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 0 | ethereum | unit-257740 | `0xdac17f...831ec7` | ⚠️ Unaudited |
| TimedUnlocker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257741 | `0xec148f...ed8a3b` | ⚠️ Unaudited |
| WBTC | token | project_anchor | own_supporting | 0 | ethereum | unit-257731 | `0x2260fa...c2c599` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | ethereum | unit-257737 | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| WithdrawUnlocker | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257738 | `0xcd1080...34341e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257744 | `0x04cd23...899dfb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257745 | `0x331f40...26a6f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257746 | `0x3e6235...5d4192` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257747 | `0x7dc13b...41b4e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257748 | `0x8b03ad...7c0029` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257749 | `0xb4ade3...ec49ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257750 | `0xbc4454...ca1e38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257751 | `0xc3b59b...84f53d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257752 | `0xc532a7...694008` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257753 | `0xea3f68...7f24d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257754 | `0xed8691...ae23ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-257755 | `0xf3cfa3...7e1210` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [immunefi.com/bug-bounty/symbiosis/information](https://immunefi.com/bug-bounty/symbiosis/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [Symbiosis Staking - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Staking/Symbiosis%20Staking%20-%20Decurity.pdf) | Decurity | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Symbiosis Relayers Network 2022 - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202022%20-%20Decurity.pdf) | Decurity | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Symbiosis Relayers Network 2024 - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202024%20-%20Decurity.pdf) | Decurity | Audit | 2024-07 | stale | Direct | n/a | matched | 1 | 1 | 0 | 1 | n/a |
| [Symbiosis Frontend App - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Frontend%20App/Symbiosis%20Frontend%20App%20-%20Decurity.pdf) | Decurity | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Symbiosis Protocol Audit - HashCloak.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol%20Terra/core/Symbiosis%20Protocol%20Audit%20-%20HashCloak.pdf) | HashCloak | Audit | 2022-04 | stale | Direct | n/a | matched | 3 | 1 | 0 | 2 | n/a |
| [Symbiosis Protocol Audit - Omniscia.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Omniscia.pdf) | Omniscia | Audit | 2022-03 | stale | Direct | n/a | matched | 3 | 3 | 0 | 7 | n/a |
| [Symbiosis Protocol Audit - SlowMist.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20SlowMist.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | n/a | matched | 3 | 3 | 0 | 11 | n/a |
| [Symbiosis Protocol Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-02 | stale | Direct | n/a | matched | 6 | 4 | 0 | 10 | n/a |
| [Symbiosis Depository Audit - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/depository/Symbiosis%20Depository%20Audit%20-%20Decurity.pdf) | yAudit | Audit | 2025-10 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [Symbiosis Protocol MRv3 Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/metarouter-v3/Symbiosis%20Protocol%20MRv3%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-05 | stale | Direct | n/a | matched | 5 | 3 | 0 | 14 | n/a |
| [Symbiosis Onchain Swap Audit - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/onchain-swap/Symbiosis%20Onchain%20Swap%20Audit%20-%20Decurity.pdf) | Decurity | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Symbiosis Pool Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/pool/Symbiosis%20Pool%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Symbiosis TON Bridge - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20-%20Zokyo.pdf) | Zokyo | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Symbiosis TON Bridge v2 - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20v2%20-%20Zokyo.pdf) | Zokyo | Audit | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2093] immunefi.com/bug-bounty/symbiosis/information — no match: The document is a bug bounty program description, not an audit report. No contracts in scope are listed; only a link to audit reports is provided.
- [2094] Symbiosis Staking - Decurity.pdf — no match: Scope section explicitly lists 6 contracts. Audit period ends 18/07/2025.
- [2095] Symbiosis Relayers Network 2022 - Decurity.pdf — no match: Extracted contracts from scope table and file paths. Audit date from summary table header.
- [2096] Symbiosis Relayers Network 2024 - Decurity.pdf — matched: No reason recorded
- [2097] Symbiosis Frontend App - Decurity.pdf — no match: The audit is a UI security assessment, not a smart contract audit. No smart contracts are in scope; only web app URLs and a repository are mentioned.
- [2099] Symbiosis Protocol Audit - HashCloak.pdf — matched: No reason recorded
- [14782] Symbiosis Protocol Audit - Omniscia.pdf — matched: No reason recorded
- [14783] Symbiosis Protocol Audit - SlowMist.pdf — matched: No reason recorded
- [14784] Symbiosis Protocol Audit - Zokyo.pdf — matched: No reason recorded
- [14785] Symbiosis Depository Audit - Decurity.pdf — matched: No reason recorded
- [14786] Symbiosis Protocol MRv3 Audit - Zokyo.pdf — matched: No reason recorded
- [14787] Symbiosis Onchain Swap Audit - Decurity.pdf — no match: Two contracts in scope: OnchainGateway.sol and OnchainSwapV3.sol. Audit period ended 18/09/2023.
- [14788] Symbiosis Pool Audit - Zokyo.pdf — no match: Scope explicitly lists 5 contracts: AggregateAccount.sol, DSMath.sol, SafeCast.sol, SignedSafeMath.sol, Pool.sol. Audit date from cover page: 'December 6th 2022'.
- [14789] Symbiosis TON Bridge - Zokyo.pdf — no match: Only one contract, TonBridge.sol, is explicitly listed in scope.
- [14790] Symbiosis TON Bridge v2 - Zokyo.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Symbiosis Staking - Decurity.pdf | Validator | unmatched — not counted | — | listed in scope | no |
| Symbiosis Staking - Decurity.pdf | StakingView | unmatched — not counted | — | listed in scope | no |
| Symbiosis Staking - Decurity.pdf | EventLogger | unmatched — not counted | — | listed in scope | no |
| Symbiosis Staking - Decurity.pdf | RewardCounter | unmatched — not counted | — | listed in scope | no |
| Symbiosis Staking - Decurity.pdf | SymbiToken | unmatched — not counted | — | listed in scope | no |
| Symbiosis Staking - Decurity.pdf | Staking | unmatched — not counted | — | listed in scope | no |
| Symbiosis Relayers Network 2022 - Decurity.pdf | Staking | unmatched — not counted | — | listed in scope table | no |
| Symbiosis Relayers Network 2022 - Decurity.pdf | TxManager | unmatched — not counted | — | listed in scope table | no |
| Symbiosis Relayers Network 2022 - Decurity.pdf | EpochManager | unmatched — not counted | — | listed in scope table | no |
| Symbiosis Relayers Network 2022 - Decurity.pdf | Transaction | unmatched — not counted | — | listed in scope table | no |
| Symbiosis Relayers Network 2024 - Decurity.pdf | Bridge | unmatched — not counted | — | — | no |
| Symbiosis Relayers Network 2024 - Decurity.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df...dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - HashCloak.pdf | bridge | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - HashCloak.pdf | metarouter | own contract | MetaRouter (selected) `0xf621fb...66ff7f` — deployed 2023-12-19 10:17:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - HashCloak.pdf | metarouter_gateway | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - HashCloak.pdf | portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275...9e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - HashCloak.pdf | symbiosis | own contract | Symbiosis (selected) `0xd38bb4...c76dd9` — deployed 2021-11-18 22:54:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Omniscia.pdf | BridgeV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x552398...d7227e` — deployed 2022-11-14 09:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Omniscia.pdf | MetaRouteStructs | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | MetaRouterV2 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | Portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275...9e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Omniscia.pdf | RelayRecipientUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | SyntERC20 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | SyntFabric | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df...dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Omniscia.pdf | Timelock | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Omniscia.pdf | Wrapper | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | AdminableUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | BridgeV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x552398...d7227e` — deployed 2022-11-14 09:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - SlowMist.pdf | BridgeV2Solana | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | MetaRouterV2 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | MetaRouterV2Solana | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | Portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275...9e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - SlowMist.pdf | RelayRecipientUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | SyntERC20 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | SyntFabric | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | SyntFabricSolana | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df...dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - SlowMist.pdf | SynthesisSolana | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | Timelock | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - SlowMist.pdf | Wrapper | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | AdminableUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | BridgeV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x552398...d7227e` — deployed 2022-11-14 09:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | MetaRouteStructs | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | MetaRouterGateway | own contract | MetaRouterGateway (selected) `0xfcef2f...512bcd` — deployed 2023-12-19 10:17:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | MetaRouterV2 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | Portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275...9e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | RelayRecipientUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | SyntERC20 | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | SyntFabric | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df...dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | Timelock | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | Wrapper | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | bridge | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | ft | unmatched — not counted | — | — | no |
| Symbiosis Protocol Audit - Zokyo.pdf | metarouter | own contract | MetaRouter (selected) `0xf621fb...66ff7f` — deployed 2023-12-19 10:17:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol Audit - Zokyo.pdf | portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275...9e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Depository Audit - Decurity.pdf | DepositUnlockers | unmatched — not counted | — | — | no |
| Symbiosis Depository Audit - Decurity.pdf | Depository | own contract | Depository (selected) `0x84deb7...f941a8` — deployed 2026-03-16 22:02:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Depository Audit - Decurity.pdf | Router | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | AdminableUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | BridgeV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x552398...d7227e` — deployed 2022-11-14 09:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | BridgeV2Solana | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouteStructs | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouteStructsSolana | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouter | own contract | MetaRouter (selected) `0xf621fb...66ff7f` — deployed 2023-12-19 10:17:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouterGateway | own contract | MetaRouterGateway (selected) `0xfcef2f...512bcd` — deployed 2023-12-19 10:17:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouterV2 | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MetaRouterV2Solana | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | MulticallRouter | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | Portal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb8f275...9e81a8` — deployed 2022-11-14 09:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | RelayRecipientUpgradeable | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | SyntERC20 | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | SyntFabric | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | SyntFabricSolana | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | Synthesis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd7c3df...dd38b3` — deployed 2026-01-28 15:08:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | SynthesisSolana | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | Timelock | unmatched — not counted | — | — | no |
| Symbiosis Protocol MRv3 Audit - Zokyo.pdf | Wrapper | unmatched — not counted | — | — | no |
| Symbiosis Onchain Swap Audit - Decurity.pdf | OnchainGateway | unmatched — not counted | — | listed in scope section 2.2 | no |
| Symbiosis Onchain Swap Audit - Decurity.pdf | OnchainSwapV3 | unmatched — not counted | — | listed in scope section 2.2 and findings | no |
| Symbiosis Pool Audit - Zokyo.pdf | AggregateAccount | unmatched — not counted | — | listed in scope | no |
| Symbiosis Pool Audit - Zokyo.pdf | DSMath | unmatched — not counted | — | listed in scope | no |
| Symbiosis Pool Audit - Zokyo.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| Symbiosis Pool Audit - Zokyo.pdf | SignedSafeMath | unmatched — not counted | — | listed in scope | no |
| Symbiosis Pool Audit - Zokyo.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| Symbiosis TON Bridge - Zokyo.pdf | TonBridge | unmatched — not counted | — | listed in scope as TonBridge.sol | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | bridge | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | external_id | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | jetton-minter | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | jetton-utils | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | jetton-wallet | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | op-codes | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | params | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | stdlib | unmatched — not counted | — | — | no |
| Symbiosis TON Bridge v2 - Zokyo.pdf | utils | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x22278f...5fd9a1` | BranchedUnlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9a99eb...10c9f0` | BtcRefundUnlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa0b869...06eb48` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c7beb...260649` | GravityTokenG | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d2244...594381` | SimpleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdac17f...831ec7` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xec148f...ed8a3b` | TimedUnlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fa...c2c599` | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa...756cc2` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd1080...34341e` | WithdrawUnlocker | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 22 own (15 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 74 unmatched
- Matched-own operational status: 22 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=2
- Match method counts: unique_name=21

Zero-match audit list:

- [2094] Symbiosis Staking - Decurity.pdf
- [2095] Symbiosis Relayers Network 2022 - Decurity.pdf
- [2097] Symbiosis Frontend App - Decurity.pdf
- [14787] Symbiosis Onchain Swap Audit - Decurity.pdf
- [14788] Symbiosis Pool Audit - Zokyo.pdf
- [14789] Symbiosis TON Bridge - Zokyo.pdf
- [14790] Symbiosis TON Bridge v2 - Zokyo.pdf

Fork inheritance lineage and inherited audits are included when available.
