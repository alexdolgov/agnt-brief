# Agentic Audit Brief: Allbridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 23 (0 matched; 23 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DECLINING - TVL dropped 8.2% over 90 days

## Project Overview

- Project: Allbridge (`allbridge`)
- Website: [https://app.allbridge.io](https://app.allbridge.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, celo, ethereum, fantom, polygon
- Contract surface: 8 unique implementations (15 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $22,541,708.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Allbridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across avalanche, bsc, celo, ethereum, fantom, polygon. Structural roles: 7 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: supporting (7)
- Contract kinds: contract (7)
- Detected standards: accesscontrol (7), erc165 (7)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd5d6b2...5d6fc4`, chain 137)
- UnnamedContract (`0xd5d6b2...5d6fc4`, chain 42220)
- Bridge (`0xd5d6b2...5d6fc4`, chain 1)
- Bridge (`0xd5d6b2...5d6fc4`, chain 56)

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (2 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 1 of 8 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 1
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 15
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 11 stale, 11 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Bridge | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-378961 | 5 deployments: ethereum `0xbbbd1b...1de884`; bsc `0xbbbd1b...1de884`; polygon `0xbbbd1b...1de884`; celo `0xbbbd1b...1de884`; avalanche `0xbbbd1b...1de884` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-378962 | 4 deployments: ethereum `0xd5d6b2...5d6fc4`; bsc `0xd5d6b2...5d6fc4`; polygon `0xd5d6b2...5d6fc4`; celo `0xd5d6b2...5d6fc4` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-378980 | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378966 | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-378967 | `0xbbbd1b...1de884` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-378969 | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | celo | unit-378973 | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-378976 | `0xda0a16...99eabf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view](https://drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view) | Kudelski Security | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [20211105-Neodyme.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20211105-Neodyme.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [20211117-LeastAuthority.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20211117-LeastAuthority.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [20220916-Halborn.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20220916-Halborn.pdf) | Halborn | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [20221104-AckeeBlockchain.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20221104-AckeeBlockchain.pdf) | Ackee Blockchain | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [20221208-Halborn.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20221208-Halborn.pdf) | Halborn | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [20230607-Neodyme.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20230607-Neodyme.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [hacken.io/audits/allbridge](https://hacken.io/audits/allbridge) | Hacken | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view](https://drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view) | unknown | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [www.coinfabrik.com/blog/allbridge-audit-report](https://www.coinfabrik.com/blog/allbridge-audit-report) | CoinFabrik | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [allbridge.medium.com/allbridge-successfully-completes-smart-contract-code-review-by-hacken-82e8497b1d2b](https://allbridge.medium.com/allbridge-successfully-completes-smart-contract-code-review-by-hacken-82e8497b1d2b) | Hacken | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1lE-zwbrmNgVEDVa5t2pRCo9AiI2vvex3/view](https://drive.google.com/file/d/1lE-zwbrmNgVEDVa5t2pRCo9AiI2vvex3/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1gZ2KcBPNM_JC_xstw4_dUYWkJSZRQy7L/view](https://drive.google.com/file/d/1gZ2KcBPNM_JC_xstw4_dUYWkJSZRQy7L/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1JugtjUUBP7CxlFzgQt4Dntkt2s-URzLH/view](https://drive.google.com/file/d/1JugtjUUBP7CxlFzgQt4Dntkt2s-URzLH/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1teENtaU43DwTxsEtT5m9-Z-3nSHKHPVz/view](https://drive.google.com/file/d/1teENtaU43DwTxsEtT5m9-Z-3nSHKHPVz/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1kxJ4IOIL_qBeg-RYRIU9I53mQF-1cWnb/view](https://drive.google.com/file/d/1kxJ4IOIL_qBeg-RYRIU9I53mQF-1cWnb/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1tUK-oKF7MAZj-ylZq9RKAzHGiKX2xK-D/view](https://drive.google.com/file/d/1tUK-oKF7MAZj-ylZq9RKAzHGiKX2xK-D/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1xhWWWO1g9h6XGkxUsfeHybsFen0tCwuV/view](https://drive.google.com/file/d/1xhWWWO1g9h6XGkxUsfeHybsFen0tCwuV/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1Dp0uRpqlWXnPi0oynvd-0mbEg8GhdCH9/view](https://drive.google.com/file/d/1Dp0uRpqlWXnPi0oynvd-0mbEg8GhdCH9/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1zklH6nN5t-IDVabM_OUHqdawNmlaboX6/view](https://drive.google.com/file/d/1zklH6nN5t-IDVabM_OUHqdawNmlaboX6/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1U_lajhCK7RejsS33z6Imc9aBhaDpn2lf/view](https://drive.google.com/file/d/1U_lajhCK7RejsS33z6Imc9aBhaDpn2lf/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1MCj6XdjHbyHW8_L02PFskHca9_G8xRrA/view](https://drive.google.com/file/d/1MCj6XdjHbyHW8_L02PFskHca9_G8xRrA/view) | Kudelski Security | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1JIK5p2r7BBNuDm-Ci8MSVzrYh6VRh0ho/view](https://drive.google.com/file/d/1JIK5p2r7BBNuDm-Ci8MSVzrYh6VRh0ho/view) | Hacken | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1820] drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view — no match: Scope section lists three repositories (EVM, Solana, Info Server) but does not enumerate individual contract files. However, the Technical Analysis section explicitly lists five EVM contracts: Bridge, Farming, FeeOracle, Staking, WrappedToken. Solana and Info Server components are mentioned but not named individually.
- [9788] 20211105-Neodyme.pdf — no match: Extracted contract names from scope section and findings. The audit date is from the cover page: 'November 5, 2021'.
- [9789] 20211117-LeastAuthority.pdf — no match: The audit report covers three main components: Neon EVM (Rust EVM), EVM Loader, and Proxy Implementation. The Solidity contract SPL_ERC20_Wrapper is also mentioned in suggestions. The audit date is clearly stated on the cover page and throughout the report.
- [9790] 20220916-Halborn.pdf — no match: Only one program (evm-loader) is in scope. No individual contract names are provided beyond the program name.
- [9791] 20221104-AckeeBlockchain.pdf — no match: Scope includes two repositories: neon-evm and rust-evm. No individual contract files listed.
- [9792] 20221208-Halborn.pdf — no match: Only one program (evm-loader) is explicitly in scope. No individual contract names are provided beyond the program name.
- [9793] 20230607-Neodyme.pdf — no match: The report scope mentions the main Neon contract (evm_loader) and Solidity wrappers, but no specific contract names are listed. The audit date is from the cover page: 'June 7th, 2023'.
- [12352] hacken.io/audits/allbridge — no match: The text is a project overview page, not an audit report. No specific contracts, files, or audit date are provided.
- [12354] drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view — no match: The executive summary explicitly states the scope as 4 smart contracts: bridge-core, validator, fee-oracle, and wrapped-token. The date is from the cover page: 28.09.2022.
- [12355] www.coinfabrik.com/blog/allbridge-audit-report — no match: Scope section explicitly lists four files. Audit date is the final report date (2023-07-18) from changelog.
- [26291] allbridge.medium.com/allbridge-successfully-completes-smart-contract-code-review-by-hacken-82e8497b1d2b — no match: The text is a blog post announcing an audit by Hacken, but it does not list specific contract names or files in scope.
- [26304] drive.google.com/file/d/1lE-zwbrmNgVEDVa5t2pRCo9AiI2vvex3/view — no match: The provided text is a marketing recap, not an audit report. No contracts, scope sections, or audit dates are present.
- [26306] drive.google.com/file/d/1gZ2KcBPNM_JC_xstw4_dUYWkJSZRQy7L/view — no match: The document is a monthly report for Allbridge Core, not an audit report. No contracts in scope are mentioned.
- [26309] drive.google.com/file/d/1JugtjUUBP7CxlFzgQt4Dntkt2s-URzLH/view — no match: The provided text is a public report about Allbridge Core metrics and partnerships, not an audit report. No contracts in scope or audit date were found.
- [26312] drive.google.com/file/d/1teENtaU43DwTxsEtT5m9-Z-3nSHKHPVz/view — no match: The document is a monthly recap report, not an audit report. It mentions an audit by Hacken but does not list any specific contracts in scope.
- [26316] drive.google.com/file/d/1kxJ4IOIL_qBeg-RYRIU9I53mQF-1cWnb/view — no match: The provided text is a marketing report, not an audit report. No contracts in scope or audit date found.
- [26319] drive.google.com/file/d/1tUK-oKF7MAZj-ylZq9RKAzHGiKX2xK-D/view — no match: The provided text is not an audit report; it appears to be marketing material for Allbridge. No contracts in scope or audit date were found.
- [26320] drive.google.com/file/d/1xhWWWO1g9h6XGkxUsfeHybsFen0tCwuV/view — no match: The provided text is a marketing report, not an audit report. No contracts or audit date found.
- [26321] drive.google.com/file/d/1Dp0uRpqlWXnPi0oynvd-0mbEg8GhdCH9/view — no match: The document is a monthly progress report (March 2022) for Allbridge, not an audit report. It mentions a partnership with Kudelski Security for a future audit but does not list any contracts in scope.
- [26322] drive.google.com/file/d/1zklH6nN5t-IDVabM_OUHqdawNmlaboX6/view — no match: The document is a monthly update report for Allbridge, not a smart contract audit report. No contracts in scope are mentioned.
- [26327] drive.google.com/file/d/1U_lajhCK7RejsS33z6Imc9aBhaDpn2lf/view — no match: The document is a monthly report (September 2022) for Allbridge, not a smart contract audit report. No contracts in scope are listed.
- [26329] drive.google.com/file/d/1MCj6XdjHbyHW8_L02PFskHca9_G8xRrA/view — no match: The document is a public report about Allbridge Core and Classic metrics, product updates, and marketing. It mentions an audit by Cossack Labs but does not list any specific smart contracts in scope. No contract names or source files are identifiable.
- [26332] drive.google.com/file/d/1JIK5p2r7BBNuDm-Ci8MSVzrYh6VRh0ho/view — no match: The provided text is a marketing report for Allbridge, not an audit report. No contracts, source files, or audit date are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | Bridge | ambiguous — not counted | Bridge (alternative) `0xd5d6b2...5d6fc4` — deployed 2022-12-22 17:15:47+03 — liveness: live (current_address_book_code)<br>Bridge (alternative) `0xd5d6b2...5d6fc4` — deployed 2022-12-22 17:18:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | Farming | unmatched — not counted | — | Listed in General Observations as part of Allbridge EVM Contracts | no |
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | FeeOracle | unmatched — not counted | — | Listed in General Observations as part of Allbridge EVM Contracts | no |
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | Staking | unmatched — not counted | — | Listed in General Observations as part of Allbridge EVM Contracts | no |
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | WrappedToken | unmatched — not counted | — | Listed in General Observations as part of Allbridge EVM Contracts | no |
| 20211105-Neodyme.pdf | Neon EVM | unmatched — not counted | — | Scope section: 'Neon-EVM / evm_loader – The main Neon contract' | no |
| 20211105-Neodyme.pdf | evm_loader | unmatched — not counted | — | Scope section: 'Neon-EVM / evm_loader – The main Neon contract' | no |
| 20211105-Neodyme.pdf | ERC20Wrapper | unmatched — not counted | — | Scope section: 'Includes all ERC20Wrapper code' and finding 'ERC20 Wrapper allows privilege escalation' | no |
| 20211105-Neodyme.pdf | SYSTEM_ACCOUNT_SOLANA | unmatched — not counted | — | Finding 'External Calls execute Solana instruction instantly' mentions 'built-in SYSTEM_ACCOUNT_SOLANA contract' | no |
| 20211105-Neodyme.pdf | SYSTEM_ACCOUNT_ERC20_WRAPPER | unmatched — not counted | — | Finding 'ERC20 Wrapper allows privilege escalation' mentions 'pre-compiled SYSTEM_ACCOUNT_ERC20_WRAPPER contract' | no |
| 20211117-LeastAuthority.pdf | Neon EVM | unmatched — not counted | — | listed in scope as Rust EVM repository | no |
| 20211117-LeastAuthority.pdf | EVM Loader | unmatched — not counted | — | listed in scope as EVM Loader repository | no |
| 20211117-LeastAuthority.pdf | Proxy Implementation | unmatched — not counted | — | listed in scope as proxy implementation repository | no |
| 20211117-LeastAuthority.pdf | SPL_ERC20_Wrapper | unmatched — not counted | — | mentioned in Suggestion 7 and Suggestion 8 | no |
| 20220916-Halborn.pdf | evm-loader | unmatched — not counted | — | listed in scope section as program in scope | no |
| 20221104-AckeeBlockchain.pdf | neon-evm | unmatched — not counted | — | listed in scope as repository | no |
| 20221104-AckeeBlockchain.pdf | rust-evm | unmatched — not counted | — | listed in scope as repository | no |
| 20221208-Halborn.pdf | evm-loader | unmatched — not counted | — | listed in scope section as program in scope | no |
| 20230607-Neodyme.pdf | Neon | unmatched — not counted | — | Scope section: 'The full main Neon contract (evm_loader), which includes, among other things, the EVM, an Executor, the storage interface, and additional built-in Ethereum programs to interface with Solana.' | no |
| hacken.io/audits/allbridge | Allbridge | unmatched — not counted | — | Project description mentions Allbridge as a token bridge; no specific contracts listed. | no |
| drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view | bridge-core | unmatched — not counted | — | listed as one of 4 smart contracts in scope | no |
| drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view | validator | unmatched — not counted | — | listed as one of 4 smart contracts in scope | no |
| drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view | fee-oracle | unmatched — not counted | — | listed as one of 4 smart contracts in scope | no |
| drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view | wrapped-token | unmatched — not counted | — | listed as one of 4 smart contracts in scope | no |
| www.coinfabrik.com/blog/allbridge-audit-report | bridge | ambiguous — not counted | Bridge (alternative) `0xd5d6b2...5d6fc4` — deployed 2022-12-22 17:15:47+03 — liveness: live (current_address_book_code)<br>Bridge (alternative) `0xd5d6b2...5d6fc4` — deployed 2022-12-22 17:18:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.coinfabrik.com/blog/allbridge-audit-report | i-stx | unmatched — not counted | — | listed in scope | no |
| www.coinfabrik.com/blog/allbridge-audit-report | n-token | unmatched — not counted | — | listed in scope | no |
| www.coinfabrik.com/blog/allbridge-audit-report | w-token | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xd5d6b2...5d6fc4` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 23
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 26 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=14
- Match method counts: n/a

Zero-match audit list:

- [1820] drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view
- [9788] 20211105-Neodyme.pdf
- [9789] 20211117-LeastAuthority.pdf
- [9790] 20220916-Halborn.pdf
- [9791] 20221104-AckeeBlockchain.pdf
- [9792] 20221208-Halborn.pdf
- [9793] 20230607-Neodyme.pdf
- [12352] hacken.io/audits/allbridge
- [12354] drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view
- [12355] www.coinfabrik.com/blog/allbridge-audit-report
- [26291] allbridge.medium.com/allbridge-successfully-completes-smart-contract-code-review-by-hacken-82e8497b1d2b
- [26304] drive.google.com/file/d/1lE-zwbrmNgVEDVa5t2pRCo9AiI2vvex3/view
- [26306] drive.google.com/file/d/1gZ2KcBPNM_JC_xstw4_dUYWkJSZRQy7L/view
- [26309] drive.google.com/file/d/1JugtjUUBP7CxlFzgQt4Dntkt2s-URzLH/view
- [26312] drive.google.com/file/d/1teENtaU43DwTxsEtT5m9-Z-3nSHKHPVz/view
- [26316] drive.google.com/file/d/1kxJ4IOIL_qBeg-RYRIU9I53mQF-1cWnb/view
- [26319] drive.google.com/file/d/1tUK-oKF7MAZj-ylZq9RKAzHGiKX2xK-D/view
- [26320] drive.google.com/file/d/1xhWWWO1g9h6XGkxUsfeHybsFen0tCwuV/view
- [26321] drive.google.com/file/d/1Dp0uRpqlWXnPi0oynvd-0mbEg8GhdCH9/view
- [26322] drive.google.com/file/d/1zklH6nN5t-IDVabM_OUHqdawNmlaboX6/view
- [26327] drive.google.com/file/d/1U_lajhCK7RejsS33z6Imc9aBhaDpn2lf/view
- [26329] drive.google.com/file/d/1MCj6XdjHbyHW8_L02PFskHca9_G8xRrA/view
- [26332] drive.google.com/file/d/1JIK5p2r7BBNuDm-Ci8MSVzrYh6VRh0ho/view

Fork inheritance lineage and inherited audits are included when available.
