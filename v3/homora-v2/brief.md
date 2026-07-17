# Agentic Audit Brief: Homora V2

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

- Project: Homora V2 (`homora-v2`)
- Website: [https://homora-v2.alphaventuredao.io/](https://homora-v2.alphaventuredao.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum, fantom, optimism
- Contract surface: 56 unique implementations (56 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $110,273,717.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Homora V2 in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 55 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (55 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 55
- Unique implementations: 56
- Raw deployments: 56
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| AlphaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144062 | `0xa1faa113cbe53436df28ff0aee54275c13b40975` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (55)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x00b1a4e7f217380a7c9e6c12f327ac4a1d9b6a14` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x011535fd795fd28c749363e080662d62fbb456a7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x06799a1e4792001aa9114f0012b9650ca28059a3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0b8f60be035cc5b1982ed2145c6bfc05f863ddc1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x4fb70edda7f67bdbe225df7c91483c45699293f5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8b947d8448cffb89ef07a6922b74fbabac219795` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa2caea05ff7b98f10ad5ddc837f15905f33feb60` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xba5ebaf3fc1fcca67147050bf80462393814e54b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdc9c7a2bae15dd89271ae5701a6f4db147baa44c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf1f32c8eeb06046d3cc3157b8f9f72b09d84ee5b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0xaf8c59de82f10d21749952b3d44ccf6ab97ca0c7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0xbf956ecdbd08d9aea6ef0cdd305d054859ebc130` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0xc781cf972ab97601efecffa53202a410f52fef92` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0xffa51a5ec855f8e38dd867ba503c454d8bbc5ab9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x04a65eaae1c6005a6522f5fd886f53fce9f8a895` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x060e91a44f16dfcc1e2c427a0383596e1d2e886f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x0e4cb26058c2049827dce451cd4170f55031adae` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x188daa19208b369ce74a5959661db003431f011c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x2fcb7d1157057da794bf0694c40948ce4dc1fb90` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x31634294a0532347d6e543449436b2ab4d20c48c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x755294a6093aabe389c59e9c9937cf7d614e7d0a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x8fd641a26c373f0b9baafe5aeafcc977458b6153` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x900e2aa94a2176a84d45962132f7898861aaca26` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x928f13d14fbdd933d812fcf777d9e18397d425de` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x977791a64ae5b96090403ee8f529934dff7fb662` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xba514d50c4abb55a632999f14f71f9a189b22c7d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xbf956ecdbd08d9aea6ef0cdd305d054859ebc130` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xcfd1acd468112317a04844a445106b23169c38d4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xd4159936fadf8c8f28db68dbb67bc5afe978a82c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xeca630046220e1284d89188dbb4f17328e83fa7a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xed0dcec4d50b6374971ad7c7180f80775eaff1ef` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xeeb9b7c60749fec168abe7382981428d6ac00c2f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xf8311a422da44f4b98b87eaff02ecdea506d608c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x011993c940a639efac34bd54f24d2cf3e3002214` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x05edd168030a821d6afdbd6b1134348870e08520` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x28f1bdbc52ad1aaab71660f4b33179335054be6a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x376d16c7de138b01455a51da79ad65806e9cd694` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x5842728ab97c8920c210fa88a2edccae1c80d720` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x652a76731a6db7249a7aeb43f824ebfc022488d2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x6ecb26f5c2d167f5e724f24eda63020b61c289ed` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x74a750b929ffd9141262d1542381366d139fe234` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x7a5ff9c975c315174ecd431e9dac80adfac1e3b5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x8bbaf67ceb8eed2d5afc5d7786deeaba8268fd4a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x8df47fc33df77ae0526cdac4a0ca89739ef9f1cc` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x966bbec3ac35452133b5c236b4139c07b1e2c9b1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xa67cf61b0b9bc39c6df04095a118e53bfb9303c7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xab80758cec0a69a49ed1c9b3f114cf98118643f0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xb2df53045cf398715a8b2c94f679b4dcb11a0bc8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xbc648e5f7bfd01306ed96476c34f25a7d28ac82b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xc32cb9d28b257ce286f4a1c01222171f55a6f7f9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xd885e488eae40c9f9e4867e1dc7ae26684083150` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xda255a9126fca3a2db4bbb991816f3e6564c003c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xdbc2aa11aa01baa22892de745c661db9f204b2cd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xe2f6c8c5ae8f07d0a2e16a7e43fbab476257b9ef` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xeff3168dcf49126d185ef561c793fe6d95a049a3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://www.openzeppelin.com/news/alpha-homora-v2) | OpenZeppelin | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20563] DL audit link — no match: All contracts listed in the scope section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | Governable | unmatched — not counted | — | listed in scope | no |
| DL audit link | HomoraBank | unmatched — not counted | — | listed in scope | no |
| DL audit link | AggregatorOracle | unmatched — not counted | — | listed in scope | no |
| DL audit link | BalancerPairOracle | unmatched — not counted | — | listed in scope | no |
| DL audit link | CoreOracle | unmatched — not counted | — | listed in scope | no |
| DL audit link | CurveOracle | unmatched — not counted | — | listed in scope | no |
| DL audit link | ProxyOracle | unmatched — not counted | — | listed in scope | no |
| DL audit link | UniswapV2Oracle | unmatched — not counted | — | listed in scope | no |
| DL audit link | UsingBaseOracle | unmatched — not counted | — | listed in scope | no |
| DL audit link | BalancerSpellV1 | unmatched — not counted | — | listed in scope | no |
| DL audit link | BasicSpell | unmatched — not counted | — | listed in scope | no |
| DL audit link | CurveSpellV1 | unmatched — not counted | — | listed in scope | no |
| DL audit link | SushiswapSpellV1 | unmatched — not counted | — | listed in scope | no |
| DL audit link | UniswapV2SpellV1 | unmatched — not counted | — | listed in scope | no |
| DL audit link | WhitelistSpell | unmatched — not counted | — | listed in scope | no |
| DL audit link | WERC20 | unmatched — not counted | — | listed in scope | no |
| DL audit link | WLiquidityGauge | unmatched — not counted | — | listed in scope | no |
| DL audit link | WMasterChef | unmatched — not counted | — | listed in scope | no |
| DL audit link | WStakingRewards | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 19 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20563] DL audit link

Fork inheritance lineage and inherited audits are included when available.
