# Agentic Audit Brief: Alongside

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 4 audit(s)
- Eligible audit results: 8 (4 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Alongside (`alongside`)
- Website: [https://alongside.xyz/](https://alongside.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 31 unique implementations (31 raw deployments)
- Coverage basis: 2/2 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $355,871.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Alongside. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 1 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: abstract (1), contract (1)
- Detected standards: erc1967proxy (1), ownable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6e593dd211e10bc8bbfbb8b1a0f48dfaa09ed015`, chain 1)
- UnnamedContract (`0xf17a3fe536f8f7847f1385ec1bc967b2ca9cae8d`, chain 1)
- Controller (`0x0d44f856e1a7c70e35c54261c3f07dbfbdca4857`, chain 1)
- Members (`0xc89ded85ce03ecc435bdef6f8851c1001ec16367`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/2 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 27 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 4 of 31 unique; 27 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/15
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 31
- Raw deployments: 31
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sigma Prime | Tier 2 | 2 | 13.3% | 2022-09 |
| Solidified | Tier 2 | 2 | 13.3% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Controller | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378708 | `0x0d44f856e1a7c70e35c54261c3f07dbfbdca4857` | ✅ Audited |
| Members | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378706 | `0xc89ded85ce03ecc435bdef6f8851c1001ec16367` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActiveBounty | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0daf7e851f6054085432229150c1706988abc562` | ⚠️ Unaudited |
| AlongsideGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x774045b30e6fc5dfe73bf386e8845ca1472fb45e` | ⚠️ Unaudited |
| AstETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27c2b9fd547ead2c05c305bee2399a55811257c2` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22c6b4b20f65ed6c619a571015926170674007ff` | ⚠️ Unaudited |
| Fulfiller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c72b70f9bd342f0ddb66e147ae7412cd7abaabe` | ⚠️ Unaudited |
| IndexToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x775715d96cd3b3586728b7420a13ec74f5dc9e8f` | ⚠️ Unaudited |
| InvokeableBounty | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x366a647de921608bee3987025d23f12263da6884` | ⚠️ Unaudited |
| Issuance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58ad9d36afac51206672f855bf7e76037c5f5198` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x998930c351ecb4918a5c5238b62d5277fe45ab9b` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3be63e1b959c152212ce1dd45d0d2f749eb227c` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x4c362fab50bc81f0f58ef2da6b6e10b55fc1d478` | ⚠️ Unaudited |
| UserRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5056063cad88e36b4de019752280f395640bbaca` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd62a80368adf5919f70193d15dcbd5c77eaf55ac` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12bc3ccaa2e213e9d50fab9752a9dafac01b962f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378705 | `0x6e593dd211e10bc8bbfbb8b1a0f48dfaa09ed015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x703814f9172d6e6ef10f89fcade3ff480d812a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d1775061a3a713e778af23806330b532fa006b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88f84864fd0839a7753199b01acb89c4714319f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d2a6bcb5713d4b57f2fffb119b7b6d0143e25ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e43de2cbbd0624e1177e772d34f6edecdbecfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa27183cf88029c682dcae6af181a811a34bee5a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6e966ed99b29c803eb953b179b5eefb2468af4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3970ae79fd2cd8f1060cf6baeae27b8e2c05437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6a6f2a56693dc4f893f8396d945f7dfe03aa9ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe006fc6dc996ba5361cb880fef76f8aa9d5a7f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe13ee59c41c67696754277cdc73710f6d65ef2ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378707 | `0xf17a3fe536f8f7847f1385ec1bc967b2ca9cae8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2bd82133ce54be7d9a66bf36240c47f6a874f2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3bcedab2998933c6aad1cb31430d8bab329dd8c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 14
- Live contracts: 0
- Unknown liveness contracts: 14
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=14

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x12bc3ccaa2e213e9d50fab9752a9dafac01b962f` | non_address_book | unknown | unknown | unverified | n/a | `0x91f23057ee6e2d1e1ba00a7c1d71ba1a0b2c3113` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x703814f9172d6e6ef10f89fcade3ff480d812a45` | non_address_book | unknown | unknown | unverified | n/a | `0x91f23057ee6e2d1e1ba00a7c1d71ba1a0b2c3113` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d1775061a3a713e778af23806330b532fa006b0` | non_address_book | unknown | unknown | unverified | n/a | `0x91f23057ee6e2d1e1ba00a7c1d71ba1a0b2c3113` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x88f84864fd0839a7753199b01acb89c4714319f2` | non_address_book | unknown | unknown | unverified | n/a | `0x91f23057ee6e2d1e1ba00a7c1d71ba1a0b2c3113` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d2a6bcb5713d4b57f2fffb119b7b6d0143e25ed` | non_address_book | unknown | unknown | unverified | n/a | `0x91f23057ee6e2d1e1ba00a7c1d71ba1a0b2c3113` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e43de2cbbd0624e1177e772d34f6edecdbecfef` | non_address_book | unknown | unknown | unverified | n/a | `0x91f23057ee6e2d1e1ba00a7c1d71ba1a0b2c3113` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa27183cf88029c682dcae6af181a811a34bee5a4` | non_address_book | unknown | unknown | unverified | n/a | `0x91f23057ee6e2d1e1ba00a7c1d71ba1a0b2c3113` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6e966ed99b29c803eb953b179b5eefb2468af4c` | non_address_book | unknown | unknown | unverified | n/a | `0x91f23057ee6e2d1e1ba00a7c1d71ba1a0b2c3113` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb3970ae79fd2cd8f1060cf6baeae27b8e2c05437` | non_address_book | unknown | unknown | unverified | n/a | `0x91f23057ee6e2d1e1ba00a7c1d71ba1a0b2c3113` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb6a6f2a56693dc4f893f8396d945f7dfe03aa9ba` | non_address_book | unknown | unknown | unverified | n/a | `0x91f23057ee6e2d1e1ba00a7c1d71ba1a0b2c3113` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe006fc6dc996ba5361cb880fef76f8aa9d5a7f70` | non_address_book | unknown | unknown | unverified | n/a | `0x91f23057ee6e2d1e1ba00a7c1d71ba1a0b2c3113` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe13ee59c41c67696754277cdc73710f6d65ef2ac` | non_address_book | unknown | unknown | unverified | n/a | `0x91f23057ee6e2d1e1ba00a7c1d71ba1a0b2c3113` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf2bd82133ce54be7d9a66bf36240c47f6a874f2e` | non_address_book | unknown | unknown | unverified | n/a | `0x91f23057ee6e2d1e1ba00a7c1d71ba1a0b2c3113` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf3bcedab2998933c6aad1cb31430d8bab329dd8c` | non_address_book | unknown | unknown | unverified | n/a | `0x91f23057ee6e2d1e1ba00a7c1d71ba1a0b2c3113` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Cantina-2.pdf (also discovered via alternate URL)](https://github.com/Alongside-Finance/Audits/blob/main/Cantina-2.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Cantina.pdf (also discovered via alternate URL)](https://github.com/Alongside-Finance/Audits/blob/main/Cantina.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [SigmaPrime_Sept_28.pdf (also discovered via alternate URL)](https://github.com/Alongside-Finance/Audits/blob/main/SigmaPrime_Sept_28.pdf) | Sigma Prime | Audit | 2022-09 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 9 | high |
| [Solidified_April_22.pdf (also discovered via alternate URL)](https://github.com/Alongside-Finance/Audits/blob/main/Solidified_April_22.pdf) | Solidified | Audit | 2022-05 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19410] Cantina-2.pdf — no match: Extracted contract names from findings context and file paths mentioned in the report. No explicit scope section found, but contracts are clearly referenced as part of the audited codebase.
- [19411] Cantina.pdf — no match: Extracted contract names from findings context and file references. Audit date from cover page.
- [19412] SigmaPrime_Sept_28.pdf — matched: Extracted contract names from findings and scope description. The report covers Alongside Finance index smart contracts, including OTC, Factory, IndexToken, Members, IndexedMapping, Controller, DeployAMKT, DeployAMKTPartTwo, ProposableOwnable, and ProposableOwnableUpgradeable. The audit date is September 2022, interpreted as 2022-09-30.
- [19413] Solidified_April_22.pdf — matched: All contracts listed in the audited files section are in scope. Migrate.sol is mentioned in findings but not in the audited file list, so it is excluded.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Cantina-2.pdf | ActiveBounty | unmatched — not counted | — | mentioned in context of findings (e.g., 3.1.1, 3.3.6) | no |
| Cantina-2.pdf | Bounty | unmatched — not counted | — | mentioned in context of findings (e.g., 3.2.3, 3.3.3, 3.3.4, 3.4.1, 3.5.3, 3.5.4) | no |
| Cantina-2.pdf | Config | unmatched — not counted | — | mentioned in finding 3.1.1 context | no |
| Cantina-2.pdf | CoreDeploy | unmatched — not counted | — | mentioned in findings 3.1.1, 3.3.1, 3.3.6 | no |
| Cantina-2.pdf | IndexToken | unmatched — not counted | — | mentioned in findings 3.3.5, 3.3.8, 3.5.2 | no |
| Cantina-2.pdf | InvokeableBounty | unmatched — not counted | — | mentioned in finding 3.3.6 | no |
| Cantina-2.pdf | Issuance | unmatched — not counted | — | mentioned in finding 3.2.3 | no |
| Cantina-2.pdf | Vault | unmatched — not counted | — | mentioned in findings 3.2.1, 3.2.2, 3.3.2, 3.3.7, 3.5.1 | no |
| Cantina.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Cantina.pdf | Bounty | unmatched — not counted | — | listed in scope | no |
| Cantina.pdf | Governor | unmatched — not counted | — | listed in scope | no |
| Cantina.pdf | MultiSig | unmatched — not counted | — | listed in scope | no |
| Cantina.pdf | Multiplier | unmatched — not counted | — | listed in scope | no |
| Cantina.pdf | IndexToken | unmatched — not counted | — | listed in scope | no |
| Cantina.pdf | Issuance | unmatched — not counted | — | listed in scope | no |
| Cantina.pdf | Config | unmatched — not counted | — | listed in scope | no |
| Cantina.pdf | ActiveBounty | unmatched — not counted | — | listed in scope | no |
| Cantina.pdf | ProposableOwnable | unmatched — not counted | — | listed in scope | no |
| Cantina.pdf | VArray | unmatched — not counted | — | listed in scope | no |
| Cantina.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| Cantina.pdf | IIndexToken | unmatched — not counted | — | listed in scope | no |
| SigmaPrime_Sept_28.pdf | OTC-2 | unmatched — not counted | — | Referenced as OTC.sol-2 in findings (e.g., AMKT-01, AMKT-02, AMKT-04, AMKT-05, AMKT-06, AMKT-07, AMKT-15, AMKT-16, AMKT-18). | no |
| SigmaPrime_Sept_28.pdf | OTC | unmatched — not counted | — | mentioned in findings and test suite | no |
| SigmaPrime_Sept_28.pdf | Factory | unmatched — not counted | — | mentioned in findings and test suite | no |
| SigmaPrime_Sept_28.pdf | IndexToken | unmatched — not counted | — | mentioned in findings and test suite | no |
| SigmaPrime_Sept_28.pdf | Members | own contract | Members (selected) `0xc89ded85ce03ecc435bdef6f8851c1001ec16367` — deployed 2022-10-14 00:53:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SigmaPrime_Sept_28.pdf | IndexedMapping | unmatched — not counted | — | mentioned in finding AMKT-12 | no |
| SigmaPrime_Sept_28.pdf | Controller | own proxy deployment | Controller (proxy) (selected) `0x0d44f856e1a7c70e35c54261c3f07dbfbdca4857` — deployed 2022-10-14 00:53:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SigmaPrime_Sept_28.pdf | DeployAMKT | unmatched — not counted | — | mentioned in findings | no |
| SigmaPrime_Sept_28.pdf | DeployAMKTPartTwo | unmatched — not counted | — | mentioned in findings | no |
| SigmaPrime_Sept_28.pdf | ProposableOwnable | unmatched — not counted | — | mentioned in findings | no |
| SigmaPrime_Sept_28.pdf | ProposableOwnableUpgradeable | unmatched — not counted | — | mentioned in findings | no |
| Solidified_April_22.pdf | Controller | own proxy deployment | Controller (proxy) (selected) `0x0d44f856e1a7c70e35c54261c3f07dbfbdca4857` — deployed 2022-10-14 00:53:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Solidified_April_22.pdf | ControllerInterface | unmatched — not counted | — | listed in audited file list | no |
| Solidified_April_22.pdf | Factory | unmatched — not counted | — | listed in audited file list | no |
| Solidified_April_22.pdf | FactoryInterface | unmatched — not counted | — | listed in audited file list | no |
| Solidified_April_22.pdf | FactoryV2 | unmatched — not counted | — | listed in audited file list | no |
| Solidified_April_22.pdf | Members | own contract | Members (selected) `0xc89ded85ce03ecc435bdef6f8851c1001ec16367` — deployed 2022-10-14 00:53:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Solidified_April_22.pdf | MembersInterface | unmatched — not counted | — | listed in audited file list | no |
| Solidified_April_22.pdf | IndexToken | unmatched — not counted | — | listed in audited file list | no |
| Solidified_April_22.pdf | IndexedMapping | unmatched — not counted | — | listed in audited file list | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 37 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=8

Zero-match audit list:

- [19410] Cantina-2.pdf
- [19411] Cantina.pdf

Fork inheritance lineage and inherited audits are included when available.
