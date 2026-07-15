# Agentic Audit Brief: Hera Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Hera Finance (`hera-finance`)
- Website: [https://staking.hera.finance](https://staking.hera.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, metis
- Contract surface: 18 unique implementations (18 raw deployments)
- Coverage basis: 3/9 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,501,677.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hera Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, metis. Structural roles: 6 core, 2 supporting, 1 infra. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (6), supporting (2), infra (1)
- Contract kinds: contract (9)
- Detected standards: ownable (4), accesscontrol (2), erc165 (2), erc20 (1)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x250896...7762d8`, chain 1088)
- UnnamedContract (`0x852d1f...d1f383`, chain 1088)
- UnnamedContract (`0x9abb86...57500e`, chain 1088)
- UnnamedContract (`0x9c598d...74ddf6`, chain 1088)
- UnnamedContract (`0xb4801c...0a7127`, chain 1088)
- UnnamedContract (`0xd51732...9729bf`, chain 1088)
- UnnamedContract (`0x1bd717...9047e7`, chain 42161)
- UnnamedContract (`0x699127...f2e9df`, chain 42161)
- UnnamedContract (`0xce3759...356fd0`, chain 42161)
- GnosisSafeProxy (`0xe089a4...007995`, chain 1088)
- GnosisSafeProxy (`0xca0dfc...d96e6e`, chain 42161)
- HeraAggregatorV1 (`0xafcb08...deb24c`, chain 1088)
- HeraAggregatorV2 (`0x000000...fb183a`, chain 1088)
- HeraAggregatorV2 (`0x000000...fb183a`, chain 42161)
- HeraFeeSequencer (`0x000000...9fab15`, chain 1088)
- HeraPublicSaleV2 (`0x1a404c...1f19e1`, chain 1088)
- HeraSecurity (`0x6da631...b02225`, chain 1088)
- HeraToken (`0x6f0570...2c9dce`, chain 1088)

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/9 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 18 of 18 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/9
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HashEx | Tier 2 | 2 | 22.2% | 2022-10 |
| unknown | Tier 2 | 2 | 22.2% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| HeraAggregatorV1 | unknown | project_anchor | own_supporting | 0 | metis | unit-241973 | `0xafcb08...deb24c` | ✅ Audited |
| HeraFeeSequencer | unknown | project_anchor | own_supporting | 0 | metis | unit-241965 | `0x000000...9fab15` | ✅ Audited |
| HeraSecurity | unknown | project_anchor | own_supporting | 0 | metis | unit-241968 | `0x6da631...b02225` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | arbitrum | unit-241981 | `0xca0dfc...d96e6e` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | metis | unit-241976 | `0xe089a4...007995` | ⚠️ Unaudited |
| HeraAggregatorV2 | unknown | project_anchor | own_supporting | 0 | metis | unit-241964 | `0x000000...fb183a` | ⚠️ Unaudited |
| HeraAggregatorV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241977 | `0x000000...fb183a` | ⚠️ Unaudited |
| HeraPublicSaleV2 | unknown | project_anchor | own_supporting | 0 | metis | unit-241966 | `0x1a404c...1f19e1` | ⚠️ Unaudited |
| HeraToken | token | project_anchor | own_supporting | 0 | metis | unit-241969 | `0x6f0570...2c9dce` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-241967 | `0x250896...7762d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-241970 | `0x852d1f...d1f383` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-241971 | `0x9abb86...57500e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-241972 | `0x9c598d...74ddf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-241974 | `0xb4801c...0a7127` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-241975 | `0xd51732...9729bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241978 | `0x1bd717...9047e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241979 | `0x699127...f2e9df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241980 | `0xce3759...356fd0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf](https://468680357-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FRPd6E8y8uIj9QOgICwhl%2Fuploads%2FAYXuPbqH2kInNyfTsUcv%2FHera-AggregatorV2_audit-report.pdf) | HashEx | Audit | 2022-10 | stale | Direct | address | matched | 3 | 0 | 0 | 7 | high |
| [spaces/RPd6E8y8uIj9QOgICwhl/uploads/UXpADKAVfIgit4tFsFbq/Hera Aggregatorv1_audit.pdf](https://468680357-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FRPd6E8y8uIj9QOgICwhl%2Fuploads%2FUXpADKAVfIgit4tFsFbq%2FHera%20Aggregatorv1_audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [spaces/RPd6E8y8uIj9QOgICwhl/uploads/mILY1xtqsQZdQO7FcOjW/Hera Fee Organizer_audit.pdf](https://468680357-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FRPd6E8y8uIj9QOgICwhl%2Fuploads%2FmILY1xtqsQZdQO7FcOjW%2FHera%20Fee%20Organizer_audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Audits](https://docs.hera.finance/general/audits.md) | unknown | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 4 | medium |
| [hashex.org/audits/conducted-audits/319](https://hashex.org/audits/hera-aggregatorv2) | HashEx | Audit | 2022-10 | stale | Direct | address | matched | 2 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2409] spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf — matched: Contracts in scope are listed in section 2.2 (Contracts) and section 4 (Contracts). The audit date is October 2022, mapped to last day of month.
- [2410] spaces/RPd6E8y8uIj9QOgICwhl/uploads/UXpADKAVfIgit4tFsFbq/Hera Aggregatorv1_audit.pdf — matched: No reason recorded
- [2411] spaces/RPd6E8y8uIj9QOgICwhl/uploads/mILY1xtqsQZdQO7FcOjW/Hera Fee Organizer_audit.pdf — no match: No reason recorded
- [27045] Audits — matched: Extracted contract names from the active audit section for Hera Aggregator V2. No date found in the provided text.
- [27048] hashex.org/audits/conducted-audits/319 — matched: Extracted from the 'Contracts Checked' section of the audit report. The report lists 10 contracts/interfaces in scope. The audit completion date is 11 Oct 2022.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | HeraAggregatorV2 | ambiguous — not counted | HeraAggregatorV2 (alternative) `0x000000...fb183a` — deployed 2023-05-12 11:49:49+03 — liveness: live (current_address_book_code)<br>HeraAggregatorV2 (alternative) `0x000000...fb183a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | Queen | unmatched — not counted | — | listed in scope table and findings section C2 | no |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | HeraExecutor | own contract | 0x852d1f… (selected) `0x852d1f...d1f383` — deployed 2022-10-13 16:40:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | ExecutorManagement | unmatched — not counted | — | listed in scope table and findings section C4 | no |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | HeraERC20 | unmatched — not counted | — | listed in scope table and findings section C5 | no |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | HeraFeeSequencer | own contract | HeraFeeSequencer (selected) `0x000000...9fab15` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope table and findings section C7 | no |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope table and findings section C8 | no |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | StringUtil | unmatched — not counted | — | listed in scope table and findings section C9 | no |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf | HeraSecurity | own contract | HeraSecurity (selected) `0x6da631...b02225` — deployed 2022-10-05 15:45:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/UXpADKAVfIgit4tFsFbq/Hera Aggregatorv1_audit.pdf | HeraAggregatorV1 | own contract | HeraAggregatorV1 (selected) `0xafcb08...deb24c` — deployed 2022-03-28 16:05:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/RPd6E8y8uIj9QOgICwhl/uploads/mILY1xtqsQZdQO7FcOjW/Hera Fee Organizer_audit.pdf | HeraFeeOrganizer | unmatched — not counted | — | — | no |
| Audits | HeraAggregatorV2 | ambiguous — not counted | HeraAggregatorV2 (alternative) `0x000000...fb183a` — deployed 2023-05-12 11:49:49+03 — liveness: live (current_address_book_code)<br>HeraAggregatorV2 (alternative) `0x000000...fb183a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audits | HeraFeeSequencer | own contract | HeraFeeSequencer (selected) `0x000000...9fab15` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audits | HeraExecutor | unmatched — not counted | — | listed as passed audit result | no |
| Audits | ExecutorManagement | unmatched — not counted | — | listed as passed audit result | no |
| Audits | Queen | unmatched — not counted | — | listed as passed audit result | no |
| hashex.org/audits/conducted-audits/319 | HeraAggregatorV2Proxy | ambiguous — not counted | HeraAggregatorV2 (alternative) `0x000000...fb183a` — deployed 2023-05-12 11:49:49+03 — liveness: live (current_address_book_code)<br>HeraAggregatorV2 (alternative) `0x000000...fb183a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| hashex.org/audits/conducted-audits/319 | Queen | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/conducted-audits/319 | HeraExecutorProxy | own contract | 0x852d1f… (selected) `0x852d1f...d1f383` — deployed 2022-10-13 16:40:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/conducted-audits/319 | ExecutorManagement | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/conducted-audits/319 | HeraERC20Library | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/conducted-audits/319 | HeraFeeSequencer | own contract | HeraFeeSequencer (selected) `0x000000...9fab15` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/conducted-audits/319 | RevertReasonParserLibrary | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/conducted-audits/319 | RevertReasonForwarderLibrary | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/conducted-audits/319 | StringUtilLibrary | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/conducted-audits/319 | HeraSecurityAuthorization | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | `0x000000...fb183a` | HeraAggregatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x000000...fb183a` | HeraAggregatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x1a404c...1f19e1` | HeraPublicSaleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x6f0570...2c9dce` | HeraToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 17 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: address=4, unique_name=3

Zero-match audit list:

- [2411] spaces/RPd6E8y8uIj9QOgICwhl/uploads/mILY1xtqsQZdQO7FcOjW/Hera Fee Organizer_audit.pdf

Fork inheritance lineage and inherited audits are included when available.
