# Agentic Audit Brief: Scrub Money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Scrub Money (`scrub-money`)
- Website: [https://scrub.money](https://scrub.money)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, cronos, kava
- Contract surface: 32 unique implementations (41 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $7,205,604.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Scrub Money in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x199a0cd96065f50f9f7978c7bb47869503a9ed1e`, chain 2222)
- UnnamedContract (`0x3367716f07a85c04340b01d95b618d02c681be2e`, chain 2222)
- UnnamedContract (`0x471f79616569343e8e84a66f342b7b433b958154`, chain 2222)
- UnnamedContract (`0x59e38a5799b64fe17c5fab7e0e5396c15e2acb7b`, chain 2222)
- UnnamedContract (`0x67041094c4fc1492a1ab988fb8de0ab4a0a4a080`, chain 2222)
- UnnamedContract (`0x6eff7d2d494bc13949523e3504de1994a6325f0a`, chain 2222)
- UnnamedContract (`0x990e157fc8a492c28f5b50022f000183131b9026`, chain 2222)
- UnnamedContract (`0x9e334ce82f7659d2967c92a4a399ad694f63bbcf`, chain 2222)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 8 own, 23 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 8 of 32 unique; 24 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 32
- Raw deployments: 41
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
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

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x0db22b8424ebac5d073c09ff8975960bffdbd7bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x17f43ea72ddc8f369e3c838c17a7b9f3432a37d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x27344fcdeb8b4a2e0b1ad545065461314c330847` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x32aaaaadecbb11c474ddbd4c934523bcfecea8dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x3bf476788b951288dad71cadd3716a362ee88030` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x3d9e539fa44b970605658e25d18f816ce78c4007` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x44b4a1e8f34bb52ed39854ad218ff94d2d5b4800` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x49fb98f9b4a3183cd88e7a115144fdf00fa6fb95` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x4f61a3104eb671bd501b78fb49ed713803609bc0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x73a71b17178340bd952765d953ef3c747e110599` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x8cc728a1a35665e000b303eda9c1d774445e3d12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xaa22aebd60c9eb653a0ae0cb8b7367087a9b5dba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xd6597aa36dd90d7fccbd7b8a228f2d5cdc88ead0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xf2059ed015ec4ecc80f902d9fdbcd2a227bfe037` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xf6464c80448d6ec4deb7e8e5ec95b8eb768fbf69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | n/a | `0x0265920fe5b79d3c86802675664da335596c32bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kava | n/a | 10 deployments: kava `0x09d6561b3795ae237e42f7adf3dc83742e10a2e8`; kava `0x0db75ef798a12312afd98d1884577664f4dd4411`; kava `0x52b18024e084150e001a34be9c7a41706517d79f`; kava `0x7bff6c730da681df03364c955b165576186370bc`; kava `0x7f8ed7d31795dc6f5fc5f6685b11419674361501`; kava `0x83e315fc68f97eaff04468d05eb084c9ed36f649`; kava `0xa07dee8ff35fe2e2961a7e1006eada98e24ae82e`; kava `0xbd98813a2f43587ccec8c0489a5486d1f6ef9c50`; kava `0xc0608a81fe9850360b899d5efc9f34d1ccd58d55`; kava `0xea848151acb1508988e56ee7689f004df2b15ced` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-254275 | `0x199a0cd96065f50f9f7978c7bb47869503a9ed1e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | n/a | `0x1bd28625b1c5b0663e15af12c04cc9e319535875` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | n/a | `0x267a3b2d653fb058dab3a226a01b2f771dbfe88e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-254276 | `0x3367716f07a85c04340b01d95b618d02c681be2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | n/a | `0x38481fdc1af61e6e72e0ff46f069315a59779c65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-254277 | `0x471f79616569343e8e84a66f342b7b433b958154` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-254278 | `0x59e38a5799b64fe17c5fab7e0e5396c15e2acb7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | n/a | `0x5fc331f000094c3a9b53629cf9c47c2f93ab9722` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-254279 | `0x67041094c4fc1492a1ab988fb8de0ab4a0a4a080` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-254280 | `0x6eff7d2d494bc13949523e3504de1994a6325f0a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | n/a | `0x818ec0a7fe18ff94269904fced6ae3dae6d6dc0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | n/a | `0x846d925e7e81cb091492a7f3e0cb840565573572` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-254281 | `0x990e157fc8a492c28f5b50022f000183131b9026` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-254282 | `0x9e334ce82f7659d2967c92a4a399ad694f63bbcf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | n/a | `0xfa9343c3897324496a05fc75abed6bac29f8a40f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [scrub.finance/how-to-know-if-it-is-a-cryptocurrency-scam-or-not](https://scrub.finance/how-to-know-if-it-is-a-cryptocurrency-scam-or-not) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11659] scrub.finance/how-to-know-if-it-is-a-cryptocurrency-scam-or-not — no match: The provided text is not an audit report; it is a blog post about cryptocurrency scams. No contracts or audit scope are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [11659] scrub.finance/how-to-know-if-it-is-a-cryptocurrency-scam-or-not

Fork inheritance lineage and inherited audits are included when available.
