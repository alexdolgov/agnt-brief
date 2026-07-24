# Agentic Audit Brief: Polynomial Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 18 (0 matched; 18 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Polynomial Protocol (`polynomial-protocol`)
- Website: [https://www.polynomial.fi](https://www.polynomial.fi)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, optimism
- Contract surface: 15 unique implementations (16 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,243,982.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Polynomial Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum, sepolia. Structural roles: 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: unclassified (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 14 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 1 of 15 unique; 14 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 16
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 13 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x287bba8116f2fc5a642bfd6027ebf5ad6522655c` | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3be64bf2b9c2de637067c7aab6bae5edf9feba55` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x36725a5e0040deb7c697d46c0e24390702b202e0`; ethereum `0xec097d3f3319f2a23aa82ee2e28d30fdcbe0d753` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d703a1ee5925d783aabafe2fc551a1cc62bc5f7` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd5890bbafafdce942597757385e55174569e8d1a` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x082aad9468e3a4b430ba7851a36367d6b471f9b8` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2341b9265f7bda95dc5c04ccb6a9801da7cbf75` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe512d477cc89196af2ce837f6ab8ea30e199f757` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x994233366c8e11da5c525ab903c04e7afb2915bd` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb1b01c002ab32859dac851e7928b405df8ade4` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0a8dc59685af52cb706d73ab455fca18edc1d5` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251588 | `0x034cbb620d1e0e4c2e29845229beac57083b04ec` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c68b1d45f4faa4f028c3dc8910fa3247c7f0a1f` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x58b51fb9feed00dd846f91d265eba3cdd855a413` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69762714c496f76756d7aebf8b4225f458cdf853` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 15
- Live contracts: 1
- Unknown liveness contracts: 14
- Source-verified contracts: 15
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=8, contamination review=4, source verified unclassified=3

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | AddressManager<br>`0x287bba8116f2fc5a642bfd6027ebf5ad6522655c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |
| ethereum | candidate review | L1ChugSplashProxy<br>`0x3be64bf2b9c2de637067c7aab6bae5edf9feba55` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |
| ethereum | candidate review | Proxy<br>`0x034cbb620d1e0e4c2e29845229beac57083b04ec` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |
| ethereum | candidate review | Proxy<br>`0x58b51fb9feed00dd846f91d265eba3cdd855a413` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |
| ethereum | candidate review | Proxy<br>`0x994233366c8e11da5c525ab903c04e7afb2915bd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |
| ethereum | candidate review | Proxy<br>`0xd5890bbafafdce942597757385e55174569e8d1a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |
| ethereum | candidate review | ProxyAdmin<br>`0x3c68b1d45f4faa4f028c3dc8910fa3247c7f0a1f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |
| ethereum | candidate review | ResolvedDelegateProxy<br>`0x36725a5e0040deb7c697d46c0e24390702b202e0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |
| ethereum | contamination review | L1ERC721Bridge<br>`0x8d703a1ee5925d783aabafe2fc551a1cc62bc5f7` | non_address_book | unknown | unknown | verified | n/a | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |
| ethereum | contamination review | L1StandardBridge<br>`0x082aad9468e3a4b430ba7851a36367d6b471f9b8` | non_address_book | unknown | unknown | verified | n/a | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |
| ethereum | contamination review | L2OutputOracle<br>`0xc2341b9265f7bda95dc5c04ccb6a9801da7cbf75` | non_address_book | unknown | unknown | verified | n/a | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |
| ethereum | contamination review | OptimismPortal<br>`0xcd0a8dc59685af52cb706d73ab455fca18edc1d5` | non_address_book | unknown | unknown | verified | n/a | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |
| ethereum | source verified unclassified | L1CrossDomainMessenger<br>`0xec097d3f3319f2a23aa82ee2e28d30fdcbe0d753` | non_address_book | unknown | unknown | verified | n/a | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |
| ethereum | source verified unclassified | OptimismMintableERC20Factory<br>`0xcfb1b01c002ab32859dac851e7928b405df8ade4` | non_address_book | unknown | unknown | verified | n/a | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |
| ethereum | source verified unclassified | SystemConfig<br>`0x69762714c496f76756d7aebf8b4225f458cdf853` | non_address_book | unknown | unknown | verified | n/a | `0x0ccbfb59ad4e76bcc00105a38d9fdf1434e07e0d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [polynomial-1.html](https://0xmacro.com/library/audits/polynomial-1.html) | 0xMacro | Audit | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [polynomial-4.html](https://0xmacro.com/library/audits/polynomial-4.html) | 0xMacro | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [polynomial-5.html](https://0xmacro.com/library/audits/polynomial-5.html) | 0xMacro | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [0xmacro.com/library/audits/polynomial-3](https://0xmacro.com/library/audits/polynomial-3) | 0xMacro | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [docs.synthetix.io/v/v3/for-developers/smart-contract-audits](https://docs.synthetix.io/v/v3/for-developers/smart-contract-audits) | 0xMacro | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Kernel v3.2 Incremental Audit Report.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/Kernel%20v3.2%20Incremental%20Audit%20Report.pdf) | unknown | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Kernel v3.3 Incremental Audit Report.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/Kernel%20v3.3%20Incremental%20Audit%20Report.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [chainlight_v3_0.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/chainlight_v3_0.pdf) | Chainlight | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [kalos_recovery_v1.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_recovery_v1.pdf) | Kalos | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [kalos_recovery_v2.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_recovery_v2.pdf) | Kalos | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [kalos_v1.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v1.pdf) | Kalos | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [kalos_v2_1.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v2_1.pdf) | Kalos | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [kalos_v2_2.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v2_2.pdf) | Kalos | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [kalos_v2_2_lite.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v2_2_lite.pdf) | Kalos | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [kalos_v3_plugins.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v3_plugins.pdf) | Kalos | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [kalos_webauthn_v1.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_webauthn_v1.pdf) | Kalos | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [v_3_1_incremental_audit.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/v_3_1_incremental_audit.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [PeckShield-Audit-Report-PolynomialEarnV2-v1.0rc.pdf](https://2308860509-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBvvagZnXXWASrPPQUiun%2Fuploads%2FMzwtV6XlJY4INKnxeIWd%2FPeckShield-Audit-Report-PolynomialEarnV2-v1.0rc.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2483] polynomial-1.html — no match: The audit report does not list any Solidity contract files in scope; only TOML configuration files and cannonfile.toml files are listed, which are not smart contracts.
- [2484] polynomial-4.html — no match: Extracted 11 contracts from the scope table in the Source Code section. Audit date from cover page: April 16, 2025.
- [2485] polynomial-5.html — no match: All contracts listed in the 'Source Code' section of the audit report.
- [2486] 0xmacro.com/library/audits/polynomial-3 — no match: Audit report for Polynomial A-3, dated July 26, 2024. Scope includes four contracts from two repositories.
- [2487] docs.synthetix.io/v/v3/for-developers/smart-contract-audits — no match: The provided text is documentation for Synthetix, not an audit report. No contracts in scope or audit date found.
- [2489] Kernel v3.2 Incremental Audit Report.pdf — no match: The audit report describes audited components (Replayable Signature, Adopting solady's LibERC7579, Fix Minor Issues, Code Refactoring) but does not list specific contract names or file paths. No contract names could be extracted.
- [2490] Kernel v3.3 Incremental Audit Report.pdf — no match: Only one contract (Kernel) is explicitly in scope. The audit is an incremental audit of Kernel v3.3.
- [2491] chainlight_v3_0.pdf — no match: Audit report for ZeroDev Kernel v3. Scope section lists target as 'ZeroDev Kernel v3 Security Audit' with git repository and commit hashes. Contract names extracted from findings and code references.
- [2492] kalos_recovery_v1.pdf — no match: Scope section explicitly lists two contracts: RecoveryAction.sol and WeightedECDSAValidator.sol. Audit date is December 12, 2023 from the cover page.
- [2493] kalos_recovery_v2.pdf — no match: Only WeightedECDSAValidator.sol is explicitly listed in scope. RecoveryPlugin is mentioned as a feature but not a separate contract file.
- [2494] kalos_v1.pdf — no match: All contracts listed in the Scope section on page 15 are included. The audit date is from the cover page: 'Published on: 13 Jul. 2023'.
- [2495] kalos_v2_1.pdf — no match: All contracts listed in the Scope section on page 11 are extracted. The audit date is from the cover page: 'Published on: 09 Aug. 2023'.
- [2496] kalos_v2_2.pdf — no match: All contracts listed in the Scope section (page 11) are extracted. Audit date from cover page: 09 Aug. 2023.
- [2497] kalos_v2_2_lite.pdf — no match: All contracts listed in the Scope section (page 10) are included. The audit date is from the cover page: 'Published on: 20 Sep. 2023'.
- [2498] kalos_v3_plugins.pdf — no match: Scope section explicitly lists FactoryStaker.sol and KernelFactory.sol. Audit date from cover page: 12 Apr. 2024.
- [2499] kalos_webauthn_v1.pdf — no match: All contracts in scope are explicitly listed in the Scope section on page 10.
- [2500] v_3_1_incremental_audit.pdf — no match: Audit period: May 27, 2024 - June 9, 2024. Kernel version comparison mentioned but not a contract in scope.
- [27691] PeckShield-Audit-Report-PolynomialEarnV2-v1.0rc.pdf — no match: No explicit scope table; contracts inferred from findings and report context.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| polynomial-4.html | GlobalPerpsMarketModule | unmatched — not counted | — | listed in scope table | no |
| polynomial-4.html | LimitOrderModule | unmatched — not counted | — | listed in scope table | no |
| polynomial-4.html | MarketConfigurationModule | unmatched — not counted | — | listed in scope table | no |
| polynomial-4.html | GlobalPerpsMarketConfiguration | unmatched — not counted | — | listed in scope table | no |
| polynomial-4.html | LimitOrder | unmatched — not counted | — | listed in scope table | no |
| polynomial-4.html | OrderFee | unmatched — not counted | — | listed in scope table | no |
| polynomial-4.html | PerpsMarket | unmatched — not counted | — | listed in scope table | no |
| polynomial-4.html | PerpsMarketConfiguration | unmatched — not counted | — | listed in scope table | no |
| polynomial-4.html | Flags | unmatched — not counted | — | listed in scope table | no |
| polynomial-4.html | Account | unmatched — not counted | — | listed in scope table | no |
| polynomial-4.html | AccountRBAC | unmatched — not counted | — | listed in scope table | no |
| polynomial-5.html | LimitOrderModule | unmatched — not counted | — | listed in scope table | no |
| polynomial-5.html | OffchainAsyncOrderModule | unmatched — not counted | — | listed in scope table | no |
| polynomial-5.html | OffchainLimitOrderModule | unmatched — not counted | — | listed in scope table | no |
| polynomial-5.html | AsyncOrder | unmatched — not counted | — | listed in scope table | no |
| polynomial-5.html | GlobalPerpsMarketConfiguration | unmatched — not counted | — | listed in scope table | no |
| polynomial-5.html | LimitOrder | unmatched — not counted | — | listed in scope table | no |
| polynomial-5.html | OffchainOrder | unmatched — not counted | — | listed in scope table | no |
| 0xmacro.com/library/audits/polynomial-3 | StakingBridgeReceiver | unmatched — not counted | — | listed in scope | no |
| 0xmacro.com/library/audits/polynomial-3 | StakingBridgeReceiverUSDC | unmatched — not counted | — | listed in scope | no |
| 0xmacro.com/library/audits/polynomial-3 | Controller | unmatched — not counted | — | listed in scope | no |
| 0xmacro.com/library/audits/polynomial-3 | Vault | unmatched — not counted | — | listed in scope | no |
| Kernel v3.3 Incremental Audit Report.pdf | Kernel | unmatched — not counted | — | Audit scope mentions 'Kernel v3.3 Incremental Audit' and findings refer to 'Kernel contract' and 'Kernel.initialize()'. | no |
| chainlight_v3_0.pdf | ExecLib | unmatched — not counted | — | mentioned in findings | no |
| chainlight_v3_0.pdf | Kernel | unmatched — not counted | — | main contract audited | no |
| chainlight_v3_0.pdf | ValidationManager | unmatched — not counted | — | mentioned in findings | no |
| chainlight_v3_0.pdf | PermissionManager | unmatched — not counted | — | mentioned in findings | no |
| chainlight_v3_0.pdf | SelectorManager | unmatched — not counted | — | mentioned in findings | no |
| chainlight_v3_0.pdf | ValidatorLib | unmatched — not counted | — | mentioned in findings | no |
| chainlight_v3_0.pdf | HookManager | unmatched — not counted | — | mentioned in findings | no |
| chainlight_v3_0.pdf | ExecutorManager | unmatched — not counted | — | mentioned in findings | no |
| chainlight_v3_0.pdf | ECDSAValidator | unmatched — not counted | — | mentioned in findings | no |
| chainlight_v3_0.pdf | WeightedECDSAValidator | unmatched — not counted | — | mentioned in findings | no |
| chainlight_v3_0.pdf | IValidator | unmatched — not counted | — | interface used | no |
| chainlight_v3_0.pdf | IHook | unmatched — not counted | — | interface used | no |
| chainlight_v3_0.pdf | IModule | unmatched — not counted | — | interface used | no |
| kalos_recovery_v1.pdf | RecoveryAction | unmatched — not counted | — | Scope section lists src/executor/RecoveryAction.sol | no |
| kalos_recovery_v1.pdf | WeightedECDSAValidator | unmatched — not counted | — | Scope section lists src/validator/WeightedECDSAValidator.sol | no |
| kalos_recovery_v2.pdf | WeightedECDSAValidator | unmatched — not counted | — | listed in scope section | no |
| kalos_v1.pdf | Kernel | unmatched — not counted | — | listed in scope | no |
| kalos_v1.pdf | Compatibility | unmatched — not counted | — | listed in scope | no |
| kalos_v1.pdf | KernelStorage | unmatched — not counted | — | listed in scope | no |
| kalos_v1.pdf | AccountFactory | unmatched — not counted | — | listed in scope | no |
| kalos_v1.pdf | EIP1967Proxy | unmatched — not counted | — | listed in scope | no |
| kalos_v1.pdf | MinimalAccount | unmatched — not counted | — | listed in scope | no |
| kalos_v1.pdf | ZeroDevBasePlugin | unmatched — not counted | — | listed in scope | no |
| kalos_v1.pdf | ZeroDevSessionKeyPlugin | unmatched — not counted | — | listed in scope | no |
| kalos_v1.pdf | Exec | unmatched — not counted | — | listed in scope | no |
| kalos_v1.pdf | ExtendedUserOpLib | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | Kernel | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | Compatibility | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | KernelStorage | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | KillSwitchAction | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | TokenActions | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | AdminLessERC1967Factory | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | ECDSAKernelFactory | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | KernelFactory | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | MultiECDSAKernelFactory | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | IAddressBook | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | IKernel | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | IValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | TestCounter | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | TestERC721 | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | TestExecutor | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | TestValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | Exec | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | KernelHelper | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | ECDSAValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | ERC165SessionKeyValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | KillSwitchValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | MultiECDSAValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_1.pdf | SessionKeyValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | Kernel | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | Compatibility | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | KernelStorage | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | KillSwitchAction | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | TokenActions | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | AdminLessERC1967Factory | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | ECDSAKernelFactory | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | KernelFactory | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | MultiECDSAKernelFactory | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | IAddressBook | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | IKernel | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | IValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | TestCounter | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | TestERC721 | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | TestExecutor | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | TestValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | Exec | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | KernelHelper | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | ECDSAValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | ERC165SessionKeyValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | KillSwitchValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | MultiECDSAValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2.pdf | SessionKeyValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | Kernel | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | KernelLite | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | Compatibility | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | KernelStorage | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | Enum | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | Structs | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | Types | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | KillSwitchAction | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | TokenActions | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | AdminLessERC1967Factory | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | KernelFactory | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | IAddressBook | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | IKernel | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | IValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | KernelLiteECDSA | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | TestCounter | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | TestERC20 | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | TestERC721 | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | TestExecutor | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | TestKernel | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | TestValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | KernelHelper | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | ECDSAValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | ERC165SessionKeyValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | KillSwitchValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | MultiECDSAValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | SessionKeyOwnedValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v2_2_lite.pdf | SessionKeyValidator | unmatched — not counted | — | listed in scope | no |
| kalos_v3_plugins.pdf | FactoryStaker | unmatched — not counted | — | listed in scope section | no |
| kalos_v3_plugins.pdf | KernelFactory | unmatched — not counted | — | listed in scope section | no |
| kalos_webauthn_v1.pdf | P256 | unmatched — not counted | — | listed in scope | no |
| kalos_webauthn_v1.pdf | P256Validator | unmatched — not counted | — | listed in scope | no |
| kalos_webauthn_v1.pdf | WebAuthn | unmatched — not counted | — | listed in scope | no |
| kalos_webauthn_v1.pdf | WebAuthnValidator | unmatched — not counted | — | listed in scope | no |
| kalos_webauthn_v1.pdf | Base64URL | unmatched — not counted | — | listed in scope | no |
| v_3_1_incremental_audit.pdf | WebAuthnValidator | unmatched — not counted | — | listed in Audited Components | no |
| v_3_1_incremental_audit.pdf | MultiChainWebAuthnValidator | unmatched — not counted | — | listed in Audited Components | no |
| v_3_1_incremental_audit.pdf | WeightedValidator | unmatched — not counted | — | listed in Audited Components | no |
| v_3_1_incremental_audit.pdf | SpendingLimit | unmatched — not counted | — | listed in Audited Components | no |
| PeckShield-Audit-Report-PolynomialEarnV2-v1.0rc.pdf | PutSellingVault | unmatched — not counted | — | Listed as target in findings PVE-001, PVE-002, PVE-003 | no |
| PeckShield-Audit-Report-PolynomialEarnV2-v1.0rc.pdf | CallSellingVault | unmatched — not counted | — | Listed as target in findings PVE-001, PVE-002, PVE-003 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x034cbb620d1e0e4c2e29845229beac57083b04ec` | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 18
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 137 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=14, low=3, medium=1
- Match method counts: n/a

Zero-match audit list:

- [2483] polynomial-1.html
- [2484] polynomial-4.html
- [2485] polynomial-5.html
- [2486] 0xmacro.com/library/audits/polynomial-3
- [2487] docs.synthetix.io/v/v3/for-developers/smart-contract-audits
- [2489] Kernel v3.2 Incremental Audit Report.pdf
- [2490] Kernel v3.3 Incremental Audit Report.pdf
- [2491] chainlight_v3_0.pdf
- [2492] kalos_recovery_v1.pdf
- [2493] kalos_recovery_v2.pdf
- [2494] kalos_v1.pdf
- [2495] kalos_v2_1.pdf
- [2496] kalos_v2_2.pdf
- [2497] kalos_v2_2_lite.pdf
- [2498] kalos_v3_plugins.pdf
- [2499] kalos_webauthn_v1.pdf
- [2500] v_3_1_incremental_audit.pdf
- [27691] PeckShield-Audit-Report-PolynomialEarnV2-v1.0rc.pdf

Fork inheritance lineage and inherited audits are included when available.
