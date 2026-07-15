# Agentic Audit Brief: NFTX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: NFTX (`nftx`)
- Website: [https://nftx.io](https://nftx.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 68 unique implementations (68 raw deployments)
- Coverage basis: 11/64 confirmed own live verified implementations (17.2%); conservative 17.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,165,703.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for NFTX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 82 contract row(s) across arbitrum, ethereum. Structural roles: 56 unclassified, 13 core, 13 supporting. 18 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 82
- Structural roles: unclassified (56), core (13), supporting (13)
- Contract kinds: contract (81), abstract (1)
- Detected standards: ownable (17), erc165 (13), erc20 (3), multicall (3), erc721 (2)
- Frameworks: openzeppelin (18), openzeppelin-upgradeable (15), uniswap-v3 (11), permit2 (3), solmate (3), uniswap-v2 (2)
- Upgradeable-pattern rows: 18

## Fork Analysis

0 of 36 contracts are derived from known codebases. 36 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x40d73d...16c7b2`, chain 1)
- UnnamedContract (`0x5566b3...00eb33`, chain 1)
- UnnamedContract (`0x87665c...0305b8`, chain 1)
- UnnamedContract (`0xd4e155...5fe31f`, chain 42161)
- AdminUpgradeabilityProxy (`0x7ae9d7...4ae090`, chain 1)
- AdminUpgradeabilityProxy (`0xaf93fc...e8bf7e`, chain 1)
- MarketplaceUniversalRouterZap (`0x293a0c...79be3d`, chain 1)
- MarketplaceUniversalRouterZap (`0xf56296...b9ca40`, chain 42161)
- MiniMeToken (`0x87d73e...47f776`, chain 1)
- MultiProxyController (`0x35fb40...48750c`, chain 1)
- MultiProxyController (`0x732e5f...e164c1`, chain 42161)
- NFTXMarketplaceZap (`0x0fc584...c0c22d`, chain 1)
- NFTXMarketplaceZap (`0x66f26e...8001b7`, chain 42161)
- NFTXRouter (`0x70a741...ebe42a`, chain 1)
- NFTXRouter (`0x527317...a3ef4d`, chain 42161)
- NFTXStakingZap (`0x0b8ee2...b65fb1`, chain 1)
- NFTXStakingZap (`0xdc774d...11345c`, chain 1)
- NFTXStakingZap (`0xfb8664...c84959`, chain 42161)
- NFTXUnstakingInventoryZap (`0x2374a3...4868d3`, chain 1)
- NFTXVaultUpgradeable (`0xe8b682...d97bd1`, chain 1)
- NonfungiblePositionManager (`0x26387f...4b71bf`, chain 1)
- NonfungiblePositionManager (`0x8ad238...5466ea`, chain 42161)
- Permit2 (`0x000000...c78ba3`, chain 1)
- Permit2 (`0x000000...c78ba3`, chain 42161)
- QuoterV2 (`0x5493df...c5294a`, chain 1)
- QuoterV2 (`0xff3957...9e7d6d`, chain 42161)
- SwapRouter (`0x1703f8...4277a3`, chain 1)
- TickLens (`0x3f2797...a7b081`, chain 42161)
- TimelockExcludeList (`0x96c394...4e1df9`, chain 42161)
- TransparentUpgradeableProxy (`0x82af49...3fbab1`, chain 42161)
- UniversalRouter (`0x250d62...0cc90f`, chain 1)
- UniversalRouter (`0x0da692...32e5ad`, chain 42161)
- WETH9 (`0xc02aaa...756cc2`, chain 1)
- XBounties (`0x9c5a36...83e1dc`, chain 1)
- XStore (`0xbe5473...92e7b7`, chain 1)
- XTokenClonable (`0x925297...b864b0`, chain 1)

## Contract Surface Quality

- Indexed contracts: 82; live-surface contracts included: 82 (64 live, 18 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 68/84 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 11/64 (17.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 68 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 21
- Deployed-live implementations: 68 of 68 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 11/64
- Verified + Unaudited implementations: 53
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 68
- Raw deployments: 68
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 15.6% (Code4rena, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 6 | 9.4% | 2022-04 |
| Code4rena | Tier 1 | 5 | 7.8% | 2022-12 |
| unknown | Tier 2 | 1 | 1.6% | 2020-11 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NFTXEligibilityManager | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249858 | `0x1a0f3d...7f35a2` | ✅ Audited |
| NFTXFeeDistributor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249842 | `0x7ae9d7...4ae090` | ✅ Audited |
| NFTXInventoryStaking | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249853 | `0x1a2c03...8c4cc6` | ✅ Audited |
| NFTXLPStaking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249838 | `0x688c3e...538e37` | ✅ Audited |
| NFTXLPStaking | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249851 | `0x5326a7...df3934` | ✅ Audited |
| NFTXSimpleFeeDistributor | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249857 | `0x68a7f4...d3f78e` | ✅ Audited |
| NFTXVaultFactoryUpgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249849 | `0xbe86f6...558216` | ✅ Audited |
| NFTXVaultFactoryUpgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249855 | `0xe77b89...fbb33c` | ✅ Audited |
| NFTXVaultUpgradeable | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249817 | `0xe8b682...d97bd1` | ✅ Audited |
| StakingTokenProvider | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249846 | `0x5fad0e...b1a5c7` | ✅ Audited |
| XStore | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249811 | `0xbe5473...92e7b7` | ✅ Audited |

### ⚠️ Verified + Unaudited (53)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| aeWETH | token | project_anchor | own_supporting | 1 | arbitrum | unit-249854 | `0x82af49...3fbab1` | ⚠️ Unaudited |
| CreateVaultZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249795 | `0x56dab3...8e6f74` | ⚠️ Unaudited |
| CreateVaultZap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249835 | `0xf9e891...38946f` | ⚠️ Unaudited |
| MarketplaceUniversalRouterZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249785 | `0x293a0c...79be3d` | ⚠️ Unaudited |
| MarketplaceUniversalRouterZap | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-249834 | `0xf56296...b9ca40` | ⚠️ Unaudited |
| MiniMeToken | token | project_anchor | own_supporting | 0 | ethereum | unit-249801 | `0x87d73e...47f776` | ⚠️ Unaudited |
| MultiProxyController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249787 | `0x35fb40...48750c` | ⚠️ Unaudited |
| MultiProxyController | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249828 | `0x732e5f...e164c1` | ⚠️ Unaudited |
| NFTXEligibilityManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249844 | `0x4086e9...ed94d5` | ⚠️ Unaudited |
| NFTXFeeDistributorV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249798 | `0x6845ff...7406e7` | ⚠️ Unaudited |
| NFTXFeeDistributorV3 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249822 | `0x0d5097...7de886` | ⚠️ Unaudited |
| NFTXInventoryStaking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249847 | `0x3e135c...fab893` | ⚠️ Unaudited |
| NFTXInventoryStakingV3Upgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249848 | `0x889f31...cd6152` | ⚠️ Unaudited |
| NFTXInventoryStakingV3Upgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249850 | `0xe39a7e...47d155` | ⚠️ Unaudited |
| NFTXMarketplace0xZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249805 | `0x941a6d...cd481c` | ⚠️ Unaudited |
| NFTXMarketplace0xZap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249824 | `0x3bd751...8a2904` | ⚠️ Unaudited |
| NFTXMarketplaceZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249778 | `0x0fc584...c0c22d` | ⚠️ Unaudited |
| NFTXMarketplaceZap | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-249827 | `0x66f26e...8001b7` | ⚠️ Unaudited |
| NFTXRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249799 | `0x70a741...ebe42a` | ⚠️ Unaudited |
| NFTXRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-249826 | `0x527317...a3ef4d` | ⚠️ Unaudited |
| NFTXSimpleFeeDistributor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249839 | `0xfd8a76...ae4a86` | ⚠️ Unaudited |
| NFTXStakingZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249776 | `0x0b8ee2...b65fb1` | ⚠️ Unaudited |
| NFTXStakingZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249815 | `0xdc774d...11345c` | ⚠️ Unaudited |
| NFTXStakingZap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249836 | `0xfb8664...c84959` | ⚠️ Unaudited |
| NFTXUnstakingInventoryZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249782 | `0x2374a3...4868d3` | ⚠️ Unaudited |
| NFTXUnstakingInventoryZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249791 | `0x51d660...f3543b` | ⚠️ Unaudited |
| NFTXUnstakingInventoryZap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249831 | `0xb25ea8...67bc07` | ⚠️ Unaudited |
| NFTXv12Migration | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249841 | `0xaf93fc...e8bf7e` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeableV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249845 | `0xc25533...858f01` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeableV3 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249856 | `0x4deeb9...1cb711` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-249784 | `0x26387f...4b71bf` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-249829 | `0x8ad238...5466ea` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249775 | `0x000000...c78ba3` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249821 | `0x000000...c78ba3` | ⚠️ Unaudited |
| ProxyController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249789 | `0x4333d6...0437df` | ⚠️ Unaudited |
| ProxyController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249806 | `0x947c0b...8741c2` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249792 | `0x5493df...c5294a` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249837 | `0xff3957...9e7d6d` | ⚠️ Unaudited |
| StakingTokenProvider | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249852 | `0x92b80f...5830d5` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249781 | `0x1703f8...4277a3` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249833 | `0xea6024...eef502` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249780 | `0x165011...a42c40` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249825 | `0x3f2797...a7b081` | ⚠️ Unaudited |
| TimelockExcludeList | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249830 | `0x96c394...4e1df9` | ⚠️ Unaudited |
| TokenMultiCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249814 | `0xd62b2d...1b8df3` | ⚠️ Unaudited |
| UniswapV3FactoryUpgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249840 | `0xa70e10...3db101` | ⚠️ Unaudited |
| UniswapV3FactoryUpgradeable | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-249859 | `0xf4d051...1cabf8` | ⚠️ Unaudited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-249783 | `0x250d62...0cc90f` | ⚠️ Unaudited |
| UniversalRouter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249823 | `0x0da692...32e5ad` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | ethereum | unit-249812 | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| XBounties | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249807 | `0x9c5a36...83e1dc` | ⚠️ Unaudited |
| XStoreMultiCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249777 | `0x0cca02...3aed62` | ⚠️ Unaudited |
| XTokenClonable | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249804 | `0x925297...b864b0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249788 | `0x40d73d...16c7b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249793 | `0x5566b3...00eb33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249800 | `0x87665c...0305b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249832 | `0xd4e155...5fe31f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [NFTX-final.pdf](https://github.com/NFTX-project/audit-level-k/blob/master/NFTX-final.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [code4rena.com/reports/2021-05-nftx](https://code4rena.com/reports/2021-05-nftx) | Code4rena | Contest | 2021-05 | stale | Direct | contract_name | matched | 5 | 4 | 0 | 5 | high |
| [code4rena.com/reports/2021-12-nftx](https://code4rena.com/reports/2021-12-nftx) | Code4rena | Contest | 2021-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |
| [spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf](https://268710349-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MObsGdLeFkbdDe8_KiT-2910905616%2Fuploads%2FxxMQXacJ9gspSb09eUCz%2FToB_Audit.pdf) | Trail of Bits | Audit | 2022-04 | stale | Direct | contract_name | matched | 6 | 5 | 0 | 4 | high |
| [spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf](https://268710349-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MObsGdLeFkbdDe8_KiT-2910905616%2Fuploads%2Ff5r6lXZIs4rTMBTrt0eH%2FNFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf) | Code4rena | Contest | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3022] NFTX-final.pdf — matched: No reason recorded
- [3023] code4rena.com/reports/2021-05-nftx — matched: Extracted 10 contract names from findings and scope section. Audit date from report header.
- [3024] code4rena.com/reports/2021-12-nftx — matched: Extracted 12 contracts from the NFTX contest audit report. The scope section mentions 11 smart contracts, but the findings reference additional contracts like XTokenUpgradeable, PalmNFTXStakingZap, NFTXFlashSwipe, TimelockRewardDistributionTokenImpl, and NFTXV1Buyout, which are likely part of the audited codebase. The audit date is from the report title.
- [3025] spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf — matched: Extracted contracts from Project Coverage section and findings. Excluded out-of-scope files.
- [3026] spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf — no match: Four contracts explicitly listed in scope table. Audit date from cover page: December 23, 2022.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| NFTX-final.pdf | NFTX | unmatched — not counted | — | — | no |
| NFTX-final.pdf | XStore | own contract | XStore (selected) `0xbe5473...92e7b7` — deployed 2020-12-13 05:57:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | NFTXLPStaking | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x688c3e...538e37` — deployed 2021-06-21 08:39:07+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5326a7...df3934` — deployed 2022-05-14 23:33:21+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2021-06-21 was 0d from audit; next candidate 327d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | NFTXVaultUpgradeable | own contract | NFTXVaultUpgradeable (selected) `0xe8b682...d97bd1` — deployed 2021-06-21 08:39:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | NFTXFeeDistributor | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x7ae9d7...4ae090` — deployed 2021-06-21 08:40:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | NFTXEligiblityManager | unmatched — not counted | — | Mentioned in findings H-02, M-05, L-03, N-02 | no |
| code4rena.com/reports/2021-05-nftx | NFTXMintRequestEligibility | unmatched — not counted | — | Mentioned in findings M-07, G-02, G-06 | no |
| code4rena.com/reports/2021-05-nftx | NFTXVaultFactoryUpgradeable | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0xe77b89...fbb33c` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>AdminUpgradeabilityProxy (proxy) (selected) `0xbe86f6...558216` — deployed 2021-06-21 08:40:53+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2021-06-21 was 0d from audit; next candidate 327d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | StakingTokenProvider | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x92b80f...5830d5` — deployed 2022-05-14 23:33:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (selected) `0x5fad0e...b1a5c7` — deployed 2021-06-25 06:21:03+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-06-25 was 4d from audit; next candidate 327d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-05-nftx | PausableUpgradeable | unmatched — not counted | — | Mentioned in findings N-01, N-03 | no |
| code4rena.com/reports/2021-05-nftx | ERC20FlashMintUpgradeable | unmatched — not counted | — | Mentioned in findings H-01, N-01 | no |
| code4rena.com/reports/2021-05-nftx | NFTXRangeEligibility | unmatched — not counted | — | Mentioned in finding N-04 | no |
| code4rena.com/reports/2021-12-nftx | NFTXMarketplaceZap | ambiguous — not counted | NFTXMarketplaceZap (alternative) `0x0fc584...c0c22d` — deployed 2022-01-19 08:44:55+03 — liveness: live (current_address_book_code)<br>NFTXMarketplaceZap (alternative) `0x66f26e...8001b7` — deployed 2022-05-14 23:33:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXSimpleFeeDistributor | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x68a7f4...d3f78e` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfd8a76...ae4a86` — deployed 2021-10-29 05:57:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXStakingZap | ambiguous — not counted | NFTXStakingZap (alternative) `0xfb8664...c84959` — deployed 2022-05-14 23:33:22+03 — liveness: live (current_address_book_code)<br>NFTXStakingZap (alternative) `0xdc774d...11345c` — deployed 2022-05-02 06:32:33+03 — liveness: live (current_address_book_code)<br>NFTXStakingZap (alternative) `0x0b8ee2...b65fb1` — deployed 2021-07-18 21:25:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXVaultFactoryUpgradeable | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xe77b89...fbb33c` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xbe86f6...558216` — deployed 2021-06-21 08:40:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXVaultUpgradeable | own contract | NFTXVaultUpgradeable (selected) `0xe8b682...d97bd1` — deployed 2021-06-21 08:39:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2021-12-nftx | NFTXInventoryStaking | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1a2c03...8c4cc6` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3e135c...fab893` — deployed 2022-01-18 03:31:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | NFTXLPStaking | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x688c3e...538e37` — deployed 2021-06-21 08:39:07+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5326a7...df3934` — deployed 2022-05-14 23:33:21+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2021-12-nftx | XTokenUpgradeable | unmatched — not counted | — | Referenced in findings | no |
| code4rena.com/reports/2021-12-nftx | PalmNFTXStakingZap | unmatched — not counted | — | Referenced in findings | no |
| code4rena.com/reports/2021-12-nftx | NFTXFlashSwipe | unmatched — not counted | — | Referenced in findings | no |
| code4rena.com/reports/2021-12-nftx | TimelockRewardDistributionTokenImpl | unmatched — not counted | — | Referenced in findings | no |
| code4rena.com/reports/2021-12-nftx | NFTXV1Buyout | unmatched — not counted | — | Referenced in findings | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXVaultFactoryUpgradeable | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe77b89...fbb33c` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xbe86f6...558216` — deployed 2021-06-21 08:40:53+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 298d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXVaultUpgradeable | own contract | NFTXVaultUpgradeable (selected) `0xe8b682...d97bd1` — deployed 2021-06-21 08:39:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXInventoryStaking | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1a2c03...8c4cc6` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3e135c...fab893` — deployed 2022-01-18 03:31:09+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 87d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXLPStaking | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x688c3e...538e37` — deployed 2021-06-21 08:39:07+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (selected) `0x5326a7...df3934` — deployed 2022-05-14 23:33:21+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 298d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXSimpleFeeDistributor | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x68a7f4...d3f78e` — deployed 2022-05-14 23:33:22+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfd8a76...ae4a86` — deployed 2021-10-29 05:57:41+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 168d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | XTokenUpgradeable | unmatched — not counted | — | mentioned in scope | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXEligibilityManager | own proxy deployment | AdminUpgradeabilityProxy (proxy) (alternative) `0x4086e9...ed94d5` — deployed 2021-06-21 08:41:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x1a0f3d...7f35a2` — deployed 2022-05-14 23:33:22+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-05-14 was 29d from audit; next candidate 298d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | ProxyController | ambiguous — not counted | ProxyController (alternative) `0x4333d6...0437df` — deployed 2021-06-25 06:21:18+03 — liveness: live (current_address_book_code)<br>ProxyController (alternative) `0x947c0b...8741c2` — deployed 2020-12-13 05:58:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | NFTXRangeEligibility | unmatched — not counted | — | explicitly in scope | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf | RewardDistributionToken | unmatched — not counted | — | mentioned in findings | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf | NFTXMarketplace0xZap | ambiguous — not counted | NFTXMarketplace0xZap (alternative) `0x3bd751...8a2904` — deployed 2023-01-10 20:44:30+03 — liveness: live (current_address_book_code)<br>NFTXMarketplace0xZap (alternative) `0x941a6d...cd481c` — deployed 2023-01-10 16:15:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf | NFTXYieldStakingZap | unmatched — not counted | — | listed in scope table with 156 lines | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf | NFTXENSMerkleEligibility | unmatched — not counted | — | listed in scope table with 38 lines | no |
| spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf | VaultCreationZap | unmatched — not counted | — | listed in scope table with 198 lines | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x82af49...3fbab1` | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x56dab3...8e6f74` | CreateVaultZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf9e891...38946f` | CreateVaultZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x293a0c...79be3d` | MarketplaceUniversalRouterZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf56296...b9ca40` | MarketplaceUniversalRouterZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x87d73e...47f776` | MiniMeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35fb40...48750c` | MultiProxyController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x732e5f...e164c1` | MultiProxyController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4086e9...ed94d5` | NFTXEligibilityManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6845ff...7406e7` | NFTXFeeDistributorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0d5097...7de886` | NFTXFeeDistributorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e135c...fab893` | NFTXInventoryStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x889f31...cd6152` | NFTXInventoryStakingV3Upgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe39a7e...47d155` | NFTXInventoryStakingV3Upgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x941a6d...cd481c` | NFTXMarketplace0xZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3bd751...8a2904` | NFTXMarketplace0xZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0fc584...c0c22d` | NFTXMarketplaceZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x66f26e...8001b7` | NFTXMarketplaceZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x70a741...ebe42a` | NFTXRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x527317...a3ef4d` | NFTXRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfd8a76...ae4a86` | NFTXSimpleFeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b8ee2...b65fb1` | NFTXStakingZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdc774d...11345c` | NFTXStakingZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfb8664...c84959` | NFTXStakingZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2374a3...4868d3` | NFTXUnstakingInventoryZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x51d660...f3543b` | NFTXUnstakingInventoryZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb25ea8...67bc07` | NFTXUnstakingInventoryZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf93fc...e8bf7e` | NFTXv12Migration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc25533...858f01` | NFTXVaultFactoryUpgradeableV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4deeb9...1cb711` | NFTXVaultFactoryUpgradeableV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26387f...4b71bf` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8ad238...5466ea` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4333d6...0437df` | ProxyController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x947c0b...8741c2` | ProxyController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5493df...c5294a` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xff3957...9e7d6d` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x92b80f...5830d5` | StakingTokenProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1703f8...4277a3` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xea6024...eef502` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x165011...a42c40` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3f2797...a7b081` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x96c394...4e1df9` | TimelockExcludeList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd62b2d...1b8df3` | TokenMultiCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x250d62...0cc90f` | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0da692...32e5ad` | UniversalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa...756cc2` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c5a36...83e1dc` | XBounties | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cca02...3aed62` | XStoreMultiCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x925297...b864b0` | XTokenClonable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 60 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (9 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 8 ambiguous, 17 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: temporal_name=8, unique_name=5

Zero-match audit list:

- [3026] spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf

Fork inheritance lineage and inherited audits are included when available.
