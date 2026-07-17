# Agentic Audit Brief: ELYFI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: ELYFI (`elyfi`)
- Website: [https://www.elyfi.world/](https://www.elyfi.world/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, kaia
- Contract surface: 38 unique implementations (45 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $2,119,331.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for ELYFI in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x15d9f7703f248667957d63d9f4474250ab8f144b`, chain 56)
- UnnamedContract (`0x163d3a76f30e11472a0f9ed8843ec5ed25309911`, chain 56)
- UnnamedContract (`0x55d398326f99059ff775485246999027b3197955`, chain 56)
- UnnamedContract (`0x70a03fee9d23d2e122ba260eeee71c56b3485826`, chain 56)
- UnnamedContract (`0x836b9a6ef1b6a813136fe91803285383ba94956c`, chain 56)
- UnnamedContract (`0xcc5dc7f2fb6833ee2ca7d8dbe599fce54321b4f7`, chain 56)
- UnnamedContract (`0xeba3b931d7a7177d5adc64dff3a60232fde184db`, chain 56)
- UnnamedContract (`0xecd6c25d819d34c961242820bd3161e2a7e01bf7`, chain 56)
- UnnamedContract (`0xed8fa605dac543f733d8791fc8d1724bd14598c3`, chain 56)
- UnnamedContract (`0xf4f31c62aef4ec3f0429dc48f95df10b1146f7d0`, chain 56)
- UnnamedContract (`0xfcd58ecdfbb46ca31514c30ea996b17ac21778b3`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 27 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 11 of 38 unique; 27 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 38
- Raw deployments: 45
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x221cb17e95aa6594cd57e2c4b2f875d4236913bc` | ⚠️ Unaudited |
| Connector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x424c2a31976c2d609819582c84f534b15b001793` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f5907e7f943e8ebe5db444ab7e3c8251346344` | ⚠️ Unaudited |
| CrossChainZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4b19e558ad35b63e385e7c197c0c25072df73dd3`; ethereum `0x87e093b368773ff13daf4b57ffb03c364ffca395`; ethereum `0xa0d697a25b95e2f3bd1402c15450bcce54297a6e` | ⚠️ Unaudited |
| DataPipeline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa63830cccdcd380b00ef00f070357cb03cdc2e7b` | ⚠️ Unaudited |
| DToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9f638c2ba70ea022c710eaeef14824f126d0c34` | ⚠️ Unaudited |
| ELUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x522aa1da4f63317e2476e3384862f2c6174cd3a0` | ⚠️ Unaudited |
| ElyfiToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4da34f8264cb33a5c9f17081b9ef5ff6091116f4` | ⚠️ Unaudited |
| ERC20Metadata | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc10b6dafe4d7f7c693f44c51e716166b599644ba` | ⚠️ Unaudited |
| IncentivePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf42c51527cccab25b70ad46b6c79353d0f2cddfc` | ⚠️ Unaudited |
| Index | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66368d5be45fbf209fc1f34733da31708a7c03a0` | ⚠️ Unaudited |
| InterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x979c7aef8ef58aa9cd456f8195258140da275688` | ⚠️ Unaudited |
| LToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bb4d02a0ba38fb8b916758f11d9b256967a1f7f` | ⚠️ Unaudited |
| MoneyPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bdfef5f8b75741d33a22d85022244cbe793da24` | ⚠️ Unaudited |
| NftBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa12243a014ab9d1bc016ba2c1b76ac6a86ae4510` | ⚠️ Unaudited |
| Rate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51ec26d9c0806e42a6bb8fba40bcc5f7d54400ef` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39f70473ce443529c93589f116ddbb0f7ffce0d1` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d4926c0d5811b1d31dab8358e0317aa7fda3f0e` | ⚠️ Unaudited |
| sELUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd7dc2e7446e3db781900218b90d7bb856e255a` | ⚠️ Unaudited |
| Silo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e992f7b99dc6db863f3e32fcfe1c33c2babc775` | ⚠️ Unaudited |
| StableMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bf7d3e803c596e0fb6c5064711fe89c297f4606` | ⚠️ Unaudited |
| StakingPoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x24a7fb55e4ac2cb40944bc560423b496dfa8803f`; ethereum `0x3f0c3e32bb166901acd0abc9452a3f0c5b8b2c9d`; ethereum `0xa33cfb48338450aecc3e7da69e7f99ac923cfc28`; ethereum `0xf26546ee9562ed60f680c747f28a6ae67a805c90`; bsc `0x73653254ed0f28d6e5a59191bbb38b06c899fbca` | ⚠️ Unaudited |
| TimeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x144d0b69da2cae4c299357e2fc5b4c37a234aa43` | ⚠️ Unaudited |
| Validation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x926f61222cd96dd1f1c4066f8626e8514babb016` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d768c1507b5099cb37e5d28b1959b831b5ebf9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236828 | `0x15d9f7703f248667957d63d9f4474250ab8f144b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236829 | `0x163d3a76f30e11472a0f9ed8843ec5ed25309911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bfbf29ac46b53352a12bf493f3350b7a17b1cf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236830 | `0x55d398326f99059ff775485246999027b3197955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236831 | `0x70a03fee9d23d2e122ba260eeee71c56b3485826` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236832 | `0x836b9a6ef1b6a813136fe91803285383ba94956c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236833 | `0xcc5dc7f2fb6833ee2ca7d8dbe599fce54321b4f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236834 | `0xeba3b931d7a7177d5adc64dff3a60232fde184db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236835 | `0xecd6c25d819d34c961242820bd3161e2a7e01bf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236836 | `0xed8fa605dac543f733d8791fc8d1724bd14598c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236837 | `0xf4f31c62aef4ec3f0429dc48f95df10b1146f7d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236838 | `0xfcd58ecdfbb46ca31514c30ea996b17ac21778b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | 2 deployments: kaia `0x60961ca3a40be41dddef708bf51ef2f8e9760a3b`; kaia `0x7f97f905a8d6fe4c493d339f094232e3577b4dbd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/elyfi](https://skynet.certik.com/projects/elyfi) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [[HAECHI AUDIT] ElyfiToken smart contract audit report.pdf](https://github.com/elysia-dev/elyfi-token/blob/main/audit/%5BHAECHI%20AUDIT%5D%20ElyfiToken%20smart%20contract%20audit%20report.pdf) | Haechi Audit | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2834] skynet.certik.com/projects/elyfi — no match: Extracted from 'Audited Files/SHA256' section; only two contract files explicitly listed. The report is a Skynet page, not a full audit report, but the audited files are shown.
- [14348] [HAECHI AUDIT] ElyfiToken smart contract audit report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/elyfi | LoanManagerStorage | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/elyfi | PoolToken | unmatched — not counted | — | listed in audited files | no |
| [HAECHI AUDIT] ElyfiToken smart contract audit report.pdf | ElyfiAccessControl | unmatched — not counted | — | — | no |
| [HAECHI AUDIT] ElyfiToken smart contract audit report.pdf | ElyfiToken | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [2834] skynet.certik.com/projects/elyfi
- [14348] [HAECHI AUDIT] ElyfiToken smart contract audit report.pdf

Fork inheritance lineage and inherited audits are included when available.
