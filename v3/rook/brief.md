# Agentic Audit Brief: Rook

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Rook (`rook`)
- Website: [https://keeperdao.com/](https://keeperdao.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,219,064.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Rook in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4c8cc2...d436b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x82151c...bef3b8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [peckshield_final.pdf](http://web.archive.org/web/20201117220335/https://github.com/keeperdao/docs/blob/master/audits/peckshield_final.pdf) | PeckShield | Audit | 2020-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [quantstamp_draft.pdf](http://web.archive.org/web/20201117220334/https://github.com/keeperdao/docs/blob/master/audits/quantstamp_draft.pdf) | Quantstamp | Audit | 2020-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf](http://web.archive.org/web/20221212181643/https://github.com/rookprotocol/docs/blob/master/audits/PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf) | PeckShield | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [PeckShield-kCompound.pdf](http://web.archive.org/web/20221212174138/https://github.com/rookprotocol/docs/blob/master/audits/PeckShield-kCompound.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Quantstamp-kCompound.pdf](http://web.archive.org/web/20221212181221/https://github.com/rookprotocol/docs/blob/master/audits/Quantstamp-kCompound.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [KeeperDAO Liquidity Pool and HidingVault - Report.pdf](http://web.archive.org/web/20210805222729/https://github.com/keeperdao/docs/blob/master/audits/KeeperDAO%20Liquidity%20Pool%20and%20HidingVault%20-%20Report.pdf) | unspecified | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [Manual audit seed](http://web.archive.org/web/20221212172733/https://github.com/rookprotocol/docs/tree/master/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21327] peckshield_final.pdf — no match: No explicit scope section; contract names extracted from findings targets and file paths in code snippets.
- [21328] quantstamp_draft.pdf — no match: No explicit scope section; contracts inferred from findings and test output. Audit date from changelog: 2020-04-21.
- [21329] PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf — no match: No explicit scope table; contracts extracted from findings targets.
- [21330] PeckShield-kCompound.pdf — no match: The report explicitly lists KComptroller, CompoundVars, JITU, and KCompoundPosition as targets in findings. No other contracts are mentioned as in scope. The audit date is clearly stated on the cover page and in the document properties.
- [21331] Quantstamp-kCompound.pdf — no match: Extracted contracts from scope, findings, file signatures, and code coverage table. Audit date from revised report date (2021-05-04).
- [21332] KeeperDAO Liquidity Pool and HidingVault - Report.pdf — no match: Extracted contract names from scope, findings, file signatures, and code coverage sections. Audit date from cover page.
- [24474] Manual audit seed — no match: The provided text is a GitHub directory listing of audit reports, not the actual audit report content. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| peckshield_final.pdf | KToken | unmatched — not counted | — | Target in findings PVE-001, PVE-003 | no |
| peckshield_final.pdf | LiquidityPoolV1 | unmatched — not counted | — | Target in findings PVE-002, PVE-003, PVE-004, PVE-007, PVE-008 | no |
| peckshield_final.pdf | MarketContractProxy | unmatched — not counted | — | Target in findings PVE-005, PVE-006 | no |
| quantstamp_draft.pdf | CompoundKeeper | unmatched — not counted | — | mentioned in findings QSP-2, QSP-3, QSP-4, QSP-5, QSP-6, QSP-10, and test output | no |
| quantstamp_draft.pdf | CoreKeeper | unmatched — not counted | — | mentioned in test output as CoreKeeperV1 | no |
| quantstamp_draft.pdf | KToken | unmatched — not counted | — | mentioned in findings QSP-7 and test output | no |
| quantstamp_draft.pdf | FlashLoanReceiver | unmatched — not counted | — | mentioned in findings QSP-3, QSP-10 and test output | no |
| quantstamp_draft.pdf | KeeperRoles | unmatched — not counted | — | mentioned in finding QSP-8 | no |
| quantstamp_draft.pdf | Compound | unmatched — not counted | — | mentioned in finding QSP-11 | no |
| PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf | KRoles | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf | CoordinationPaymentChannels | unmatched — not counted | — | Target in findings PVE-002 and PVE-003 | no |
| PeckShield-kCompound.pdf | KComptroller | unmatched — not counted | — | Listed as target in findings PVE-001, PVE-004, PVE-005, PVE-008; described as a gateway contract in the report. | no |
| PeckShield-kCompound.pdf | CompoundVars | unmatched — not counted | — | Listed as target in finding PVE-002; described as protocol-wide registry. | no |
| PeckShield-kCompound.pdf | JITU | unmatched — not counted | — | Listed as target in finding PVE-007; described as gateway contract for users. | no |
| PeckShield-kCompound.pdf | KCompoundPosition | unmatched — not counted | — | Mentioned in findings PVE-006 and PVE-007; described as managing compound positions. | no |
| Quantstamp-kCompound.pdf | CompoundVars | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | KCompound | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | CompoundMigrator | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | KCompoundPosition | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | KComptroller | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | JITU | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | KFactory | unmatched — not counted | — | listed in scope (code coverage table) | no |
| Quantstamp-kCompound.pdf | Interfaces | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | Tokens | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | Comptroller | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | Exponential | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | CToken | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | ComptrollerErrorReporter | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | LiquidityPool | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | HidingVaultNFT | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | JITUCore | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | JITUCompound | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | KCompound | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | HidingVault | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | Proxy | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | LibHidingVault | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | IJITUCompound | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | LibCompound | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | LibCToken | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | IKCompound | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | BorrowerProxy | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | CanReclaimTokens | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | KRoles | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | Tokens | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | GelatoJITU | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | Gelatofied | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | MockKCompound | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | Compound | unmatched — not counted | — | listed in code coverage | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 48 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=3
- Match method counts: n/a

Zero-match audit list:

- [21327] peckshield_final.pdf
- [21328] quantstamp_draft.pdf
- [21329] PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf
- [21330] PeckShield-kCompound.pdf
- [21331] Quantstamp-kCompound.pdf
- [21332] KeeperDAO Liquidity Pool and HidingVault - Report.pdf
- [24474] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
