# Agentic Audit Brief: LOCKON

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: LOCKON (`lockon`)
- Website: [https://lockon.finance](https://lockon.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, polygon
- Contract surface: 25 unique implementations (62 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $879,886.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for LOCKON. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, polygon. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: erc20 (3)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

3 of 6 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

**SetToken** (`0xadb6d62e142a2f911fb3c9ca1c1d0fe5d9437252`, chain 137)
Origin: beta-finance (`0x1494ca1f11d487c2bbe4543e90080aeba4ba3c2b`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**SetToken** (`0xbe9a09dff5aef8d7411d799bbbaee2e471e30f63`, chain 137)
Origin: beta-finance (`0x1494ca1f11d487c2bbe4543e90080aeba4ba3c2b`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**SetToken** (`0xd32dfefd9d00f772db460a3b542f0a736d80662f`, chain 137)
Origin: beta-finance (`0x1494ca1f11d487c2bbe4543e90080aeba4ba3c2b`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x24b803ae0992bda7183bab6ed2df0acd1e596c8a`, chain 42161)
- UnnamedContract (`0x9e877c64616a256bdcb599268ca8002df00ec079`, chain 42161)
- UnnamedContract (`0xdd4850e856ddb373f723f34e7fe26901a3ff3fac`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 6 of 25 unique; 19 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 25
- Raw deployments: 62
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 2 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Airdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf6e8fef3e5e0a7664caedbcc3e655e188a7e6b99` | ⚠️ Unaudited |
| BasicIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: polygon `0x2ce6c32682d5793c7a7db4273defe0ba679f34b0`; polygon `0x3b2a94ad65d6091672df6144f7ef48193218b64e`; polygon `0x4a4ebd6f484416414729212d4fab23ece45cade4`; polygon `0x6f0790c97379d30cd02e8b3688ca6655a14cb8ed`; polygon `0x78bc29f1d7706acf6a6460b92fcba931e8c846dc`; polygon `0xe6f4a718ded6722baba16caa26e844459dcef262`; arbitrum `0x018afbf49356138d7ccf465f3f3420e233925e82`; arbitrum `0xcc058995b83dfc02137f299b01547165452e6723` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x153e739b8823b277844ad885a30ac5bd9dfb6e83`; arbitrum `0x8286808afd208be479abfa2103db443580dfeb23`; arbitrum `0xa36c2b06afc96ffd52d148ed6acbb9fe2ab864be` | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: polygon `0x40c20fb57113ebe4f332c311a2b0257cdbdbac14`; polygon `0x44ace3accfb7ec2150a9b5a0ca747e65f2a408c4`; polygon `0xa2e9af75241a71ea77ffccfa2da37f4eb1e83763`; polygon `0xdbf3204ecf63c26c06685140edffb2172079f058`; polygon `0xe9eecdc587535ba2b3e18e262470850733eea18d`; arbitrum `0x7eea5246d5fc47d97d04ce9fa23640d821b86c79`; arbitrum `0x8ca32fe0c266ef97d000db0ec3758e7f9665a585` | ⚠️ Unaudited |
| IndexStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x8087cb6c02b7a3c35e8c88cdbbd5eeb3fcf4312d` | ⚠️ Unaudited |
| IntegrationRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: polygon `0x6bc6762040adc7cb581b20cf09b44586a567cc89`; arbitrum `0x27e19358642b51363c9e63ffbea5b9f460c604ae`; arbitrum `0x97bd109b2353966221560cb86513822fb512b633` | ⚠️ Unaudited |
| LockonVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x555962ce3093b15fac8d37c2a49935c96991f2a0` | ⚠️ Unaudited |
| LockStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x36f6ddf9ee7c6dbec3e799c81d03a7986411423a` | ⚠️ Unaudited |
| LockToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x992c20c4e2f10f6b2c81ee686a200569fbd6ef74` | ⚠️ Unaudited |
| MockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: polygon `0xec45d1372963a8c154357a762f7e1cd35dea9f24`; arbitrum `0x36a9220ab15dfd0a12035a38aca9f6600ff82820`; arbitrum `0xb350d9b5566654a3221981e861544d8d843069b2` | ⚠️ Unaudited |
| PositionComponentCorrectionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: polygon `0x8868c2762d86d9636a3fa17df54c814232bcabb9`; polygon `0x8a11c64827e2f62a81e392af46640f9947a929e5`; polygon `0x9a462036285d38a84ad8a45f010ad42719b041ba`; arbitrum `0x5a0c15343702d070ab780e12f94fbde1f00795b8`; arbitrum `0x781f8726f86c94ad13522f7a1ad2ac0b562cc7c5`; arbitrum `0xcaf7e16cddf4713c8d6d5749c9cc6a150af799e3` | ⚠️ Unaudited |
| PositionUnitAdjusterModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x63005bb8daa3774af731f7f8b0d7a8790eb35f50`; polygon `0x8c2e0399291d6225517a873de04ab92c2c95f06b`; polygon `0xb9bf0710d606b39d2f71acf328d5cd277b642282`; arbitrum `0x99871ad98beb57c0a9e304bf298aab17b3b17278`; arbitrum `0xc2031d4df2c22f1af4a5166651693cf7dbbe1b02`; arbitrum `0xe1093e1a3f09170fda78c7011b82eacb6b05b7eb` | ⚠️ Unaudited |
| SetToken | token | project_anchor | own_supporting | 0 | polygon | unit-245152 | `0xadb6d62e142a2f911fb3c9ca1c1d0fe5d9437252` | ⚠️ Unaudited |
| SetToken | token | project_anchor | own_supporting | 0 | polygon | unit-245153 | `0xbe9a09dff5aef8d7411d799bbbaee2e471e30f63` | ⚠️ Unaudited |
| SetToken | token | project_anchor | own_supporting | 0 | polygon | unit-245154 | `0xd32dfefd9d00f772db460a3b542f0a736d80662f` | ⚠️ Unaudited |
| TradeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: polygon `0x6cc11e2de10f7539bfd38b49549957a9081c3b01`; arbitrum `0x4951133b9429ac86ea894b428ff6409b08a026a6`; arbitrum `0xebe11a8cef9f0502797c6a5781ccfbca8c56bcd3` | ⚠️ Unaudited |
| ZeroExApiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: polygon `0x8d93a0a8fd3fb6edcd37f51215d6e8ae9b4320c1`; polygon `0xe65f1a06864728be868d7828d242be7bf437309b`; arbitrum `0x1f1a16c32982829bc77c9796ce862c628fb37308`; arbitrum `0x28ccf520dc09f1062534806f868625a20e8f4f23` | ⚠️ Unaudited |
| ZeroExApiV2Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x6b5842a517089e58424a0b1650c90812ae45d5b5`; polygon `0xa186701e71c46f898db74ee3dc70ddbba5823cb3`; arbitrum `0x9583600ba5ad5ba86c1895a8cec332b357648550`; arbitrum `0xb70e5889d2b361fae3ac72cff7bf5c6974fdf3d6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c50cea1d41ad171d4e0992130e9504953a3520f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x175024128546022923641dd116ec8521d53290d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245155 | `0x24b803ae0992bda7183bab6ed2df0acd1e596c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d0b47738073ac8c3d343f149e56a6c28872c300` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245156 | `0x9e877c64616a256bdcb599268ca8002df00ec079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4106ff9e881063bb62d261f9205cac00d833468` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245157 | `0xdd4850e856ddb373f723f34e7fe26901a3ff3fac` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [gitlab.com/lockon-finance/core-contracts/-/tree/main/audits](https://gitlab.com/lockon-finance/core-contracts/-/tree/main/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [blaize.tech/clients/smart-contract-security-audit-for-lockon-finance](https://blaize.tech/clients/smart-contract-security-audit-for-lockon-finance) | Blaize Security | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [final_report_LOCKON_Mar_27_2024.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit/final_report_LOCKON_Mar_27_2024.pdf) | Bunzz | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/l/lockon-finance/Lockon-(Adjuster)-audit-report-%5B15-Nov-2024%5D.pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Lockon-audit-report-[7-July-2023].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/l/lockon-finance/Lockon-audit-report-%5B7-July-2023%5D.pdf) | unknown | Audit | 2023-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [final_report_LOCKON_Oct_25_2024.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit/final_report_LOCKON_Oct_25_2024.pdf) | Bunzz | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [LOCKON-Smart-Contract-Audit-Report.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/hashlock/LOCKON-Smart-Contract-Audit-Report.pdf) | Hashlock | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [bunzz-audit (GitHub directory)](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3228] gitlab.com/lockon-finance/core-contracts/-/tree/main/audits — no match: The provided text is a fragment of a GitLab page header, not an audit report. No contract names or audit date could be extracted.
- [3229] blaize.tech/clients/smart-contract-security-audit-for-lockon-finance — no match: Only one contract name explicitly mentioned in scope; no file paths or detailed scope table provided.
- [3230] final_report_LOCKON_Mar_27_2024.pdf — no match: No reason recorded
- [3231] Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf — no match: No reason recorded
- [3232] Lockon-audit-report-[7-July-2023].pdf — no match: No reason recorded
- [3233] final_report_LOCKON_Oct_25_2024.pdf — no match: Only one contract in scope: LockonReferral from lockon-finance/lock-contracts repository.
- [3234] LOCKON-Smart-Contract-Audit-Report.pdf — no match: No reason recorded
- [15448] bunzz-audit (GitHub directory) — no match: The provided text is a GitHub directory listing with no actual audit report content. No contract names or audit details are extractable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| blaize.tech/clients/smart-contract-security-audit-for-lockon-finance | ExchangeIssuanceZeroEx | unmatched — not counted | — | mentioned as a notable addition in the scope description | no |
| final_report_LOCKON_Mar_27_2024.pdf | Airdrop | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | IndexStaking | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | LockStaking | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | LockToken | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | LockonVesting | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | MerkleAirdrop | unmatched — not counted | — | — | no |
| Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf | Position | unmatched — not counted | — | — | no |
| Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf | PositionUnitAdjusterModule | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | BasicIssuanceModule | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | ExchangeIssuanceZeroEx | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | ExtendModuleBase | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | Operator | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | Pausable | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | SetTokenCreator | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | TradeModule | unmatched — not counted | — | — | no |
| final_report_LOCKON_Oct_25_2024.pdf | LockonReferral | unmatched — not counted | — | listed in scope and findings location | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | Airdrop.sol | unmatched — not counted | — | — | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | IndexStaking.sol | unmatched — not counted | — | — | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | LockStaking.sol | unmatched — not counted | — | — | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | LockToken.sol | unmatched — not counted | — | — | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | LockonVesting.sol | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xadb6d62e142a2f911fb3c9ca1c1d0fe5d9437252` | SetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xbe9a09dff5aef8d7411d799bbbaee2e471e30f63` | SetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd32dfefd9d00f772db460a3b542f0a736d80662f` | SetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 22 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=3
- Match method counts: n/a

Zero-match audit list:

- [3228] gitlab.com/lockon-finance/core-contracts/-/tree/main/audits
- [3229] blaize.tech/clients/smart-contract-security-audit-for-lockon-finance
- [3230] final_report_LOCKON_Mar_27_2024.pdf
- [3231] Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf
- [3232] Lockon-audit-report-[7-July-2023].pdf
- [3233] final_report_LOCKON_Oct_25_2024.pdf
- [3234] LOCKON-Smart-Contract-Audit-Report.pdf
- [15448] bunzz-audit (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
