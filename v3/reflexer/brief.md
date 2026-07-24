# Agentic Audit Brief: Reflexer

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 8 (2 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Reflexer (`reflexer`)
- Website: [https://reflexer.finance/](https://reflexer.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, ethereum, fantom, optimism, polygon
- Contract surface: 78 unique implementations (100 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,728,362.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Reflexer. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, ethereum, fantom, optimism, polygon. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xcee6aa1ab47d0fb0f24f51a3072ec16e20f90fce`, chain 1)
- UnnamedContract (`0xd6f3768e62ef92a9798e5a8cedd2b78907cecef9`, chain 1)
- UnnamedContract (`0xa71353bb71dda105d383b02fc2dd172c4d39ef8b`, chain 250)
- UnnamedContract (`0xaef5bbcbfa438519a5ea80b4c7181b4e78d419f2`, chain 42161)
- UnnamedContract (`0x97cd1cfe2ed5712660bb6c14053c0ecb031bff7d`, chain 43114)
- DSDelegateToken (`0x6243d8cea23066d098a15582d81a598b4e8391f4`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 68 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 6 of 78 unique; 72 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/26
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 52
- Unique implementations: 78
- Raw deployments: 100
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 1 | 3.8% | 2021-10 |
| Solidified | Tier 2 | 1 | 3.8% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DSDelegateToken | token | project_anchor | own_supporting | 0 | ethereum | unit-391353 | `0x6243d8cea23066d098a15582d81a598b4e8391f4` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CollateralJoin1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x15b99a6389521711c35057fec24baef89f8afb3f`; ethereum `0x2d3cd7b81c93f188f3cb8ad87c8acc73d6226e3a` | ⚠️ Unaudited |
| DSCompare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0f2275ba79bbce0bce0d019011eb0c96735f298d`; ethereum `0x10122261ff9520c590c0c3a679b7e3dfc8b09c64`; ethereum `0xae69b74f5d1ef4d6295d32af8bd99dcf5030df2f` | ⚠️ Unaudited |
| DSDelegateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdb58d359971ba3467430443067e8d8a8040e4b1` | ⚠️ Unaudited |
| DSRoles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1490a828957f1e23491c8d69273d684b15c6e25a`; ethereum `0xe4935d9d5f6edb309e2f525c2ec2dee35f6d8137` | ⚠️ Unaudited |
| FsmGovernanceInterface | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4778b3d2cebac0013c15e4b8ebeaa65b630df22b`; ethereum `0xe24f8b30fd28c90462c9bbc87a9a2a823636f533` | ⚠️ Unaudited |
| GebDeployPauseProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x27a54e99de813ce2e41baa7f44d1f19fba22b36d`; ethereum `0x7b48cdc0d95a60317cc99bab3ed54780096dd2bb` | ⚠️ Unaudited |
| GebPauseScheduleProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6a2714404be6613a952a80266840ffe916194632`; ethereum `0x757003fa93f369cc52e89bbf4fd9fa910790bc7e` | ⚠️ Unaudited |
| GebPollingEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa42f76d5362e87192e7bde72199e500a707dafd2`; ethereum `0xf7da963b88194a9bc6775e93d39c70c6e3f04f6f` | ⚠️ Unaudited |
| GebProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0ae26397e6d456359faf36c770304bbc3607153e`; ethereum `0x880cecbc56f48bce5e0ef4070017c0a4270f64ed` | ⚠️ Unaudited |
| GebProxyActionsGlobalSettlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x17b5d9914194a08c7ef14451ba15e8ae4f92cb93`; ethereum `0xc780b6cead0b892478feb71b9cb21ec3fdbe10d8` | ⚠️ Unaudited |
| GebProxyDebtAuctionActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x150f1532145d4e96f3c885ef7353850db05c5aef`; ethereum `0x8f29c9e54ee8b1efcefae8d4709ae176541e86c8` | ⚠️ Unaudited |
| GebProxyIncentivesActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x88a77b8ff53329f88b8b6f9e29835fec287349e0`; ethereum `0xba2e2edea9008c5aa633372945d05a5923af3547` | ⚠️ Unaudited |
| GebProxySurplusAuctionActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6f0faaea6767731ae14696f059248ee403c59e3b`; ethereum `0xd857d88b16f8487bd5bd430f119522703b2e91f5` | ⚠️ Unaudited |
| GebSafeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xaae51cffb17b933d5ec3fbde2dce34d0688dcf74`; ethereum `0xefe0b4ca532769a3ae758fd82e1426a03a94f185` | ⚠️ Unaudited |
| GetSafes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xae2b968aef1af041803ccec328ae65369db01133`; ethereum `0xdf4bc9aa98cc8ecd90ba2bee73ad4a1a9c8d202b` | ⚠️ Unaudited |
| GovActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0463bf18c2457b00402a7639fa1dfb7d60f659ee`; ethereum `0x8aedaf52d8d5c527a976f2f6653634c76003bf76` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x51812e07497586ce025d798bb44b6d11bbee3a01`; ethereum `0xf9a91f3018de8963e460c018c1b5c4c43f977e29` | ⚠️ Unaudited |
| OSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x049b02818ce4e15042242d335744f491cec49d18`; ethereum `0xe6f5377de93a361cd5531bdfbdf0f4b522e16b2b` | ⚠️ Unaudited |
| ProtocolTokenAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9b44db6b4aa6ba12aeefbd2db9416b52b5111a50`; ethereum `0xcb8479840a5576b1cafbb3fa7276e04df122fdc7` | ⚠️ Unaudited |
| RateSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x005fab4c9d1ef0f3e41cd27b26cf05680c3bf947`; ethereum `0xedeeaf31efdd655b4fb34a775ff60339bac6872b` | ⚠️ Unaudited |
| SAFEEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc88a9d330da1133df3a7bd823b95e52511a6962` | ⚠️ Unaudited |
| SingleSpotDebtCeilingSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2df48a0c4a07031f538353aa35d7ffa24e25ec1` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa706d4c39c315288113020f3e2d7e1095e912a20` | ⚠️ Unaudited |
| TokenBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb10409fc293f987841964c4fcfef887d9ece799b`; ethereum `0xe59432a4cfc4bf89acd8c5779b781f704937f12a` | ⚠️ Unaudited |
| TxManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa78e8573577c4a9bc0f83a36aea6784ef5607043`; ethereum `0xb7272627825d1cb633f705bc269f8e11126d7a25` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (52)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0273616e492e011c76c36522e22a4e1be14b644b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06691edb4cdc78fa22d7ed575bc24f8672c462ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0721f0846235e299ca3d286df31dfd1b68420747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f850d64846bfe8e6ab2737225fea90a51dc7c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x144b260fec7570c82ab49e0b5d8bfbf8989925e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c50e110f7231fc04eb4302b370b3bf07d16faf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24acc85528e6dd5b9c297fb8821522d36b1ae09f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28c06395a8373d45b91817604a20722b5cef5549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30cd6ce0ee8b0964671f294bc4401f506190159b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3202901e355f05ded11f16ee771f23d3be486425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3be18c3ede649ed0efa5a99e2020a5db5e106fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b2206d64492824c0cae9c7a963328fa1274f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49493932bcbc24580a4758006247e2788aeef370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aaacd38be6e92b0764463f9e61d423e3e18f65c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59405ff89d7810180108779884af6b39055e952a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5efe1f0251a7e7172af57d620d28f3a06b3a5e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6552bc6ae56754f69669a3089982a974bf543a64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68ac16ed107b2a733e625b36d95ef08d5ba57760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e6ea84bb2fce17afce8e1117ddc708142ef51c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7121415b6c944b61204d63750b08b5399ccc65fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x712cab233101c2962d32d5eb3f7697b74cacb116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x766bbe08bac7670ef86607ec52601e8040e9d19b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fc4054206167b2313a6486b477fdcb666f72e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87047317c25f4881c81a5a9043d70f982bc64f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d02d581c3b8ddd06f09d3364ee92d904c02f5dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94f468dbd2de11b0b2f6566ca3756d565f57c4bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97a0a0dace333d577c258ff4ed67b1d66287c533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98fd668d71b3e449479e1ef0545559af8eb196f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d1f48776bd1eb10bbecd83c87f1d0ea47bf7cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f02ddbfb4b045df83d45c4d644027fbd7d72a6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3d26613147e8155421068383d8751bd75e9845e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb13077d07afccf430e8353ce91bb157c7d983178` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3ad68940d3b59a5a0d36252ca298da359d8f719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba6eba2462dbd464ef28e253e1fb16add3b10ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcaa45ac45828ade1f768bc5e6b814fdb18768b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb310348eea212a6d55cf201717e644c2d7de1cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcddab801770b98950479ea897791951644859039` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391354 | `0xcee6aa1ab47d0fb0f24f51a3072ec16e20f90fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfa37dce6dfe80857c3b8dba100b592775ae2688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd07e2696d33f08e69e269a8258658c4f4264d671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd11b0b848d59146d9b3ea0b63bf36189d6c62f0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391355 | `0xd6f3768e62ef92a9798e5a8cedd2b78907cecef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda2dbe5929464d24fa05158ec73d1e7795dce0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf195a04ffa890ebb4359f64db9730697bc5525c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71774ee859d884ebb8c37cd94b2851cd2e68842` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-391356 | `0x7fb688ccf682d58f86d7e38e03f9d22e7705448b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-391357 | `0x00e5646f60ac6fb446f621d146b6e1886f002905` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-391358 | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-391359 | `0xa71353bb71dda105d383b02fc2dd172c4d39ef8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391360 | `0xaef5bbcbfa438519a5ea80b4c7181b4e78d419f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391361 | `0x97cd1cfe2ed5712660bb6c14053c0ecb031bff7d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-391362 | `0xd89dd8dcef91bee0a46d57681473b5ce824d3adf` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 85
- Live contracts: 0
- Unknown liveness contracts: 85
- Source-verified contracts: 43
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=8, contamination review=12, source verified unclassified=23, unverified unclassified=42

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | DSDelegateToken<br>`0xfdb58d359971ba3467430443067e8d8a8040e4b1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | candidate review | GebProxyActions<br>`0x0ae26397e6d456359faf36c770304bbc3607153e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | candidate review | GebProxyActions<br>`0x880cecbc56f48bce5e0ef4070017c0a4270f64ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | candidate review | GebProxyIncentivesActions<br>`0x88a77b8ff53329f88b8b6f9e29835fec287349e0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | candidate review | GebProxyIncentivesActions<br>`0xba2e2edea9008c5aa633372945d05a5923af3547` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | candidate review | RateSetter<br>`0x005fab4c9d1ef0f3e41cd27b26cf05680c3bf947` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | candidate review | RateSetter<br>`0xedeeaf31efdd655b4fb34a775ff60339bac6872b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | candidate review | StakingRewardsFactory<br>`0xa706d4c39c315288113020f3e2d7e1095e912a20` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | contamination review | DSCompare<br>`0x0f2275ba79bbce0bce0d019011eb0c96735f298d` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | contamination review | FsmGovernanceInterface<br>`0x4778b3d2cebac0013c15e4b8ebeaa65b630df22b` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | contamination review | GebDeployPauseProxyActions<br>`0x27a54e99de813ce2e41baa7f44d1f19fba22b36d` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | contamination review | GebPauseScheduleProxyActions<br>`0x6a2714404be6613a952a80266840ffe916194632` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | contamination review | GebPollingEmitter<br>`0xa42f76d5362e87192e7bde72199e500a707dafd2` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | contamination review | GebProxyDebtAuctionActions<br>`0x150f1532145d4e96f3c885ef7353850db05c5aef` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | contamination review | GebProxySurplusAuctionActions<br>`0x6f0faaea6767731ae14696f059248ee403c59e3b` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | contamination review | GetSafes<br>`0xae2b968aef1af041803ccec328ae65369db01133` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | contamination review | GovActions<br>`0x0463bf18c2457b00402a7639fa1dfb7d60f659ee` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | contamination review | ProtocolTokenAuthority<br>`0x9b44db6b4aa6ba12aeefbd2db9416b52b5111a50` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | contamination review | SingleSpotDebtCeilingSetter<br>`0xb2df48a0c4a07031f538353aa35d7ffa24e25ec1` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | contamination review | TxManager<br>`0xa78e8573577c4a9bc0f83a36aea6784ef5607043` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | CollateralJoin1<br>`0x15b99a6389521711c35057fec24baef89f8afb3f` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | DSCompare<br>`0x10122261ff9520c590c0c3a679b7e3dfc8b09c64` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | DSCompare<br>`0xae69b74f5d1ef4d6295d32af8bd99dcf5030df2f` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | DSRoles<br>`0x1490a828957f1e23491c8d69273d684b15c6e25a` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | DSRoles<br>`0xe4935d9d5f6edb309e2f525c2ec2dee35f6d8137` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | FsmGovernanceInterface<br>`0xe24f8b30fd28c90462c9bbc87a9a2a823636f533` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | GebDeployPauseProxyActions<br>`0x7b48cdc0d95a60317cc99bab3ed54780096dd2bb` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | GebPauseScheduleProxyActions<br>`0x757003fa93f369cc52e89bbf4fd9fa910790bc7e` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | GebPollingEmitter<br>`0xf7da963b88194a9bc6775e93d39c70c6e3f04f6f` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | GebProxyActionsGlobalSettlement<br>`0xc780b6cead0b892478feb71b9cb21ec3fdbe10d8` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | GebProxyDebtAuctionActions<br>`0x8f29c9e54ee8b1efcefae8d4709ae176541e86c8` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | GebProxySurplusAuctionActions<br>`0xd857d88b16f8487bd5bd430f119522703b2e91f5` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | GebSafeManager<br>`0xaae51cffb17b933d5ec3fbde2dce34d0688dcf74` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | GetSafes<br>`0xdf4bc9aa98cc8ecd90ba2bee73ad4a1a9c8d202b` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | GovActions<br>`0x8aedaf52d8d5c527a976f2f6653634c76003bf76` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | Multicall<br>`0x51812e07497586ce025d798bb44b6d11bbee3a01` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | Multicall<br>`0xf9a91f3018de8963e460c018c1b5c4c43f977e29` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | OSM<br>`0x049b02818ce4e15042242d335744f491cec49d18` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | OSM<br>`0xe6f5377de93a361cd5531bdfbdf0f4b522e16b2b` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | ProtocolTokenAuthority<br>`0xcb8479840a5576b1cafbb3fa7276e04df122fdc7` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | TokenBurner<br>`0xb10409fc293f987841964c4fcfef887d9ece799b` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | TokenBurner<br>`0xe59432a4cfc4bf89acd8c5779b781f704937f12a` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | source verified unclassified | TxManager<br>`0xb7272627825d1cb633f705bc269f8e11126d7a25` | non_address_book | unknown | unknown | verified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0273616e492e011c76c36522e22a4e1be14b644b` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x06691edb4cdc78fa22d7ed575bc24f8672c462ff` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0721f0846235e299ca3d286df31dfd1b68420747` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0f850d64846bfe8e6ab2737225fea90a51dc7c61` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x144b260fec7570c82ab49e0b5d8bfbf8989925e3` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c50e110f7231fc04eb4302b370b3bf07d16faf6` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24acc85528e6dd5b9c297fb8821522d36b1ae09f` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28c06395a8373d45b91817604a20722b5cef5549` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x30cd6ce0ee8b0964671f294bc4401f506190159b` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3202901e355f05ded11f16ee771f23d3be486425` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3be18c3ede649ed0efa5a99e2020a5db5e106fa9` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41b2206d64492824c0cae9c7a963328fa1274f03` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x49493932bcbc24580a4758006247e2788aeef370` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4aaacd38be6e92b0764463f9e61d423e3e18f65c` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x59405ff89d7810180108779884af6b39055e952a` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5efe1f0251a7e7172af57d620d28f3a06b3a5e52` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6552bc6ae56754f69669a3089982a974bf543a64` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68ac16ed107b2a733e625b36d95ef08d5ba57760` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7121415b6c944b61204d63750b08b5399ccc65fb` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x712cab233101c2962d32d5eb3f7697b74cacb116` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x766bbe08bac7670ef86607ec52601e8040e9d19b` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7fc4054206167b2313a6486b477fdcb666f72e55` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87047317c25f4881c81a5a9043d70f982bc64f73` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d02d581c3b8ddd06f09d3364ee92d904c02f5dc` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x94f468dbd2de11b0b2f6566ca3756d565f57c4bf` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x97a0a0dace333d577c258ff4ed67b1d66287c533` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98fd668d71b3e449479e1ef0545559af8eb196f1` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9d1f48776bd1eb10bbecd83c87f1d0ea47bf7cc5` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9f02ddbfb4b045df83d45c4d644027fbd7d72a6d` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa3d26613147e8155421068383d8751bd75e9845e` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb13077d07afccf430e8353ce91bb157c7d983178` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb3ad68940d3b59a5a0d36252ca298da359d8f719` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba6eba2462dbd464ef28e253e1fb16add3b10ba1` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbcaa45ac45828ade1f768bc5e6b814fdb18768b3` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb310348eea212a6d55cf201717e644c2d7de1cb` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcddab801770b98950479ea897791951644859039` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcfa37dce6dfe80857c3b8dba100b592775ae2688` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd07e2696d33f08e69e269a8258658c4f4264d671` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd11b0b848d59146d9b3ea0b63bf36189d6c62f0b` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda2dbe5929464d24fa05158ec73d1e7795dce0d2` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf195a04ffa890ebb4359f64db9730697bc5525c9` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf71774ee859d884ebb8c37cd94b2851cd2e68842` | non_address_book | unknown | unknown | unverified | n/a | `0x7fafc11677649db6abfec127b4b776d585520ae1` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [oz-geb-protocol-audit.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/open-zeppelin/core-contracts/oz-geb-protocol-audit.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 21 | n/a |
| [Reflexer RAI Curve Pool - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/curve/Reflexer%20RAI%20Curve%20Pool%20-%20Report.pdf) | Quantstamp | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Reflexer Helper Contracts - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/helper-contracts/first-audit/Reflexer%20Helper%20Contracts%20-%20Report.pdf) | Quantstamp | Audit | 2020-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 26 | n/a |
| [Reflexer Second Engagement - Final Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/helper-contracts/second-audit/Reflexer%20Second%20Engagement%20-%20Final%20Report.pdf) | Quantstamp | Audit | 2021-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [Reflexer Staking and Auction House - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/staking/Reflexer%20Staking%20and%20Auction%20House%20-%20Report.pdf) | Quantstamp | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Audit Report - RAI Backup Oracles.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/backup-oracle/Audit%20Report%20-%20RAI%20Backup%20Oracles.pdf) | Solidified | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solidified Audit Report - Reflexer [26.01.2021].pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/helper-contracts/Solidified%20Audit%20Report%20-%20Reflexer%20%5B26.01.2021%5D.pdf) | Solidified | Audit | 2021-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/uniswap-v3/Audit%20Report%20-%20Uniswap%20V3%20Liquidity%20Manager%20%5B24.06.2021%5D.pdf) | Solidified | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2841] oz-geb-protocol-audit.pdf — no match: No reason recorded
- [2842] Reflexer RAI Curve Pool - Report.pdf — no match: Three contracts explicitly listed in scope: StableSwapRAI.vy, DepositRAI.vy, MetaRAI.vy. Audit date from report header: October 20th 2021.
- [2843] Reflexer Helper Contracts - Report.pdf — no match: No reason recorded
- [2844] Reflexer Second Engagement - Final Report.pdf — matched: Extracted 7 contracts from scope table and findings. Note: geb-incentives repo was removed from scope during audit, but contract is still listed in scope table and findings reference it. Audit date from cover page: January 29th 2021.
- [2845] Reflexer Staking and Auction House - Report.pdf — no match: Contracts identified from file signatures and test files. The audit report covers Reflexer Staking and Auction House contracts.
- [2846] Audit Report - RAI Backup Oracles.pdf — no match: Two contracts explicitly listed in audited files section.
- [2847] Solidified Audit Report - Reflexer [26.01.2021].pdf — matched: Extracted contract names from audited files list and findings sections. The audit report date is explicitly stated as January 26, 2021.
- [2848] Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf — no match: Contracts extracted from findings sections; all are explicitly audited files.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| oz-geb-protocol-audit.pdf | AccountingEngine | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | BasicCollateralJoin | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | BasicTokenAdapter | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | Coin | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | CoinJoin | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | CoinSavingsAccount | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | CollateralAuctionHouse | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | DebtAuctionHouse | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | ETHJoin | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | EnglishCollateralAuctionHouse | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | FixedDiscountCollateralAuctionHouse | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | GlobalSettlement | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | LinkedList | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | LiquidationEngine | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | OracleRelayer | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | PostSettlementSurplusAuctionHouse | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | PreSettlementSurplusAuctionHouse | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | SAFEEngine | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | StabilityFeeTreasury | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | SurplusAuctionHouse | unmatched — not counted | — | — | no |
| oz-geb-protocol-audit.pdf | TaxCollector | unmatched — not counted | — | — | no |
| Reflexer RAI Curve Pool - Report.pdf | StableSwapRAI | unmatched — not counted | — | listed in scope | no |
| Reflexer RAI Curve Pool - Report.pdf | DepositRAI | unmatched — not counted | — | listed in scope | no |
| Reflexer RAI Curve Pool - Report.pdf | MetaRAI | unmatched — not counted | — | listed in scope | no |
| Reflexer Helper Contracts - Report.pdf | AdvancedTokenAdapters | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | AggregatorInterface | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | ChainlinkPriceFeedMedianizer | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | CoinJoinFactory | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | CollateralJoin6 | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | DSDelegateRoles | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | DSRecursiveRoles | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | ESM | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | FsmGovernanceInterface | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | GebDeploy | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | GebPrintingPermissions | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | GebProxyActions | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | GebSafeManager | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | GetSafes | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | GovActions | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | OracleRelayer | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | ProtocolTokenAuthority | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | UniswapConsecutiveSlotsPriceFeedMedianizer | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | UniswapConverterBasicAveragePriceFeedMedianizer | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | UniswapPriceFeedMedianizer | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | UniswapV2Factory | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | UniswapV2Pair | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | UniswapV2Router02 | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | delegate_roles | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | recursive_roles | unmatched — not counted | — | — | no |
| Reflexer Helper Contracts - Report.pdf | roles | unmatched — not counted | — | — | no |
| Reflexer Second Engagement - Final Report.pdf | DSDelegateToken | own contract | DSDelegateToken (selected) `0x6243d8cea23066d098a15582d81a598b4e8391f4` — deployed 2021-02-13 15:48:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Reflexer Second Engagement - Final Report.pdf | PIRawPerSecondCalculator | unmatched — not counted | — | listed in scope table and findings | no |
| Reflexer Second Engagement - Final Report.pdf | RateSetter | unmatched — not counted | — | listed in scope table and findings | no |
| Reflexer Second Engagement - Final Report.pdf | GebProxyActions | unmatched — not counted | — | listed in scope table and findings | no |
| Reflexer Second Engagement - Final Report.pdf | DebtAuctionInitialParameterSetter | unmatched — not counted | — | listed in scope table and findings | no |
| Reflexer Second Engagement - Final Report.pdf | DSProtestPause | unmatched — not counted | — | listed in scope table and findings | no |
| Reflexer Second Engagement - Final Report.pdf | GebUniswapRollingDistributionIncentives | unmatched — not counted | — | listed in scope table and findings | no |
| Reflexer Staking and Auction House - Report.pdf | StakedTokenAuctionHouse | unmatched — not counted | — | Listed in file signatures and findings | no |
| Reflexer Staking and Auction House - Report.pdf | GebLenderFirstResortRewards | unmatched — not counted | — | Listed in file signatures and findings | no |
| Reflexer Staking and Auction House - Report.pdf | GebLenderFirstResort | unmatched — not counted | — | Inferred from test file GebLenderFirstResort.t.sol | no |
| Reflexer Staking and Auction House - Report.pdf | AutoRewardDripper | unmatched — not counted | — | Inferred from test file AutoRewardDripper.t.sol | no |
| Reflexer Staking and Auction House - Report.pdf | RewardDripper | unmatched — not counted | — | Inferred from test file RewardDripper.t.sol | no |
| Reflexer Staking and Auction House - Report.pdf | StakedTokensToKeepSetter | unmatched — not counted | — | Inferred from test file StakedTokensToKeepSetter.t.sol | no |
| Audit Report - RAI Backup Oracles.pdf | TellorRelayer | unmatched — not counted | — | listed in audited files | no |
| Audit Report - RAI Backup Oracles.pdf | MinimalOSMOverlay | unmatched — not counted | — | listed in audited files | no |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | GebProxyIncentivesActions | unmatched — not counted | — | Listed in audited files section | no |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | DSDelegateToken | own contract | DSDelegateToken (selected) `0x6243d8cea23066d098a15582d81a598b4e8391f4` — deployed 2021-02-13 15:48:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | PIRawPerSecondCalculator | unmatched — not counted | — | Listed in audited files section | no |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | RateSetter | unmatched — not counted | — | Listed in audited files section | no |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | GebProxyActions | unmatched — not counted | — | Mentioned in findings (Issue #1) | no |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | RateSetterMath | unmatched — not counted | — | Mentioned in findings (Issue #2) | no |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | delegate | unmatched — not counted | — | Mentioned in findings (Issues #3, #4) | no |
| Solidified Audit Report - Reflexer [26.01.2021].pdf | StakingRewardsFactory | unmatched — not counted | — | Mentioned in findings (Issue #7) | no |
| Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf | PeripheryPayments | unmatched — not counted | — | listed in findings | no |
| Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf | GebUniswapV3ManagerBase | unmatched — not counted | — | listed in findings | no |
| Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf | GebUniswapV3LiquidityManager | unmatched — not counted | — | listed in findings | no |
| Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf | GebUniswapV3TwoTrancheManager | unmatched — not counted | — | listed in findings | no |
| Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf | PoolViewer | unmatched — not counted | — | listed in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 76 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: unique_name=2

Zero-match audit list:

- [2841] oz-geb-protocol-audit.pdf
- [2842] Reflexer RAI Curve Pool - Report.pdf
- [2843] Reflexer Helper Contracts - Report.pdf
- [2845] Reflexer Staking and Auction House - Report.pdf
- [2846] Audit Report - RAI Backup Oracles.pdf
- [2848] Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf

Fork inheritance lineage and inherited audits are included when available.
