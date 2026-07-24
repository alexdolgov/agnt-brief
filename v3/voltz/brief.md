# Agentic Audit Brief: Voltz

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

- Project: Voltz (`voltz`)
- Website: [https://www.voltz.xyz](https://www.voltz.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, ethereum
- Contract surface: 122 unique implementations (122 raw deployments)
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
- Outside the address book: 71 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 121
- Unique implementations: 122
- Raw deployments: 122
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

### ❓ Unverified (121)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261720 | `0x073a229ffd8aee1e5dc66662afa84134bd6567a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0756d4a02742c81ba1c234ee3d614f706b35e3c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261721 | `0x07ced903e6ad0278cc32bc83a3fc97112f763722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07d6d75ca125a252aef4d5647198446e5edc5bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09a56374ac3824dee4323c8ce009630fc7e362e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b5cd43dc1d9ee00deec4afe533d1750778d3a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d625b90aa5af536aa73089814fa4311e3793a5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261722 | `0x10bf33cbdddcfca2c2d8ccf3d339ac34215f6375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13e9053d9090ed6a1fae3f59f9bd3c1fca4c5726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1963efb3b756e7d17d0e54645339e7e037705cc1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261723 | `0x2108488ee280e1e7bba4bbfa306708b10b05d370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x225b8a07f2a98526902f1ae17ce6c75bfa04f727` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261724 | `0x2457d958dbebacc9daa41b47592faca5845f8fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2657101a6bb5538dd84b0b8c8e2deac667b9c66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c3f02d519bbfd10aa8ff3c601b07b28a83d4163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d2ee238ca74b546bfa64864f5654b5ed7673f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x301daa8518359c43be776e6cccb9f7d01121a51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3451e5418ee5a925f3e786dfc673ba0b0fbe5936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36e3d9e6f22d9e02039fa6ec1cd073216e4d3e8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261725 | `0x389e3d92ece74136c1f28d3c65f6e374e2d8c02d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a0ec445160ccc36d1fa01ed07fbd0f41f99d2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ac3a772d20446f59d9e3ea03b01b4a3a9a9f474` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261726 | `0x41ecaac9061f6babf2d42068f8f8daf3ba9644ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44e1d5aecb7b4d191f37f1933a30343046bd9adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x472880f83ffc43bd326c234b5dee83e94e37d120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4905fb6d8674f6fe415786608043e1904625b1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52ab3585ab57569cd731e1c60b7c8562c09780a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261727 | `0x55a6c7c923b33b4b4cb119c5ee3f10cf841f4e18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261728 | `0x575bf19c89e91278a5a29c83e5401974bcba2894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64923446dd35d107dad740939b83bdac7ce2fbd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261729 | `0x65f5139977c608c6c2640c088d7fd07fa17a0614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6754d470616f59c312631c50750e0db9652c7441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6887711f4cadeba666cefa62d8692101d3c5826f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6975b83ef331e65d146e4c64fb45392cd2237a3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261730 | `0x6a7a5c3824508d03f0d2d24e0482bea39e08ccaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dc123ce9f33639a950c8674da3c7eab0feb877d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72e47a2259bf32f10bae7fab8a13b3bb4445f42e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73128419ad185562ffbfdd9eeb71d151950423fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261731 | `0x7380df8abb0c44617c2a64bf2d7d92caa852f03f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261732 | `0x7482cbece2109a73a16cfc6f9e2b525cfd20456c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78c67d7213f1f20a792ee207d7c445c87fd28440` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261733 | `0x7b129f3ca06218cb8e9f74ec7ba8b35a88d52647` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261734 | `0x83449adb81ad6726f8274934eb60141be2ae035a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261735 | `0x852b9435d1373c7e1d51dd52aebd2aa54422c30d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x857119b6b4c787c7d02fe2a570cde1c9146871d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261736 | `0x8614b5fa62bbb45be5b320e1b6727e5828b5b513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86d6ebbf2ec6b3fe40deb5e2a94b87eea8613795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a2c16982878c6c6bb5ed9f823caae93c588cfa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b7d813944c0581436abd19aa0f1ffb7b5cd748a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261737 | `0x8c9b66bfb3c975e89e0ac3acc0f20c831dcfe676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f1f6017f0b186fc67260ee7ec9c9a9d7d032294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f762237a0d0f027aa12bf37856081d638d45be3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261738 | `0x8fdd62e435039d69de862e267cda02846c6c2f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x914643668d83c1eeef33fd8286bf514a9dea498e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261739 | `0x919674d599d8df8dd9e7ebaabfc2881089c5d91c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98ef9d8c14fe577e22b91484554bf8ff8e867bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c1100a321ab778ce5d3b42c7b99f44afc3a4c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c11ea3b4959e62b6e53351e98248c61ee177c47` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261740 | `0x9d9ea12c326a08bb5ca4773549bbc816391c7d3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261741 | `0x9f30ec6903f1728ca250f48f664e48c3f15038ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261742 | `0xa667502bf7f5da45c7b6a70da7f0595e6cf342d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261743 | `0xa6ba323693f9e9b591f79fbdb947c7330ca2d7ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa86b4e495ea6683d6c891edd04edb6104df19c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8ef4f40c4694be9a2e4e27a0501f04f00b454f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261744 | `0xacf1219d079ade19d9d9851021a89ed9e8448188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3438258f4c5597f3037dfe5515f1ab26e7219d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb34ff2f4ba8ece3ceb4570277d748c908ac13e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57737255386419ebd792f0e3c7b5ef69ab4fdc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5ed2c212a577fda7c546b153c0337a8bb3f2dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb664a02141e3bc61ee2544fdc54d1d9f3fdfbaa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68022b7a2bcf3a20af4529e866fb4590acc09ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9179d8623ff4e203b7bdced5b2c5907869e7422` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe74538cba79fc440f8809e01b36c97afbda23ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261745 | `0xc23f75272f324263d1032f8f2635a55c81e8054b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc26569fec2778147942b7f734a3605a2c4ab0524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc49ea7c71279738637470facb1b6359496546be8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261746 | `0xc5dd1861b6c189e205747598c85e18c2dc6898d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7527822d71ce6641db362a7a443de499a4d9c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8384f4f46d762f487284003033c764d4af624a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc86f3a28bac6a206aa04f0b23963da545fd52891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc3b4f054477c10c8c9ba1143d70251088c24bea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccea88ad59e648f4ec135f05c556ba75fa8cd89d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261747 | `0xd24047316b274d48dbb2fe20068c9cc849b76152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2e7862bb34698d86884e4ce6c4f5f4511c6ec8e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261748 | `0xd455eae775ca6c876004dfca0472dfce51d9abdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5a7494b6701901a3f180939d56f49b8d98ff413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6e133b9c82f04734b48d5808800078038231a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8244c2f76c39c3a81b07c3fc5a0e81dea8c248c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd94ddd106309db02d2263375c298813aab7f85d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbb86a7982f183ee0c52fce584e32c728acade98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe05879efa5ae2441f4f5ed9459c285286625ea3b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261749 | `0xe0cde6bed9e94ea527fd3863b9f8b53146159e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe452e9b00559c95db108101b339fa99e66e0078b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6a9686041522872a3338079154abe2d08f45428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf746d548ea12dd1b4fcb79ef8dbf65b51d2634df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf875b4bd81b1be40775652d8fdc174512c36db20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-261750 | `0xfa9ddf4569206625370d2a8546f42c1cc924063c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdec2e469f00fe8d16dc1fd5e86d5956fdda5444` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0acae90cc4927bad5ba6a51754771582783a95bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261763 | `0x36e3d9e6f22d9e02039fa6ec1cd073216e4d3e8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261764 | `0x4870b57e2e4baa82ac8cc87350a2959e4b51694f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261765 | `0x48d21b1de28401b1f3ce75035fe44027e352ad99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261766 | `0x54b868b03c68a1307b24fb0a4b60b18a0714a94c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261767 | `0x8b535e76b2602a38631e54945d5cc00799614a4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261768 | `0x9645206566d453da132f9a8994ca923071709961` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-261769 | `0x9f30ec6903f1728ca250f48f664e48c3f15038ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa24ee30a27c7ba4f29c615cabd38be8c4c783374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea5cb8ba422f63bab06a5eeb4b6d1351f22b0eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf439fd56d856d03aa740dd1c417519ff6301f128` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 71
- Live contracts: 0
- Unknown liveness contracts: 71
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=71

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | unverified unclassified | UnnamedContract<br>`0x0acae90cc4927bad5ba6a51754771582783a95bb` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa24ee30a27c7ba4f29c615cabd38be8c4c783374` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xea5cb8ba422f63bab06a5eeb4b6d1351f22b0eb0` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf439fd56d856d03aa740dd1c417519ff6301f128` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0756d4a02742c81ba1c234ee3d614f706b35e3c4` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07d6d75ca125a252aef4d5647198446e5edc5bba` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09a56374ac3824dee4323c8ce009630fc7e362e6` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b5cd43dc1d9ee00deec4afe533d1750778d3a92` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d625b90aa5af536aa73089814fa4311e3793a5d` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13e9053d9090ed6a1fae3f59f9bd3c1fca4c5726` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1963efb3b756e7d17d0e54645339e7e037705cc1` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x225b8a07f2a98526902f1ae17ce6c75bfa04f727` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2657101a6bb5538dd84b0b8c8e2deac667b9c66c` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c3f02d519bbfd10aa8ff3c601b07b28a83d4163` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d2ee238ca74b546bfa64864f5654b5ed7673f87` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x301daa8518359c43be776e6cccb9f7d01121a51c` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3451e5418ee5a925f3e786dfc673ba0b0fbe5936` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36e3d9e6f22d9e02039fa6ec1cd073216e4d3e8c` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a0ec445160ccc36d1fa01ed07fbd0f41f99d2c7` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ac3a772d20446f59d9e3ea03b01b4a3a9a9f474` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x44e1d5aecb7b4d191f37f1933a30343046bd9adb` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x472880f83ffc43bd326c234b5dee83e94e37d120` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4905fb6d8674f6fe415786608043e1904625b1ac` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x52ab3585ab57569cd731e1c60b7c8562c09780a5` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64923446dd35d107dad740939b83bdac7ce2fbd2` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6754d470616f59c312631c50750e0db9652c7441` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6887711f4cadeba666cefa62d8692101d3c5826f` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6975b83ef331e65d146e4c64fb45392cd2237a3c` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6dc123ce9f33639a950c8674da3c7eab0feb877d` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72e47a2259bf32f10bae7fab8a13b3bb4445f42e` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x73128419ad185562ffbfdd9eeb71d151950423fe` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x78c67d7213f1f20a792ee207d7c445c87fd28440` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x857119b6b4c787c7d02fe2a570cde1c9146871d6` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86d6ebbf2ec6b3fe40deb5e2a94b87eea8613795` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a2c16982878c6c6bb5ed9f823caae93c588cfa6` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b7d813944c0581436abd19aa0f1ffb7b5cd748a` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f1f6017f0b186fc67260ee7ec9c9a9d7d032294` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f762237a0d0f027aa12bf37856081d638d45be3` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x914643668d83c1eeef33fd8286bf514a9dea498e` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98ef9d8c14fe577e22b91484554bf8ff8e867bee` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c1100a321ab778ce5d3b42c7b99f44afc3a4c41` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c11ea3b4959e62b6e53351e98248c61ee177c47` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa86b4e495ea6683d6c891edd04edb6104df19c70` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa8ef4f40c4694be9a2e4e27a0501f04f00b454f3` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb3438258f4c5597f3037dfe5515f1ab26e7219d0` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb34ff2f4ba8ece3ceb4570277d748c908ac13e14` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb57737255386419ebd792f0e3c7b5ef69ab4fdc7` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb5ed2c212a577fda7c546b153c0337a8bb3f2dca` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb664a02141e3bc61ee2544fdc54d1d9f3fdfbaa0` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb68022b7a2bcf3a20af4529e866fb4590acc09ac` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9179d8623ff4e203b7bdced5b2c5907869e7422` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe74538cba79fc440f8809e01b36c97afbda23ce` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc26569fec2778147942b7f734a3605a2c4ab0524` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc49ea7c71279738637470facb1b6359496546be8` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc7527822d71ce6641db362a7a443de499a4d9c9d` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8384f4f46d762f487284003033c764d4af624a3` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc86f3a28bac6a206aa04f0b23963da545fd52891` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc3b4f054477c10c8c9ba1143d70251088c24bea` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xccea88ad59e648f4ec135f05c556ba75fa8cd89d` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2e7862bb34698d86884e4ce6c4f5f4511c6ec8e` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd5a7494b6701901a3f180939d56f49b8d98ff413` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6e133b9c82f04734b48d5808800078038231a22` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8244c2f76c39c3a81b07c3fc5a0e81dea8c248c` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd94ddd106309db02d2263375c298813aab7f85d2` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdbb86a7982f183ee0c52fce584e32c728acade98` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe05879efa5ae2441f4f5ed9459c285286625ea3b` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe452e9b00559c95db108101b339fa99e66e0078b` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe6a9686041522872a3338079154abe2d08f45428` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf746d548ea12dd1b4fcb79ef8dbf65b51d2634df` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf875b4bd81b1be40775652d8fdc174512c36db20` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfdec2e469f00fe8d16dc1fd5e86d5956fdda5444` | non_address_book | unknown | unknown | unverified | n/a | `0xf8f6b70a36f4398f0853a311dc6699aba8333cc1` |

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
| needs_review | 121 |

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
