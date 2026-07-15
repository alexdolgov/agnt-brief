# Agentic Audit Brief: MegaETH Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: MegaETH Bridge (`megaeth-bridge`)
- Website: [https://www.megaeth.com/](https://www.megaeth.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 60 unique implementations (60 raw deployments)
- Coverage basis: 0/17 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $8,965,575.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MegaETH Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across ethereum. Structural roles: 12 core, 5 supporting. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (12), supporting (5)
- Contract kinds: contract (17)
- Detected standards: erc1967proxy (6), erc165 (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (6), solmate (6), permit2 (1)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x150355...fd5b85`, chain 1)
- UnnamedContract (`0x4e59b4...b4956c`, chain 1)
- UnnamedContract (`0x5d0ff6...b99285`, chain 1)
- UnnamedContract (`0x5ff137...6d2789`, chain 1)
- UnnamedContract (`0x914d7f...5643d7`, chain 1)
- UnnamedContract (`0xefc2c1...7a167c`, chain 1)
- Create2Deployer (`0x13b0d8...e9bef2`, chain 1)
- CreateX (`0xba5ed0...8ba5ed`, chain 1)
- EntryPoint (`0x000000...7da032`, chain 1)
- ERC1967Proxy (`0xec2af1...943926`, chain 1)
- GnosisSafe (`0x69f4d1...6e2938`, chain 1)
- GnosisSafeL2 (`0xfb1bff...7191ea`, chain 1)
- L1ChugSplashProxy (`0x0ca3a2...a2ee75`, chain 1)
- MultiSend (`0x998739...8f9eda`, chain 1)
- MultiSendCallOnly (`0xa1dabe...44102b`, chain 1)
- Permit2 (`0x000000...c78ba3`, chain 1)
- Proxy (`0x1ed92e...1cb77e`, chain 1)
- Proxy (`0x3d8ee2...12a242`, chain 1)
- Proxy (`0x7f82f5...d709e8`, chain 1)
- Proxy (`0x854684...c9d563`, chain 1)
- Proxy (`0xf87503...bd7c61`, chain 1)
- ResolvedDelegateProxy (`0x6c7198...831cc9`, chain 1)
- SenderCreator (`0x7fc984...088348`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/28 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/17 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 23 of 60 unique; 37 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/29
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 60
- Raw deployments: 60
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CapToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcccc62...a3cccc` | ⚠️ Unaudited |
| Create2Deployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246285 | `0x13b0d8...e9bef2` | ⚠️ Unaudited |
| CreateX | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246298 | `0xba5ed0...8ba5ed` | ⚠️ Unaudited |
| EntryPoint | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246283 | `0x000000...7da032` | ⚠️ Unaudited |
| ERC1820Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1820a4...5fad24` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x88887b...1d8888` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246307 | `0xec2af1...943926` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246293 | `0x69f4d1...6e2938` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246301 | `0xfb1bff...7191ea` | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246302 | `0x0ca3a2...a2ee75` | ⚠️ Unaudited |
| Merge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17fef0...319618` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca11bd...76ca11` | ⚠️ Unaudited |
| MultiSend | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246296 | `0x998739...8f9eda` | ⚠️ Unaudited |
| MultiSendCallOnly | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246297 | `0xa1dabe...44102b` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246282 | `0x000000...c78ba3` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x037b8f...650049` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x10a5ef...e75c9b` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246309 | `0x1ed92e...1cb77e` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246308 | `0x3d8ee2...12a242` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246305 | `0x7f82f5...d709e8` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246303 | `0x854684...c9d563` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246304 | `0xf87503...bd7c61` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a4642...a7fe9f` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246306 | `0x6c7198...831cc9` | ⚠️ Unaudited |
| SenderCreator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246294 | `0x7fc984...088348` | ⚠️ Unaudited |
| StakedUSDeOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x211cc4...5fe5d2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb0f70c...817072` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xecac9c...5c11c1` | ⚠️ Unaudited |
| USDeOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d3a1f...52ef34` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246286 | `0x150355...fd5b85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b271...547de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28b7e7...c29861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ea493...b4a890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f55e1...dcac47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32090f...ba84fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...00000f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000042` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246288 | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246290 | `0x5d0ff6...b99285` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246291 | `0x5ff137...6d2789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6691d6...34321f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246295 | `0x914d7f...5643d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9367a0...a72500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x996ce9...76e48c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a96e3...998411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8ce59...625ebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2f34f...b7de38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc903c6...28e6c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246300 | `0xefc2c1...7a167c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7d2f0...b3589d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfafddb...2079e7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt](https://blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [blocksec_megaeth_dtf_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/mixed/blocksec%5Fmegaeth%5Fdtf%5Fv1.0-signed.pdf) | BlockSec | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21120] blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt — no match: The report explicitly lists three components in scope: MegaEVM, SALT, and Stateless Validator. No specific file paths or contract addresses are provided. The audit end date is November 28, 2025.
- [21121] blocksec_megaeth_dtf_v1.0-signed.pdf — no match: Extracted three main targets: MegaEVM, Stateless Validator, and SALT, along with their sub-components and reference implementations from scope tables.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt | MegaEVM | unmatched — not counted | — | described as a specialized EVM implementation in scope | no |
| blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt | SALT | unmatched — not counted | — | described as core state management component in scope | no |
| blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt | Stateless Validator | unmatched — not counted | — | described as Rust implementation of a stateless blockchain validator in scope | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | MegaEVM | unmatched — not counted | — | listed in scope as target | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | Stateless Validator | unmatched — not counted | — | listed in scope as target | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | SALT | unmatched — not counted | — | listed in scope table | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | op-revm | unmatched — not counted | — | listed in scope as reference implementation | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | mega-evm | unmatched — not counted | — | listed in scope table | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | mega-reth | unmatched — not counted | — | listed in scope table | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | stateless-validator | unmatched — not counted | — | listed in scope table | no |
| blocksec_megaeth_dtf_v1.0-signed.pdf | chain-ops | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x000000...7da032` | EntryPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ca3a2...a2ee75` | L1ChugSplashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6c7198...831cc9` | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7fc984...088348` | SenderCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 20 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 11 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [21120] blocksec.com/audit-report/audit-report-megaeth--megaevm--stateless-validator---salt
- [21121] blocksec_megaeth_dtf_v1.0-signed.pdf

Fork inheritance lineage and inherited audits are included when available.
