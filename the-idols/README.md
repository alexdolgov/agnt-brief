# Agentic Audit Brief: The Idols

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: The Idols (`the-idols`)
- Website: [https://www.theidols.io](https://www.theidols.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 20 unique implementations (22 raw deployments)
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

- IdolMain (`0x439cac149b935ae1d726569800972e1669d17094`, chain 1)
- IdolMarketplace (`0x0dd5a35fe4cd65fe7928c7b923902b43d6ea29e7`, chain 1)
- RewardsCollector (`0x7d624c34e475a2eca893d0c118527b6e2061256a`, chain 1)
- VirtueToken (`0x9416ba76e88d873050a06e5956a3ebf10386b863`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/5 (60.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 5 of 20 unique; 15 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/16
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 20
- Raw deployments: 22
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
| CertiK | Tier 2 | 3 | 18.8% | 2022-03 |
| WhiteHatDAO | Tier 2 | 3 | 18.8% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| IdolMain | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258653 | `0x439cac149b935ae1d726569800972e1669d17094` | ✅ Audited |
| IdolMarketplace | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258652 | `0x0dd5a35fe4cd65fe7928c7b923902b43d6ea29e7` | ✅ Audited |
| VirtueToken | token | project_anchor | own_supporting | 0 | ethereum | unit-258655 | `0x9416ba76e88d873050a06e5956a3ebf10386b863` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EthClaimContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e88861a1ff98f713753b9506638c7c49269f19a` | ⚠️ Unaudited |
| IdolGoldlist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dc9886f694ba078f617c53d6330e001f6986aa5` | ⚠️ Unaudited |
| IdolMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4a0cedd8abf9fc5a0187cf9faa0a2466bab76652`; ethereum `0x4ce4f4c4891876ffc0670bd9a25fcc4597db3bbf`; ethereum `0x523fbd08ead56490dbbfa008ef582e7a272df5e6` | ⚠️ Unaudited |
| IdolMintContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b4b02372d8e54c1c0454d97f01d85ef203cdc5e` | ⚠️ Unaudited |
| Lido | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xae7ab96520de3a18e5e111b5eaab095312d7fe84` | ⚠️ Unaudited |
| MarketplaceRefundContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87d2edba911c7e2e13580af897ba77e47e8b8c8b` | ⚠️ Unaudited |
| OfferingRefundContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e94c074d7360dccf0d7b2891d867b734978e8ad` | ⚠️ Unaudited |
| RewardsCollector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258654 | `0x7d624c34e475a2eca893d0c118527b6e2061256a` | ⚠️ Unaudited |
| VirtueClaimContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a5e20e29d000762bf33e29c0a2091d78f1cd6c4` | ⚠️ Unaudited |
| VirtueEthRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258656 | `0xc73b93885f10c5eaf8cb126495bbd14d3b9b7baf` | ⚠️ Unaudited |
| VirtueZapperContract | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42455baefaaaa545c1cf501329d21acec1daa635` | ⚠️ Unaudited |
| VirtuousHourAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fc37a6ae6dd977bebbeb2831ead35bfb7263f76` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc24316b9ae028f1497c275eb9192a3ea0f67022` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d7e56c3744006bc214bf11db4953d5cf9b4eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7343241a210b4c13bc6d805612d2e61d4aa7c677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815c5d8fd4c029d611de4344582cee38ffa7741e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd272d2c89c4e7309e24799c3e030987bbd47be2c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 14
- Live contracts: 2
- Unknown liveness contracts: 12
- Source-verified contracts: 10
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate auto own=3, candidate review=4, exact address book overlap=1, source verified unclassified=2, unverified unclassified=4

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate auto own | IdolMarketplace<br>`0x4a0cedd8abf9fc5a0187cf9faa0a2466bab76652` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x1a898355c4939e1e4b15330d4da1fc028a8dad66` |
| ethereum | candidate auto own | IdolMarketplace<br>`0x4ce4f4c4891876ffc0670bd9a25fcc4597db3bbf` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x1a898355c4939e1e4b15330d4da1fc028a8dad66` |
| ethereum | candidate auto own | IdolMarketplace<br>`0x523fbd08ead56490dbbfa008ef582e7a272df5e6` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x1a898355c4939e1e4b15330d4da1fc028a8dad66` |
| ethereum | candidate review | IdolMintContract<br>`0x7b4b02372d8e54c1c0454d97f01d85ef203cdc5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1a898355c4939e1e4b15330d4da1fc028a8dad66` |
| ethereum | candidate review | MarketplaceRefundContract<br>`0x87d2edba911c7e2e13580af897ba77e47e8b8c8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1a898355c4939e1e4b15330d4da1fc028a8dad66` |
| ethereum | candidate review | OfferingRefundContract<br>`0x2e94c074d7360dccf0d7b2891d867b734978e8ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1a898355c4939e1e4b15330d4da1fc028a8dad66` |
| ethereum | candidate review | VirtueEthRewards<br>`0xc73b93885f10c5eaf8cb126495bbd14d3b9b7baf` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x1a898355c4939e1e4b15330d4da1fc028a8dad66` |
| ethereum | exact address book overlap | RewardsCollector<br>`0x7d624c34e475a2eca893d0c118527b6e2061256a` | project_anchor | unknown | live | verified | n/a | `0x1a898355c4939e1e4b15330d4da1fc028a8dad66` |
| ethereum | source verified unclassified | EthClaimContract<br>`0x6e88861a1ff98f713753b9506638c7c49269f19a` | non_address_book | unknown | unknown | verified | n/a | `0x1a898355c4939e1e4b15330d4da1fc028a8dad66` |
| ethereum | source verified unclassified | VirtueClaimContract<br>`0x5a5e20e29d000762bf33e29c0a2091d78f1cd6c4` | non_address_book | unknown | unknown | verified | n/a | `0x1a898355c4939e1e4b15330d4da1fc028a8dad66` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17d7e56c3744006bc214bf11db4953d5cf9b4eaa` | non_address_book | unknown | unknown | unverified | n/a | `0x1a898355c4939e1e4b15330d4da1fc028a8dad66` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7343241a210b4c13bc6d805612d2e61d4aa7c677` | non_address_book | unknown | unknown | unverified | n/a | `0x1a898355c4939e1e4b15330d4da1fc028a8dad66` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x815c5d8fd4c029d611de4344582cee38ffa7741e` | non_address_book | unknown | unknown | unverified | n/a | `0x1a898355c4939e1e4b15330d4da1fc028a8dad66` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd272d2c89c4e7309e24799c3e030987bbd47be2c` | non_address_book | unknown | unknown | unverified | n/a | `0x1a898355c4939e1e4b15330d4da1fc028a8dad66` |

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
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf | IdolMain | own contract | IdolMain (selected) `0x439cac149b935ae1d726569800972e1669d17094` — deployed 2022-03-02 03:24:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf | IdolMarketplace | own contract | IdolMarketplace (selected) `0x0dd5a35fe4cd65fe7928c7b923902b43d6ea29e7` — deployed 2022-03-15 00:12:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf | IdolMintContract | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf | VirtueRewards | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf | VirtueStaking | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf | VirtueToken | own contract | VirtueToken (selected) `0x9416ba76e88d873050a06e5956a3ebf10386b863` — deployed 2022-03-02 03:28:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | idolMain | own contract | IdolMain (selected) `0x439cac149b935ae1d726569800972e1669d17094` — deployed 2022-03-02 03:24:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | idolmarketplace | own contract | IdolMarketplace (selected) `0x0dd5a35fe4cd65fe7928c7b923902b43d6ea29e7` — deployed 2022-03-15 00:12:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | idolMintContract | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | VirtueRewards | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | VirtueStaking | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | VirtueToken | own contract | VirtueToken (selected) `0x9416ba76e88d873050a06e5956a3ebf10386b863` — deployed 2022-03-02 03:28:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | ICurvePool | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | IIdolMain | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | IIdolMarketplace | unmatched — not counted | — | listed in scope table | no |
| spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf | IRewards | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7d624c34e475a2eca893d0c118527b6e2061256a` | RewardsCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc73b93885f10c5eaf8cb126495bbd14d3b9b7baf` | VirtueEthRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 4 |

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
