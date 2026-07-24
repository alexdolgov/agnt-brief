# Agentic Audit Brief: SSV Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 20 (2 matched; 18 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: SSV Network (`ssv-network`)
- Website: [https://ssv.network/](https://ssv.network/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 78 unique implementations (78 raw deployments)
- Coverage basis: 1/4 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,756,442,354.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SSV Network. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across ethereum. Structural roles: 2 supporting, 1 core, 1 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: supporting (2), core (1), infra (1)
- Contract kinds: contract (4)
- Detected standards: erc1967proxy (2), erc165 (1), erc20 (1)
- Frameworks: openzeppelin (2), foundry (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9d65ff81a3c488d585bbfb0bfe3c7707c7917f54`, chain 1)
- UnnamedContract (`0xafe830b6ee262ba11cce5f32fdcd760ffe6a66e4`, chain 1)
- UnnamedContract (`0xd7de1a7f07d5cf5766d8f9c67b036f6ab554c522`, chain 1)
- UnnamedContract (`0xdd9bc35ae942ef0cfa76930954a156b3ff30a4e1`, chain 1)
- UnnamedContract (`0xe16d6138b1d2ad4fd6603acdb329ad1a6cd26d9f`, chain 1)
- UnnamedContract (`0xec29418bc30fed20de85706f32c7d77da0be7afb`, chain 1)
- CSSVToken (`0xe018d31f120a637828f46afd6c64ec099d960546`, chain 1)
- DepositContract (`0x00000000219ab540356cbb839cbe05303d7705fa`, chain 1)
- DEXV2 (`0x2bf73a478cc6a7ba4e6758a3a52abdc8cdba735e`, chain 1)
- GnosisSafe (`0xb35096b074fdb9bbac63e3adae0bbde512b2e6b6`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/4 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 68 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 10 of 78 unique; 68 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/21
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 57
- Unique implementations: 78
- Raw deployments: 78
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 2 fresh, 3 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 1 | 4.8% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CSSVToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392965 | `0xe018d31f120a637828f46afd6c64ec099d960546` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CumulativeMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13006e447608bb62383d1d59bb11a93e957be7cf` | ⚠️ Unaudited |
| DepositContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392960 | `0x00000000219ab540356cbb839cbe05303d7705fa` | ⚠️ Unaudited |
| DEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77511aa462c73c28016084477e5c7dfc315db8b1` | ⚠️ Unaudited |
| DEXV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392968 | `0x2bf73a478cc6a7ba4e6758a3a52abdc8cdba735e` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392969 | `0xb35096b074fdb9bbac63e3adae0bbde512b2e6b6` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16e6bddf4a1683c029ddc7aecb567a6095e95a6` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf8a99140871538ac7a6883890c83892af950bed` | ⚠️ Unaudited |
| SSVClusters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3611d36a7c052211d6f3b1a39326ad38a02832b4` | ⚠️ Unaudited |
| SSVDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6240ee8c276f17b9672eb2efea3472e13dccd511` | ⚠️ Unaudited |
| SSVNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050e94a68440531f3e89e93c33f349270e9d1750` | ⚠️ Unaudited |
| SSVNetworkSSVStakingUpgrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5220e9b259ef934c23baefe4dc98d0ab6e873e9e` | ⚠️ Unaudited |
| SSVNetworkUpgradeValidatorsPerOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32cd259417da4af4c506accbef7758fb352e988c` | ⚠️ Unaudited |
| SSVNetworkViews | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052e5f6bd9db71c08db38377596875cec5708a94` | ⚠️ Unaudited |
| SSVOperators | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x338554a41b6a2ec9325157c01666ad8b0ace6060` | ⚠️ Unaudited |
| SSVOperatorsWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb7dde81e068cd7f8f5dd8bfa34639eb97f3227d` | ⚠️ Unaudited |
| SSVStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b844e7abb9779f551ddccb5f0f34a54ec1c7034` | ⚠️ Unaudited |
| SSVToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584d44d3e36f3690a4170dad0238df5441d41f1c` | ⚠️ Unaudited |
| SSVValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9122fded65ed6b562243efdc9e55ff0bef5e7499` | ⚠️ Unaudited |
| SSVViews | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055051fa508eeda80c38de34ca936aba59642c45` | ⚠️ Unaudited |
| TokenVestingController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x051cd7c00d37d54a9eaacbb0ef17ab790d93e4a5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (57)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0315f11f3b0f49a883eedc48d4e91c7232f2206a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b09ea899279e761bff8f2ffb08ef380f3c5a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091fc2438cdee6c3474aaa83d603e56b750d620c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x238c9c4f6026924c7b51400fa63452faff8e959a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c14476920e931eb1da21edb4215792a68beaea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3768c0b9cc84713725007a31ea0752812a84e350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38daa3fc4b1e5c02742b67f241b27dceb8bffa45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b5c883cd76fbe9c9916407982075848454202b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d07b4e51ca86abe622174c17c6528374585264c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42cd8d240e30102b715d7516f97864ecec4441ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46ff854549f27b83647566f2fce6290462767768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fc072aa27b051fa53af89dd7fd3e38fc9ccf890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58410bef803ecd7e63b23664c586a6db72daf59c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5addb3f1529c5ec70d77400499ee4bbf328368fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dd8980c3c8b48bace3a2ec481bd61f7de1523a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60fb23e47b4220379821e7e999c00d626dbf5a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d0c96a5570460ea4b9ec05da14c51838652cb12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e1a5d27361c666f681af06535c8ac773e571d4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7352eec0e42dfc474ba0a5a7eb579491ce2907a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77eb6a2391d1266182c72b9871fbd8b8aa8ca300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78b314e29d2f0c3f9d7694a700b09c5e3d274c3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b6c84186be89bf0f28a3b5faacfed0b4d9d1c01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ab722746a83eae7158e55d43dc4ade5bb9e0212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed72ea26a367813793cd78345eeb7ff480a0d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93029dc6f03c951f353e51a8f16f722caa210e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94ef691daa32cc2d31897ae8767e02988f1add4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98febf8824028a212875d797aba88362a9b11cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99a26a746d950a2e117e1220a765a018bedb0029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c0d5400f82561ebe54110f2ad73ad76f2917943` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392961 | `0x9d65ff81a3c488d585bbfb0bfe3c7707c7917f54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f5d4ec84fc4785788ab44f9de973cf34f7a038e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2f1dadbb9e836b7ec47330ff9e5947d2f36fc35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa66523dfe45815ea82026d64f448bdbf1d966eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa72a8f31163d74d708664493d09167dfa13008e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadeb99eb2307f874d72b1f814fca106f6bfaa8e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392962 | `0xafe830b6ee262ba11cce5f32fdcd760ffe6a66e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1e718d775811af33382ef9850a8c2ca1097c8fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb54e555a7f8a0143c829c67f85fce71523621e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8471180c79a0a69c7790a1ccf62e91b3c3559bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc398c2935a274a3a39d86b4e3d36daba616442e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfa765f971b1d10b7bf989aad80cab817b92fe1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd302e99fee1bab03824ce9ae20c6c578908ccfa5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392963 | `0xd7de1a7f07d5cf5766d8f9c67b036f6ab554c522` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc1e8e50673b893c16c18d88e81e13b4415f6292` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392964 | `0xdd9bc35ae942ef0cfa76930954a156b3ff30a4e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392966 | `0xe16d6138b1d2ad4fd6603acdb329ad1a6cd26d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe183d6eeac469b1544f19cb5a37fe6ebfc913c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2d1cf93cd4d5e0eeef1b33ca51bb82c829a1b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8ceac3f59ef0214c957fd72f003bc9671a7196b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392967 | `0xec29418bc30fed20de85706f32c7d77da0be7afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedf62bbae1c246a2879d4cdf7d057843d236534a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1f0db1a6922978898f7399de4d96ebe52be6355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf26bfc86210e9b53f95f4dfdbded4b2a42e792ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf73954ad8c96647c2238e6b7a435557def23c19f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb4b40b288935c7c9b617f57463544a1fa361d21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcf30b51f20f8b00c02a489b6e05267b5fedc357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe11c3811ed58c518f5bd23adb1faac487a16cbc` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 47
- Live contracts: 0
- Unknown liveness contracts: 47
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=47

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0315f11f3b0f49a883eedc48d4e91c7232f2206a` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x04b09ea899279e761bff8f2ffb08ef380f3c5a70` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x091fc2438cdee6c3474aaa83d603e56b750d620c` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x238c9c4f6026924c7b51400fa63452faff8e959a` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x2c14476920e931eb1da21edb4215792a68beaea6` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x3768c0b9cc84713725007a31ea0752812a84e350` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x38daa3fc4b1e5c02742b67f241b27dceb8bffa45` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x3b5c883cd76fbe9c9916407982075848454202b0` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x3d07b4e51ca86abe622174c17c6528374585264c` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x42cd8d240e30102b715d7516f97864ecec4441ab` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x46ff854549f27b83647566f2fce6290462767768` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x4fc072aa27b051fa53af89dd7fd3e38fc9ccf890` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x5dd8980c3c8b48bace3a2ec481bd61f7de1523a9` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x60fb23e47b4220379821e7e999c00d626dbf5a52` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x6d0c96a5570460ea4b9ec05da14c51838652cb12` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x7352eec0e42dfc474ba0a5a7eb579491ce2907a3` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x77eb6a2391d1266182c72b9871fbd8b8aa8ca300` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x78b314e29d2f0c3f9d7694a700b09c5e3d274c3d` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x7b6c84186be89bf0f28a3b5faacfed0b4d9d1c01` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x8ab722746a83eae7158e55d43dc4ade5bb9e0212` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x8ed72ea26a367813793cd78345eeb7ff480a0d5f` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x93029dc6f03c951f353e51a8f16f722caa210e5f` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x94ef691daa32cc2d31897ae8767e02988f1add4f` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x98febf8824028a212875d797aba88362a9b11cc9` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x99a26a746d950a2e117e1220a765a018bedb0029` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0x9c0d5400f82561ebe54110f2ad73ad76f2917943` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xa2f1dadbb9e836b7ec47330ff9e5947d2f36fc35` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xa66523dfe45815ea82026d64f448bdbf1d966eb0` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xa72a8f31163d74d708664493d09167dfa13008e9` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xadeb99eb2307f874d72b1f814fca106f6bfaa8e9` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xb1e718d775811af33382ef9850a8c2ca1097c8fb` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xb54e555a7f8a0143c829c67f85fce71523621e45` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xb8471180c79a0a69c7790a1ccf62e91b3c3559bf` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xc398c2935a274a3a39d86b4e3d36daba616442e6` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xcfa765f971b1d10b7bf989aad80cab817b92fe1e` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xd302e99fee1bab03824ce9ae20c6c578908ccfa5` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xdc1e8e50673b893c16c18d88e81e13b4415f6292` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xe183d6eeac469b1544f19cb5a37fe6ebfc913c4e` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xe2d1cf93cd4d5e0eeef1b33ca51bb82c829a1b75` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xe8ceac3f59ef0214c957fd72f003bc9671a7196b` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xedf62bbae1c246a2879d4cdf7d057843d236534a` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xf1f0db1a6922978898f7399de4d96ebe52be6355` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xf26bfc86210e9b53f95f4dfdbded4b2a42e792ed` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xf73954ad8c96647c2238e6b7a435557def23c19f` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xfb4b40b288935c7c9b617f57463544a1fa361d21` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xfcf30b51f20f8b00c02a489b6e05267b5fedc357` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |
| unverified unclassified | UnnamedContract<br>`0xfe11c3811ed58c518f5bd23adb1faac487a16cbc` | non_address_book | unknown | unknown | unverified | n/a | `0x3187a42658417a4d60866163a4534ce00d40c0c8` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023-03-24_Quantstamp_v1.0.0-rc3.pdf (also discovered via alternate URL)](https://github.com/ssvlabs/ssv-network/blob/main/contracts/audits/2023-03-24_Quantstamp_v1.0.0-rc3.pdf) | Quantstamp | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [2023-10-30_Quantstamp_v1.0.2.pdf (also discovered via alternate URL)](https://github.com/ssvlabs/ssv-network/blob/main/contracts/audits/2023-10-30_Quantstamp_v1.0.2.pdf) | Quantstamp | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [2024-02-15_Quantstamp_v1.1.0.pdf (also discovered via alternate URL)](https://github.com/ssvlabs/ssv-network/blob/main/contracts/audits/2024-02-15_Quantstamp_v1.1.0.pdf) | Quantstamp | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2024-07-04_Quantstamp_v1.2.0.pdf (also discovered via alternate URL)](https://github.com/ssvlabs/ssv-network/blob/main/contracts/audits/2024-07-04_Quantstamp_v1.2.0.pdf) | Quantstamp | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [2026-04-10_Quantstamp_v2.0.0.pdf (also discovered via alternate URL)](https://github.com/ssvlabs/ssv-network/blob/main/contracts/audits/2026-04-10_Quantstamp_v2.0.0.pdf) | Quantstamp | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 38 | high |
| [Hacken_SSV_Labs_L1_SSV_Labs_SSV_Node_Aug2024_P_2024_1212_2_20241016.pdf](https://github.com/ssvlabs/ssv/blob/main/audits/Hacken_SSV_Labs_L1_SSV_Labs_SSV_Node_Aug2024_P_2024_1212_2_20241016.pdf) | Hacken | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Least Authority.pdf](https://github.com/ssvlabs/ssv/blob/main/audits/Least%20Authority.pdf) | Least Authority | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [SSV_SIGNER_FINAL_REPORT.pdf](https://github.com/ssvlabs/ssv/blob/main/audits/SSV_SIGNER_FINAL_REPORT.pdf) | Unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Least Authority - Coin Dash Ltd. SSV Specification Final Audit Report_Updated.pdf](https://github.com/ssvlabs/ssv-spec/blob/main/docs/audits/Least%20Authority%20-%20Coin%20Dash%20Ltd.%20SSV%20Specification%20Final%20Audit%20Report_Updated.pdf) | Least Authority | Audit | 2023-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [SlowMist Audit Report.pdf (also discovered via alternate URL)](https://github.com/ssvlabs/ssv-dkg/blob/main/audits/SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Least Authority.pdf](https://raw.githubusercontent.com/ssvlabs/ssv/a1bcd468ff667d88c7affa58dedb3345e3467f96/audits/Least%20Authority.pdf) | Hacken | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Least Authority - Coin Dash Ltd. SSV Specification Final Audit Report_Updated.pdf](https://raw.githubusercontent.com/ssvlabs/ssv-spec/5d11f26bc776d208cf33ad8a0e4ee4973e991568/docs/audits/Least%20Authority%20-%20Coin%20Dash%20Ltd.%20SSV%20Specification%20Final%20Audit%20Report_Updated.pdf) | Hacken | Audit | 2023-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [ChainSecurity Audit Report.pdf](https://github.com/ssvlabs/ssv-dkg/blob/main/audits/ChainSecurity%20Audit%20Report.pdf) | yAudit | Audit | 2024-11 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [quantstamp-ssv-oracle-2026-05-18.pdf](https://github.com/ssvlabs/ssv-oracle/blob/v0.3.0/audits/quantstamp-ssv-oracle-2026-05-18.pdf) | Quantstamp | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21100] 2023-03-24_Quantstamp_v1.0.0-rc3.pdf — no match: Extracted contracts from scope tables, file signatures, and module descriptions. Audit date is the latest fix review date (2023-07-21) from changelog.
- [21101] 2023-10-30_Quantstamp_v1.0.2.pdf — no match: Extracted 21 contract names from the appendix file signatures section. Audit date from changelog: final report update 2023-11-14.
- [21102] 2024-02-15_Quantstamp_v1.1.0.pdf — no match: Scope section explicitly lists 8 files under 'Scope Files Included'. Audit date is from changelog: '2024-02-14 - Final report'.
- [21103] 2024-07-04_Quantstamp_v1.2.0.pdf — no match: Extracted contract names from the appendix file signatures and scope description. Audit date from changelog: 2024-06-19 initial report.
- [21104] 2026-04-10_Quantstamp_v2.0.0.pdf — matched: All contracts listed in the 'Scope Files Included' section and the appendix file signatures are included. The audit date is the end date of the timeline (2026-02-26).
- [21105] Hacken_SSV_Labs_L1_SSV_Labs_SSV_Node_Aug2024_P_2024_1212_2_20241016.pdf — no match: The report is a blockchain protocol security analysis for SSV Labs, focusing on the SSV Node repository. No specific smart contract names are listed; the scope is the entire codebase. The audit date is explicitly given as '15/10/2024' on the cover page.
- [21106] Least Authority.pdf — no match: The audit report covers a Go implementation of SecretSharedValidator (SSV) and does not include any smart contracts. The scope is the Bloxapp/ssv repository, which is a Go project, not Solidity contracts. No contract names were found.
- [21107] SSV_SIGNER_FINAL_REPORT.pdf — no match: Scope explicitly lists files under ssvsigner/ directory. Audit date from timeline: 2025-05-05 through 2025-05-15, using end date.
- [21108] Least Authority - Coin Dash Ltd. SSV Specification Final Audit Report_Updated.pdf — no match: The audit is of a specification (SSV Spec), not smart contracts. No contract names found.
- [21109] SlowMist Audit Report.pdf — no match: The audit report is for a Go-based DKG tool (ssv-dkg), not smart contracts. No Solidity contracts or smart contract files are mentioned in scope.
- [21110] Least Authority.pdf — no match: The audit report covers a Go implementation of SecretSharedValidator (SSV) and does not include any smart contracts. The scope section lists a GitHub repository (bloxapp/ssv) but no specific contract names. The report mentions 'smart contracts' in context of event handling but does not name any specific contracts in scope.
- [21116] Least Authority - Coin Dash Ltd. SSV Specification Final Audit Report_Updated.pdf — no match: The audit report is for a specification (SSVSpecification), not for smart contracts. No contract names were found in scope.
- [21117] ChainSecurity Audit Report.pdf — no match: The audit scope lists directories and files (cli/, cmd/, pkgs/, result.go, resign.go, etc.) but no smart contract names were identified. The report is about a Go-based DKG tool, not smart contracts.
- [21119] quantstamp-ssv-oracle-2026-05-18.pdf — no match: Extracted 6 Go source files from the 'Scope Files Included' section. The audit date is the final report date (2026-05-18) from the changelog.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | SSVNetwork | unmatched — not counted | — | listed in scope and file signatures | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | SSVNetworkViews | unmatched — not counted | — | listed in scope and file signatures | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | SSVClusters | unmatched — not counted | — | mentioned as module contract | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | SSVDAO | unmatched — not counted | — | mentioned as module contract | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | SSVOperators | unmatched — not counted | — | mentioned as module contract | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | SSVViews | unmatched — not counted | — | mentioned as module contract | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | CoreLib | unmatched — not counted | — | file in scope | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | ProtocolLib | unmatched — not counted | — | file in scope | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | OperatorLib | unmatched — not counted | — | file in scope | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | ClusterLib | unmatched — not counted | — | file in scope | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | Types | unmatched — not counted | — | file in scope | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | Type256 | unmatched — not counted | — | mentioned in findings | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | SSVStorage | unmatched — not counted | — | file in scope | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | SSVStorageProtocol | unmatched — not counted | — | file in scope | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | RegisterAuth | unmatched — not counted | — | file in scope | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | SSVProxy | unmatched — not counted | — | mentioned in fix review | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | ISSVNetwork | unmatched — not counted | — | file in scope | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | ISSVNetworkCore | unmatched — not counted | — | file in scope | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | ISSVNetworkViews | unmatched — not counted | — | file in scope | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | ISSVClusters | unmatched — not counted | — | file in scope | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | ISSVDAO | unmatched — not counted | — | file in scope | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | ISSVOperators | unmatched — not counted | — | file in scope | no |
| 2023-03-24_Quantstamp_v1.0.0-rc3.pdf | ISSVViews | unmatched — not counted | — | file in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | SSVNetwork | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | SSVNetworkViews | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | SSVProxy | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | ISSVOperators | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | ISSVNetwork | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | ISSVViews | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | ISSVDAO | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | ISSVClusters | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | ISSVNetworkCore | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | SSVOperators | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | SSVViews | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | SSVClusters | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | SSVDAO | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | SSVStorage | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | SSVStorageProtocol | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | ValidatorLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | OperatorLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | CoreLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | ClusterLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | ProtocolLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-30_Quantstamp_v1.0.2.pdf | Types | unmatched — not counted | — | listed in scope | no |
| 2024-02-15_Quantstamp_v1.1.0.pdf | SSVNetwork | unmatched — not counted | — | listed in scope | no |
| 2024-02-15_Quantstamp_v1.1.0.pdf | ISSVClusters | unmatched — not counted | — | listed in scope | no |
| 2024-02-15_Quantstamp_v1.1.0.pdf | ISSVNetworkCore | unmatched — not counted | — | listed in scope | no |
| 2024-02-15_Quantstamp_v1.1.0.pdf | ClusterLib | unmatched — not counted | — | listed in scope | no |
| 2024-02-15_Quantstamp_v1.1.0.pdf | CoreLib | unmatched — not counted | — | listed in scope | no |
| 2024-02-15_Quantstamp_v1.1.0.pdf | OperatorLib | unmatched — not counted | — | listed in scope | no |
| 2024-02-15_Quantstamp_v1.1.0.pdf | ValidatorLib | unmatched — not counted | — | listed in scope | no |
| 2024-02-15_Quantstamp_v1.1.0.pdf | SSVClusters | unmatched — not counted | — | listed in scope | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | SSVNetwork | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | SSVNetworkViews | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | SSVProxy | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | ISSVOperators | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | ISSVNetwork | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | ISSVOperatorsWhitelist | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | ISSVViews | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | ISSVDAO | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | ISSVClusters | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | ISSVNetworkCore | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | ISSVWhitelistingContract | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | SSVOperators | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | SSVViews | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | SSVOperatorsWhitelist | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | SSVClusters | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | SSVDAO | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | SSVStorage | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | SSVStorageProtocol | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | ValidatorLib | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | OperatorLib | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | CoreLib | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | ClusterLib | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | ProtocolLib | unmatched — not counted | — | listed in appendix file signatures | no |
| 2024-07-04_Quantstamp_v1.2.0.pdf | Types | unmatched — not counted | — | listed in appendix file signatures | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVNetwork | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVNetworkViews | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVProxy | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | RegisterAuth | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | ICSSVToken | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | ISSVClusters | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | ISSVDAO | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | ISSVNetwork | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | ISSVNetworkCore | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | ISSVOperators | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | ISSVOperatorsWhitelist | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | ISSVStaking | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | ISSVValidators | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | ISSVViews | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | ISSVWhitelistingContract | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | ClusterLib | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | CoreLib | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | OperatorLib | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | ProtocolLib | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVCoreTypes | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVPackedLib | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVReentrancyGuardLib | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | ValidatorLib | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVStorage | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVStorageEB | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVStorageProtocol | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVStorageReentrancy | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVStorageStaking | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVClusters | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVDAO | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVOperators | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVOperatorsWhitelist | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVStaking | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVValidators | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVViews | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | CSSVToken | own contract | CSSVToken (selected) `0xe018d31f120a637828f46afd6c64ec099d960546` — deployed 2026-03-23 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-04-10_Quantstamp_v2.0.0.pdf | SSVToken | unmatched — not counted | — | listed in scope | no |
| 2026-04-10_Quantstamp_v2.0.0.pdf | BasicWhitelisting | unmatched — not counted | — | listed in scope | no |
| Hacken_SSV_Labs_L1_SSV_Labs_SSV_Node_Aug2024_P_2024_1212_2_20241016.pdf | SSV Node | unmatched — not counted | — | The scope section states: 'The scope consists of the full codebase of the SSV Node repository, including: Cryptography and EKM, QBFT consensus, Networking, Storage.' | no |
| SSV_SIGNER_FINAL_REPORT.pdf | client.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | main.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | doc.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | key_manager.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | local_key_manager.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | remote_key_manager.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | signer_storage.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | slashing_protector.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | rsa_encryption.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | jemalloc_check.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | keys.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | rsa.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | rsa_linux.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | file.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | server.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | types.go | unmatched — not counted | — | listed in scope files | no |
| SSV_SIGNER_FINAL_REPORT.pdf | web3signer/types.go | unmatched — not counted | — | — | no |
| SSV_SIGNER_FINAL_REPORT.pdf | web3signer.go | unmatched — not counted | — | listed in scope files | no |
| quantstamp-ssv-oracle-2026-05-18.pdf | syncer | unmatched — not counted | — | listed in scope | no |
| quantstamp-ssv-oracle-2026-05-18.pdf | parser | unmatched — not counted | — | listed in scope | no |
| quantstamp-ssv-oracle-2026-05-18.pdf | oracle | unmatched — not counted | — | listed in scope | no |
| quantstamp-ssv-oracle-2026-05-18.pdf | tree | unmatched — not counted | — | listed in scope | no |
| quantstamp-ssv-oracle-2026-05-18.pdf | client | unmatched — not counted | — | listed in scope | no |
| quantstamp-ssv-oracle-2026-05-18.pdf | updater | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x00000000219ab540356cbb839cbe05303d7705fa` | DepositContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2bf73a478cc6a7ba4e6758a3a52abdc8cdba735e` | DEXV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 139 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=6, medium=1
- Match method counts: unique_name=2

Zero-match audit list:

- [21100] 2023-03-24_Quantstamp_v1.0.0-rc3.pdf
- [21101] 2023-10-30_Quantstamp_v1.0.2.pdf
- [21102] 2024-02-15_Quantstamp_v1.1.0.pdf
- [21103] 2024-07-04_Quantstamp_v1.2.0.pdf
- [21105] Hacken_SSV_Labs_L1_SSV_Labs_SSV_Node_Aug2024_P_2024_1212_2_20241016.pdf
- [21106] Least Authority.pdf
- [21107] SSV_SIGNER_FINAL_REPORT.pdf
- [21108] Least Authority - Coin Dash Ltd. SSV Specification Final Audit Report_Updated.pdf
- [21109] SlowMist Audit Report.pdf
- [21110] Least Authority.pdf
- [21116] Least Authority - Coin Dash Ltd. SSV Specification Final Audit Report_Updated.pdf
- [21117] ChainSecurity Audit Report.pdf
- [21119] quantstamp-ssv-oracle-2026-05-18.pdf

Fork inheritance lineage and inherited audits are included when available.
