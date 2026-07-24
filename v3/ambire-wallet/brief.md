# Agentic Audit Brief: Ambire Wallet

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 12 (0 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Ambire Wallet (`ambire-wallet`)
- Website: [https://www.ambire.com](https://www.ambire.com)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, optimism, scroll
- Contract surface: 24 unique implementations (25 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $8,998,043.13
- On-chain TVL (included contracts): $8,796,446.28
- TVL by chain: Ethereum $8,796,446.28

## Project Description

No contract logic was present for Ambire Wallet in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0000000071727de22e5e9d8baf0edac6f37da032`, chain 1)
- UnnamedContract (`0x0f2aa7bcda3d9d210df69a394b6965cb2566c828`, chain 1)
- UnnamedContract (`0x26ce6745a633030a6fac5e64e41d21fb6246dc2d`, chain 1)
- UnnamedContract (`0x3979ff5f4df3128dd05b3d74cf9b7f462e0d9bf1`, chain 1)
- UnnamedContract (`0x3f58d86408988fbd8aeea5ad063173f249f5b214`, chain 1)
- UnnamedContract (`0x5a7fc11397e9a8ad41bf10bf13f22b0a63f96f6d`, chain 1)
- UnnamedContract (`0x63c0c19a282a1b52b07dd5a65b58948a07dae32b`, chain 1)
- UnnamedContract (`0x8d6220c9961e8dd1844108c854f514e120226e20`, chain 1)
- UnnamedContract (`0xa8b267c68715fa1dca055993149f30217b572cf0`, chain 1)
- UnnamedContract (`0xce0042b868300000d44a59004da54a005ffdcf9f`, chain 1)
- UnnamedContract (`0xe8340aefed909d64117929c1ce5f6e217faf4362`, chain 1)
- UnnamedContract (`0x420000000000000000000000000000000000000f`, chain 10)
- UnnamedContract (`0x5300000000000000000000000000000000000002`, chain 534352)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 13 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 13 of 24 unique; 11 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 24
- Raw deployments: 25
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 6 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| WALLETToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88800092ff476844f74dc2fc427974bbee2794ae` | ⚠️ Unaudited |
| StakingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x47cd7e91c3cbaaf266369fe8518345fc4fc12935`; ethereum `0x4d3348aa74ba11a2722ea9adec6bc10e92fe3d58` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000001` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378981 | `0x0000000071727de22e5e9d8baf0edac6f37da032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0604f2b0dc1d8eac3b7b15fa74fcab7d2bceaee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e3c4f37994d0a0188d3f82b046fe42d5ff4bf3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378982 | `0x0f2aa7bcda3d9d210df69a394b6965cb2566c828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1955db3abe37faf6c1e063b7d42e0b2124f6440b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bba61ba1f728e11bf2212a60bd4c0e70bb1b2dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f6a778972ed514d59277df44e50b8beb81c8dcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378983 | `0x26ce6745a633030a6fac5e64e41d21fb6246dc2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378984 | `0x3979ff5f4df3128dd05b3d74cf9b7f462e0d9bf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378986 | `0x3f58d86408988fbd8aeea5ad063173f249f5b214` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378987 | `0x5a7fc11397e9a8ad41bf10bf13f22b0a63f96f6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378988 | `0x63c0c19a282a1b52b07dd5a65b58948a07dae32b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378990 | `0x8d6220c9961e8dd1844108c854f514e120226e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa69b8074ce03a33b13057b1e9d37dcde0024aaff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378991 | `0xa8b267c68715fa1dca055993149f30217b572cf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378992 | `0xce0042b868300000d44a59004da54a005ffdcf9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde0ed71c49a5c9482cf8b8de222537adbf7b9159` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378994 | `0xe8340aefed909d64117929c1ce5f6e217faf4362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2dd37a4ccc9641b22eb47c7fa6e2e02c14b110b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-378995 | `0x420000000000000000000000000000000000000f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-378996 | `0x5300000000000000000000000000000000000002` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 8
- Live contracts: 0
- Unknown liveness contracts: 8
- Source-verified contracts: 1
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: source verified unclassified=1, unverified unclassified=7

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | source verified unclassified | StakingPool<br>`0x4d3348aa74ba11a2722ea9adec6bc10e92fe3d58` | non_address_book | unknown | unknown | verified | n/a | `0x2f83c84d36cb8139e4e5d55248d6255c508aaced` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0604f2b0dc1d8eac3b7b15fa74fcab7d2bceaee7` | non_address_book | unknown | unknown | unverified | n/a | `0x2f83c84d36cb8139e4e5d55248d6255c508aaced` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e3c4f37994d0a0188d3f82b046fe42d5ff4bf3f` | non_address_book | unknown | unknown | unverified | n/a | `0x2f83c84d36cb8139e4e5d55248d6255c508aaced` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1955db3abe37faf6c1e063b7d42e0b2124f6440b` | non_address_book | unknown | unknown | unverified | n/a | `0x2f83c84d36cb8139e4e5d55248d6255c508aaced` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1bba61ba1f728e11bf2212a60bd4c0e70bb1b2dc` | non_address_book | unknown | unknown | unverified | n/a | `0x2f83c84d36cb8139e4e5d55248d6255c508aaced` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f6a778972ed514d59277df44e50b8beb81c8dcc` | non_address_book | unknown | unknown | unverified | n/a | `0x2f83c84d36cb8139e4e5d55248d6255c508aaced` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde0ed71c49a5c9482cf8b8de222537adbf7b9159` | non_address_book | unknown | unknown | unverified | n/a | `0x2f83c84d36cb8139e4e5d55248d6255c508aaced` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf2dd37a4ccc9641b22eb47c7fa6e2e02c14b110b` | non_address_book | unknown | unknown | unverified | n/a | `0x2f83c84d36cb8139e4e5d55248d6255c508aaced` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Ambire-EIP-7702-Update-Hunter-Security-Audit-Report-0.1.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Ambire-EIP-7702-Update-Hunter-Security-Audit-Report-0.1.pdf) | Hunter Security | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Ambire-Hunter-Security-Assessment-26-01-2024.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Ambire-Hunter-Security-Assessment-26-01-2024.pdf) | Hunter Security | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Ambire-stkWALLET-Hunter-Security-Audit-26-02-2024-1.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Ambire-stkWALLET-Hunter-Security-Audit-26-02-2024-1.pdf) | Hunter Security | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Ambire-stkWallet-Hunter-Security-Audit-Report-2025-1.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Ambire-stkWallet-Hunter-Security-Audit-Report-2025-1.pdf) | Hunter Security | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [CuriousApple-AmbireRewview01.md](https://github.com/AmbireTech/ambire-common/blob/v2/audits/CuriousApple-AmbireRewview01.md) | CuriousApple | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [ERC6492-Hunter-Security-Audit-Report-V1.0.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/ERC6492-Hunter-Security-Audit-Report-V1.0.pdf) | Hunter Security | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Pashov-Ambire-second-security-review.md](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Pashov-Ambire-second-security-review.md) | Pashov Audit Group | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Pashov-Ambire-security-review.md](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Pashov-Ambire-security-review.md) | Pashov Audit Group | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Pashov-Ambire-third-security-review.md](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Pashov-Ambire-third-security-review.md) | Pashov Audit Group | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [Shieldify-Ambire-Security-Review.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Shieldify-Ambire-Security-Review.pdf) | Shieldify | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [code4rena - Ambire Wallet - Invitational.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/code4rena%20-%20Ambire%20Wallet%20-%20Invitational.pdf) | Code4rena | Contest | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 4 | low |
| [facu_2023-09-28_Ambire_Smart_Contracts_Audit_Report-1.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/facu_2023-09-28_Ambire_Smart_Contracts_Audit_Report-1.pdf) | Facu | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2301] Ambire-EIP-7702-Update-Hunter-Security-Audit-Report-0.1.pdf — no match: Scope section explicitly lists four contracts in the 'Scope' bullet list.
- [2302] Ambire-Hunter-Security-Assessment-26-01-2024.pdf — no match: Scope table on page 4 lists 5 contracts. Audit date from cover page.
- [2303] Ambire-stkWALLET-Hunter-Security-Audit-26-02-2024-1.pdf — no match: Only one contract in scope: stkWALLET. Audit date from cover page.
- [2304] Ambire-stkWallet-Hunter-Security-Audit-Report-2025-1.pdf — no match: Only one contract in scope: stkWALLET.sol
- [2305] CuriousApple-AmbireRewview01.md — no match: Scope section explicitly lists three contracts: AmbireAccount.sol, AmbirePaymaster.sol, DKIMRecoverySigValidator.sol. Dependencies excluded. Audit date from cover page: 'Date of Delivery: 24 Oct 2023'.
- [2306] ERC6492-Hunter-Security-Audit-Report-V1.0.pdf — no match: Scope explicitly lists 'ercs/ERCS/erc-6492.md' and mentions two contracts: UniversalSigValidator and ValidateSigOffchain.
- [2307] Pashov-Ambire-second-security-review.md — no match: Scope section explicitly lists AmbireAccount and DKIMRecoverySigValidator. No date found in the report text.
- [2308] Pashov-Ambire-security-review.md — no match: Scope section explicitly lists four contracts: libs/Bytes, libs/SignatureValidator, AmbireAccount, AmbireAccountFactory. No audit date found in the provided text.
- [2309] Pashov-Ambire-third-security-review.md — no match: No explicit scope section; contracts inferred from report text.
- [2310] Shieldify-Ambire-Security-Review.pdf — no match: All contracts listed in scope section of the report.
- [2311] code4rena - Ambire Wallet - Invitational.pdf — no match: No explicit scope section found; extracted contract names from code snippets and mentions in the report.
- [2312] facu_2023-09-28_Ambire_Smart_Contracts_Audit_Report-1.pdf — no match: Contracts explicitly named in the introduction as the scope of the audit.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Ambire-EIP-7702-Update-Hunter-Security-Audit-Report-0.1.pdf | AmbireAccount | unmatched — not counted | — | listed in scope | no |
| Ambire-EIP-7702-Update-Hunter-Security-Audit-Report-0.1.pdf | AmbireAccount7702 | unmatched — not counted | — | listed in scope | no |
| Ambire-EIP-7702-Update-Hunter-Security-Audit-Report-0.1.pdf | Eip712HashBuilder | unmatched — not counted | — | listed in scope | no |
| Ambire-EIP-7702-Update-Hunter-Security-Audit-Report-0.1.pdf | IAmbireAccount | unmatched — not counted | — | listed in scope | no |
| Ambire-Hunter-Security-Assessment-26-01-2024.pdf | AmbireAccount | unmatched — not counted | — | listed in scope table | no |
| Ambire-Hunter-Security-Assessment-26-01-2024.pdf | AmbireAccountFactory | unmatched — not counted | — | listed in scope table | no |
| Ambire-Hunter-Security-Assessment-26-01-2024.pdf | AmbirePaymaster | unmatched — not counted | — | listed in scope table | no |
| Ambire-Hunter-Security-Assessment-26-01-2024.pdf | DKIMRecoverySigValidator | unmatched — not counted | — | listed in scope table | no |
| Ambire-Hunter-Security-Assessment-26-01-2024.pdf | SignatureValidator | unmatched — not counted | — | listed in scope table | no |
| Ambire-stkWALLET-Hunter-Security-Audit-26-02-2024-1.pdf | stkWALLET | unmatched — not counted | — | listed in scope table and executive summary | no |
| Ambire-stkWallet-Hunter-Security-Audit-Report-2025-1.pdf | stkWALLET | unmatched — not counted | — | listed in scope | no |
| CuriousApple-AmbireRewview01.md | AmbireAccount | unmatched — not counted | — | listed in scope | no |
| CuriousApple-AmbireRewview01.md | AmbirePaymaster | unmatched — not counted | — | listed in scope | no |
| CuriousApple-AmbireRewview01.md | DKIMRecoverySigValidator | unmatched — not counted | — | listed in scope | no |
| ERC6492-Hunter-Security-Audit-Report-V1.0.pdf | UniversalSigValidator | unmatched — not counted | — | listed in scope and described as main smart contract | no |
| ERC6492-Hunter-Security-Audit-Report-V1.0.pdf | ValidateSigOffchain | unmatched — not counted | — | listed in scope and described as helper smart contract | no |
| Pashov-Ambire-second-security-review.md | AmbireAccount | unmatched — not counted | — | listed in scope | no |
| Pashov-Ambire-second-security-review.md | DKIMRecoverySigValidator | unmatched — not counted | — | listed in scope | no |
| Pashov-Ambire-security-review.md | Bytes | unmatched — not counted | — | listed in scope | no |
| Pashov-Ambire-security-review.md | SignatureValidator | unmatched — not counted | — | listed in scope | no |
| Pashov-Ambire-security-review.md | AmbireAccount | unmatched — not counted | — | listed in scope | no |
| Pashov-Ambire-security-review.md | AmbireAccountFactory | unmatched — not counted | — | listed in scope | no |
| Pashov-Ambire-third-security-review.md | AmbireAccount | unmatched — not counted | — | mentioned as audited contract | no |
| Pashov-Ambire-third-security-review.md | AmbirePaymaster | unmatched — not counted | — | mentioned as audited contract | no |
| Pashov-Ambire-third-security-review.md | DKIMRecoverySigValidator | unmatched — not counted | — | mentioned in finding L-01 | no |
| Shieldify-Ambire-Security-Review.pdf | AmbireAccount | unmatched — not counted | — | listed in scope | no |
| Shieldify-Ambire-Security-Review.pdf | SignatureValidator | unmatched — not counted | — | listed in scope | no |
| Shieldify-Ambire-Security-Review.pdf | AmbireAccountFactory | unmatched — not counted | — | listed in scope | no |
| Shieldify-Ambire-Security-Review.pdf | AmbirePaymaster | unmatched — not counted | — | listed in scope | no |
| Shieldify-Ambire-Security-Review.pdf | DKIMRecoverySigValidator | unmatched — not counted | — | listed in scope | no |
| code4rena - Ambire Wallet - Invitational.pdf | AmbireAccountFactory | unmatched — not counted | — | mentioned in report text | no |
| code4rena - Ambire Wallet - Invitational.pdf | AmbireAccount | unmatched — not counted | — | mentioned in report text | no |
| code4rena - Ambire Wallet - Invitational.pdf | SignatureValidator | unmatched — not counted | — | mentioned in report text | no |
| code4rena - Ambire Wallet - Invitational.pdf | TestTryCatch | unmatched — not counted | — | mentioned in report text | no |
| facu_2023-09-28_Ambire_Smart_Contracts_Audit_Report-1.pdf | AmbireAccount | unmatched — not counted | — | listed in scope | no |
| facu_2023-09-28_Ambire_Smart_Contracts_Audit_Report-1.pdf | AmbirePaymaster | unmatched — not counted | — | listed in scope | no |
| facu_2023-09-28_Ambire_Smart_Contracts_Audit_Report-1.pdf | DKIMRecoverySigValidator | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 37 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=2
- Match method counts: n/a

Zero-match audit list:

- [2301] Ambire-EIP-7702-Update-Hunter-Security-Audit-Report-0.1.pdf
- [2302] Ambire-Hunter-Security-Assessment-26-01-2024.pdf
- [2303] Ambire-stkWALLET-Hunter-Security-Audit-26-02-2024-1.pdf
- [2304] Ambire-stkWallet-Hunter-Security-Audit-Report-2025-1.pdf
- [2305] CuriousApple-AmbireRewview01.md
- [2306] ERC6492-Hunter-Security-Audit-Report-V1.0.pdf
- [2307] Pashov-Ambire-second-security-review.md
- [2308] Pashov-Ambire-security-review.md
- [2309] Pashov-Ambire-third-security-review.md
- [2310] Shieldify-Ambire-Security-Review.pdf
- [2311] code4rena - Ambire Wallet - Invitational.pdf
- [2312] facu_2023-09-28_Ambire_Smart_Contracts_Audit_Report-1.pdf

Fork inheritance lineage and inherited audits are included when available.
