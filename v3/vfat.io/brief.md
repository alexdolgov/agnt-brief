# Agentic Audit Brief: vfat.io

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 10 (1 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: vfat.io (`vfat.io`)
- Website: [https://vfat.io/yield](https://vfat.io/yield)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $28,182,593.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for vfat.io. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across base. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1), solmate (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Automation (`0x1e33f2...77176b`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Ackee Blockchain | Tier 2 | 1 | 100.0% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Automation | unknown | project_anchor | own_supporting | 0 | base | unit-396343 | `0x1e33f2...77176b` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [reports.yaudit.dev/06-2023-Sickle](https://reports.yaudit.dev/06-2023-Sickle) | yAudit | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [reports.yaudit.dev/10-2023-Sickle-Update](https://reports.yaudit.dev/10-2023-Sickle-Update) | yAudit | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [reports.yaudit.dev/05-2024-Sickle-3](https://reports.yaudit.dev/05-2024-Sickle-3) | yAudit | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [reports.yaudit.dev/10-2024-Sickle-Strategies](https://reports.yaudit.dev/10-2024-Sickle-Strategies) | yAudit | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [reports.yaudit.dev/04-2025-Sickle](https://reports.yaudit.dev/04-2025-Sickle) | yAudit | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [reports.yaudit.dev/06-2024-Sickle-4](https://reports.yaudit.dev/06-2024-Sickle-4) | yAudit | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [reports.yaudit.dev/2026-02-vfat-router](https://reports.yaudit.dev/2026-02-vfat-router) | yAudit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [ackee-blockchain-vfat-sickle-report.pdf](https://github.com/Ackee-Blockchain/public-audit-reports/blob/master/2025/ackee-blockchain-vfat-sickle-report.pdf) | Ackee Blockchain | Audit | 2025-05 | aging | Direct | n/a | matched | 1 | 0 | 0 | 18 | n/a |
| [ackee-blockchain-vfat-farm-strategies-report.pdf](https://github.com/Ackee-Blockchain/public-audit-reports/blob/master/2025/ackee-blockchain-vfat-farm-strategies-report.pdf) | Ackee Blockchain | Audit | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 16 | n/a |
| [omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175](https://omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175) | Omniscia | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4584] reports.yaudit.dev/06-2023-Sickle — no match: Only the report title mentions 'Sickle' as the audited project, but no explicit scope section or contract listing is provided.
- [4585] reports.yaudit.dev/10-2023-Sickle-Update — no match: The provided text is a minimal page header with no scope section, contract names, or detailed content. Only the month/year 'October 2023' was found, interpreted as end of month.
- [4586] reports.yaudit.dev/05-2024-Sickle-3 — no match: Only the project name 'Sickle' is mentioned in the report title; no explicit scope section or contract file paths provided.
- [4587] reports.yaudit.dev/10-2024-Sickle-Strategies — no match: The provided text is a fragment of a webpage header with no contract names or scope details. The date 'October 2024' is inferred from the report title.
- [4588] reports.yaudit.dev/04-2025-Sickle — no match: The provided text is a navigation header with no scope section or contract names. Only the month/year 'April 2025' was found, interpreted as end of month.
- [4589] reports.yaudit.dev/06-2024-Sickle-4 — no match: Only the project name 'Sickle' is mentioned in the title; no explicit scope section or file paths provided.
- [4590] reports.yaudit.dev/2026-02-vfat-router — no match: Only the project name 'vFat Multiswap Router' is mentioned; no specific contract files or source files are listed in the provided text.
- [4591] ackee-blockchain-vfat-sickle-report.pdf — matched: No reason recorded
- [4592] ackee-blockchain-vfat-farm-strategies-report.pdf — no match: No reason recorded
- [4593] omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| reports.yaudit.dev/06-2023-Sickle | Sickle | unmatched — not counted | — | Report title: 'yAudit Reports Sickle June 2023' | no |
| reports.yaudit.dev/05-2024-Sickle-3 | Sickle | unmatched — not counted | — | Report title: 'Sickle 3' | no |
| reports.yaudit.dev/06-2024-Sickle-4 | Sickle | unmatched — not counted | — | Report title: 'Sickle 4' and description 'yAudit Reports' | no |
| reports.yaudit.dev/2026-02-vfat-router | vFat Multiswap Router | unmatched — not counted | — | listed in report title and header | no |
| ackee-blockchain-vfat-sickle-report.pdf | Admin | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | Automation | own contract | Automation (selected) `0x1e33f2...77176b` — deployed 2025-05-01 09:08:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ackee-blockchain-vfat-sickle-report.pdf | ConnectorRegistry | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | FeesLib | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | Multicall | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | NftSettingsLib | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | NftSettingsRegistry | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | NftTransferLib | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | NonDelegateMulticall | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | PositionSettingsLib | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | PositionSettingsRegistry | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | Sickle | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | SickleFactory | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | SickleMultisig | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | SickleRegistry | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | SickleStorage | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | SwapLib | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | TimelockAdmin | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-sickle-report.pdf | TransferLib | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | FarmStrategy | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | FeesLib | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | MultiFarmStrategy | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | NftFarmStrategy | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | NftZapLib | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | PositionSettingsRegistry | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | SickleFactory | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | SlipstreamGaugeConnector | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | SlipstreamNftConnector | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | StrategyModule | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | SweepStrategy | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | TransferLib | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | UniswapV3Connector | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | VelodromeGaugeRegistry | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | VelodromeRouterConnector | unmatched — not counted | — | — | no |
| ackee-blockchain-vfat-farm-strategies-report.pdf | ZapLib | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | AaveV2 | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | AaveV3 | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | AerodromeFinance | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | BalancerV2 | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | Compound | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | EqualizerExchange | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | FarmConnectors | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | LiquidityConnectors | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | MasterchefV2 | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | MasterchefV3 | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | Morpho | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | NuriExchange | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | Pancakeswap | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | Quickswap | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | RamsesExchange | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | Sickle | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | SickleContracts | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | Slipstream | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | Superchain | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | UniswapV2 | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | UniswapV3 | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | Velocore | unmatched — not counted | — | — | no |
| omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175 | VelodromeFinance | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 61 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=7
- Match method counts: unique_name=1

Zero-match audit list:

- [4584] reports.yaudit.dev/06-2023-Sickle
- [4585] reports.yaudit.dev/10-2023-Sickle-Update
- [4586] reports.yaudit.dev/05-2024-Sickle-3
- [4587] reports.yaudit.dev/10-2024-Sickle-Strategies
- [4588] reports.yaudit.dev/04-2025-Sickle
- [4589] reports.yaudit.dev/06-2024-Sickle-4
- [4590] reports.yaudit.dev/2026-02-vfat-router
- [4592] ackee-blockchain-vfat-farm-strategies-report.pdf
- [4593] omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175

Fork inheritance lineage and inherited audits are included when available.
