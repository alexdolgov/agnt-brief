# Agentic Audit Brief: Voltz

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

- Project: Voltz (`voltz`)
- Website: [https://www.voltz.xyz](https://www.voltz.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, ethereum
- Contract surface: 51 unique implementations (51 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $211,209.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Voltz. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, ethereum. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (1), prb-math (1)
- Upgradeable-pattern rows: 1

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 51 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 51
- Raw deployments: 51
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Factory | registry | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261770 | `0xda66a7584da7210fd26726efb12585734f7688c1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261720 | `0x073a229ffd8aee1e5dc66662afa84134bd6567a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261721 | `0x07ced903e6ad0278cc32bc83a3fc97112f763722` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261722 | `0x10bf33cbdddcfca2c2d8ccf3d339ac34215f6375` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261723 | `0x2108488ee280e1e7bba4bbfa306708b10b05d370` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261724 | `0x2457d958dbebacc9daa41b47592faca5845f8fc3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261725 | `0x389e3d92ece74136c1f28d3c65f6e374e2d8c02d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261726 | `0x41ecaac9061f6babf2d42068f8f8daf3ba9644ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261727 | `0x55a6c7c923b33b4b4cb119c5ee3f10cf841f4e18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261728 | `0x575bf19c89e91278a5a29c83e5401974bcba2894` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261729 | `0x65f5139977c608c6c2640c088d7fd07fa17a0614` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261730 | `0x6a7a5c3824508d03f0d2d24e0482bea39e08ccaf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261731 | `0x7380df8abb0c44617c2a64bf2d7d92caa852f03f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261732 | `0x7482cbece2109a73a16cfc6f9e2b525cfd20456c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261733 | `0x7b129f3ca06218cb8e9f74ec7ba8b35a88d52647` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261734 | `0x83449adb81ad6726f8274934eb60141be2ae035a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261735 | `0x852b9435d1373c7e1d51dd52aebd2aa54422c30d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261736 | `0x8614b5fa62bbb45be5b320e1b6727e5828b5b513` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261737 | `0x8c9b66bfb3c975e89e0ac3acc0f20c831dcfe676` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261738 | `0x8fdd62e435039d69de862e267cda02846c6c2f3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261739 | `0x919674d599d8df8dd9e7ebaabfc2881089c5d91c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261740 | `0x9d9ea12c326a08bb5ca4773549bbc816391c7d3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261741 | `0x9f30ec6903f1728ca250f48f664e48c3f15038ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261742 | `0xa667502bf7f5da45c7b6a70da7f0595e6cf342d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261743 | `0xa6ba323693f9e9b591f79fbdb947c7330ca2d7ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261744 | `0xacf1219d079ade19d9d9851021a89ed9e8448188` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261745 | `0xc23f75272f324263d1032f8f2635a55c81e8054b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261746 | `0xc5dd1861b6c189e205747598c85e18c2dc6898d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261747 | `0xd24047316b274d48dbb2fe20068c9cc849b76152` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261748 | `0xd455eae775ca6c876004dfca0472dfce51d9abdd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261749 | `0xe0cde6bed9e94ea527fd3863b9f8b53146159e14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261750 | `0xfa9ddf4569206625370d2a8546f42c1cc924063c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-261751 | `0x09328b533e91d8fdd1b44a413eed9ca07292b129` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-261752 | `0x0f2883daf40ada0bb34ee752c5da30421dd46152` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-261753 | `0x36e3d9e6f22d9e02039fa6ec1cd073216e4d3e8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-261754 | `0x41ecaac9061f6babf2d42068f8f8daf3ba9644ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-261755 | `0x4fda866ed6d039b3964a6a67d1509edd17b34a40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-261756 | `0x51b0b7f083e563d5cf9d0b5f3916b59fc49c7e5f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-261757 | `0x5971eedc4ae37c7fe86af716737e5c19efd07a80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-261758 | `0x65f5139977c608c6c2640c088d7fd07fa17a0614` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-261759 | `0x8b535e76b2602a38631e54945d5cc00799614a4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-261760 | `0x9f30ec6903f1728ca250f48f664e48c3f15038ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-261761 | `0xc20b5a3a74a967501f6c3c5caee3460dfe3a249e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-261762 | `0xda66a7584da7210fd26726efb12585734f7688c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261763 | `0x36e3d9e6f22d9e02039fa6ec1cd073216e4d3e8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261764 | `0x4870b57e2e4baa82ac8cc87350a2959e4b51694f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261765 | `0x48d21b1de28401b1f3ce75035fe44027e352ad99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261766 | `0x54b868b03c68a1307b24fb0a4b60b18a0714a94c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261767 | `0x8b535e76b2602a38631e54945d5cc00799614a4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261768 | `0x9645206566d453da132f9a8994ca923071709961` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261769 | `0x9f30ec6903f1728ca250f48f664e48c3f15038ed` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/voltz](https://skynet.certik.com/projects/voltz) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [ABDK_Voltz_Project1_v_1_0.pdf](https://github.com/abdk-consulting/audits/blob/main/voltz/ABDK_Voltz_Project1_v_1_0.pdf) | ABDK | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 40 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14117] skynet.certik.com/projects/voltz — no match: Only one contract name explicitly listed in audited files; other contracts mentioned (e.g., 0x068...9ba88) are addresses without file names.
- [14118] ABDK_Voltz_Project1_v_1_0.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/voltz | TestMarginEngine | unmatched — not counted | — | Listed under Audited Files/SHA256 | no |
| ABDK_Voltz_Project1_v_1_0.pdf | AaveDataTypes | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | AaveFCM | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | AaveRateOracle | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | BaseRateOracle | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | BitMath | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | Errors | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | Factory | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | FixedAndVariableMath | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | FixedPoint128 | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | FixedPoint96 | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | FullMath | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | IAToken | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | IAaveRateOracle | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | IAaveV2LendingPool | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | IERC20Minimal | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | IFCM | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | IFactory | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | IMarginEngine | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | IPositionStructs | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | IRateOracle | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | IVAMM | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | LiquidityAmounts | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | LiquidityMath | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | MarginCalculator | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | MarginEngine | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | OracleBuffer | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | Periphery | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | Position | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | SafeCast | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | SafeTransferLib | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | SqrtPriceMath | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | SwapMath | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | Tick | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | TickBitmap | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | TickMath | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | Time | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | TraderWithYieldBearingAssets | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | UnsafeMath | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | VAMM | unmatched — not counted | — | — | no |
| ABDK_Voltz_Project1_v_1_0.pdf | WayRayMath | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 41 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [14117] skynet.certik.com/projects/voltz
- [14118] ABDK_Voltz_Project1_v_1_0.pdf

Fork inheritance lineage and inherited audits are included when available.
