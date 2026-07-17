# Agentic Audit Brief: Kalax

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

- Project: Kalax (`kalax`)
- Website: [https://kalax.io/](https://kalax.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast, scroll
- Contract surface: 16 unique implementations (39 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $125,248.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kalax. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across blast. Structural roles: 7 unclassified, 3 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: unclassified (7), core (3)
- Contract kinds: contract (10)
- Detected standards: ownable (3), pausable (2), erc20 (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x14ed42c74108cd77e52870470dddda6e5d880b4b`, chain 81457)
- UnnamedContract (`0x552414fdf2d3ebe59b120ae67bfba6ec43191ced`, chain 81457)
- UnnamedContract (`0x67fb1a853d8612d2862c66dad242490253bda10e`, chain 81457)
- UnnamedContract (`0x8f0968b1c21e7c94067e64b3687490f88ff2211b`, chain 81457)
- UnnamedContract (`0xffeca8a7071520bd22ed7837c2f95d60a95875b8`, chain 81457)
- KalaxMultiRewardV2Farm (`0x528e67af2e4343dfaf7b63101db7b4a04b3c712e`, chain 81457)
- Token (`0x2f67f59b3629bf24962290db9ede0cd4127e606d`, chain 81457)
- TransparentUpgradeableProxy (`0xe63153c3360aca0f4e7ca7a1fc61c2215faef5a1`, chain 81457)
- TransparentUpgradeableProxy (`0xfe899401a1d86cc1113020fb40878c76239142a5`, chain 81457)
- veKALA token (`0x1aa6226f7100835aaafdff7f79ba6ffd12fee02e`, chain 81457)
- xKALA token (`0x1f4f171676f8cb3b1c3fd38867b3b160679f934a`, chain 81457)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Confirmed-live implementations: 9 of 16 unique; 7 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 16
- Raw deployments: 39
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KalaxMultiRewardV2Farm | unknown | project_anchor | own_supporting | 3 | blast | unit-388086 (3 proxies) | 4 deployments: blast `0x1cb8f6cecf7c8fbb9863417f8371cb2a076c9115`; blast `0x528e67af2e4343dfaf7b63101db7b4a04b3c712e`; blast `0xe63153c3360aca0f4e7ca7a1fc61c2215faef5a1`; blast `0xfe899401a1d86cc1113020fb40878c76239142a5` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | blast | unit-388083 | `0x2f67f59b3629bf24962290db9ede0cd4127e606d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x0676e706cbed7263753ba948a1a4a3a2948b3598`; blast `0xb99aedd16714a7393768273f9abff4c4f48980ed` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | blast | n/a | 7 deployments: blast `0x14421b2f062c1e7a66d52e10a9c8a67e974ace1a`; blast `0x31dd65f845592199d5949ef1ce15d10891244adb`; blast `0x32066b17b14f65e9caa2e72bdca91683959a1b56`; blast `0x87a8943d8000a90511b47c891ff6a073d3147a44`; blast `0x8d171dd9b989350df7e3259a172501d1f41bfae1`; blast `0xbdf9adebf2bbad4971f412c608a5ae8b10ed644f`; blast `0xd834c6ab94af589034011ac921c5ef40f76467fc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | blast | unit-388085 | 2 deployments: blast `0x14ed42c74108cd77e52870470dddda6e5d880b4b`; blast `0x8ab2a060cdab77ed73f49116a55d3e437759f536` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | blast | n/a | 3 deployments: blast `0x2bb41a5b807b7c4f8054587d7294beb8777cb513`; blast `0x4fbd0d19ff17756612c5993293ad1c7ab22a3166`; blast `0x9a8c0857ccd4da52eb18020fc62bf9d8992c6134` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | blast | n/a | 5 deployments: blast `0x3b47335b2946f3282d74bc75ba864b64e922304a`; blast `0x87228e4511cd1a3d1331a2d8e3f86411069b0a05`; blast `0x8ac1562aa49d80c177136cbbc79b7d2425721e4a`; blast `0xa0fc272440ac7584cd9c19f769200bf9d2191985`; blast `0xed38977a8980d4571563c58fde25e8dcfa5a9f4f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | blast | n/a | 3 deployments: blast `0x41ed907e4b304291680ded38e62dd50ab3d87059`; blast `0x98ae4a9ab5a8129de9680c11a8f7a55252b4340a`; blast `0xa6bb888ea83780ee1096094dd9cc930c25ee638c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | blast | unit-388087 | 2 deployments: blast `0x4c001391c88dfc9b5aed53dd752ce9ad5d4ae2db`; blast `0x552414fdf2d3ebe59b120ae67bfba6ec43191ced` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | blast | unit-388088 | 2 deployments: blast `0x67fb1a853d8612d2862c66dad242490253bda10e`; blast `0x70591e02a6ab22c665517c5a73aca9a33bda132d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | blast | unit-388090 | 2 deployments: blast `0x7e0eae5c2354c5a178fedfbfb1ad66561cde4d57`; blast `0xffeca8a7071520bd22ed7837c2f95d60a95875b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | blast | unit-388089 | 2 deployments: blast `0x8273d96954c5cfb35aa6372e66f0ceede69cdc80`; blast `0x8f0968b1c21e7c94067e64b3687490f88ff2211b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6bf073f969ca60a6f0e97b0ec07806080807cf86` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | unit-388084 | `0xd3f350cd7c25200ecb6a52716abd445d0ea98213` | ❓ Unverified |
| veKALA token | unknown | project_anchor | own_supporting | 0 | blast | unit-388081 | `0x1aa6226f7100835aaafdff7f79ba6ffd12fee02e` | ❓ Unverified |
| xKALA token | unknown | project_anchor | own_supporting | 0 | blast | unit-388082 | `0x1f4f171676f8cb3b1c3fd38867b3b160679f934a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Kalax_202405211051.pdf](https://beosin.com/audits/Kalax_202405211051.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13326] Kalax_202405211051.pdf — no match: The provided text is only a URL and a markdown content placeholder, not the actual audit report content. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | `0x1cb8f6cecf7c8fbb9863417f8371cb2a076c9115` | KalaxMultiRewardV2Farm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x2f67f59b3629bf24962290db9ede0cd4127e606d` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [13326] Kalax_202405211051.pdf

Fork inheritance lineage and inherited audits are included when available.
