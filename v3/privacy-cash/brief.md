# Agentic Audit Brief: Privacy Cash

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 10 (0 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Privacy Cash (`privacy-cash`)
- Website: [https://privacycash.org/](https://privacycash.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 15 unique implementations (25 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,273,358.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Privacy Cash. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across base, ethereum. Structural roles: 6 unclassified, 2 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: unclassified (6), infra (2)
- Contract kinds: contract (8)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- UnnamedContract (`0x44eb9939cfde7c394f1632c6890191d695f0a3ce`, chain 8453)
- UnnamedContract (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- ERC1967Proxy (`0x77a10ae3e513c2d73d73eb52212c6918c8830dd0`, chain 1)
- ERC1967Proxy (`0xc88f4df2b6eddd6b6bdf95a0177f50c90fa7527f`, chain 1)
- ERC1967Proxy (`0x7f673790c08ddf27c0aa6fa9526ccc8daab081ec`, chain 8453)
- ERC1967Proxy (`0xe91dd4ab03909f5ceb87f42b4308b222995a905b`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 7 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 8 of 15 unique; 7 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 15
- Raw deployments: 25
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 8 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERCPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251954 | 2 deployments: ethereum `0x803db1b37e3bb94d65e42f3dc886614587583958`; ethereum `0xc88f4df2b6eddd6b6bdf95a0177f50c90fa7527f` | ⚠️ Unaudited |
| ERCPool | unknown | project_anchor | own_supporting | 1 | base | unit-251956 | 2 deployments: base `0x6b5365cf6118bceabe41b5acff0b20e8f4447c9a`; base `0xe91dd4ab03909f5ceb87f42b4308b222995a905b` | ⚠️ Unaudited |
| EtherPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251955 | 2 deployments: ethereum `0x77a10ae3e513c2d73d73eb52212c6918c8830dd0`; ethereum `0xec5266c9e44631e1ba22fd6377c38130c1f3b738` | ⚠️ Unaudited |
| EtherPool | unknown | project_anchor | own_supporting | 1 | base | unit-251957 | 2 deployments: base `0x7f673790c08ddf27c0aa6fa9526ccc8daab081ec`; base `0xa9cefead8d2f343b2c8c561e903378ede899ecdd` | ⚠️ Unaudited |
| EtherPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xbcffce41652093264d0807e2e834aff255982c98`; base `0xfee24cf58d2f74fa9b01d715e342d8462ac832a1` | ⚠️ Unaudited |
| Verifier2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x9926a40b0879b36f9586c4285f0fae597bd56313`; ethereum `0xbcffce41652093264d0807e2e834aff255982c98`; ethereum `0xfee24cf58d2f74fa9b01d715e342d8462ac832a1`; base `0x41187a79c57e9143b1f6c4aa7e16bf0e07ff7c6f`; base `0x8707551c52f390a262ad796fab8d2477d56dabd0`; base `0xe24f4c1ae704bd968fb59d470d73f6066d225b7c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d4fe6c99e9637460c8f9fde052165c9e5d3106d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22d8509e7af58b1eafb311f8f76e81dc3a391f77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251949 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251950 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04559676cbdfea9f849f6207f9a7947c3288d2e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251951 | `0x44eb9939cfde7c394f1632c6890191d695f0a3ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251952 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb0c7f576b7bdaa8f2a119cb295076acd0c9013f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf48b36221e4be8b385617fb24a0842068524e9ac` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Accretion Audit Report (USDC).pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/Accretion%20Audit%20Report%20(USDC).pdf) | Accretion | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [HashCloak Audit Report (SOL+SPL).pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/HashCloak%20Audit%20Report%20(SOL%2BSPL).pdf) | HashCloak | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Kriko Audit Report (SPL).pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/Kriko%20Audit%20Report%20(SPL).pdf) | Kriko | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Sherlock Audit Report (USDC + SOL).pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/Sherlock%20Audit%20Report%20(USDC%20%2B%20SOL).pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Veridise Audit Report (USDC+SOL).pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/Veridise%20Audit%20Report%20(USDC%2BSOL).pdf) | Veridise | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Zigtur Audit Report (USDC + SPL).pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/Zigtur%20Audit%20Report%20(USDC%20%2B%20SPL).pdf) | Zigtur | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [accretion_audit_report_v1.pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/accretion_audit_report_v1.pdf) | Accretion | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [hashcloak_audit_v1.pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/hashcloak_audit_v1.pdf) | HashCloak | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [kriko_audit_v1.pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/kriko_audit_v1.pdf) | Kriko | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [zigtur_audit_v1.pdf](https://github.com/Privacy-Cash/privacy-cash/blob/main/audits/zigtur_audit_v1.pdf) | Zigtur | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14293] Accretion Audit Report (USDC).pdf — no match: The audit scope is a single program (zkcash) in the Privacy Cash repository. No other contracts are listed in scope.
- [14294] HashCloak Audit Report (SOL+SPL).pdf — no match: Extracted contract names from scope section listing files in scope: anchor/programs/*, circuits/*, and privacy-cash-interface src/utils/*. Also extracted audit date from cover page: 'June 18th, 2026'.
- [14295] Kriko Audit Report (SPL).pdf — no match: The report mentions 'Privacy Cash' as the subject but does not list specific contract names or files in scope. No date found.
- [14296] Sherlock Audit Report (USDC + SOL).pdf — no match: Extracted contract/module names from file paths listed in scope. Audit date from 'Date Audited: November13-November17,2025' using end date.
- [14297] Veridise Audit Report (USDC+SOL).pdf — no match: Scope section 3.3 lists 8 source files. Audit date is November 10, 2025 from cover page.
- [14298] Zigtur Audit Report (USDC + SPL).pdf — no match: Scope section lists 9 source files. No Solidity contracts; all are TypeScript/Anchor files. Audit date from cover page.
- [14299] accretion_audit_report_v1.pdf — no match: The audit report covers a single program called 'Privacy Cash' (Solana program). No individual contract names are provided beyond the program name. The date is from the cover page.
- [14300] hashcloak_audit_v1.pdf — no match: Extracted contract names from scope section and findings. The scope includes files from privacy-cash and privacy-cash-interface repositories. encryption.ts is out-of-scope but referenced in findings.
- [14301] kriko_audit_v1.pdf — no match: The report is about a Solana program and ZK circuit, not smart contracts. No contract names were found.
- [14302] zigtur_audit_v1.pdf — no match: Scope section lists anchor/programs/* and circuits/*. Extracted contract names from findings: MerkleTreeAccount, TreeTokenAccount, GlobalConfig.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Accretion Audit Report (USDC).pdf | zkcash | unmatched — not counted | — | mentioned in findings as the program containing the audited code | no |
| HashCloak Audit Report (SOL+SPL).pdf | zkcash | unmatched — not counted | — | listed in scope as anchor/programs/* | no |
| HashCloak Audit Report (SOL+SPL).pdf | transaction.circom | unmatched — not counted | — | listed in scope as circuits/* | no |
| HashCloak Audit Report (SOL+SPL).pdf | utils.rs | unmatched — not counted | — | listed in scope as anchor/programs/* | no |
| HashCloak Audit Report (SOL+SPL).pdf | lib.rs | unmatched — not counted | — | listed in scope as anchor/programs/* | no |
| HashCloak Audit Report (SOL+SPL).pdf | encryption.ts | unmatched — not counted | — | listed in scope as part of privacy-cash-interface | no |
| HashCloak Audit Report (SOL+SPL).pdf | prover.ts | unmatched — not counted | — | listed in scope as part of privacy-cash-interface | no |
| HashCloak Audit Report (SOL+SPL).pdf | deposit.ts | unmatched — not counted | — | listed in scope as part of privacy-cash-interface | no |
| HashCloak Audit Report (SOL+SPL).pdf | withdraw.ts | unmatched — not counted | — | listed in scope as part of privacy-cash-interface | no |
| Kriko Audit Report (SPL).pdf | Privacy Cash | unmatched — not counted | — | The subject was the upgrade of Privacy Cash Solana program | no |
| Sherlock Audit Report (USDC + SOL).pdf | errors | unmatched — not counted | — | listed in scope | no |
| Sherlock Audit Report (USDC + SOL).pdf | groth16 | unmatched — not counted | — | listed in scope | no |
| Sherlock Audit Report (USDC + SOL).pdf | lib | unmatched — not counted | — | listed in scope | no |
| Sherlock Audit Report (USDC + SOL).pdf | merkle_tree | unmatched — not counted | — | listed in scope | no |
| Sherlock Audit Report (USDC + SOL).pdf | utils | unmatched — not counted | — | listed in scope | no |
| Sherlock Audit Report (USDC + SOL).pdf | keypair | unmatched — not counted | — | listed in scope | no |
| Sherlock Audit Report (USDC + SOL).pdf | merkleProof | unmatched — not counted | — | listed in scope | no |
| Sherlock Audit Report (USDC + SOL).pdf | transaction2 | unmatched — not counted | — | listed in scope | no |
| Sherlock Audit Report (USDC + SOL).pdf | transaction | unmatched — not counted | — | listed in scope | no |
| Veridise Audit Report (USDC+SOL).pdf | keypair.circom | unmatched — not counted | — | listed in scope section 3.3 | no |
| Veridise Audit Report (USDC+SOL).pdf | merkleProof.circom | unmatched — not counted | — | listed in scope section 3.3 | no |
| Veridise Audit Report (USDC+SOL).pdf | transaction.circom | unmatched — not counted | — | listed in scope section 3.3 | no |
| Veridise Audit Report (USDC+SOL).pdf | utils.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| Veridise Audit Report (USDC+SOL).pdf | errors.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| Veridise Audit Report (USDC+SOL).pdf | groth16.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| Veridise Audit Report (USDC+SOL).pdf | lib.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| Veridise Audit Report (USDC+SOL).pdf | merkle_tree.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| Zigtur Audit Report (USDC + SPL).pdf | lib.rs | unmatched — not counted | — | listed in scope | no |
| Zigtur Audit Report (USDC + SPL).pdf | config.ts | unmatched — not counted | — | listed in scope | no |
| Zigtur Audit Report (USDC + SPL).pdf | deposit.ts | unmatched — not counted | — | listed in scope | no |
| Zigtur Audit Report (USDC + SPL).pdf | depositSPL.ts | unmatched — not counted | — | listed in scope | no |
| Zigtur Audit Report (USDC + SPL).pdf | exportUtils.ts | unmatched — not counted | — | listed in scope | no |
| Zigtur Audit Report (USDC + SPL).pdf | getUtxosSPL.ts | unmatched — not counted | — | listed in scope | no |
| Zigtur Audit Report (USDC + SPL).pdf | index.ts | unmatched — not counted | — | listed in scope | no |
| Zigtur Audit Report (USDC + SPL).pdf | constants.ts | unmatched — not counted | — | listed in scope | no |
| Zigtur Audit Report (USDC + SPL).pdf | withdrawSPL.ts | unmatched — not counted | — | listed in scope | no |
| accretion_audit_report_v1.pdf | Privacy Cash | unmatched — not counted | — | Listed in scope section as Item 1: Privacy Cash | no |
| hashcloak_audit_v1.pdf | transaction.circom | unmatched — not counted | — | listed in scope and findings | no |
| hashcloak_audit_v1.pdf | utils.rs | unmatched — not counted | — | listed in scope and findings | no |
| hashcloak_audit_v1.pdf | lib.rs | unmatched — not counted | — | listed in scope and findings | no |
| hashcloak_audit_v1.pdf | encryption.ts | unmatched — not counted | — | mentioned in findings (out-of-scope but referenced) | no |
| hashcloak_audit_v1.pdf | prover.ts | unmatched — not counted | — | listed in scope | no |
| hashcloak_audit_v1.pdf | deposit.ts | unmatched — not counted | — | listed in scope | no |
| hashcloak_audit_v1.pdf | withdraw.ts | unmatched — not counted | — | listed in scope | no |
| zigtur_audit_v1.pdf | MerkleTreeAccount | unmatched — not counted | — | mentioned in scope and findings | no |
| zigtur_audit_v1.pdf | TreeTokenAccount | unmatched — not counted | — | mentioned in scope and findings | no |
| zigtur_audit_v1.pdf | GlobalConfig | unmatched — not counted | — | mentioned in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x803db1b37e3bb94d65e42f3dc886614587583958` | ERCPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6b5365cf6118bceabe41b5acff0b20e8f4447c9a` | ERCPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x77a10ae3e513c2d73d73eb52212c6918c8830dd0` | EtherPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7f673790c08ddf27c0aa6fa9526ccc8daab081ec` | EtherPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 47 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, low=2
- Match method counts: n/a

Zero-match audit list:

- [14293] Accretion Audit Report (USDC).pdf
- [14294] HashCloak Audit Report (SOL+SPL).pdf
- [14295] Kriko Audit Report (SPL).pdf
- [14296] Sherlock Audit Report (USDC + SOL).pdf
- [14297] Veridise Audit Report (USDC+SOL).pdf
- [14298] Zigtur Audit Report (USDC + SPL).pdf
- [14299] accretion_audit_report_v1.pdf
- [14300] hashcloak_audit_v1.pdf
- [14301] kriko_audit_v1.pdf
- [14302] zigtur_audit_v1.pdf

Fork inheritance lineage and inherited audits are included when available.
