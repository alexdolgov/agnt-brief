# Agentic Audit Brief: Vela Exchange

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Vela Exchange (`vela-exchange`)
- Website: [https://www.vela.exchange/](https://www.vela.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base
- Contract surface: 70 unique implementations (70 raw deployments)
- Coverage basis: 2/11 confirmed own live verified implementations (18.2%); conservative 18.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $369,837.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Vela Exchange. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across arbitrum, base. Structural roles: 7 core, 4 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (7), supporting (4)
- Contract kinds: contract (10), abstract (1)
- Detected standards: erc1967proxy (4), erc20 (4), ownable (4), accesscontrol (1), erc165 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 40 contracts are derived from known codebases. 40 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0e7bfb...9fc73c`, chain 8453)
- UnnamedContract (`0x14fffc...c7b316`, chain 8453)
- UnnamedContract (`0x45fdc9...11faa5`, chain 8453)
- UnnamedContract (`0x52ac3e...703523`, chain 8453)
- UnnamedContract (`0x60b8c1...7ab7aa`, chain 8453)
- UnnamedContract (`0x841aad...dfa7ff`, chain 8453)
- UnnamedContract (`0x8b97e1...03f524`, chain 8453)
- UnnamedContract (`0x8eba92...abf9f0`, chain 8453)
- UnnamedContract (`0xc4abad...b13352`, chain 8453)
- UnnamedContract (`0xc8e027...d7bbb6`, chain 8453)
- UnnamedContract (`0xe8aee3...36624a`, chain 8453)
- UnnamedContract (`0xebf154...5c7c6e`, chain 8453)
- UnnamedContract (`0x12d452...769d11`, chain 42161)
- UnnamedContract (`0x23fc7c...1ae684`, chain 42161)
- UnnamedContract (`0x361a5f...10a561`, chain 42161)
- UnnamedContract (`0x40c3bd...0a1383`, chain 42161)
- UnnamedContract (`0x45fdc9...11faa5`, chain 42161)
- UnnamedContract (`0x52ac3e...703523`, chain 42161)
- UnnamedContract (`0x60b8c1...7ab7aa`, chain 42161)
- UnnamedContract (`0x6f2c60...aca5aa`, chain 42161)
- UnnamedContract (`0x8b97e1...03f524`, chain 42161)
- UnnamedContract (`0x8dfc8c...dfdddd`, chain 42161)
- UnnamedContract (`0xaa0b39...229268`, chain 42161)
- UnnamedContract (`0xb2140e...f45498`, chain 42161)
- UnnamedContract (`0xc4abad...b13352`, chain 42161)
- UnnamedContract (`0xc8e027...d7bbb6`, chain 42161)
- UnnamedContract (`0xefb4ff...31364d`, chain 42161)
- UnnamedContract (`0xefd5a7...a18102`, chain 42161)
- UnnamedContract (`0xf9c059...21b477`, chain 42161)
- BurnableMintableCappedERC20 (`0x5a76a5...21c6ae`, chain 8453)
- ComplexRewarderPerSec (`0x0debba...cc767b`, chain 8453)
- DeductFee_Forwarder (`0xff34ed...773f3a`, chain 8453)
- eVELA (`0xefd5a7...a18102`, chain 8453)
- Operators (`0x23fc7c...1ae684`, chain 8453)
- TransparentUpgradeableProxy (`0x00b017...5a7bde`, chain 8453)
- TransparentUpgradeableProxy (`0x361a5f...10a561`, chain 8453)
- UpgradeableOptimismMintableERC20 (`0xd9aaec...10b6ca`, chain 8453)
- VelaToken (`0x088cd8...0cd704`, chain 42161)
- VLP (`0xc5b2d9...88eb05`, chain 42161)
- VUSD (`0xaa0b39...229268`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/49 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/11 (18.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 40 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 30 discovered implementations excluded (0 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Deployed-live implementations: 40 of 70 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/11
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 70
- Raw deployments: 70
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 2 | 18.2% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| eVELA | unknown | project_anchor | own_supporting | 0 | base | unit-395673 | `0xefd5a7...a18102` | ✅ Audited |
| VLP | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395645 | `0xc5b2d9...88eb05` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirdropPayoutForRebate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b1b26...2b5540` | ⚠️ Unaudited |
| ATokenInstance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x724dc8...b8c637` | ⚠️ Unaudited |
| BlackMarketDealRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01d090...09b2e2` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | unknown | project_anchor | own_supporting | 0 | base | unit-395658 | `0x5a76a5...21c6ae` | ⚠️ Unaudited |
| ComplexRewarderPerSec | unknown | project_anchor | own_supporting | 1 | base | unit-395677 | `0x0debba...cc767b` | ⚠️ Unaudited |
| DeductFee_Forwarder | unknown | project_anchor | own_supporting | 0 | base | unit-395675 | `0xff34ed...773f3a` | ⚠️ Unaudited |
| FirstOpFunctionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f0dab...4ff11e` | ⚠️ Unaudited |
| GrandPrixRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ecffd...12085d` | ⚠️ Unaudited |
| GrandPrixRewardDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6cc89...c14646` | ⚠️ Unaudited |
| LockedStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5219fd...2d9c3d` | ⚠️ Unaudited |
| LuckyTicketReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26a21a...612905` | ⚠️ Unaudited |
| OpenInterestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x580c56...c5e6d3` | ⚠️ Unaudited |
| Operators | unknown | project_anchor | own_supporting | 0 | base | unit-395654 | `0x23fc7c...1ae684` | ⚠️ Unaudited |
| PriceManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x028b64...23ac04` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10d18f...4e0701` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0cc831...ab44c4` | ⚠️ Unaudited |
| SecondOpFunctionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x383f80...b184a7` | ⚠️ Unaudited |
| SettingsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d7d97...7a66bc` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x04698b...c4e198` | ⚠️ Unaudited |
| SwapAndAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0029cf...c336e1` | ⚠️ Unaudited |
| TierManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x576150...40624b` | ⚠️ Unaudited |
| TokenRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41768f...8f3258` | ⚠️ Unaudited |
| TraderKickback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ca88e...41bd6e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-395679 | `0x00b017...5a7bde` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x042a9b...a05122` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x0f2dc4...192ddc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x1e1d8e...d7e8fe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-395678 | `0x361a5f...10a561` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x01936e...bdb3ac` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x215772...47a9b0` | ⚠️ Unaudited |
| UpgradeableOptimismMintableERC20 | unknown | project_anchor | own_supporting | 1 | base | unit-395676 | `0xd9aaec...10b6ca` | ⚠️ Unaudited |
| VelaBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e2b9f...07084e` | ⚠️ Unaudited |
| VelaLottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24e5c0...a27e66` | ⚠️ Unaudited |
| VelaMission | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66ca80...b70834` | ⚠️ Unaudited |
| VelaNFTBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e0f95...c65e70` | ⚠️ Unaudited |
| VelaReader | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x15ae93...929592` | ⚠️ Unaudited |
| VelaToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395630 | `0x088cd8...0cd704` | ⚠️ Unaudited |
| VolatilityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c1473...437f4f` | ⚠️ Unaudited |
| VUSD | unknown | project_anchor | own_supporting | 0 | base | unit-395665 | `0xaa0b39...229268` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395651 | `0x0e7bfb...9fc73c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395653 | `0x14fffc...c7b316` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395656 | `0x45fdc9...11faa5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395657 | `0x52ac3e...703523` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395659 | `0x60b8c1...7ab7aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395661 | `0x841aad...dfa7ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395662 | `0x8b97e1...03f524` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395664 | `0x8eba92...abf9f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395667 | `0xc4abad...b13352` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395669 | `0xc8e027...d7bbb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395670 | `0xe8aee3...36624a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395671 | `0xebf154...5c7c6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395631 | `0x12d452...769d11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395633 | `0x23fc7c...1ae684` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395634 | `0x361a5f...10a561` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395635 | `0x40c3bd...0a1383` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395636 | `0x45fdc9...11faa5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395637 | `0x52ac3e...703523` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395638 | `0x60b8c1...7ab7aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395639 | `0x6f2c60...aca5aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395640 | `0x8b97e1...03f524` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395641 | `0x8dfc8c...dfdddd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395642 | `0xaa0b39...229268` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395643 | `0xb2140e...f45498` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395644 | `0xc4abad...b13352` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395646 | `0xc8e027...d7bbb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395647 | `0xefb4ff...31364d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395648 | `0xefd5a7...a18102` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395649 | `0xf9c059...21b477` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Dorado_09112022_SCAudit_Report_FINAL.pdf](https://hacken.io/wp-content/uploads/2023/02/Dorado_09112022_SCAudit_Report_FINAL.pdf) | Hacken | Audit | 2023-01 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 16 | high |
| [hacken.io/audits/vela-exchange/sca-dorado-erc20-dex-jan2023](https://hacken.io/audits/vela-exchange/sca-dorado-erc20-dex-jan2023) | Hacken | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21477] Dorado_09112022_SCAudit_Report_FINAL.pdf — matched: Extracted 18 contracts from the Contracts Summary section. Audit date from cover page: January 26, 2023.
- [21478] hacken.io/audits/vela-exchange/sca-dorado-erc20-dex-jan2023 — no match: The provided text is a webpage for a Hacken audit of Vela Exchange, but it does not contain the actual audit report content. It only shows metadata (title, date, navigation). No contract names or scope section are present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Dorado_09112022_SCAudit_Report_FINAL.pdf | Governable | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | Constants | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | Multicall | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | PriceManager | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | SettingsManager | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | TriggerOrderManager | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | Vault | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | VaultPriceFeed | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | VaultUtils | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | FastPriceFeed | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | ComplexRewardPerSec | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | TokenFarm | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | BaseToken | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | MintableBaseToken | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | eVela | own contract | eVELA (selected) `0xefd5a7...a18102` — deployed 2023-08-11 20:02:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | VLP | own contract | VLP (selected) `0xc5b2d9...88eb05` — deployed 2023-06-02 20:58:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | vUSDC | unmatched — not counted | — | listed in Contracts Summary | no |
| Dorado_09112022_SCAudit_Report_FINAL.pdf | VELA | unmatched — not counted | — | listed in Contracts Summary | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x5a76a5...21c6ae` | BurnableMintableCappedERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0debba...cc767b` | ComplexRewarderPerSec | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xff34ed...773f3a` | DeductFee_Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x23fc7c...1ae684` | Operators | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd9aaec...10b6ca` | UpgradeableOptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x088cd8...0cd704` | VelaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xaa0b39...229268` | VUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [21478] hacken.io/audits/vela-exchange/sca-dorado-erc20-dex-jan2023

Fork inheritance lineage and inherited audits are included when available.
