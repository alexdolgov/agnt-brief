# Agentic Audit Brief: Taiko Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 23 across 6 audit(s)
- Eligible audit results: 8 (6 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Taiko Bridge (`taiko-bridge`)
- Website: [https://bridge.taiko.xyz/](https://bridge.taiko.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: 6/7 confirmed own live verified implementations (85.7%); conservative 85.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $11,772,373.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Taiko Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across ethereum. Structural roles: 12 unclassified, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: unclassified (12), core (1)
- Contract kinds: contract (13)
- Detected standards: erc1967proxy (1), ownable (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x10dea6...54d800`, chain 1)

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (7 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/7 (85.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Deployed-live implementations: 8 of 27 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 6/7
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 85.7% (Code4rena, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 6 | 85.7% | 2026-01 |
| Quill Audits | Tier 2 | 5 | 71.4% | 2024-02 |
| Sigma Prime | Tier 2 | 5 | 71.4% | 2024-02 |
| Code4rena | Tier 1 | 3 | 42.9% | 2024-03 |
| Halborn | Tier 2 | 1 | 14.3% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MainnetBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257940 | `0xd60247...ddd8ec` | ✅ Audited |
| MainnetERC1155Vault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257941 | `0xaf1459...881702` | ✅ Audited |
| MainnetERC20Vault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257938 | `0x996282...4415ab` | ✅ Audited |
| MainnetERC721Vault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257942 | `0x0b470d...f419aa` | ✅ Audited |
| QuotaManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257943 | `0x91f671...22f29e` | ✅ Audited |
| SignalService | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257939 | `0x9e0a24...35c77c` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MainnetSharedAddressManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257944 | `0xef9eaa...65fbaa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0857cd...b59ab0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257935 | `0x10dea6...54d800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167000...000001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167000...000002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167000...000003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167000...000004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167000...000005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167000...000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167013...000001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167013...000002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167013...000003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167013...000004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167013...000005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167013...000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4876e7...bdf768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c70b7...9ed811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a4cf6...18ed80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bbacc...e01b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81ff6c...2c92c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3b83e...e963da` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena-2024-03-taiko-final-report.md](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/code4rena-2024-03-taiko-final-report.md) | Code4rena | Contest | 2024-03 | stale | Direct | contract_name | matched | 4 | 3 | 0 | 33 | high |
| [halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf) | Halborn | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [halborn-taiko-dao-contract-audit.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/halborn-taiko-dao-contract-audit.pdf) | Halborn | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [open_zeppelin_taiko_protocol_audit_june_2024.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_audit_june_2024.pdf) | OpenZeppelin | Audit | 2024-06 | stale | Direct | contract_name | matched | 7 | 6 | 0 | 60 | high |
| [open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf) | OpenZeppelin | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf) | OpenZeppelin | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 31 | high |
| [quill_audits_taiko_smart_contract_audit_report.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/quill_audits_taiko_smart_contract_audit_report.pdf) | Quill Audits | Audit | 2024-02 | stale | Direct | contract_name | matched | 5 | 5 | 0 | 6 | high |
| [sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | contract_name | matched | 5 | 5 | 0 | 24 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21026] code4rena-2024-03-taiko-final-report.md — matched: Extracted 37 contract names from the audit report scope and findings. The audit date is the end date of the audit period (March 6-27, 2024).
- [21027] halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf — matched: Scope section explicitly lists four contracts: ERC20Vault.sol, TaikoWrapper.sol, ForcedInclusionStore.sol, TaikoInbox.sol. Audit date from engagement end date March 7, 2025.
- [21028] halborn-taiko-dao-contract-audit.pdf — no match: Extracted 13 contract names from the scope section listing files and repository. Audit date from engagement end date: February 24th, 2025.
- [21029] open_zeppelin_taiko_protocol_audit_june_2024.pdf — matched: Extracted all contracts from the Scope section (Phases 1,2,3) and the file listings. The audit date is from the cover page: 'June 19, 2024'.
- [21030] open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf — no match: All contracts listed in the Scope section of the audit report.
- [21031] open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf — matched: Extracted all contracts from the Scope section file listing. Audit date from cover page.
- [21032] quill_audits_taiko_smart_contract_audit_report.pdf — matched: Extracted contract names from audit report scope and findings. Audit date inferred from 'February, 2024' on cover and last page, using last day of month.
- [21033] sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf — matched: Scope explicitly lists all Solidity files in directories: 4844/, bridge/, common/, L1/, L2/, libs/, signal/, thirdparty/, tokenvaults/. Excludes OpenZeppelin dependencies. Audit date from cover page: 'February, 2024' -> last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena-2024-03-taiko-final-report.md | TaikoL2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | LibProving | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | LibVerifying | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | ERC20Airdrop2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | AssignmentHook | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | LibProposing | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | TimelockTokenPool | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | LibDepositing | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | TaikoL1 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | Bridge | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd60247...ddd8ec` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena-2024-03-taiko-final-report.md | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282...4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena-2024-03-taiko-final-report.md | USDCAdapter | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | TaikoToken | own contract | 0x10dea6… (selected) `0x10dea6...54d800` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena-2024-03-taiko-final-report.md | EssentialContract | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | AddressResolver | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | GuardianProver | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | MainnetTierProvider | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | TestnetTierProvider | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | PEMCertChainLib | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | SgxVerifier | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | AutomataDcapV3Attestation | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | Lib1559Math | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | LibSignals | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24...35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena-2024-03-taiko-final-report.md | IBridgedERC20 | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | IMessageInvocable | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | ITierProvider | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | IAddressManager | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | IHook | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | ISignalService | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | ITaikoL1 | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | LibTiers | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | TaikoData | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | IPEMCertChainLib | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | TCBInfoStruct | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | X509DateUtils | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | ECDSA | unmatched — not counted | — | referenced in findings | no |
| halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282...4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf | TaikoWrapper | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf | ForcedInclusionStore | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf | TaikoInbox | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | ITaikoL1 | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | StandardProposalCondition | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | TaikoDaoFactory | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | proxy | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | EmergencyMultisigPluginSetup | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | MultisigPluginSetup | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | OptimisticTokenVotingPluginSetup | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | DelegationWall | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | EmergencyMultisig | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | EncryptionRegistry | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | Multisig | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | OptimisticTokenVotingPlugin | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | SignerList | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Bridge | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd60247...ddd8ec` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IBridge | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | AddressManager | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | AddressResolver | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | EssentialContract | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IAddressManager | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IAddressResolver | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ITaikoL1 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoData | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoErrors | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoEvents | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoL1 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoToken | own contract | 0x10dea6… (selected) `0x10dea6...54d800` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoGovernor | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoTimelockController | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | AssignmentHook | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IHook | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibDepositing | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibProposing | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibProving | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibUtils | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibVerifying | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | GuardianProver | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Guardians | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | DevnetTierProvider | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ITierProvider | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | MainnetTierProvider | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TestnetTierProvider | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | CrossChainOwned | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Lib1559Math | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoL2 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoL2EIP1559Configurable | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Lib4844 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibAddress | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibMath | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibTrieProof | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ISignalService | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibSignals | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24...35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TimelockTokenPool | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ERC20Airdrop | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | MerkleClaimable | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ExcessivelySafeCall | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Bytes | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | RLPReader | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | RLPWriter | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | MerkleTrie | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | SecureMerkleTrie | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibFixedPointMath | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BaseNFTVault | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BaseVault | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedERC1155 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedERC20 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedERC20Base | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedERC721 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ERC1155Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xaf1459...881702` — deployed 2024-05-01 11:03:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282...4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ERC721Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0b470d...f419aa` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IBridgedERC20 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibBridgedToken | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | USDCAdapter | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | GuardianVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | SgxVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | DelegateOwner | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | QuotaManager | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x91f671...22f29e` — deployed 2024-05-13 08:27:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedTaikoToken | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibBonds | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibData | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibProposing | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibProving | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibUtils | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibVerifying | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | TaikoData | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | TaikoL1 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | ComposeVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | TeeAnyVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | ZkAndTeeVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | ZkAnyVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | Lib1559Math | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | TaikoL2 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IBondManager | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | ICodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IForcedInclusionStore | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IInbox | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IProverWhitelist | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | Codec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | Inbox | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | ProverWhitelist | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibBonds | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibBlobs | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibForcedInclusion | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibHashOptimized | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibInboxSetup | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibPackUnpack | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibProposeInputCodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibProposedEventCodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibProveInputCodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibTransitionCodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | MainnetInbox | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | PreconfWhitelist | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IProofVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibPublicInput | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | Risc0Verifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | SP1Verifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | SgxVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | ComposeVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | Anchor | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | AnchorForkRouter | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | BondManager | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IBondProcessor | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | ForkRouter | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24...35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | Bridge | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd60247...ddd8ec` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282...4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | ERC721Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0b470d...f419aa` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | ERC1155Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xaf1459...881702` — deployed 2024-05-01 11:03:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | BridgedERC721 | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | BridgedERC1155 | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24...35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | OwnerUUPSUpgradable | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | AddressManager | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | EssentialContract | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | LibAddress | unmatched — not counted | — | mentioned in findings | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | Bridge | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd60247...ddd8ec` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24...35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | SgxVerifier | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282...4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibProposing | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | AssignmentHook | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibProving | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoL1 | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibVerifying | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoL2 | unmatched — not counted | — | listed in scope directories: L2/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | BridgedERC20Base | unmatched — not counted | — | listed in scope directories: tokenvaults/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibBytesUtils | unmatched — not counted | — | listed in scope directories: thirdparty/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | Lib4844 | unmatched — not counted | — | listed in scope directories: 4844/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoTimelockController | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | PseZkVerifier | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | Guardians | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoGovernor | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoA6TierProvider | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | AddressManager | unmatched — not counted | — | listed in scope directories: common/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibDepositing | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibMerkleTrie | unmatched — not counted | — | listed in scope directories: thirdparty/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibRLPReader | unmatched — not counted | — | listed in scope directories: thirdparty/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibUint512Math | unmatched — not counted | — | listed in scope directories: thirdparty/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | ERC1155Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xaf1459...881702` — deployed 2024-05-01 11:03:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | ERC721Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0b470d...f419aa` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | AuthorizableContract | unmatched — not counted | — | listed in scope directories: common/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | EssentialContract | unmatched — not counted | — | listed in scope directories: common/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | OwnerUUPSUpgradable | unmatched — not counted | — | listed in scope directories: common/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | AddressResolver | unmatched — not counted | — | listed in scope directories: common/ | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xef9eaa...65fbaa` | MainnetSharedAddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 23 own (21 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 184 unmatched
- Matched-own operational status: 23 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: unique_name=23

Zero-match audit list:

- [21028] halborn-taiko-dao-contract-audit.pdf
- [21030] open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf

Fork inheritance lineage and inherited audits are included when available.
