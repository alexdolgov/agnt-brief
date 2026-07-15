# Agentic Audit Brief: Reflexer

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 8 (2 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Reflexer (`reflexer`)
- Website: [https://reflexer.finance/](https://reflexer.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, ethereum, fantom, optimism, polygon
- Contract surface: 78 unique implementations (100 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,728,362.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Reflexer. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, ethereum, fantom, optimism, polygon. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xcee6aa...f90fce`, chain 1)
- UnnamedContract (`0xd6f376...cecef9`, chain 1)
- UnnamedContract (`0xa71353...39ef8b`, chain 250)
- UnnamedContract (`0xaef5bb...d419f2`, chain 42161)
- UnnamedContract (`0x97cd1c...1bff7d`, chain 43114)
- DSDelegateToken (`0x6243d8...8391f4`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 68 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 6 of 78 unique; 72 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/26
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 52
- Unique implementations: 78
- Raw deployments: 100
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 1 | 3.8% | 2021-10 |
| Solidified | Tier 2 | 1 | 3.8% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DSDelegateToken | token | project_anchor | own_supporting | 0 | ethereum | unit-391353 | `0x6243d8...8391f4` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CollateralJoin1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x15b99a...8afb3f`; ethereum `0x2d3cd7...226e3a` | ⚠️ Unaudited |
| DSCompare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0f2275...5f298d`; ethereum `0x101222...b09c64`; ethereum `0xae69b7...30df2f` | ⚠️ Unaudited |
| DSDelegateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdb58d...40e4b1` | ⚠️ Unaudited |
| DSRoles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1490a8...c6e25a`; ethereum `0xe4935d...6d8137` | ⚠️ Unaudited |
| FsmGovernanceInterface | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4778b3...0df22b`; ethereum `0xe24f8b...36f533` | ⚠️ Unaudited |
| GebDeployPauseProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x27a54e...22b36d`; ethereum `0x7b48cd...6dd2bb` | ⚠️ Unaudited |
| GebPauseScheduleProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6a2714...194632`; ethereum `0x757003...90bc7e` | ⚠️ Unaudited |
| GebPollingEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa42f76...7dafd2`; ethereum `0xf7da96...f04f6f` | ⚠️ Unaudited |
| GebProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0ae263...07153e`; ethereum `0x880cec...0f64ed` | ⚠️ Unaudited |
| GebProxyActionsGlobalSettlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x17b5d9...92cb93`; ethereum `0xc780b6...be10d8` | ⚠️ Unaudited |
| GebProxyDebtAuctionActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x150f15...5c5aef`; ethereum `0x8f29c9...1e86c8` | ⚠️ Unaudited |
| GebProxyIncentivesActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x88a77b...7349e0`; ethereum `0xba2e2e...af3547` | ⚠️ Unaudited |
| GebProxySurplusAuctionActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6f0faa...c59e3b`; ethereum `0xd857d8...2e91f5` | ⚠️ Unaudited |
| GebSafeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xaae51c...8dcf74`; ethereum `0xefe0b4...94f185` | ⚠️ Unaudited |
| GetSafes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xae2b96...b01133`; ethereum `0xdf4bc9...8d202b` | ⚠️ Unaudited |
| GovActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0463bf...f659ee`; ethereum `0x8aedaf...03bf76` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x51812e...ee3a01`; ethereum `0xf9a91f...977e29` | ⚠️ Unaudited |
| OSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x049b02...c49d18`; ethereum `0xe6f537...e16b2b` | ⚠️ Unaudited |
| ProtocolTokenAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9b44db...111a50`; ethereum `0xcb8479...22fdc7` | ⚠️ Unaudited |
| RateSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x005fab...3bf947`; ethereum `0xedeeaf...c6872b` | ⚠️ Unaudited |
| SAFEEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc88a9...1a6962` | ⚠️ Unaudited |
| SingleSpotDebtCeilingSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2df48...e25ec1` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa706d4...912a20` | ⚠️ Unaudited |
| TokenBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb10409...ce799b`; ethereum `0xe59432...37f12a` | ⚠️ Unaudited |
| TxManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa78e85...607043`; ethereum `0xb72726...6d7a25` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (52)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x027361...4b644b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06691e...c462ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0721f0...420747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f850d...dc7c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x144b26...9925e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c50e1...16faf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24acc8...1ae09f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28c063...ef5549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30cd6c...90159b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x320290...486425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3be18c...106fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b220...274f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494939...eef370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aaacd...18f65c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59405f...5e952a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5efe1f...3a5e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6552bc...543a64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68ac16...a57760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e6ea8...ef51c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x712141...cc65fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x712cab...acb116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x766bbe...e9d19b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fc405...f72e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870473...c64f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d02d5...02f5dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94f468...57c4bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97a0a0...87c533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98fd66...b196f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d1f48...bf7cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f02dd...d72a6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3d266...e9845e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb13077...983178` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3ad68...d8f719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba6eba...b10ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcaa45...8768b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb3103...7de1cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcddab8...859039` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391354 | `0xcee6aa...f90fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfa37d...ae2688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd07e26...64d671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd11b0b...c62f0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391355 | `0xd6f376...cecef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda2dbe...dce0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf195a0...5525c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71774...e68842` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-391356 | `0x7fb688...05448b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-391357 | `0x00e564...002905` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-391358 | `0x2791bc...a84174` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-391359 | `0xa71353...39ef8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391360 | `0xaef5bb...d419f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391361 | `0x97cd1c...1bff7d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-391362 | `0xd89dd8...4d3adf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [oz-geb-protocol-audit.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/open-zeppelin/core-contracts/oz-geb-protocol-audit.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 21 | n/a |
| [Reflexer RAI Curve Pool - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/curve/Reflexer%20RAI%20Curve%20Pool%20-%20Report.pdf) | Quantstamp | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Reflexer Helper Contracts - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/helper-contracts/first-audit/Reflexer%20Helper%20Contracts%20-%20Report.pdf) | Quantstamp | Audit | 2020-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 26 | n/a |
| [Reflexer Second Engagement - Final Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/helper-contracts/second-audit/Reflexer%20Second%20Engagement%20-%20Final%20Report.pdf) | Quantstamp | Audit | 2021-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [Reflexer Staking and Auction House - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/staking/Reflexer%20Staking%20and%20Auction%20House%20-%20Report.pdf) | Quantstamp | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Audit Report - RAI Backup Oracles.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/backup-oracle/Audit%20Report%20-%20RAI%20Backup%20Oracles.pdf) | Solidified | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solidified Audit Report - Reflexer [26.01.2021].pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/helper-contracts/Solidified%20Audit%20Report%20-%20Reflexer%20%5B26.01.2021%5D.pdf) | Solidified | Audit | 2021-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/uniswap-v3/Audit%20Report%20-%20Uniswap%20V3%20Liquidity%20Manager%20%5B24.06.2021%5D.pdf) | Solidified | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2841] oz-geb-protocol-audit.pdf — no match: No reason recorded
- [2842] Reflexer RAI Curve Pool - Report.pdf — no match: Three contracts explicitly listed in scope: StableSwapRAI.vy, DepositRAI.vy, MetaRAI.vy. Audit date from report header: October 20th 2021.
- [2843] Reflexer Helper Contracts - Report.pdf — no match: No reason recorded
- [2844] Reflexer Second Engagement - Final Report.pdf — matched: Extracted 7 contracts from scope table and findings. Note: geb-incentives repo was removed from scope during audit, but contract is still listed in scope table and findings reference it. Audit date from cover page: January 29th 2021.
- [2845] Reflexer Staking and Auction House - Report.pdf — no match: Contracts identified from file signatures and test files. The audit report covers Reflexer Staking and Auction House contracts.
- [2846] Audit Report - RAI Backup Oracles.pdf — no match: Two contracts explicitly listed in audited files section.
- [2847] Solidified Audit Report - Reflexer [26.01.2021].pdf — matched: Extracted contract names from audited files list and findings sections. The audit report date is explicitly stated as January 26, 2021.
- [2848] Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf — no match: Contracts extracted from findings sections; all are explicitly audited files.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| oz-geb-protocol-audit.pdf | AccountingEngine | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | BasicCollateralJoin | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | BasicTokenAdapter | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | Coin | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | CoinJoin | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | CoinSavingsAccount | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | CollateralAuctionHouse | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | DebtAuctionHouse | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | ETHJoin | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | EnglishCollateralAuctionHouse | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | FixedDiscountCollateralAuctionHouse | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | GlobalSettlement | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | LinkedList | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | LiquidationEngine | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | OracleRelayer | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | PostSettlementSurplusAuctionHouse | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | PreSettlementSurplusAuctionHouse | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | SAFEEngine | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | StabilityFeeTreasury | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | SurplusAuctionHouse | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | TaxCollector | unmatched — not counted | — | — | no |
| Reflexer RAI Curve Pool - Report.pdf | StableSwapRAI | unmatched — not counted | — | listed in scope | no |
| Reflexer RAI Curve Pool - Report.pdf | DepositRAI | unmatched — not counted | — | listed in scope | no |
| Reflexer RAI Curve Pool - Report.pdf | MetaRAI | unmatched — not counted | — | listed in scope | no |
| Reflexer Helper Contracts - Report.pdf | AdvancedTokenAdapters | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | AggregatorInterface | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | ChainlinkPriceFeedMedianizer | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | CoinJoinFactory | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | CollateralJoin6 | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | DSDelegateRoles | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | DSRecursiveRoles | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | ESM | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | FsmGovernanceInterface | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | GebDeploy | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | GebPrintingPermissions | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | GebProxyActions | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | GebSafeManager | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | GetSafes | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | GovActions | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | OracleRelayer | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | ProtocolTokenAuthority | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | UniswapConsecutiveSlotsPriceFeedMedianizer | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | UniswapConverterBasicAveragePriceFeedMedianizer | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | UniswapPriceFeedMedianizer | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | UniswapV2Factory | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | UniswapV2Pair | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | UniswapV2Router02 | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | delegate_roles | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | recursive_roles | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | roles | unmatched — not counted | — | — | no |
| Reflexer Second Engagement - Final Report.pdf | DSDelegateToken | own contract | DSDelegateToken (selected) `0x6243d8...8391f4` — deployed 2021-02-13 15:48:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Reflexer Second Engagement - Final Report.pdf | PIRawPerSecondCalculator | unmatched — not counted | — | listed in scope table and findings | no |
| Reflexer Second Engagement - Final Report.pdf | RateSetter | unmatched — not counted | — | listed in scope table and findings | no |
| Reflexer Second Engagement - Final Report.pdf | GebProxyActions | unmatched — not counted | — | listed in scope table and findings | no |
| Reflexer Second Engagement - Final Report.pdf | DebtAuctionInitialParameterSetter | unmatched — not counted | — | listed in scope table and findings | no |
| Reflexer Second Engagement - Final Report.pdf | DSProtestPause | unmatched — not counted | — | listed in scope table and findings | no |
| Reflexer Second Engagement - Final Report.pdf | GebUniswapRollingDistributionIncentives | unmatched — not counted | — | listed in scope table and findings | no |
| Reflexer Staking and Auction House - Report.pdf | StakedTokenAuctionHouse | unmatched — not counted | — | Listed in file signatures and findings | no |
| Reflexer Staking and Auction House - Report.pdf | GebLenderFirstResortRewards | unmatched — not counted | — | Listed in file signatures and findings | no |
| Reflexer Staking and Auction House - Report.pdf | GebLenderFirstResort | unmatched — not counted | — | Inferred from test file GebLenderFirstResort.t.sol | no |
| Reflexer Staking and Auction House - Report.pdf | AutoRewardDripper | unmatched — not counted | — | Inferred from test file AutoRewardDripper.t.sol | no |
| Reflexer Staking and Auction House - Report.pdf | RewardDripper | unmatched — not counted | — | Inferred from test file RewardDripper.t.sol | no |
| Reflexer Staking and Auction House - Report.pdf | StakedTokensToKeepSetter | unmatched — not counted | — | Inferred from test file StakedTokensToKeepSetter.t.sol | no |
| Audit Report - RAI Backup Oracles.pdf | TellorRelayer | unmatched — not counted | — | listed in audited files | no |
| Audit Report - RAI Backup Oracles.pdf | MinimalOSMOverlay | unmatched — not counted | — | listed in audited files | no |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | GebProxyIncentivesActions | unmatched — not counted | — | Listed in audited files section | no |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | DSDelegateToken | own contract | DSDelegateToken (selected) `0x6243d8...8391f4` — deployed 2021-02-13 15:48:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | PIRawPerSecondCalculator | unmatched — not counted | — | Listed in audited files section | no |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | RateSetter | unmatched — not counted | — | Listed in audited files section | no |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | GebProxyActions | unmatched — not counted | — | Mentioned in findings (Issue #1) | no |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | RateSetterMath | unmatched — not counted | — | Mentioned in findings (Issue #2) | no |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | delegate | unmatched — not counted | — | Mentioned in findings (Issues #3, #4) | no |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | StakingRewardsFactory | unmatched — not counted | — | Mentioned in findings (Issue #7) | no |
| Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf | PeripheryPayments | unmatched — not counted | — | listed in findings | no |
| Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf | GebUniswapV3ManagerBase | unmatched — not counted | — | listed in findings | no |
| Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf | GebUniswapV3LiquidityManager | unmatched — not counted | — | listed in findings | no |
| Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf | GebUniswapV3TwoTrancheManager | unmatched — not counted | — | listed in findings | no |
| Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf | PoolViewer | unmatched — not counted | — | listed in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 76 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: unique_name=2

Zero-match audit list:

- [2841] oz-geb-protocol-audit.pdf
- [2842] Reflexer RAI Curve Pool - Report.pdf
- [2843] Reflexer Helper Contracts - Report.pdf
- [2845] Reflexer Staking and Auction House - Report.pdf
- [2846] Audit Report - RAI Backup Oracles.pdf
- [2848] Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf

Fork inheritance lineage and inherited audits are included when available.
