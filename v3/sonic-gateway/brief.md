# Agentic Audit Brief: Sonic Gateway

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Sonic Gateway (`sonic-gateway`)
- Website: [https://gateway.soniclabs.com/ethereum/sonic/s](https://gateway.soniclabs.com/ethereum/sonic/s)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sonic
- Contract surface: 20 unique implementations (20 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $35,594,379.80
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sonic Gateway. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across sonic. Structural roles: 3 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (3)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xff4cd89f549432c312c497628748d4d76ac180f6`, chain 146)
- ERC1967Proxy (`0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7`, chain 146)
- ERC1967Proxy (`0x9ef7629f9b930168b76283add7120777b3c895b3`, chain 146)
- MessageBus (`0xb5b371b75f9850ddd6ccb6c436db54972a925308`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 4 of 20 unique; 16 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Bridge | operational_periphery | project_anchor | own_supporting | 1 | sonic | unit-255286 | `0x9ef7629f9b930168b76283add7120777b3c895b3` | ⚠️ Unaudited |
| MessageBus | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-255284 | `0xb5b371b75f9850ddd6ccb6c436db54972a925308` | ⚠️ Unaudited |
| UpdateManager | governance | project_anchor | own_supporting | 1 | sonic | unit-255287 | `0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x039e2fb66102314ce7b64ce5ce3e5183bc94ad38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x0b3fe0c10c050270a9bc34271987989b6cf2107c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x1071405a4736535c545580064039a235827ee6d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x12727d4169a42a9b5e3ecb11a6d2c95553d3f447` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x134e4c207ad5a13549de1ebf8d43c1f49b00ba94` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x29219dd400f2bf60e5a23d13be72b486d4038894` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x3561607590e28e0848ba3b67074c676d6d1c9953` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x391071fe567d609e4af9d32de726d4c33679c7e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x50c42deacd8fc9773493ed674b675be577f2634b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x6047828dc181963ba44974801ff68e538da5eaf9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x836664b0c0cb29b7877bccf94159cc996528f2c3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xca11bde05977b3631167028862be2a173976ca11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xd2f1e904daf7446686f8057b7dfeb068c75d29a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xe34e6851a4a3763e1d27aa7ac5980d2d33c2d315` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xe715cba7b5ccb33790cebff1436809d36cb17e57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xfc00face00000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-255285 | `0xff4cd89f549432c312c497628748d4d76ac180f6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [fantom-audit-first.pdf](https://github.com/Fantom-foundation/tokensale/blob/master/audits/fantom-audit-first.pdf) | unknown | Audit | 2018-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [fantom-audit-second.pdf](https://github.com/Fantom-foundation/tokensale/blob/master/audits/fantom-audit-second.pdf) | unknown | Audit | 2018-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11677] fantom-audit-first.pdf — no match: All contracts are in FantomToken.sol, listed explicitly in the Audit Summary section.
- [11678] fantom-audit-second.pdf — no match: All contracts are in FantomToken.sol; date is June 2018 (month only, last day used).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| fantom-audit-first.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | Utils | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | Owned | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | Wallet | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | ERC20Interface | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | ERC20Token | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | LockSlots | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | FantomIcoDates | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | FantomToken | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | Utils | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | Owned | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | Wallet | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | ERC20Interface | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | ERC20Token | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | LockSlots | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | FantomIcoDates | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | FantomToken | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x9ef7629f9b930168b76283add7120777b3c895b3` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb5b371b75f9850ddd6ccb6c436db54972a925308` | MessageBus | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7` | UpdateManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 18 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [11677] fantom-audit-first.pdf
- [11678] fantom-audit-second.pdf

Fork inheritance lineage and inherited audits are included when available.
