# Agentic Audit Brief: The Idols

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: The Idols (`the-idols`)
- Website: [https://www.theidols.io](https://www.theidols.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- Coverage basis: 3/5 confirmed own live verified implementations (60.0%); conservative 60.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,243,702.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for The Idols. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum. Structural roles: 4 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), unclassified (1)
- Contract kinds: contract (5)
- Detected standards: ownable (3), erc165 (1), erc20 (1), erc721 (1)
- Frameworks: openzeppelin (4), foundry (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- IdolMain (`0x439cac...d17094`, chain 1)
- IdolMarketplace (`0x0dd5a3...ea29e7`, chain 1)
- RewardsCollector (`0x7d624c...61256a`, chain 1)
- VirtueToken (`0x9416ba...86b863`, chain 1)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/5 (60.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/5
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 3 | 60.0% | 2022-03 |
| WhiteHatDAO | Tier 2 | 3 | 60.0% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| IdolMain | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258653 | `0x439cac...d17094` | ✅ Audited |
| IdolMarketplace | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258652 | `0x0dd5a3...ea29e7` | ✅ Audited |
| VirtueToken | token | project_anchor | own_supporting | 0 | ethereum | unit-258655 | `0x9416ba...86b863` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RewardsCollector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258654 | `0x7d624c...61256a` | ⚠️ Unaudited |
| VirtueEthRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258656 | `0xc73b93...9b7baf` | ⚠️ Unaudited |

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
| [spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf](https://4130580353-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fba7s5jnnrOzcoSBMQAGq%2Fuploads%2FJc6W2sm0sGnJihyrsnQ6%2FCertik%20-%20The%20Idols%20NFT.pdf) | CertiK | Audit | 2022-03 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 3 | high |
| [spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf](https://4130580353-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fba7s5jnnrOzcoSBMQAGq%2Fuploads%2FaHFdiiTIbOAfE09s9boc%2FThe%20Idols%20Audit%20(WhiteHatDAO).pdf) | WhiteHatDAO | Audit | 2022-02 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21041] spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf — matched: All six contracts listed in the Audit Scope table with file paths and SHA256 checksums.
- [21042] spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf — matched: All 10 contracts listed in the Project Scope table are in scope. Audit date is 23/02/2022 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf | IdolMain | own contract | IdolMain (selected) `0x439cac...d17094` — deployed 2022-03-02 03:24:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf | IdolMarketplace | own contract | IdolMarketplace (selected) `0x0dd5a3...ea29e7` — deployed 2022-03-15 00:12:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf | IdolMintContract | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf | VirtueRewards | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf | VirtueStaking | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf | VirtueToken | own contract | VirtueToken (selected) `0x9416ba...86b863` — deployed 2022-03-02 03:28:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | idolMain | own contract | IdolMain (selected) `0x439cac...d17094` — deployed 2022-03-02 03:24:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | idolmarketplace | own contract | IdolMarketplace (selected) `0x0dd5a3...ea29e7` — deployed 2022-03-15 00:12:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | idolMintContract | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | VirtueRewards | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | VirtueStaking | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | VirtueToken | own contract | VirtueToken (selected) `0x9416ba...86b863` — deployed 2022-03-02 03:28:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | ICurvePool | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | IIdolMain | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | IIdolMarketplace | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | IRewards | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7d624c...61256a` | RewardsCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc73b93...9b7baf` | VirtueEthRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=6

Fork inheritance lineage and inherited audits are included when available.
