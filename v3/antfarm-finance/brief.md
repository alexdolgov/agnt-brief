# Agentic Audit Brief: Antfarm finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Antfarm finance (`antfarm-finance`)
- Website: [https://antfarm.finance](https://antfarm.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, ethereum, polygon, polygon-zkevm
- Contract surface: 37 unique implementations (37 raw deployments)
- Coverage basis: 0/8 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $217,707.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Antfarm finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, avalanche, ethereum, polygon. Structural roles: 7 core, 2 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (7), supporting (2)
- Contract kinds: contract (9)
- Detected standards: erc20permit (3), ownable (2), erc165 (1), erc20 (1), erc721 (1)
- Frameworks: openzeppelin (5), solmate (3), foundry (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x529c78ee582e4293a20ab60c848506eadd8723d8`, chain 1)
- UnnamedContract (`0x6d9f0eb21d77c6d24be49a579508471e937d5418`, chain 1)
- UnnamedContract (`0x9ff19be8fa1f8cf8a017051daa5dfb491ac2ccee`, chain 1)
- UnnamedContract (`0xd63123527551f037faac74bf5fda5b71569cf5af`, chain 1)
- UnnamedContract (`0xe48aee124f9933661d4dd3eb265fa9e153e32cbe`, chain 1)
- UnnamedContract (`0x8af94528fbe3c4c148523e7aad48bcebcc0a71d7`, chain 43114)
- UnnamedContract (`0xd999fb911d899842820fa96f2b7cdce71a4f0fd5`, chain 43114)
- UnnamedContract (`0xdc0bd72cdef330786bf6f331a6aca539c0bb4eab`, chain 43114)
- UnnamedContract (`0xf766bf42b57de7dfd0e60ddafa9e6669b7ecbede`, chain 43114)
- AntfarmFactory (`0x61f4ecd130291e5d5d7809a112f9f9081b8ed3a5`, chain 42161)
- AntfarmGovernanceToken (`0x0bf43350076f95e0d16120b4d6bdfa1c9d50bdbd`, chain 1)
- AntfarmPosition (`0x15b1954fabff96f7e9231a7ca3976595095537b5`, chain 42161)
- AntfarmRouter (`0x1272ba8c0bd855ff15c4b29bad660e6f154fca28`, chain 42161)
- AntfarmToken (`0x518b63da813d46556fea041a88b52e3caa8c16a8`, chain 1)
- PositionManager (`0xee8c1c668d533d38db792deeb35898fe8d3a33b1`, chain 1)
- StandardArbERC20 (`0xfb9fbcb328317123f5275cda30b6589d5841216b`, chain 42161)
- VoteEscrowedToken (`0xdcd2b58585df999dd145e529f09e8acafa6cd244`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (8 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/19 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/8 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 17 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 17 of 37 unique; 20 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 37
- Raw deployments: 37
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AntfarmFactory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226725 | `0x61f4ecd130291e5d5d7809a112f9f9081b8ed3a5` | ⚠️ Unaudited |
| AntfarmGovernanceToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226712 | `0x0bf43350076f95e0d16120b4d6bdfa1c9d50bdbd` | ⚠️ Unaudited |
| AntfarmGuild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ea9ed05bcf4bccd9ed0eca7687e3b8541f2c897` | ⚠️ Unaudited |
| AntfarmPosition | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226724 | `0x15b1954fabff96f7e9231a7ca3976595095537b5` | ⚠️ Unaudited |
| AntfarmReturner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1272ba8c0bd855ff15c4b29bad660e6f154fca28` | ⚠️ Unaudited |
| AntfarmRouter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226723 | `0x1272ba8c0bd855ff15c4b29bad660e6f154fca28` | ⚠️ Unaudited |
| AntfarmSale | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-226713 | `0x1b0470fc8b495dd39e40cbf4cd00e4095db65213` | ⚠️ Unaudited |
| AntfarmToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226714 | `0x518b63da813d46556fea041a88b52e3caa8c16a8` | ⚠️ Unaudited |
| PositionManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226722 | `0xee8c1c668d533d38db792deeb35898fe8d3a33b1` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-226730 | `0xfb9fbcb328317123f5275cda30b6589d5841216b` | ⚠️ Unaudited |
| VoteEscrowedToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226720 | `0xdcd2b58585df999dd145e529f09e8acafa6cd244` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x186982ab33d1d323f2d471571b7081c56d27fa51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23776fe300f9274dc833e0978461fe12fb66d214` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226715 | `0x529c78ee582e4293a20ab60c848506eadd8723d8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-226716 | `0x6142b36b3dd1812993c2ecaa300b962a7da0a900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68535adf8d432215afaa94a08120d7c1651710b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69d81d6234c7f0c24065eead8f01992aa89ae22e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226717 | `0x6d9f0eb21d77c6d24be49a579508471e937d5418` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x783e95622e38f078ff0026cfe49bec192ffa88a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226718 | `0x9ff19be8fa1f8cf8a017051daa5dfb491ac2ccee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb981d55117569dbd52df120e39ab1df5e95cef46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226719 | `0xd63123527551f037faac74bf5fda5b71569cf5af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1b00886d2c0ae16833ddacd0d998f26d80e2991` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226721 | `0xe48aee124f9933661d4dd3eb265fa9e153e32cbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8497c83f454dbe94188030fa8982e8cc682d0b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x8af94528fbe3c4c148523e7aad48bcebcc0a71d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03dbe714e1bc57c8bb31c2c6984467bcbd8ad985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ba14fcd3ad8901cd71aa35c4fe49ff2d91b00b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87643e2f5bebc1665932efdb2404a36d7618091f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1272ba8c0bd855ff15c4b29bad660e6f154fca28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3aafd21df9083c522c8bb9ebedda2dbf3421da99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x468d8a4244bc0e519b8ef291597a235f08a930f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a4f12b4ad30f67e9738deaa99f4d36b54241bf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-226726 | `0x8af94528fbe3c4c148523e7aad48bcebcc0a71d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-226727 | `0xd999fb911d899842820fa96f2b7cdce71a4f0fd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-226728 | `0xdc0bd72cdef330786bf6f331a6aca539c0bb4eab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-226729 | `0xf766bf42b57de7dfd0e60ddafa9e6669b7ecbede` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 16
- Live contracts: 0
- Unknown liveness contracts: 16
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: exact address book overlap=1, unverified unclassified=15

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x03dbe714e1bc57c8bb31c2c6984467bcbd8ad985` | non_address_book | unknown | unknown | unverified | n/a | `0x07e3763bacdcf13acdf16059092279929803e1cf` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6ba14fcd3ad8901cd71aa35c4fe49ff2d91b00b0` | non_address_book | unknown | unknown | unverified | n/a | `0x07e3763bacdcf13acdf16059092279929803e1cf` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x87643e2f5bebc1665932efdb2404a36d7618091f` | non_address_book | unknown | unknown | unverified | n/a | `0x07e3763bacdcf13acdf16059092279929803e1cf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1272ba8c0bd855ff15c4b29bad660e6f154fca28` | non_address_book | unknown | unknown | unverified | n/a | `0x07e3763bacdcf13acdf16059092279929803e1cf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3aafd21df9083c522c8bb9ebedda2dbf3421da99` | non_address_book | unknown | unknown | unverified | n/a | `0x07e3763bacdcf13acdf16059092279929803e1cf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x468d8a4244bc0e519b8ef291597a235f08a930f2` | non_address_book | unknown | unknown | unverified | n/a | `0x07e3763bacdcf13acdf16059092279929803e1cf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8a4f12b4ad30f67e9738deaa99f4d36b54241bf0` | non_address_book | unknown | unknown | unverified | n/a | `0x07e3763bacdcf13acdf16059092279929803e1cf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x186982ab33d1d323f2d471571b7081c56d27fa51` | non_address_book | unknown | unknown | unverified | n/a | `0x72754d618a920781f3568c7269df4aefa3835fe5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23776fe300f9274dc833e0978461fe12fb66d214` | non_address_book | unknown | unknown | unverified | n/a | `0x72754d618a920781f3568c7269df4aefa3835fe5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68535adf8d432215afaa94a08120d7c1651710b7` | non_address_book | unknown | unknown | unverified | n/a | `0x72754d618a920781f3568c7269df4aefa3835fe5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69d81d6234c7f0c24065eead8f01992aa89ae22e` | non_address_book | unknown | unknown | unverified | n/a | `0x72754d618a920781f3568c7269df4aefa3835fe5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x783e95622e38f078ff0026cfe49bec192ffa88a2` | non_address_book | unknown | unknown | unverified | n/a | `0x72754d618a920781f3568c7269df4aefa3835fe5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb981d55117569dbd52df120e39ab1df5e95cef46` | non_address_book | unknown | unknown | unverified | n/a | `0x72754d618a920781f3568c7269df4aefa3835fe5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe1b00886d2c0ae16833ddacd0d998f26d80e2991` | non_address_book | unknown | unknown | unverified | n/a | `0x72754d618a920781f3568c7269df4aefa3835fe5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8497c83f454dbe94188030fa8982e8cc682d0b1` | non_address_book | unknown | unknown | unverified | n/a | `0x72754d618a920781f3568c7269df4aefa3835fe5` |
| polygon | exact address book overlap | UnnamedContract<br>`0x8af94528fbe3c4c148523e7aad48bcebcc0a71d7` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x07e3763bacdcf13acdf16059092279929803e1cf` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://www.docdroid.net/MxzpjSg/antfarmfinance-11-smart-contract-audit-report-pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Download](https://www.docdroid.net/file/download/MxzpjSg/antfarmfinance-11-smart-contract-audit-report-pdf.pdf?e=1783034687&s=a0536471cfb9d2295fbecfd888ef8cd0) | RAID Square | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19442] DL audit link — no match: The provided text is a filename and a description of a PDF document, not the actual content of the audit report. No contract names or audit date could be extracted.
- [19443] Download — no match: The provided text is a URL and markdown content that does not contain the actual audit report text. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x61f4ecd130291e5d5d7809a112f9f9081b8ed3a5` | AntfarmFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0bf43350076f95e0d16120b4d6bdfa1c9d50bdbd` | AntfarmGovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x15b1954fabff96f7e9231a7ca3976595095537b5` | AntfarmPosition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1272ba8c0bd855ff15c4b29bad660e6f154fca28` | AntfarmRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x518b63da813d46556fea041a88b52e3caa8c16a8` | AntfarmToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xee8c1c668d533d38db792deeb35898fe8d3a33b1` | PositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfb9fbcb328317123f5275cda30b6589d5841216b` | StandardArbERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdcd2b58585df999dd145e529f09e8acafa6cd244` | VoteEscrowedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [19442] DL audit link
- [19443] Download

Fork inheritance lineage and inherited audits are included when available.
