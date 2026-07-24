# Agentic Audit Brief: Xfai

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Xfai (`xfai`)
- Website: [https://app.xfai.com/](https://app.xfai.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: linea
- Contract surface: 18 unique implementations (25 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $891,262.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Xfai in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 18 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 18
- Raw deployments: 25
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| InfinityNFTPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x91612287fd53bedd253a89e3d9813423ea20aaec`; linea `0xb360a2e9ea74ca5fc0abb46fb4cc29867297a3c3` | ⚠️ Unaudited |
| UsdPlusTokenV3 | token | non_address_book | non_address_book_inventory (excluded) | 2 | linea | n/a | 2 deployments: linea `0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13`; linea `0xb79dd08ea68a908a97220c76d19a6aa9cbde4376` | ⚠️ Unaudited |
| XfaiINFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0xa155f12d3be29bf20b615e1e7f066ae9e3c5239a`; linea `0xca4ceca8750bf92373bab5448d75433372edc7f8`; linea `0xf85cf376ac0dc4c756e5ce7a538cd8a0b3b235fe` | ⚠️ Unaudited |
| XfaiLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x0db4a7a61762a42e56a31b0b844464d56934c540`; linea `0x59eaeb942af4b7025481e3ef46265c5dad50d315` | ⚠️ Unaudited |
| XfaiV0Core | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x8d58ee2d23f7920ea32e534aad8d6753c88bc01a`; linea `0xb7d1080d6cfa8f7a6aa6ee1dc4e21a2c4906c06e` | ⚠️ Unaudited |
| XfaiV0Periphery03 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x2205ebb740c7c98ed52cf7f0fc302eb8a4afd5a4`; linea `0x4e4a59f2a122f9b442ec39981758aa77db2c2f0d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2504ab8260217ca6c72132237086274f60a45f0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7dea1f358def15eafab3466b906eb6872fb89501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x84e88a4dc58d6e518b1f9f8c3d8a03f43eb58fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9a8aeb02b90b67e23469bb01ecab86f3512a77f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa5136ead459f0e61c99cec70fe8f5c24cf3eca26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xabbe925cf6913a5af177fb735dd817b02da0883f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xabc372a7182951c6282217f2f670f51ed4690996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb694ce4c96fb60db5ad8b25dff567c59f7a49a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb7702244270de655ea53d5e7bacc7a38c477b8f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd538be6e9026c13d130c9e17d509e69c8bb0ef33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd58bcb63b33d5f6984da687de2e5b8c61bb0c421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xed050813a98fcd658ee7a490b2b5925e04fcf5b2` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 18
- Live contracts: 0
- Unknown liveness contracts: 18
- Source-verified contracts: 10
- Currently scope-matched contracts retained as-is: 0
- Classification counts: contamination review=3, source verified unclassified=7, unverified unclassified=8

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| contamination review | InfinityNFTPeriphery<br>`0x91612287fd53bedd253a89e3d9813423ea20aaec` | non_address_book | unknown | unknown | verified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| contamination review | XfaiV0Core<br>`0x8d58ee2d23f7920ea32e534aad8d6753c88bc01a` | non_address_book | unknown | unknown | verified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| contamination review | XfaiV0Periphery03<br>`0x2205ebb740c7c98ed52cf7f0fc302eb8a4afd5a4` | non_address_book | unknown | unknown | verified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| source verified unclassified | InfinityNFTPeriphery<br>`0xb360a2e9ea74ca5fc0abb46fb4cc29867297a3c3` | non_address_book | unknown | unknown | verified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| source verified unclassified | XfaiINFT<br>`0xca4ceca8750bf92373bab5448d75433372edc7f8` | non_address_book | unknown | unknown | verified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| source verified unclassified | XfaiINFT<br>`0xf85cf376ac0dc4c756e5ce7a538cd8a0b3b235fe` | non_address_book | unknown | unknown | verified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| source verified unclassified | XfaiLibrary<br>`0x0db4a7a61762a42e56a31b0b844464d56934c540` | non_address_book | unknown | unknown | verified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| source verified unclassified | XfaiLibrary<br>`0x59eaeb942af4b7025481e3ef46265c5dad50d315` | non_address_book | unknown | unknown | verified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| source verified unclassified | XfaiV0Core<br>`0xb7d1080d6cfa8f7a6aa6ee1dc4e21a2c4906c06e` | non_address_book | unknown | unknown | verified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| source verified unclassified | XfaiV0Periphery03<br>`0x4e4a59f2a122f9b442ec39981758aa77db2c2f0d` | non_address_book | unknown | unknown | verified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| unverified unclassified | UnnamedContract<br>`0x2504ab8260217ca6c72132237086274f60a45f0f` | non_address_book | unknown | unknown | unverified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| unverified unclassified | UnnamedContract<br>`0x7dea1f358def15eafab3466b906eb6872fb89501` | non_address_book | unknown | unknown | unverified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| unverified unclassified | UnnamedContract<br>`0x84e88a4dc58d6e518b1f9f8c3d8a03f43eb58fd8` | non_address_book | unknown | unknown | unverified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| unverified unclassified | UnnamedContract<br>`0xa5136ead459f0e61c99cec70fe8f5c24cf3eca26` | non_address_book | unknown | unknown | unverified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| unverified unclassified | UnnamedContract<br>`0xabc372a7182951c6282217f2f670f51ed4690996` | non_address_book | unknown | unknown | unverified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| unverified unclassified | UnnamedContract<br>`0xb7702244270de655ea53d5e7bacc7a38c477b8f8` | non_address_book | unknown | unknown | unverified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| unverified unclassified | UnnamedContract<br>`0xd58bcb63b33d5f6984da687de2e5b8c61bb0c421` | non_address_book | unknown | unknown | unverified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |
| unverified unclassified | UnnamedContract<br>`0xed050813a98fcd658ee7a490b2b5925e04fcf5b2` | non_address_book | unknown | unknown | unverified | n/a | `0x1d3dc4b584bc687fb3c9adc1761858694728b1b3` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit.pdf](https://xfai.com/audit.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3227] audit.pdf — no match: All contracts listed in the 'SCOPE' section of the report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audit.pdf | InfinityNFTPeriphery | unmatched — not counted | — | listed in scope section | no |
| audit.pdf | XfaiFactory | unmatched — not counted | — | listed in scope section | no |
| audit.pdf | XfaiINFT | unmatched — not counted | — | listed in scope section | no |
| audit.pdf | XfaiPool | unmatched — not counted | — | listed in scope section | no |
| audit.pdf | XfaiV0Core | unmatched — not counted | — | listed in scope section | no |
| audit.pdf | XfaiV0Periphery01 | unmatched — not counted | — | listed in scope section | no |
| audit.pdf | xfETH | unmatched — not counted | — | listed in scope section | no |
| audit.pdf | TransferHelper | unmatched — not counted | — | listed in scope section | no |
| audit.pdf | XfaiLibrary | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [3227] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
