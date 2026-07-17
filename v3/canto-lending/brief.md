# Agentic Audit Brief: Canto Lending

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Canto Lending (`canto-lending`)
- Website: [https://canto.io/lending](https://canto.io/lending)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: canto, ethereum
- Contract surface: 18 unique implementations (83 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $3,029,500.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Canto Lending in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0355e393cf0cf5486d9caefb64407b7b1033c2f1`, chain 7700)
- UnnamedContract (`0x3c96dcfd875253a37acb3d2b102b6f328349b16b`, chain 7700)
- UnnamedContract (`0x5e23dc409fc2f832f83cec191e245a191a4bcc5c`, chain 7700)
- UnnamedContract (`0x617383f201076e7ce0f6e625d1a983b3d1bd277a`, chain 7700)
- UnnamedContract (`0x6b46ba92d7e94ffa658698764f5b8dfd537315a9`, chain 7700)
- UnnamedContract (`0x830b9849e7d79b92408a86a557e7baaacbec6030`, chain 7700)
- UnnamedContract (`0x897709fc83ba7a4271d22ed4c01278cc1da8d6f8`, chain 7700)
- UnnamedContract (`0xb49a395b39a0b410675406bee7bd06330cb503e3`, chain 7700)
- UnnamedContract (`0xb65ec550ff356eca6150f733ba9b954b2e0ca488`, chain 7700)
- UnnamedContract (`0xc0d6574b2fe71eed8cd305df0da2323237322557`, chain 7700)
- UnnamedContract (`0xd5dbf5cd90f158597f916591dbadde27e4a4d4cf`, chain 7700)
- UnnamedContract (`0xd6a97e43fc885a83e97d599796458a331e580800`, chain 7700)
- UnnamedContract (`0xde59f060d7ee2b612e7360e6c1b97c4d8289ca2e`, chain 7700)
- UnnamedContract (`0xee602429ef7ece0a13e4ffe8dbc16e101049504c`, chain 7700)
- UnnamedContract (`0xf0cd6b5ce8a01d1b81f1d8b76643866c5816b49f`, chain 7700)
- UnnamedContract (`0xf1f89df149bc5f2b6b29783915d1f9fe2d24459c`, chain 7700)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 16 of 18 unique; 2 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 18
- Raw deployments: 83
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CantoOFTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56c03b8c4fa80ba37f5a7b60caaaef749bb5b220` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | canto | n/a | 66 deployments: canto `0x0000000000000000000000000000000000000000`; canto `0x03f734bd9847575fdbe9beaddf9c166f880b5e5f`; canto `0x04a72466de69109889db059cb1a4460ca0648d9d`; canto `0x04e52476d318cdf739c38bd41a922787d441900c`; canto `0x0c6cc7bb309639b720bcbcc7bfea48ed4a39f43c`; canto `0x0e356b86fa2ae1beb93174c18ad373207a40f2a3`; canto `0x1a44076050125825900e736c501f859c50fe728c`; canto `0x1d20635535307208919f0b67c3b2065965a85aa9`; canto `0x210b88d5ad4bebc8fac4383cc7f84cd4f03d18c6`; canto `0x216400ba362d8fce640085755e47075109718c8b`; canto `0x252631e22e1ecc2fc0e811562605ed624b7e31d5`; canto `0x260fcd909ab9dff97b03591f83bed5bbfc89a571`; canto `0x2bdf6c1302efc3c03d9c95f6fb5a4826a6bd964b`; canto `0x2db30a39ec88247da8906506db8e9dd933a5c775`; canto `0x2fd02cdb9be9428d4ec2ae969e52710601e219c6`; canto `0x2fed02d6d50a8786d53f308024400fdad275f57c`; canto `0x30838619c55b787bafc3a4cd9aea851c1cfb7b19`; canto `0x35db1f3a6a6f07f82c76fcc415db6cfb1a7df833`; canto `0x395e6ce7891f32278375ff551b8ed61df5579fe3`; canto `0x3bee0a8209e6f8c5c743f21e0ca99f2cb780d0d8`; canto `0x40e41dc5845619e7ba73957449b31dfbfb9678b2`; canto `0x45bafad5a6a531bc18cf6ce5b02c58ea4d20589b`; canto `0x463e7d4df8fe5fb42d024cb57c77b76e6e74417a`; canto `0x46970b45d114420a71a3d76aa6c398173118c2b8`; canto `0x4777dc2b41f1f2bd878205a61c1ea2609749928c`; canto `0x477eaf5decf6299ee937954084f0d53efc57346f`; canto `0x4ced9817cad891aeffbf5fb7dcb6f3c6aebd4228`; canto `0x4e71a2e537b7f9d9413d3991d37958c0b5e1e503`; canto `0x4f6dcfa2f69af7350aac48d3a3d5b8d03b5378aa`; canto `0x4fc30060226c45d8948718c95a78dfb237e88b40`; canto `0x56c03b8c4fa80ba37f5a7b60caaaef749bb5b220`; canto `0x5fd55a1b9fc24967c4db09c513c3ba0dfa7ff687`; canto `0x637490e68aa50ea810688a52d7464e10c25a77c1`; canto `0x63c8feb024d7aaf02c2dc21708f0e17eb0b03f67`; canto `0x648a5aa0c4fbf2c1cf5a3b432c2766eeaf8e402d`; canto `0x760a17e00173339907505b38f95755d28810570c`; canto `0x79ecce8e2d17603877ff15bc29804cbcb590ec08`; canto `0x80b5a32e4f032b2a058b4f29ec95eefeeb87adcd`; canto `0x826551890dc65655a0aceca109ab11abdbd7a07b`; canto `0x831f746d3b0137b0f3311013e95842cf60fa44ed`; canto `0x85156b45b3c0f40f724637ebfeb035afb29bd083`; canto `0x905d3d7f4c892d535160f1e2ba55f23cd306718b`; canto `0x90fccb79ad6f013a4bf62ad43577eed7a8eb961b`; canto `0x9160c5760a540cafa24f90102caa14c50497d5b7`; canto `0x9290c893ce949fe13ef3355660d07de0fb793618`; canto `0x94d288543c566fc20d46a26be9c94da79ebbcecd`; canto `0x9514c07bc6e80b652e4264e64f589c59065c231f`; canto `0x9571997a66d63958e1b3de9647c22bd6b9e7228c`; canto `0xa252eee9bde830ca4793f054b506587027825a8e`; canto `0xa51436ef5d46ee56b0906dec620466153f7fb77e`; canto `0xb2c5512a8a70835cb9abe830c9e61fbddcd1dc81`; canto `0xbed263484aedfd449ee1ed8f0b4799192026e190`; canto `0xc0395538ee9144a2a3acc2c9ad6329bffe12af22`; canto `0xc0ce8477c81a9f6c972976440c7b3305c37432f3`; canto `0xc51534568489f47949a828c8e3bf68463bdf3566`; canto `0xca03230e7fb13456326a234443aad111ac96410a`; canto `0xca11bde05977b3631167028862be2a173976ca11`; canto `0xd567b3d7b8fe3c79a1ad8da978812cfc4fa05e75`; canto `0xdb91f7127aa66855845696db77c37d1b6bead2db`; canto `0xe387067f12561e579c5f7d4294f51867e0c1cfba`; canto `0xe536cf7b00069894da25fac787d7ad9d211a2c1a`; canto `0xebe265c9299d0c879bcc2a76948511ba6ed6c36d`; canto `0xeceeefcee421d8062ef8d6b4d814efe4dc898265`; canto `0xecf044c5b4b867cfda001101c617ecd347095b44`; canto `0xf301c9d5804fab3dd207ef75f78509db6393f37f`; canto `0xfb8255f0de21acebf490f1df6f0bdd48cc1df03b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381701 | `0x0355e393cf0cf5486d9caefb64407b7b1033c2f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381702 | `0x3c96dcfd875253a37acb3d2b102b6f328349b16b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381703 | `0x5e23dc409fc2f832f83cec191e245a191a4bcc5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381704 | `0x617383f201076e7ce0f6e625d1a983b3d1bd277a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381705 | `0x6b46ba92d7e94ffa658698764f5b8dfd537315a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381706 | `0x830b9849e7d79b92408a86a557e7baaacbec6030` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381707 | `0x897709fc83ba7a4271d22ed4c01278cc1da8d6f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381708 | `0xb49a395b39a0b410675406bee7bd06330cb503e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381709 | `0xb65ec550ff356eca6150f733ba9b954b2e0ca488` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381710 | `0xc0d6574b2fe71eed8cd305df0da2323237322557` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381711 | `0xd5dbf5cd90f158597f916591dbadde27e4a4d4cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381712 | `0xd6a97e43fc885a83e97d599796458a331e580800` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381713 | `0xde59f060d7ee2b612e7360e6c1b97c4d8289ca2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381714 | `0xee602429ef7ece0a13e4ffe8dbc16e101049504c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381715 | `0xf0cd6b5ce8a01d1b81f1d8b76643866c5816b49f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-381716 | `0xf1f89df149bc5f2b6b29783915d1f9fe2d24459c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/audits/2022-06-canto-contest](https://code4rena.com/audits/2022-06-canto-contest) | Code4rena | Contest | 2022-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [code4rena.com/audits/2022-06-canto-v2-contest](https://code4rena.com/audits/2022-06-canto-v2-contest) | Code4rena | Contest | 2022-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [code4rena.com/reports/2022-07-canto](https://code4rena.com/reports/2022-07-canto) | Code4rena | Contest | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [code4rena.com/reports/2021-08-gravitybridge](https://code4rena.com/reports/2021-08-gravitybridge) | Code4rena | Contest | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2761] code4rena.com/audits/2022-06-canto-contest — no match: The provided text is a contest summary from Code4rena for the Canto contest, but it does not list any specific contracts in scope. The audit date is inferred from the end date of the contest.
- [2762] code4rena.com/audits/2022-06-canto-v2-contest — no match: The provided text is a contest summary from Code4rena for 'Canto v2 contest', but it does not list any specific contracts in scope. The audit date is inferred from the end date of the contest.
- [2763] code4rena.com/reports/2022-07-canto — no match: Scope explicitly lists two files: BaseV1-core.sol and BaseV1-periphery.sol. Audit date from report header.
- [14465] code4rena.com/reports/2021-08-gravitybridge — no match: Scope mentions 12 smart contracts but only Gravity.sol and CosmosERC20 are named in the report. Other contracts are not explicitly listed.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena.com/reports/2022-07-canto | BaseV1-core | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-07-canto | BaseV1-periphery | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2021-08-gravitybridge | Gravity | unmatched — not counted | — | mentioned in scope and findings | no |
| code4rena.com/reports/2021-08-gravitybridge | CosmosERC20 | unmatched — not counted | — | deployed in Gravity.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=2
- Match method counts: n/a

Zero-match audit list:

- [2761] code4rena.com/audits/2022-06-canto-contest
- [2762] code4rena.com/audits/2022-06-canto-v2-contest
- [2763] code4rena.com/reports/2022-07-canto
- [14465] code4rena.com/reports/2021-08-gravitybridge

Fork inheritance lineage and inherited audits are included when available.
