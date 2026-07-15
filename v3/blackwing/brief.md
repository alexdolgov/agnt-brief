# Agentic Audit Brief: Blackwing

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Blackwing (`blackwing`)
- Website: [https://blackwing.fi/](https://blackwing.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum
- Contract surface: 39 unique implementations (39 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $768,964.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Blackwing. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, bsc, ethereum. Structural roles: 5 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: accesscontrol (3), erc165 (3), erc20 (2), ownable (1), pausable (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 4

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 5; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 37 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 34
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 39
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlackwingNoopDeployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-230401 | `0x3b7df0...b1c04f` | ⚠️ Unaudited |
| BlackwingNoopDeployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-230424 | `0x3b7df0...b1c04f` | ⚠️ Unaudited |
| BlackwingVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa92299...fab37d` | ⚠️ Unaudited |
| BlackwingVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230411 | `0xc6ade8...05dd09` | ⚠️ Unaudited |
| BlackwingVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-230433 | `0xd00789...bf4514` | ⚠️ Unaudited |
| BlackwingVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230427 | `0xc6ade8...05dd09` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x010bd3...845ec7` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230398 | `0x10b939...a21517` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230399 | `0x28d6f9...76477e` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230400 | `0x33f0d2...308cb7` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230402 | `0x418d54...1aaf9e` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230403 | `0x533a3a...4fe332` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230404 | `0x5635b0...298aef` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230405 | `0x81a3b8...a8be22` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230406 | `0x9a5971...b3a783` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230407 | `0x9eede5...cefcdf` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230408 | `0xa45116...08fbfe` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230409 | `0xb943bd...846c86` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230410 | `0xbf1253...ddeaee` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230412 | `0xc74615...d0d4bd` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230413 | `0xc7fa9a...4ea306` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230414 | `0xc912b8...79ad7e` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230415 | `0xc9fb68...2b1a16` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230416 | `0xcfd902...7263a3` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230417 | `0xd13dfb...092f45` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230419 | `0xd821b5...f27098` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230420 | `0xdcfe7c...d19b2e` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230421 | `0xf19e65...2d0ae5` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230422 | `0xf59ab8...4e3359` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-230431 | `0x1004dd...f32c12` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-230432 | `0xa767c9...3c0350` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230423 | `0x27ea06...2a46ec` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230425 | `0x7ae943...fe7cc3` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230426 | `0xb943bd...846c86` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230430 | `0xe83302...e48218` | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-230418 | `0xd81036...29eab4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230434 | `0x761b2c...efb78f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230428 | `0xd18c3f...f3d778` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230429 | `0xd2e23b...e437b6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ottersec-evm-vault.pdf](https://raw.githubusercontent.com/ferumlabs/public-contracts/main/audits/ottersec-evm-vault.pdf) | OtterSec | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [zellic-evm-vault.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/ferumlabs/public-contracts/main/audits/zellic-evm-vault.pdf) | Zellic | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [ottersec.pdf](https://raw.githubusercontent.com/ferumlabs/evm-contracts/main/audits/ottersec.pdf) | OtterSec | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [zellic.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/ferumlabs/evm-contracts/main/audits/zellic.pdf) | Zellic | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21345] ottersec-evm-vault.pdf — no match: The scope section describes the program as 'blackwing-EVM-contracts' but does not list individual contract files. Contract names were inferred from findings: BlackwingVault (main contract) and VaultToken (token contract). No other contracts explicitly named.
- [21346] zellic-evm-vault.pdf — no match: Scope section lists three Solidity files: vault.sol, vault_token.sol, and deployer/aave_deployer.sol. Audit date is February 29, 2024 from cover page.
- [21347] ottersec.pdf — no match: Scope section describes the program 'blackwing-EVM-contracts' but does not list individual contract files. Contract names extracted from findings: BlackwingVault and VaultToken.
- [21348] zellic.pdf — no match: Scope section lists three Solidity files: vault.sol, vault_token.sol, and deployer/aave_deployer.sol. Audit date is February 29, 2024 from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ottersec-evm-vault.pdf | BlackwingVault | unmatched — not counted | — | Referenced in findings OS-FRM-ADV-00 and OS-FRM-ADV-01 as the contract containing deposit and withdraw functions. | no |
| ottersec-evm-vault.pdf | VaultToken | unmatched — not counted | — | Mentioned in general finding OS-FRM-SUG-00 as a token created within the system. | no |
| zellic-evm-vault.pdf | vault.sol | unmatched — not counted | — | listed in scope section | no |
| zellic-evm-vault.pdf | vault_token.sol | unmatched — not counted | — | listed in scope section | no |
| zellic-evm-vault.pdf | aave_deployer.sol | unmatched — not counted | — | listed in scope section | no |
| ottersec.pdf | BlackwingVault | unmatched — not counted | — | mentioned in findings as containing deposit and withdraw functions | no |
| ottersec.pdf | VaultToken | unmatched — not counted | — | mentioned in findings as created within BlackwingVault | no |
| zellic.pdf | vault.sol | unmatched — not counted | — | listed in scope section | no |
| zellic.pdf | vault_token.sol | unmatched — not counted | — | listed in scope section | no |
| zellic.pdf | aave_deployer.sol | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, medium=2
- Match method counts: n/a

Zero-match audit list:

- [21345] ottersec-evm-vault.pdf
- [21346] zellic-evm-vault.pdf
- [21347] ottersec.pdf
- [21348] zellic.pdf

Fork inheritance lineage and inherited audits are included when available.
