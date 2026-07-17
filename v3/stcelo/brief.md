# Agentic Audit Brief: stCELO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: stCELO (`stcelo`)
- Website: [https://stcelo.xyz/](https://stcelo.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: celo
- Contract surface: 130 unique implementations (208 raw deployments)
- Coverage basis: 3/4 confirmed own live verified implementations (75.0%); conservative 75.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,169,876.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for stCELO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across celo. Structural roles: 5 unclassified, 3 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: unclassified (5), core (3)
- Contract kinds: contract (8)
- Detected standards: erc1967proxy (3), ownable (3), erc20 (2)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Manager (`0x78b405d3a6af7a1f17b74fcea51934f4ee46f38e`, chain 42220)
- RebasedStakedCelo (`0x58fc5556dfb1a1b23e32b395f6522aa86c14713c`, chain 42220)
- StakedCelo (`0x6e17cf4e1a21125d0ce9a1ce4a284ad7bf783b67`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/4 (75.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 126 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 67
- Confirmed-live implementations: 4 of 130 unique; 126 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/85
- Verified + Unaudited implementations: 82
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 130
- Raw deployments: 208
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| FTI | Tier 2 | 3 | 3.5% | 2022-05 |
| Celo | Tier 2 | 1 | 1.2% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | celo | unit-393196 | 2 deployments: celo `0x0239b96d10a434a56cc9e09383077a0490cf9398`; celo `0x78b405d3a6af7a1f17b74fcea51934f4ee46f38e` | ✅ Audited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | celo | unit-393197 | 2 deployments: celo `0x4aad04d41fd7fd495503731c5a2579e19054c432`; celo `0xc2fd564028536df9fe87de36bbab6ae26b33e3d0` | ✅ Audited |
| StakedCelo | unknown | project_anchor | own_supporting | 1 | celo | unit-393195 | 2 deployments: celo `0x6e17cf4e1a21125d0ce9a1ce4a284ad7bf783b67`; celo `0xc668583dcbdc9ae6fa3ce46462758188adfdfc24` | ✅ Audited |

### ⚠️ Verified + Unaudited (82)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 7 deployments: celo `0x07550767a1604af3e504749e284792ff30fb4a53`; celo `0x0a0b728d00f0e3a3d8c6849e76dc98b1d39f3ade`; celo `0x13d01fc33da51b1b63bb3bbe2af2ae91b5a419c9`; celo `0x4c8eedd889dcc3e7fd15b909d040d1d4e444a1bc`; celo `0x5b4a33bec1d5bd90f450139cf8d9073566f341a5`; celo `0x6a519cd5ffa127dd20406ab4d8b11e91f13c577c`; celo `0x95b8f3068ae248b062574a1d977c4503dd6ba914` | ⚠️ Unaudited |
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x1edec9c43660ad99040daac4c7451255805d654a`; celo `0xb82dd2d0dd04bf689992cf9006ba2201b8f0bc81` | ⚠️ Unaudited |
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x250c1b903e0a293807d09a6c9f65a35e5ef380d2`; celo `0x694ab80a18c0c0e72e4219c397f23cc99f003cfb` | ⚠️ Unaudited |
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x2e1193a4219c5539f8bd5fd1c6e765158caf278c`; celo `0xc667602b4067a759908cd747706f55c77779face` | ⚠️ Unaudited |
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x6bbd91b458b5f687e1090966925867b956ae298d`; celo `0xad3df8fc103fd3d91d963dc719d059df2918d52e` | ⚠️ Unaudited |
| Accounts | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x7d21685c17607338b313a7174bab6620bad0aab7` | ⚠️ Unaudited |
| Attestations | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xdc553892cdeeed9f575aa0fba099e5847fd88d20` | ⚠️ Unaudited |
| BlockchainParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x6e10a8864c65434a721d82e424d727326f9d5bfa` | ⚠️ Unaudited |
| DefaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x2f9ba7121ea67436aa7910080b4b68efee539e2d`; celo `0xd1825d874cb920b3a0545aa73f02116a5678c317` | ⚠️ Unaudited |
| DefaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x5231221d0e45768d6e0315ca2e9eccc1ef466f09`; celo `0xaf37a82d47035ef6d42a6e5588c1e5970b1d33f5` | ⚠️ Unaudited |
| DefaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x5bd084845f8ce18384d361bf8f4742ead18eed3d`; celo `0x820f7aac0eb929aab930eb0c5d8e286a6671184d`; celo `0xd718b64bc1facbd0087d827c0a3ea144445f5745`; celo `0xf0b67ab98dd5725565cf96496b5eda455622f7ff` | ⚠️ Unaudited |
| DoubleSigningSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x50c100bacde7e2b546371eb0be1eaccf0a6772ec` | ⚠️ Unaudited |
| Election | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x8d6677192144292870907e3fa8a5527fe55a7ff6` | ⚠️ Unaudited |
| EpochRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x07f007d389883622ef8d4d347b3f78007f28d8b7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x3a3ed74b1cc543d5eb323f70ac2f19977a0ea088`; celo `0xd54bc0ab3b363a0e34767581daab4a9db1684a09` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x8bd8a8055b4c64753047721f9abd2a82bdd01c89`; celo `0xf676df6eb86cca235e2ee67245d2d7ac0f3c3839` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xf4fa51472ca8d72af678975d9f8795a504e7ada5` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x67316300f17f063085ca8bca4bd3f7a5a3c66275` | ⚠️ Unaudited |
| FeeCurrencyWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xbb024e9cdcb2f9e34d893630d19611b8a5381b3c` | ⚠️ Unaudited |
| FeeCurrencyWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc301efebae9c517ea81f87d2cf2ff0a87caabc83` | ⚠️ Unaudited |
| FixidityLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd9ce4209888cfdfeb7c3d6e2ca34eeb06272284d` | ⚠️ Unaudited |
| Freezer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x47a472f45057a9d79d62c6427367016409f4ff5a`; celo `0xa79cdb272799175a118a4ce49cecbf3ec86649e6` | ⚠️ Unaudited |
| GasPriceMinimum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xdfca3a8d7699d8bafe656823ad60c17cb8270ecc` | ⚠️ Unaudited |
| GoldToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x471ece3750da237f93b8e339c536989b8978a438` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xd533ca259b330c7a88f74e000a3faea2d63b7972` | ⚠️ Unaudited |
| GovernanceSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x68f04ab73b93f5175207296528454999475294d5` | ⚠️ Unaudited |
| GovernanceSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xf2a347f184b0fef572c7cbd2c392359eccf43f3c` | ⚠️ Unaudited |
| GroupHealth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x004377e7c1c68b97c2e00943b426ba172ff476eb`; celo `0xf8bf1b688a975f12f61f877dd146f03ec8beb878` | ⚠️ Unaudited |
| GroupHealth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x073bb388eeea656e056c8750494cd0bc460985d9`; celo `0x140b36ffc554d174fbf1b436c50d5409bdcecdcf` | ⚠️ Unaudited |
| GroupHealth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x193df9d86435e2ef4c75467d0d38c2cf00d556ad`; celo `0x9c6c01488dc9c38dd2dc1a6bd7b6b66c70c4cc57` | ⚠️ Unaudited |
| GroupHealth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x205f4cb670fdbcbda1c14d81fdacd7092bbc64e1`; celo `0xbc7c8e2065e7dd573eaa189d932b09c50343051c` | ⚠️ Unaudited |
| GroupHealth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x2f59796ae74ed01fcf6fbcf79ec7013a571a2f18`; celo `0xf6bccbba274e16822271315fdd724c7aafa94220` | ⚠️ Unaudited |
| GroupHealth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0x4443a491f63fd212fd9932c1e27fe60f586ac578`; celo `0x6f46060c2f760eaba09d972efa74ed6aae09ff3e` | ⚠️ Unaudited |
| LockedGold | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x6cc083aed9e3ebe302a6336dbc7c921c9f03349e` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 7 deployments: celo `0x08a2121c9c143b9b06ffa27269d25af96c5e770d`; celo `0x2cb8b2e0915629c8999e739932f6a6642600e9af`; celo `0x2f05b88e89b44e4b57b4ba652cadfa414f31ba0b`; celo `0xb6316a0241afe66914b56b6242b989ad1e3bd394`; celo `0xe923a9ee94e006bc0763d3a62d3dcf167cfda387`; celo `0xf6aeb1050d9e8151d4a0a5e7144f819f01e13657`; celo `0xfea79f2563ffd79f8ef2af190b9bbd75fcc69625` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x18f51d47f7cdc9feb8f67cf95d856565584f3fcf`; celo `0xb3ac6d1c1289ce211cc8197b2e3d1ef446d10774` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x25b7f372d51e785826fb294f9458892af5bb807f`; celo `0xacd0ad376c5426abf0f81353c227d7512340cb43` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x43e55a252d22c01d114ad325fc0a62877346fb58`; celo `0xa7ec4a31ac7f5cec4340bc39d04244a1cba6eb74` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x443579fcb9518529d358e0a10e9de42e92de5af7`; celo `0x548fab1b071dbe542617294ec73d478134837329` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x534a0b843817679928625063219324902291648b`; celo `0x70b1bde39a387444f5790ec8052ff244e7c72e62` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x954bc8b6afe0e7109ec61b204be01d4bf8c5e5af`; celo `0xc9cd085d12e12274ad099b5ece5a744203c6c674` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0xa60fcf6fd40cadca90359bc94ca21bf3b97c70f5`; celo `0xe12f7e5c2300b7f79fd8ff7e44b10e66e4dd0312` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe8882d0f80bd82a618251093124f56fdd8faf4b7` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x13f1f8706710069bc55b71e320a3fb2d3775c27e`; celo `0x8652ceb3e0edc477f4d0750f2fd5c1e0acae782a` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 5 deployments: celo `0x1bb7897a1b023a74d3a439476c52495a2927af07`; celo `0xb05860dd77620793d549fa0dec4989a54e906732`; celo `0xb78ab3f89c97c0291b747c3ba8814b5aa47aecf1`; celo `0xda3eb100c32cd9387a834f9b9fee340300eb2aa8`; celo `0xf385924febb37f96c0a1d609f3c40d71d7128d39` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x2d952d7a21fbce9d52e62973303908e8fc124cd0`; celo `0x55e953bffe423ed7950a392db01f5cdda2b36128` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x2e37af02023644a1203d9c3daf96ecd635e9e4df`; celo `0x846b04993f65ea397838568d83b4b956f2d6013f` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x41822d8a191fcfb1cfca5f7048818acd8ee933d3`; celo `0xb5795ccf25d01617a55592508d3982bc5a158fad` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x5aa1c651b864b42c6c6acd1e8a4ee807e4e8f2e3`; celo `0xfb197ea7d72f106a107ddd4d50ba0439d3b374ee` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x78b50bd80ecbd9f44b616d89b835ed8982220cca`; celo `0x85a9aa5067dff9745fc32d741cb144bd8c64f3f3` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x78daa21fce4d30e74ff745da3204764a0ad40179`; celo `0x8bd50c8df89840ca8e78c32a730076397933f818` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x88d1ae61a25c73e2adffd7b3b58477f42cd48c24`; celo `0xe57f6f8620fce79c723ed9da69f7e3dd7c07c0c4` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x98c93ee03873c472d267a6844a4d5ccab714dc67`; celo `0xaab51fc8143d943d74885413064d707fe2d47145` | ⚠️ Unaudited |
| Proposals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd4b9fd4f900fdbb58ce284f82730653f9379cbc4` | ⚠️ Unaudited |
| Random | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x22a4aaf42a50bfa7238182460e32f15859c93dfe` | ⚠️ Unaudited |
| RebasedStakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x0251c3224f15e875fe6fbca04c0f9117366cc806`; celo `0x6b8bb0aca4bde7e844dfa6f6bc90ad0a3d2352aa` | ⚠️ Unaudited |
| RebasedStakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x52bb5091b2e2319300b4db33b63d715c89a195c0`; celo `0x97b5ee93630ac26b581b1c4add966af8f95b795c` | ⚠️ Unaudited |
| RebasedStakedCelo | unknown | project_anchor | own_supporting | 1 | celo | unit-393194 | 2 deployments: celo `0x58fc5556dfb1a1b23e32b395f6522aa86c14713c`; celo `0xdc5762753043327d74e0a538199c1488fc1f44cf` | ⚠️ Unaudited |
| RebasedStakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 5 deployments: celo `0x737bce423d87b8bccb9e2b3b483082a5fd3b2fdf`; celo `0x80ef43888b64e4bd60b0e8e28e99716e418f5ac4`; celo `0x8c89e7ceb22300c43c9118f317d33e9be767c594`; celo `0xad3317aecdbc6a92271d9d43c0d157c6404eba11`; celo `0xdfc2daf5ff1bc48ec4518436a015da416745a67c` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x203fdf86a00999107df531fa00b4ba81d674cb66` | ⚠️ Unaudited |
| Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x9380fa34fd9e4fd14c06305fd7b6199089ed4eb9` | ⚠️ Unaudited |
| ReserveSpenderMultiSigProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x554fca0f7c465cd2f8c305a10bf907a2034d2a19` | ⚠️ Unaudited |
| Signatures | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x926a9e7c1a9cb608b6f3068f3ca3811dde792b7d` | ⚠️ Unaudited |
| SortedOracles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xefb84935239dacdecf7c5ba76d8de40b077b7b33` | ⚠️ Unaudited |
| SpecificGroupStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x003a4c7fda849eeda551f5c995729335d70f54aa`; celo `0xf1c4a8d18229d4dcffa2a5f90d5053a1fd21a947` | ⚠️ Unaudited |
| SpecificGroupStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x01a767b740ea021731f0dcbb3992d3c1d0c8b926`; celo `0x52a1d5d90450567bce39fbe3fcabb9a6be34a1f0`; celo `0x54c819e39fde40aa8fcf1244589ec5aebf32999a` | ⚠️ Unaudited |
| SpecificGroupStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x365e623c568f0e8ee6aa93a5ac42fda9daa58d23`; celo `0xb88af6eac9cd146d8b03b66708ef76bebd937871` | ⚠️ Unaudited |
| SpecificGroupStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x77744692a673ef93370e996aec1dd04d10fed190`; celo `0xee0ba5940b51eb8c7f8ec7f97e8ca87d082055a5` | ⚠️ Unaudited |
| SpecificGroupStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x9dd19aa3c4ef6ebd253baf98cb27ea7c792cc4e8`; celo `0xe11359c9cf7256d6791fe0cc7e80379094a71c2f` | ⚠️ Unaudited |
| StableTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x765de816845861e75a25fca122bb6898b8b1282a` | ⚠️ Unaudited |
| StakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x085a0d7612f35a94bd72e9ce2ff8bc86727f21ca`; celo `0x95cc0c75015059dd659db9b528101c5ba91c4e49` | ⚠️ Unaudited |
| StakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x0b2f88ce833ecfc84a006a4c6db7ea23d565f75b`; celo `0x922333bdcb665e91eef9508de56ab2a3c2794692` | ⚠️ Unaudited |
| StakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 5 deployments: celo `0x1b4b48453e3a64eb55d1d30f0f7fa9e2fe32c73d`; celo `0x4387a066e282673f459feeeda3087d29ca4c6429`; celo `0x44c2fe995417b528a861e5428dae7358d5f0271f`; celo `0xa97be82bee72a809fe4b3ad158535879028babcb`; celo `0xafddbc2ce90c66a055e91ccca7bbd08909734a1d` | ⚠️ Unaudited |
| StakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x2c2e2bb4ce3264fc2f70161ba72340b9ee4edc3a`; celo `0x809b7ebabb2e4e1e4d1104b3b361b898ae632426` | ⚠️ Unaudited |
| StakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x9122855efe96f0f53eda66602ebea000733ddcfc`; celo `0xb59b1c36e4466f19c84dd2aeccace718b32c4b61` | ⚠️ Unaudited |
| TransferWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb49e4d6f0b7f8d0440f75697e6c8b37e09178bcf` | ⚠️ Unaudited |
| Validators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xaeb865bca93ddc8f47b8e29f40c5399ce34d0c58` | ⚠️ Unaudited |
| Vote | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x3c6e9000c449d15e584bc1ab98e9aa14a5fcce0f`; celo `0x9760e0ad8ad961dc95a98a8dcdba71870ae7a3d3` | ⚠️ Unaudited |
| Vote | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x54496eb9b1ec14bf718b5de11f269b23063f83bd`; celo `0xda30d1f96c17fe7919fc12ea672915c2e0b9ab8e` | ⚠️ Unaudited |
| Vote | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x655f0ac07c850412e6499670fdb9cef54c3c70fc`; celo `0xfdffa56d70a458777ad1f34e0c5c6ef5de66a28f` | ⚠️ Unaudited |
| Vote | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x681db4da2d4d71181657d0c05c1d7e8030f6cc3e`; celo `0xcc31206ac415be3396f2df2040495b4dda0237b8` | ⚠️ Unaudited |
| Vote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbb4e49d75045803ab76ae8eee2916f0c712e65bf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0198db9696aac48c5edaa7b8a0b0d5d20eb2632c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x03f69652876d45acf168acd7cbece9aaf52887b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x094ee251965823285fd35d70175225cf5f520d67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x09b17f887721035c2d73b0628c4bdb5666a31cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0cc6e134abd23d826d72c1cb9331d1af66ac6a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x12364a15f52b822f12dd858faeedc49f472fba57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1690e229c37219f0a10e102232de5e2591de7df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1cf4f97705f812a18830d5be60b8cdfc3543ec90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1f0e8b1f8d39c1bf81311b4bd86337f15bd32cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x204ba494de6a50a116ecd340556be8a15734c9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x48b505f1c5b7300de070da9c85324272fc65f187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4cf604c6251c87d0c83e17f88397dec67ead825f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4e843ad7e0dcd656bdfe4d3649285e01724678b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x585e1e617dbebdc7b13cf2ec8d11ea85fa3a26c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x59f4ece373e26b39f389887c26b399497d7a4b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x61257eaf53497829636383f6c4ac467d575c3fd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x63af253c645ca35a4a2b35aab30c611abeb3e40a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x672b7ddaf201e5c1a71e5843848035dbccdaf224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6c5d141990146bd3d11c877b0dd608167fc5a11d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6c611aa922e9cfc40500e849d780f0e5708b1287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7158689eb1a161f38f5227f5e2a8eef65a3333cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x799c0cefd290bbb7f1bdc1a1dbfdc2f875db47b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7c68b5647fb5624cb1f83209a5d828111f264969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8897ecd44b98a220dbc1a19e668796b123a27f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8b3842da1304eae0894286021e26cb8283ed37e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8dd4f800851db9dc219fdfaeb82f8d69e2b13582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x969d7b57c869fec5163318753aa27cc896ead654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9a642a8a77635b5df73eacf8ba389dcbb87bee9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa6dacd16c9a7d823b7e2701ea0226e20c7debbfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xaa933baf03cfc55b8e4e0d7de479bcc12f189352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xacf9d7ee602195a87cc4e86cf00186361a045d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb325a8e12344953e8b8b1afbf1d5580d36c26245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb42d0c1fa3f714055054c2001d09556761210a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xba53ef24579b1b505f823ac6be85e7ae3b0b38e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbd42adbe4904c50827287536635c042f70721bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc053ca07fb7003fd9594154afc1a15573e407207` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc21090ac772a0aeb28472073c976d89dab011e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc35269b01c873cfd441b35090a83e6aeb307cd30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc54e26ca615884ae5e6f67d75aeb3bb17648986b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd2a7fbc114a135c671e63fdde540d4a471265865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd3188fefca5b9f385caedc0bad67960a3f6f4c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd3a6f30326301e864c5fa5a4a7f61026fc726702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xefe50f83ba23240a85c39aff429b31e556d2c80f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf9de2da9bf81dfab66d09db1b7d71cf11851c3ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfe6803022191b40256a0c6571e23a6f49b7d64ed` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Celo Audit Competition Summary Report_Nov24.pdf](https://github.com/celo-org/staked-celo/blob/master/audit/Celo%20Audit%20Competition%20Summary%20Report_Nov24.pdf) | Celo | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Celo-staking-audit-mar24(Public).pdf](https://github.com/celo-org/staked-celo/blob/master/audit/Celo-staking-audit-mar24(Public).pdf) | Celo | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |
| [FTI_audit_stCELO.pdf](https://github.com/celo-org/staked-celo/blob/master/audit/FTI_audit_stCELO.pdf) | FTI | Audit | 2022-05 | stale | Direct | n/a | matched | 3 | 3 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14218] Celo Audit Competition Summary Report_Nov24.pdf — no match: No reason recorded
- [14219] Celo-staking-audit-mar24(Public).pdf — matched: Extracted contracts from scope and findings sections. Audit delivered on 01.04.2024.
- [14220] FTI_audit_stCELO.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Celo Audit Competition Summary Report_Nov24.pdf | EpochManager | unmatched — not counted | — | — | no |
| Celo Audit Competition Summary Report_Nov24.pdf | LockedGold | unmatched — not counted | — | — | no |
| Celo-staking-audit-mar24(Public).pdf | Vote | unmatched — not counted | — | listed in scope and findings | no |
| Celo-staking-audit-mar24(Public).pdf | Account | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4aad04d41fd7fd495503731c5a2579e19054c432` — deployed 2022-07-01 20:26:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Celo-staking-audit-mar24(Public).pdf | SpecificGroupStrategy | unmatched — not counted | — | listed in findings | no |
| FTI_audit_stCELO.pdf | Account | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4aad04d41fd7fd495503731c5a2579e19054c432` — deployed 2022-07-01 20:26:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| FTI_audit_stCELO.pdf | Managed | unmatched — not counted | — | — | no |
| FTI_audit_stCELO.pdf | Manager | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0239b96d10a434a56cc9e09383077a0490cf9398` — deployed 2022-07-01 20:24:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| FTI_audit_stCELO.pdf | RebasedCelo | unmatched — not counted | — | — | no |
| FTI_audit_stCELO.pdf | StakedCelo | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xc668583dcbdc9ae6fa3ce46462758188adfdfc24` — deployed 2022-07-01 20:26:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | `0x58fc5556dfb1a1b23e32b395f6522aa86c14713c` | RebasedStakedCelo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=4

Zero-match audit list:

- [14218] Celo Audit Competition Summary Report_Nov24.pdf

Fork inheritance lineage and inherited audits are included when available.
