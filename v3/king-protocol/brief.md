# Agentic Audit Brief: King Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: King Protocol (`king-protocol`)
- Website: [https://kingprotocol.org/](https://kingprotocol.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, mantle, swellchain
- Contract surface: 7 unique implementations (7 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,181,064.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for King Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across arbitrum, base, ethereum, mantle, swellchain. Structural roles: 4 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: unclassified (4)
- Contract kinds: contract (4)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x747cac...52232e`, chain 1)
- UnnamedContract (`0x8f08b7...8e6040`, chain 1)
- UnnamedContract (`0x2e4124...fee275`, chain 42161)
- UnnamedContract (`0xc2606a...cee6f8`, chain 1923)

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (2 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 6 of 7 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KingOFTL2 | unknown | project_anchor | own_supporting | 1 | mantle | unit-244213 | `0x548c41...7b98ed` | ⚠️ Unaudited |
| KingOFTL2 | unknown | project_anchor | own_supporting | 1 | base | unit-244214 | `0xe22c24...5fbac0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b9010...0f19e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244209 | `0x747cac...52232e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244210 | `0x8f08b7...8e6040` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-244211 | `0xc2606a...cee6f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244212 | `0x2e4124...fee275` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [NM_0452_King_Cross_Chain_FINAL.pdf](https://github.com/King-Protocol/king-cross-chain/blob/master/audit/NM_0452_King_Cross_Chain_FINAL.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [NM_0314_EtherFi_LRT_2.pdf](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/NM_0314_EtherFi_LRT_2.pdf) | NM | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [NM_0390_LRT_Square_Strategies_DRAFT.pdf](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/NM_0390_LRT_Square_Strategies_DRAFT.pdf) | NM | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf) | Ether_Fi | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf](https://github.com/King-Protocol/king-protocol-sc/blob/master/audits/Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf) | Ether Fi | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3122] NM_0452_King_Cross_Chain_FINAL.pdf — no match: All four contracts listed in the Audited Files section are in scope. The audit date is the final report date (Feb 14, 2025).
- [3126] NM_0314_EtherFi_LRT_2.pdf — no match: All contracts listed in the 'Audited Files' section (Part I and Part II) are included. The audit date is the final report date (September 23, 2024).
- [3127] NM_0390_LRT_Square_Strategies_DRAFT.pdf — no match: All contracts listed in the Audited Files table (Section 2) are in scope. The audit date is from the cover page and executive summary.
- [3128] Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf — no match: Two contracts in scope: CumulativeMerkleCodec and CumulativeMerkleDrop. Audit date from 'Last Updated 03/12/2025' and engagement end date March 12, 2025.
- [14854] Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf — no match: Scope section explicitly lists two contracts: CumulativeMerkleCodec and CumulativeMerkleDrop. Audit date is the end date of the engagement (March 11, 2025).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| NM_0452_King_Cross_Chain_FINAL.pdf | KingOFTAdapterUpgradeable | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0452_King_Cross_Chain_FINAL.pdf | KingOFTAdapter | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0452_King_Cross_Chain_FINAL.pdf | PairwiseRateLimiter | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0452_King_Cross_Chain_FINAL.pdf | KingOFTUpgradeable | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0314_EtherFi_LRT_2.pdf | UUPSProxy | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0314_EtherFi_LRT_2.pdf | LrtSquare | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0314_EtherFi_LRT_2.pdf | Swapper1InchV6 | unmatched — not counted | — | Listed in audited files table (Part I and Part II) | no |
| NM_0314_EtherFi_LRT_2.pdf | PriceProvider | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0314_EtherFi_LRT_2.pdf | BucketLimiter | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0314_EtherFi_LRT_2.pdf | IAggregatorV3 | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0314_EtherFi_LRT_2.pdf | IPriceProvider | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0314_EtherFi_LRT_2.pdf | IOneInch | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0314_EtherFi_LRT_2.pdf | ISwapper | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | BoringVaultPriceProvider | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | PriceProvider | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | SEthFiStrategy | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | BaseStrategy | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | EEigenStrategy | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | LRTSquaredAdmin | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | LRTSquaredCore | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | LRTSquaredStorage | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | LRTSquaredInitializer | unmatched — not counted | — | listed in Audited Files table | no |
| Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf | CumulativeMerkleCodec | unmatched — not counted | — | listed in scope | no |
| Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf | CumulativeMerkleDrop | unmatched — not counted | — | listed in scope | no |
| Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf | CumulativeMerkleCodec | unmatched — not counted | — | listed in scope section | no |
| Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf | CumulativeMerkleDrop | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | `0x548c41...7b98ed` | KingOFTL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe22c24...5fbac0` | KingOFTL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [3122] NM_0452_King_Cross_Chain_FINAL.pdf
- [3126] NM_0314_EtherFi_LRT_2.pdf
- [3127] NM_0390_LRT_Square_Strategies_DRAFT.pdf
- [3128] Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf
- [14854] Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf

Fork inheritance lineage and inherited audits are included when available.
