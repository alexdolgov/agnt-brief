# Agentic Audit Brief: Twindex

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Twindex (`twindex`)
- Website: [https://twindex.com/](https://twindex.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 45 unique implementations (45 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $122,718.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Twindex in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/44
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 45
- Raw deployments: 45
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitraryCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174293 | `0x9351ba792bef34c160c96d1b786702997b552729` | ⚠️ Unaudited |
| CollateralReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174284 | `0x34c885413e025134a2f120f06e523c91d775b7a3` | ⚠️ Unaudited |
| ConvertDopple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174296 | `0xb762a7f6a560a3e8983fbb2b417c9dac9abcaf96` | ⚠️ Unaudited |
| ConvertTwin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174287 | `0x6320f0c37f271f442d0ba4aa6478741618a67ce9` | ⚠️ Unaudited |
| CustomOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174292 | `0x90ed83a3345c32c78ed17328b46124fc118987c6` | ⚠️ Unaudited |
| dfiProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174310 | `0x37f5a7d8bbb1cc0307985d00de520fe30630790c` | ⚠️ Unaudited |
| DiamondHandInitializable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174276 | `0x182a11f9cc9cd3cd7c5ad38131cf1902ccfd3615` | ⚠️ Unaudited |
| DoppleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174283 | `0x2acec0231e55086f6304e4c1e6eacf4eaec5b753` | ⚠️ Unaudited |
| DoppleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174291 | `0x844fa82f1e54824655470970f7004dd90546bb28` | ⚠️ Unaudited |
| DoppleX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174273 | `0x10667943e27caabd3f9584c4e5a49ec799a1476f` | ⚠️ Unaudited |
| FairLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174301 | `0xda0a175960007b0919dbf11a38e6ec52896bddbe` | ⚠️ Unaudited |
| InternalOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174294 | `0xa442c34d88f4091880aeee16500b088306562caa` | ⚠️ Unaudited |
| KUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174288 | `0x67772fddc88906f42a34bc3fc70c3faccecf24ad` | ⚠️ Unaudited |
| LoanOpenings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174298 | `0xcd72c5e1e93e32bbdf8d6ac7ee45f8585a3a2641` | ⚠️ Unaudited |
| LoanTokenLogicStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174305 | `0x066888951a12e0b7fbc20ecf273075c3b7ee3db2` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174279 | `0x22a5c7376c76d2d7ddc88d314912217b20d6eec0` | ⚠️ Unaudited |
| MathUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174270 | `0x03f441d8ba0271182c17e148304f78b685fb4da3` | ⚠️ Unaudited |
| OneClickMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174277 | `0x191069dc5277491b35420ebab060d812196c2bda` | ⚠️ Unaudited |
| PriceFeeds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174300 | `0xd4f061a6a276f8b0ae83d210d838b45fcc7532b2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174269 | `0x03b01bdaf22c5c88cddcce0f2ac90816f6faa824` | ⚠️ Unaudited |
| ReserveTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174290 | `0x6b564654f05bcfbc5bd4e196ec13e60351ea4c41` | ⚠️ Unaudited |
| Shield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174295 | `0xad8f26f6ec78c9b74316dae97ea51ea1a7da423c` | ⚠️ Unaudited |
| StableCollateralReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174281 | `0x25fceb9ad87c92a303acf1bf3017f3911b6d4433` | ⚠️ Unaudited |
| StablePoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174278 | `0x220110ca8be439bd3cf26457d59e533b78dd0764` | ⚠️ Unaudited |
| StableReserveTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174286 | `0x3bbc4459ff92e151a8d30766bc68c6d5b2119377` | ⚠️ Unaudited |
| StockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174274 | `0x1085b90544ff5c421d528aaf79cc65afc920ac79` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174271 | `0x0473fbfd8167c8b6d29b1251578559e416bcb3e3` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174275 | `0x1433feaa56b14b0572abedec92104c34b1fb6103` | ⚠️ Unaudited |
| Synth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174268 | `0x00378b795bbd3c71084824ac3ee1fa00f5a069fb` | ⚠️ Unaudited |
| SyntheticPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174267 | `0x00280bd0c89981d62dd203751e748a1cf293c384` | ⚠️ Unaudited |
| TempStablePoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174297 | `0xbb0bb9037e9553b52067b7f05d9eee3b2e97d12b` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174302 | `0xfec395fca3bef636d9f97fc6802e4a4726ae43ad` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174272 | `0x0cb11d493639f2f1f04ff446c818370d3f839436` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174304 | `0x119f532cb61f1b91abd4ca483c506f5f38e13e13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174306 | `0x127a2b14f5604ba07a34d44b3b0b15333a7eaab0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174308 | `0x262d5f3b45392c579f1afd543d595079e40a50fe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174303 | `0x41171d5770c4c68686d1af042ada88a45b02f82b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174307 | `0x6e35511a42ee50b154ee02e5b87549171a9adcd9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174309 | `0x72c5b38fcd7119ca1346c353709352109f4ce0df` | ⚠️ Unaudited |
| TwindexALPACAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174299 | `0xcd8a5b31fe75130149039bcfa771d115229da679` | ⚠️ Unaudited |
| TwindexBetaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174282 | `0x286a1ef03d2d7bb6d80c6558790a3ced9108b393` | ⚠️ Unaudited |
| TwindexFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174280 | `0x230b496bd8d304a93aa9efa4712fe7e65646bbef` | ⚠️ Unaudited |
| TwindexSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174289 | `0x6b011d0d53b0da6ace2a3f436fd197a4e35f47ef` | ⚠️ Unaudited |
| TwinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174285 | `0x3806aae953a3a873d02595f76c7698a57d4c7a57` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x08422f6cc26ccda692a36a73a520da6b0e6d3de3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/twindex](https://skynet.certik.com/projects/twindex) | CertiK | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21466] skynet.certik.com/projects/twindex — no match: Extracted from audited files list; only two files explicitly named. Audit date from 'Last Audit was delivered on 12/10/2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/twindex | MasterChef | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/twindex | Synth | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [21466] skynet.certik.com/projects/twindex

Fork inheritance lineage and inherited audits are included when available.
