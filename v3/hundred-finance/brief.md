# Agentic Audit Brief: Hundred Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Hundred Finance (`hundred-finance`)
- Website: [https://hundred.finance/](https://hundred.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum, fantom, gnosis, harmony, moonriver, optimism, polygon
- Contract surface: 330 unique implementations (330 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $102,252.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Hundred Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, ethereum, fantom, gnosis, harmony, moonriver, optimism, polygon. Structural roles: 3 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), supporting (2)
- Contract kinds: contract (5)
- Detected standards: erc20 (5), erc20permit (5)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 5; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 235 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 95 discovered implementations shown in the inventory but excluded from coverage (14 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 324
- Unique implementations: 330
- Raw deployments: 330
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Hundred | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242214 | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ⚠️ Unaudited |
| Hundred | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-242216 | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ⚠️ Unaudited |
| Hundred | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-242218 | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ⚠️ Unaudited |
| Hundred | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ⚠️ Unaudited |
| Hundred | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonriver | unit-242220 | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ⚠️ Unaudited |
| Hundred | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-242223 | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (324)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x04208f296039f482810b550ae0d68c3e1a5eb719` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x090a00a2de0ea83def700b5e216f87a5d4f394fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0f390559f258eb8591c8e31cf0905e97cf36ace2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x10010069de6bd5408a6ded075cf6ae2498073c73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x103f2ca2148b863942397dbc50a425cc4f4e9a27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x243e33aa7f6787154a8e59d3c27a66db3f8818ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x26596af66a10cb6c6fe890273ed37980d50f2448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28707252fdea41b72cf321d153a6c01fa9f6fb79` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x29ddb4c4f9baae366dbd40eff79d364e004425b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c7a9d9919f042c4c120199c69e126124d09be7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x30a026ae9e2a1363e96a5e5ab12786a46066beb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x36208a6d429b056be6be5fa81cdf4092748ac35d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x376020c5b0ba3fd603d7722381faa06da8078d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bd6446091bb8b47925fe9217c9a8039e0982fba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x55bba7755b77420d3d3c966440164f15a74f8696` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x607312a5c671d0c511998171e634de32156e69d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626915a1beff83240ea1290a3269d4849a7b599d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6bb6ebcf3ac808e26545d59ea60f27a202ce8586` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6edcb931168c9f7c20144f201537c0243b19dca4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x772918d032cfd4ff09ea7af623e56e2d8d96bb65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x83307d16c4dcebc69162ad7444a38cbf569e3603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b7966c756e5d8827594d59b52d9a0d7b1aa3dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x89db3b59381bc06fe9bf74532afd777e5f78ef02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a0d639f272f4b966b2dea42d4b743dce7e82c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c6139ff1e9d7c1e32bdafd79948d0895ba0a831` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8e15a22853a0a60a0fbb0d875055a8e66cff0235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d56800b8ae23b79fe9d4822aa3245fa527caf3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa57cf50ecdf1e5d20ca4398dea325c1b7d81fe81` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa8236eafbaf1c3d39396de566ceea6f320e3db00` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xaf5800324e355c9eaa2075cad6717ff1ddf067db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb1c4426c86082d91a6c097fc588e5d5d8dd1f5a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | n/a | `0xb426c1b7fabea9ea6a273e8427040568a8c7df13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb4300e088a3ae4e624ee5c71bc1822f68bb5f2bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb8481a3ce515ea8caa112dba0d1ecfc03937fbcd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbb93c7f378b9b531216f9ad7b5748be189a55807` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbc16da9df0a22f01a16bc0620a27e7d6d6488550` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbd193db8a909cac57cdb981ea81b5dc270287f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf689f50cb446f171f08691367f7d9398b24d382` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe223af4ad418d5a18fe6ed5500abab3dfa38e86b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe4e43864ea18d5e5211352a4b810383460ab7fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8a3327f353863292dcc972b160fe55dbf123fca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | n/a | `0xe8f12f5492ec28609d2932519456b7436d6c93bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xebd7f3349aba8bb15b897e03d6c1a4ba95b55e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xedba32185baf7fef9a26ca567bc4a6cbe426e499` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xfcd8570ad81e6c77b8d252bebeba62ed980bd64d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0145be461a112c60c12c34d5bc538d10670e99ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0728e3d57115604ce604e35c2fa14215aeca881c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x090a00a2de0ea83def700b5e216f87a5d4f394fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0f390559f258eb8591c8e31cf0905e97cf36ace2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x10010069de6bd5408a6ded075cf6ae2498073c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x103f2ca2148b863942397dbc50a425cc4f4e9a27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x10e08556d6fdd62a9ce5b3a5b07b0d8b0d093164` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x1a61a72f5cf5e857f15ee502210b81f8b3a66263` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x1f8e8472e124f58b7f0d2598eae3f4f482780b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x243e33aa7f6787154a8e59d3c27a66db3f8818ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x274e94f03ac51779d14bd45af77c0e0e9d97cef9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x2808a9f0a3af7fcf5dc2ef389f28043560ca07fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x28707252fdea41b72cf321d153a6c01fa9f6fb79` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x35594e4992dfefcb0c20ec487d7af22a30bdec60` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x371cb7683ba0639a21f31e0b20f705e45bc18896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x42b458056f887fd665ed6f160a59afe932e1f559` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x55bba7755b77420d3d3c966440164f15a74f8696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x607312a5c671d0c511998171e634de32156e69d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x641f26c67a5d0829ae61019131093b6a7c7d18a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x74b8932801bfbf63b44b001d77e62c808b1e2d12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x76e47710aee13581ba5b19323325ca31c48d4cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x772918d032cfd4ff09ea7af623e56e2d8d96bb65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x89db3b59381bc06fe9bf74532afd777e5f78ef02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8a0d639f272f4b966b2dea42d4b743dce7e82c28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x8c6139ff1e9d7c1e32bdafd79948d0895ba0a831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e15a22853a0a60a0fbb0d875055a8e66cff0235` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x988174f4ab5ad41e1313f1b07877dfe4a78ce5f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9d56800b8ae23b79fe9d4822aa3245fa527caf3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa8236eafbaf1c3d39396de566ceea6f320e3db00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa8cd5d59827514bcf343ec19f531ce1788ea48f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xa9f89108bb45c2805eea20021fe2205ce662fd02` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xac8204a9d79ca87d192ea98a9381600642a66a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb426c1b7fabea9ea6a273e8427040568a8c7df13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xb994b84bd13f7c8dd3af5bee9dfac68436dcf5bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbb93c7f378b9b531216f9ad7b5748be189a55807` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xbe7ca18470b4ab61741bc2dcad50b1d4052b6b04` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xc9f08308fe6724bd7f0e87e2661de2fdfcc9e8a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xd97a2591930e2da927b1903baa6763618bd7425b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe4e43864ea18d5e5211352a4b810383460ab7fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe8f12f5492ec28609d2932519456b7436d6c93bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xec378cdd60e890332f7a8cc251315327a4f244b6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xedba32185baf7fef9a26ca567bc4a6cbe426e499` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xf191d17dee9943f06bb784c0492805280aee0bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfcd8570ad81e6c77b8d252bebeba62ed980bd64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x090a00a2de0ea83def700b5e216f87a5d4f394fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x0f390559f258eb8591c8e31cf0905e97cf36ace2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x103f2ca2148b863942397dbc50a425cc4f4e9a27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x1b65edec9370a29adb618f741c22fdbe20eb68dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x2105de165ed364919703186905b9bb5b8015f13c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x243e33aa7f6787154a8e59d3c27a66db3f8818ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x28707252fdea41b72cf321d153a6c01fa9f6fb79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x29ddb4c4f9baae366dbd40eff79d364e004425b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x30a026ae9e2a1363e96a5e5ab12786a46066beb8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | n/a | `0x36208a6d429b056be6be5fa81cdf4092748ac35d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x376020c5b0ba3fd603d7722381faa06da8078d8a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x3bd6446091bb8b47925fe9217c9a8039e0982fba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x42b458056f887fd665ed6f160a59afe932e1f559` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x5835d6a367ded86dbc33ce796ed5013488d205c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5b9451b1bfae2a74d7b9d0d45bdd0e9a27f7bb22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x607312a5c671d0c511998171e634de32156e69d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x626915a1beff83240ea1290a3269d4849a7b599d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6bb6ebcf3ac808e26545d59ea60f27a202ce8586` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x6edcb931168c9f7c20144f201537c0243b19dca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x772918d032cfd4ff09ea7af623e56e2d8d96bb65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x818b3dff96d01590caf72965e6f50b24331efdec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x86b7966c756e5d8827594d59b52d9a0d7b1aa3dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x89aa51685a2b658be8a7b9c3af70d66557544181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x89db3b59381bc06fe9bf74532afd777e5f78ef02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8a0d639f272f4b966b2dea42d4b743dce7e82c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8c6139ff1e9d7c1e32bdafd79948d0895ba0a831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8e15a22853a0a60a0fbb0d875055a8e66cff0235` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x988174f4ab5ad41e1313f1b07877dfe4a78ce5f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x9c933bd604cd26e47efbaa3cf065d837c9c736db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9d56800b8ae23b79fe9d4822aa3245fa527caf3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa57cf50ecdf1e5d20ca4398dea325c1b7d81fe81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa8236eafbaf1c3d39396de566ceea6f320e3db00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa8cd5d59827514bcf343ec19f531ce1788ea48f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb426c1b7fabea9ea6a273e8427040568a8c7df13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb4300e088a3ae4e624ee5c71bc1822f68bb5f2bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xb8481a3ce515ea8caa112dba0d1ecfc03937fbcd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xb95842a5e114f5d65b5b96aee42c025331c9417a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbb93c7f378b9b531216f9ad7b5748be189a55807` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xbd193db8a909cac57cdb981ea81b5dc270287f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe223af4ad418d5a18fe6ed5500abab3dfa38e86b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe4e43864ea18d5e5211352a4b810383460ab7fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe8f12f5492ec28609d2932519456b7436d6c93bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xebd7f3349aba8bb15b897e03d6c1a4ba95b55e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xedba32185baf7fef9a26ca567bc4a6cbe426e499` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xf64e1a3ef0d2f5659dc4c10983e595b797c6eca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfcd8570ad81e6c77b8d252bebeba62ed980bd64d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x053d7e3611eedb390db9b8fc9381d215069e0276` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x090a00a2de0ea83def700b5e216f87a5d4f394fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x0d124443c853f8999ba14531b49e34d6540654d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x0f390559f258eb8591c8e31cf0905e97cf36ace2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x10010069de6bd5408a6ded075cf6ae2498073c73` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | unit-242222 | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x103f2ca2148b863942397dbc50a425cc4f4e9a27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x1747d329cb37e0a0f387f24065addbc60eab69dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x1b65edec9370a29adb618f741c22fdbe20eb68dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x2105de165ed364919703186905b9bb5b8015f13c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x243e33aa7f6787154a8e59d3c27a66db3f8818ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x30a026ae9e2a1363e96a5e5ab12786a46066beb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x376020c5b0ba3fd603d7722381faa06da8078d8a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x5b9451b1bfae2a74d7b9d0d45bdd0e9a27f7bb22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x629e95631602ad5751e79557f297c32c93598b64` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x6c63287cc629417e96b77dd7184748bb6536a4e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x6d62d6af9b82cdfa3a7d16601ddbcf8970634d22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x6decd736032c46e8b593b534b12acaed2830d3f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x7100cbca885905f922a19006cf7fd5d0e1bbb26c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x7bfe7b45c8019dedc66c695ac70b8fc2c0421584` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x818b3dff96d01590caf72965e6f50b24331efdec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x89aa51685a2b658be8a7b9c3af70d66557544181` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x8e15a22853a0a60a0fbb0d875055a8e66cff0235` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x9226f7304b547891ee257d64cfb8f8c2a42b42bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x988174f4ab5ad41e1313f1b07877dfe4a78ce5f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x989b2f0722808d9f9c574363fa8759e925f30f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xa0c94183a74cf22de491dcbb02fc7433267c6d32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xa8a00134d1d10ad5886fc4f70f7f3c8da83d7ab4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xa8cd5d59827514bcf343ec19f531ce1788ea48f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xb4300e088a3ae4e624ee5c71bc1822f68bb5f2bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xbb93c7f378b9b531216f9ad7b5748be189a55807` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xc0f112479c83a603ac4dc76f616536389a85a917` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xcabc8fc306fcaa4c05b58522b13756ae12edd902` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xd0bb8e4e4dd5fdcd5d54f78263f5ec8f33da4c95` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xd6fcbccfc375c2c61d7ee2952b329dceba2d4e10` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xd7a8de0672131668be0366cf517dbd1c369ce200` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xe4e43864ea18d5e5211352a4b810383460ab7fcc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xebd7f3349aba8bb15b897e03d6c1a4ba95b55e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xedba32185baf7fef9a26ca567bc4a6cbe426e499` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xedc7905a491ff335685e2f2f1552541705138a3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xf347b0e405249c78d8b261b7c493449b9275b946` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xfc2d09642a3ef8b9bef2264138e23e6dceac20db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xfcd8570ad81e6c77b8d252bebeba62ed980bd64d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x08110737cb8276b155ab18533dacf7d27e2357c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x090a00a2de0ea83def700b5e216f87a5d4f394fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0f390559f258eb8591c8e31cf0905e97cf36ace2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0fffd1cd3ec77342ff5fda1a21ee6307de779e7d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonriver | n/a | `0x10010069de6bd5408a6ded075cf6ae2498073c73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x2184fc0c20616af78ce0bc69bb0443f29976b870` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x21a4961b11c940fbef57b1eb64fd646c880377e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x243e33aa7f6787154a8e59d3c27a66db3f8818ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x28707252fdea41b72cf321d153a6c01fa9f6fb79` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x29ddb4c4f9baae366dbd40eff79d364e004425b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x30a026ae9e2a1363e96a5e5ab12786a46066beb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x30d0a2a680181643c3283a195d2f4898eb5bf01c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x371f3ad36072230424c828629d53b0dbd93c8273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3bd6446091bb8b47925fe9217c9a8039e0982fba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x42b458056f887fd665ed6f160a59afe932e1f559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x530d28814af3155b6eaee3ee14e5f4d869a87703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x53996e1e5d4f3973b1168b97440ae1ea90da562f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x55bba7755b77420d3d3c966440164f15a74f8696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5b67ef93f4cbe141dafdc2b71af63b794ac6c133` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x5b9451b1bfae2a74d7b9d0d45bdd0e9a27f7bb22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x607312a5c671d0c511998171e634de32156e69d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x77d2ba154f0fe170fc8c6f7bfe8c156dfd1c1e8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x7a143fe393c8ec031e8a27129ab523ffc2c3125d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x7d166777bd19a916c2edf5f1fc1ec138b37e7391` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x88d4768e986dc1fcda7c6e7e5e70f4457efd1fe9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x89db3b59381bc06fe9bf74532afd777e5f78ef02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8a0d639f272f4b966b2dea42d4b743dce7e82c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8c6139ff1e9d7c1e32bdafd79948d0895ba0a831` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x8e15a22853a0a60a0fbb0d875055a8e66cff0235` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x9226f7304b547891ee257d64cfb8f8c2a42b42bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9287a2310da4fcd0ecaf520d46109d5ba608e66e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x951604a32e0de8829bc7d72d5a73b4e386c07383` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x9c15a48a2ce440298815f64ddd5de91800ad89ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9c933bd604cd26e47efbaa3cf065d837c9c736db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9d56800b8ae23b79fe9d4822aa3245fa527caf3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xa8a00134d1d10ad5886fc4f70f7f3c8da83d7ab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa8cd5d59827514bcf343ec19f531ce1788ea48f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa9aa802429772626fccd91d9b6a6b955bd811ff3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xaf4ab36d625344caaf09b5db0cbb17f05290c4a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0xb1c4426c86082d91a6c097fc588e5d5d8dd1f5a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0xb426c1b7fabea9ea6a273e8427040568a8c7df13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0xb4300e088a3ae4e624ee5c71bc1822f68bb5f2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb9960251609e5b545416e87abb375303b1162c3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0xbb93c7f378b9b531216f9ad7b5748be189a55807` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xbd193db8a909cac57cdb981ea81b5dc270287f19` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xbe7ca18470b4ab61741bc2dcad50b1d4052b6b04` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xc0f112479c83a603ac4dc76f616536389a85a917` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xca78ca5c3da9a5a4c960c1757456e99d9f1bc76d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd02de249b668cb71075f96e3a07667fb876193f6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xd6fcbccfc375c2c61d7ee2952b329dceba2d4e10` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xd7a8de0672131668be0366cf517dbd1c369ce200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdf46a104b1a0341ee1dbaaa015b96ba78330261a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0xe4e43864ea18d5e5211352a4b810383460ab7fcc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0xe8f12f5492ec28609d2932519456b7436d6c93bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xedba32185baf7fef9a26ca567bc4a6cbe426e499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xeea62ed232ff4ccb6425d41afb1b0b41d34f3114` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xf347b0e405249c78d8b261b7c493449b9275b946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xfcd8570ad81e6c77b8d252bebeba62ed980bd64d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x04208f296039f482810b550ae0d68c3e1a5eb719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x090a00a2de0ea83def700b5e216f87a5d4f394fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x0aae77df7609933c9d9c96f1132c7d9a2bb4386e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x0f390559f258eb8591c8e31cf0905e97cf36ace2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x10010069de6bd5408a6ded075cf6ae2498073c73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x103f2ca2148b863942397dbc50a425cc4f4e9a27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x12872ce4b8fcc02cbcc3266d11ef5135d8824a8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x23ffb3687d3800fddde75e7e604392fea15c8757` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x24099000ae45558ce4d049ad46ddaaf71429b168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x243e33aa7f6787154a8e59d3c27a66db3f8818ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x26596af66a10cb6c6fe890273ed37980d50f2448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28707252fdea41b72cf321d153a6c01fa9f6fb79` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x29ddb4c4f9baae366dbd40eff79d364e004425b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x36208a6d429b056be6be5fa81cdf4092748ac35d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x3752f823a8e5bfe706203c87fb5bbbd33b943f02` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x376020c5b0ba3fd603d7722381faa06da8078d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bd6446091bb8b47925fe9217c9a8039e0982fba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x546fed3cb55b36738ee3c9f2c95e9e9412d657e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b9451b1bfae2a74d7b9d0d45bdd0e9a27f7bb22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x5ba443267c09578bfd87e033a401f69d37fe677e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x603c5919fcfb13423b963b04d55d1b393da88a7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x607312a5c671d0c511998171e634de32156e69d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x626915a1beff83240ea1290a3269d4849a7b599d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x65e17c52128396443d4a9a61eacf0970f05f8a20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x67350769c7fab430894911f29a1c2b1211a75aed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x6a658b955a29625fdfff0cc8a108cfea044480c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x6b5f15e939c8d797e6bd8d5ffda24edec655d08d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x6bb6ebcf3ac808e26545d59ea60f27a202ce8586` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x772918d032cfd4ff09ea7af623e56e2d8d96bb65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x7cec58ee233624888294fb194c224ebf66ff37b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x89db3b59381bc06fe9bf74532afd777e5f78ef02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a0d639f272f4b966b2dea42d4b743dce7e82c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c6139ff1e9d7c1e32bdafd79948d0895ba0a831` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x8e15a22853a0a60a0fbb0d875055a8e66cff0235` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x948dd24cb3a341f5d25dd31d986205ef037f0a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d56800b8ae23b79fe9d4822aa3245fa527caf3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8236eafbaf1c3d39396de566ceea6f320e3db00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8cd5d59827514bcf343ec19f531ce1788ea48f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xb1c4426c86082d91a6c097fc588e5d5d8dd1f5a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb426c1b7fabea9ea6a273e8427040568a8c7df13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xb4300e088a3ae4e624ee5c71bc1822f68bb5f2bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xb4bafc3d60662de362c0cb0f5e2de76603ea77d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xb5d66fb34dd0d874709fdb4682c89bb634e7c364` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xb8481a3ce515ea8caa112dba0d1ecfc03937fbcd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xb982841d8caf7ccc1b5c8ec414347316f54a06c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xba0649b1a51ab1f0074e26ba164b26ebf6e9a91e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xba427ddccba3b63497d8148276bf64783fabbe7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xba57440fa35fdb671e58f6f56c1a4447ab1f6c2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xbb93c7f378b9b531216f9ad7b5748be189a55807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf689f50cb446f171f08691367f7d9398b24d382` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc246f4d921dd446ce5c6bb3aabd64c2d714e21c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe223af4ad418d5a18fe6ed5500abab3dfa38e86b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4e43864ea18d5e5211352a4b810383460ab7fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8a3327f353863292dcc972b160fe55dbf123fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8f12f5492ec28609d2932519456b7436d6c93bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xebd7f3349aba8bb15b897e03d6c1a4ba95b55e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xedba32185baf7fef9a26ca567bc4a6cbe426e499` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xf191d17dee9943f06bb784c0492805280aee0bf9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xf287c37a433a9d5162898a94cf69827359bad148` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xfcd8570ad81e6c77b8d252bebeba62ed980bd64d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x0f390559f258eb8591c8e31cf0905e97cf36ace2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | harmony | n/a | `0x10010069de6bd5408a6ded075cf6ae2498073c73` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | harmony | unit-242221 | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x161ef5a92a3ec3e7c475f32dd7672474e63a709d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x1cf3993eba538e5f085333c86356622161dd8c0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x1db11cf7c332e797ac912e11b8762e0a4b24a836` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x29ddb4c4f9baae366dbd40eff79d364e004425b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x2c7a9d9919f042c4c120199c69e126124d09be7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x376020c5b0ba3fd603d7722381faa06da8078d8a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x5734bb74cfac69f1c34ba66ea6608ccdee6b81f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x61f95b38f880a6c5a4b7dd15560d7bb8b3e36f35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x6bb6ebcf3ac808e26545d59ea60f27a202ce8586` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x8a0d639f272f4b966b2dea42d4b743dce7e82c28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x8e15a22853a0a60a0fbb0d875055a8e66cff0235` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x96a0eea3a9cff74764b73a891c3b36a4f6b81181` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0xb11c769e66f1ecea06b5c30154b880200bf57c25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0xb1c4426c86082d91a6c097fc588e5d5d8dd1f5a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0xb4300e088a3ae4e624ee5c71bc1822f68bb5f2bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0xbb93c7f378b9b531216f9ad7b5748be189a55807` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0xc3bae38bfa2cbbe30f442649070408f484bd5882` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0xc79354d37bd6b290acc52c58798acaa3cecd0b1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0xe4e43864ea18d5e5211352a4b810383460ab7fcc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0xe8f12f5492ec28609d2932519456b7436d6c93bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0xf191d17dee9943f06bb784c0492805280aee0bf9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0xfcd8570ad81e6c77b8d252bebeba62ed980bd64d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 161
- Live contracts: 0
- Unknown liveness contracts: 161
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=67, unverified unclassified=94

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0x090a00a2de0ea83def700b5e216f87a5d4f394fe` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x0f390559f258eb8591c8e31cf0905e97cf36ace2` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x103f2ca2148b863942397dbc50a425cc4f4e9a27` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x243e33aa7f6787154a8e59d3c27a66db3f8818ee` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x26596af66a10cb6c6fe890273ed37980d50f2448` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x29ddb4c4f9baae366dbd40eff79d364e004425b0` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x30a026ae9e2a1363e96a5e5ab12786a46066beb8` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x36208a6d429b056be6be5fa81cdf4092748ac35d` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x376020c5b0ba3fd603d7722381faa06da8078d8a` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x607312a5c671d0c511998171e634de32156e69d0` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x6bb6ebcf3ac808e26545d59ea60f27a202ce8586` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x6edcb931168c9f7c20144f201537c0243b19dca4` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x772918d032cfd4ff09ea7af623e56e2d8d96bb65` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x89db3b59381bc06fe9bf74532afd777e5f78ef02` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x8e15a22853a0a60a0fbb0d875055a8e66cff0235` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xa8236eafbaf1c3d39396de566ceea6f320e3db00` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xb1c4426c86082d91a6c097fc588e5d5d8dd1f5a8` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xb4300e088a3ae4e624ee5c71bc1822f68bb5f2bc` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xb8481a3ce515ea8caa112dba0d1ecfc03937fbcd` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xbb93c7f378b9b531216f9ad7b5748be189a55807` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xbd193db8a909cac57cdb981ea81b5dc270287f19` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xe223af4ad418d5a18fe6ed5500abab3dfa38e86b` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xe4e43864ea18d5e5211352a4b810383460ab7fcc` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xebd7f3349aba8bb15b897e03d6c1a4ba95b55e31` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xedba32185baf7fef9a26ca567bc4a6cbe426e499` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xfcd8570ad81e6c77b8d252bebeba62ed980bd64d` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x0f390559f258eb8591c8e31cf0905e97cf36ace2` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x8c6139ff1e9d7c1e32bdafd79948d0895ba0a831` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xedba32185baf7fef9a26ca567bc4a6cbe426e499` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x0f390559f258eb8591c8e31cf0905e97cf36ace2` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x3bd6446091bb8b47925fe9217c9a8039e0982fba` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x42b458056f887fd665ed6f160a59afe932e1f559` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x626915a1beff83240ea1290a3269d4849a7b599d` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x6edcb931168c9f7c20144f201537c0243b19dca4` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x86b7966c756e5d8827594d59b52d9a0d7b1aa3dc` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x9c933bd604cd26e47efbaa3cf065d837c9c736db` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xb8481a3ce515ea8caa112dba0d1ecfc03937fbcd` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xbd193db8a909cac57cdb981ea81b5dc270287f19` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x21a4961b11c940fbef57b1eb64fd646c880377e4` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x243e33aa7f6787154a8e59d3c27a66db3f8818ee` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x30d0a2a680181643c3283a195d2f4898eb5bf01c` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x7d166777bd19a916c2edf5f1fc1ec138b37e7391` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x9226f7304b547891ee257d64cfb8f8c2a42b42bb` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x951604a32e0de8829bc7d72d5a73b4e386c07383` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xa8a00134d1d10ad5886fc4f70f7f3c8da83d7ab4` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xbd193db8a909cac57cdb981ea81b5dc270287f19` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xc0f112479c83a603ac4dc76f616536389a85a917` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xd6fcbccfc375c2c61d7ee2952b329dceba2d4e10` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xedba32185baf7fef9a26ca567bc4a6cbe426e499` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xf347b0e405249c78d8b261b7c493449b9275b946` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x0f390559f258eb8591c8e31cf0905e97cf36ace2` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x103f2ca2148b863942397dbc50a425cc4f4e9a27` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x26596af66a10cb6c6fe890273ed37980d50f2448` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x29ddb4c4f9baae366dbd40eff79d364e004425b0` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x36208a6d429b056be6be5fa81cdf4092748ac35d` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x376020c5b0ba3fd603d7722381faa06da8078d8a` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x607312a5c671d0c511998171e634de32156e69d0` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x6bb6ebcf3ac808e26545d59ea60f27a202ce8586` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x772918d032cfd4ff09ea7af623e56e2d8d96bb65` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x89db3b59381bc06fe9bf74532afd777e5f78ef02` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0x8e15a22853a0a60a0fbb0d875055a8e66cff0235` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xb1c4426c86082d91a6c097fc588e5d5d8dd1f5a8` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xb4300e088a3ae4e624ee5c71bc1822f68bb5f2bc` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xb8481a3ce515ea8caa112dba0d1ecfc03937fbcd` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xbb93c7f378b9b531216f9ad7b5748be189a55807` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xebd7f3349aba8bb15b897e03d6c1a4ba95b55e31` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| exact address book overlap | UnnamedContract<br>`0xfcd8570ad81e6c77b8d252bebeba62ed980bd64d` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x28707252fdea41b72cf321d153a6c01fa9f6fb79` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x2c7a9d9919f042c4c120199c69e126124d09be7c` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x3bd6446091bb8b47925fe9217c9a8039e0982fba` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x626915a1beff83240ea1290a3269d4849a7b599d` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x86b7966c756e5d8827594d59b52d9a0d7b1aa3dc` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x8a0d639f272f4b966b2dea42d4b743dce7e82c28` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x8c6139ff1e9d7c1e32bdafd79948d0895ba0a831` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x9d56800b8ae23b79fe9d4822aa3245fa527caf3f` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xa57cf50ecdf1e5d20ca4398dea325c1b7d81fe81` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xbf689f50cb446f171f08691367f7d9398b24d382` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xe8a3327f353863292dcc972b160fe55dbf123fca` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x090a00a2de0ea83def700b5e216f87a5d4f394fe` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x103f2ca2148b863942397dbc50a425cc4f4e9a27` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x243e33aa7f6787154a8e59d3c27a66db3f8818ee` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x28707252fdea41b72cf321d153a6c01fa9f6fb79` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x42b458056f887fd665ed6f160a59afe932e1f559` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x607312a5c671d0c511998171e634de32156e69d0` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x772918d032cfd4ff09ea7af623e56e2d8d96bb65` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x89db3b59381bc06fe9bf74532afd777e5f78ef02` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x8a0d639f272f4b966b2dea42d4b743dce7e82c28` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x8e15a22853a0a60a0fbb0d875055a8e66cff0235` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x9d56800b8ae23b79fe9d4822aa3245fa527caf3f` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xa8236eafbaf1c3d39396de566ceea6f320e3db00` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xa8cd5d59827514bcf343ec19f531ce1788ea48f8` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xb426c1b7fabea9ea6a273e8427040568a8c7df13` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xbb93c7f378b9b531216f9ad7b5748be189a55807` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xe4e43864ea18d5e5211352a4b810383460ab7fcc` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xe8f12f5492ec28609d2932519456b7436d6c93bd` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xfcd8570ad81e6c77b8d252bebeba62ed980bd64d` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x090a00a2de0ea83def700b5e216f87a5d4f394fe` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x103f2ca2148b863942397dbc50a425cc4f4e9a27` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x243e33aa7f6787154a8e59d3c27a66db3f8818ee` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x28707252fdea41b72cf321d153a6c01fa9f6fb79` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x29ddb4c4f9baae366dbd40eff79d364e004425b0` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x30a026ae9e2a1363e96a5e5ab12786a46066beb8` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x376020c5b0ba3fd603d7722381faa06da8078d8a` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x5b9451b1bfae2a74d7b9d0d45bdd0e9a27f7bb22` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x607312a5c671d0c511998171e634de32156e69d0` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x6bb6ebcf3ac808e26545d59ea60f27a202ce8586` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x772918d032cfd4ff09ea7af623e56e2d8d96bb65` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x89db3b59381bc06fe9bf74532afd777e5f78ef02` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x8a0d639f272f4b966b2dea42d4b743dce7e82c28` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x8c6139ff1e9d7c1e32bdafd79948d0895ba0a831` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x8e15a22853a0a60a0fbb0d875055a8e66cff0235` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x9d56800b8ae23b79fe9d4822aa3245fa527caf3f` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xa57cf50ecdf1e5d20ca4398dea325c1b7d81fe81` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xa8236eafbaf1c3d39396de566ceea6f320e3db00` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xa8cd5d59827514bcf343ec19f531ce1788ea48f8` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xb426c1b7fabea9ea6a273e8427040568a8c7df13` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xb4300e088a3ae4e624ee5c71bc1822f68bb5f2bc` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xbb93c7f378b9b531216f9ad7b5748be189a55807` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xe223af4ad418d5a18fe6ed5500abab3dfa38e86b` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xe4e43864ea18d5e5211352a4b810383460ab7fcc` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xe8f12f5492ec28609d2932519456b7436d6c93bd` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xebd7f3349aba8bb15b897e03d6c1a4ba95b55e31` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xedba32185baf7fef9a26ca567bc4a6cbe426e499` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xfcd8570ad81e6c77b8d252bebeba62ed980bd64d` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x0f390559f258eb8591c8e31cf0905e97cf36ace2` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x0fffd1cd3ec77342ff5fda1a21ee6307de779e7d` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x28707252fdea41b72cf321d153a6c01fa9f6fb79` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x3bd6446091bb8b47925fe9217c9a8039e0982fba` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x530d28814af3155b6eaee3ee14e5f4d869a87703` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x53996e1e5d4f3973b1168b97440ae1ea90da562f` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x5b67ef93f4cbe141dafdc2b71af63b794ac6c133` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x8a0d639f272f4b966b2dea42d4b743dce7e82c28` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x8c6139ff1e9d7c1e32bdafd79948d0895ba0a831` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x9287a2310da4fcd0ecaf520d46109d5ba608e66e` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x9c933bd604cd26e47efbaa3cf065d837c9c736db` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x9d56800b8ae23b79fe9d4822aa3245fa527caf3f` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xa8cd5d59827514bcf343ec19f531ce1788ea48f8` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xa9aa802429772626fccd91d9b6a6b955bd811ff3` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xb9960251609e5b545416e87abb375303b1162c3e` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xd02de249b668cb71075f96e3a07667fb876193f6` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xdf46a104b1a0341ee1dbaaa015b96ba78330261a` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xeea62ed232ff4ccb6425d41afb1b0b41d34f3114` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xfcd8570ad81e6c77b8d252bebeba62ed980bd64d` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x090a00a2de0ea83def700b5e216f87a5d4f394fe` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x243e33aa7f6787154a8e59d3c27a66db3f8818ee` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x28707252fdea41b72cf321d153a6c01fa9f6fb79` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x3bd6446091bb8b47925fe9217c9a8039e0982fba` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x5b9451b1bfae2a74d7b9d0d45bdd0e9a27f7bb22` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x626915a1beff83240ea1290a3269d4849a7b599d` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x8a0d639f272f4b966b2dea42d4b743dce7e82c28` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x8c6139ff1e9d7c1e32bdafd79948d0895ba0a831` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0x9d56800b8ae23b79fe9d4822aa3245fa527caf3f` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xa8236eafbaf1c3d39396de566ceea6f320e3db00` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xa8cd5d59827514bcf343ec19f531ce1788ea48f8` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xb426c1b7fabea9ea6a273e8427040568a8c7df13` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xbf689f50cb446f171f08691367f7d9398b24d382` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xe223af4ad418d5a18fe6ed5500abab3dfa38e86b` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xe4e43864ea18d5e5211352a4b810383460ab7fcc` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xe8a3327f353863292dcc972b160fe55dbf123fca` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xe8f12f5492ec28609d2932519456b7436d6c93bd` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |
| unverified unclassified | UnnamedContract<br>`0xedba32185baf7fef9a26ca567bc4a6cbe426e499` | non_address_book | unknown | unknown | unverified | n/a | `0xb16a11442878d6f1ef202ae63233a7c13e98fd7f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [02_Smart Contract Audit Percent Finance.pdf](https://github.com/chainsulting/Smart-Contract-Security-Audits/blob/master/Percent%20Finance/02_Smart%20Contract%20Audit%20Percent%20Finance.pdf) | unknown | Audit | 2020-09 | stale | Direct | address | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13250] 02_Smart Contract Audit Percent Finance.pdf — no match: The audit report explicitly lists two contracts in scope: ChainlinkPriceOracleProxy.sol and percentfinance.sol. The audit date is derived from the final document version date (29.09.2020).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 02_Smart Contract Audit Percent Finance.pdf | ChainlinkPriceOracleProxy | unmatched — not counted | — | Listed in tested contract files section with SHA256 hash and source URL. | no |
| 02_Smart Contract Audit Percent Finance.pdf | percentfinance | unmatched — not counted | — | Listed in tested contract files section with SHA256 hash and source URL. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 324 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [13250] 02_Smart Contract Audit Percent Finance.pdf

Fork inheritance lineage and inherited audits are included when available.
