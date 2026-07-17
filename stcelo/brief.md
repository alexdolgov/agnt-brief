# Agentic Audit Brief: stCELO

## Project Overview

- Project: stCELO (`stcelo`)
- Website: [https://stcelo.xyz/](https://stcelo.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.914Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: celo
- Contract surface: 123 unique implementations (182 raw deployments)
- DeFi Llama TVL: $1,169,876.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 110 project-authored contract(s) across 1 chain(s); 18 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 7 common project-authored base contract(s) (uupsownableupgradeable, managed, errors). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 208; live-surface contracts included: 151 (94 live, 57 unknown).
- Excluded by liveness: 57 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 18/73 (24.7%)
- Deployed-live implementations: 73 of 123 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 18/78
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 123
- Raw deployments: 182
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 16 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Celo | Tier 2 | 17 | 21.8% | 2024-12 |
| FTI | Tier 2 | 1 | 1.3% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Account | unknown | celo | n/a | 7 deployments: celo [`0x07550767a1604af3e504749e284792ff30fb4a53`](./contracts/celo-42220/0x07550767a1604af3e504749e284792ff30fb4a53/); celo `0x0a0b728d00f0e3a3d8c6849e76dc98b1d39f3ade`; celo `0x13d01fc33da51b1b63bb3bbe2af2ae91b5a419c9`; celo `0x4c8eedd889dcc3e7fd15b909d040d1d4e444a1bc`; celo `0x5b4a33bec1d5bd90f450139cf8d9073566f341a5`; celo `0x6a519cd5ffa127dd20406ab4d8b11e91f13c577c`; celo `0x95b8f3068ae248b062574a1d977c4503dd6ba914` | ✅ Audited |
| Account | unknown | celo | n/a | 2 deployments: celo [`0x1edec9c43660ad99040daac4c7451255805d654a`](./contracts/celo-42220/0x1edec9c43660ad99040daac4c7451255805d654a/); celo `0xb82dd2d0dd04bf689992cf9006ba2201b8f0bc81` | ✅ Audited |
| Account | unknown | celo | n/a | 2 deployments: celo [`0x250c1b903e0a293807d09a6c9f65a35e5ef380d2`](./contracts/celo-42220/0x250c1b903e0a293807d09a6c9f65a35e5ef380d2/); celo `0x694ab80a18c0c0e72e4219c397f23cc99f003cfb` | ✅ Audited |
| Account | unknown | celo | n/a | 2 deployments: celo [`0x2e1193a4219c5539f8bd5fd1c6e765158caf278c`](./contracts/celo-42220/0x2e1193a4219c5539f8bd5fd1c6e765158caf278c/); celo `0xc667602b4067a759908cd747706f55c77779face` | ✅ Audited |
| Account | unknown | celo | n/a | 2 deployments: celo [`0x6bbd91b458b5f687e1090966925867b956ae298d`](./contracts/celo-42220/0x6bbd91b458b5f687e1090966925867b956ae298d/); celo `0xad3df8fc103fd3d91d963dc719d059df2918d52e` | ✅ Audited |
| ERC1967Proxy | unknown | celo | n/a | 2 deployments: celo [`0x4aad04d41fd7fd495503731c5a2579e19054c432`](./contracts/celo-42220/0x4aad04d41fd7fd495503731c5a2579e19054c432/); celo `0xc2fd564028536df9fe87de36bbab6ae26b33e3d0` | ✅ Audited |
| LockedGold | unknown | celo | n/a | [`0x6cc083aed9e3ebe302a6336dbc7c921c9f03349e`](./contracts/celo-42220/0x6cc083aed9e3ebe302a6336dbc7c921c9f03349e/) | ✅ Audited |
| Manager | governance | celo | n/a | 2 deployments: celo [`0x2cb8b2e0915629c8999e739932f6a6642600e9af`](./contracts/celo-42220/0x2cb8b2e0915629c8999e739932f6a6642600e9af/); celo `0xe923a9ee94e006bc0763d3a62d3dcf167cfda387` | ✅ Audited |
| SpecificGroupStrategy | unknown | celo | n/a | 2 deployments: celo [`0x003a4c7fda849eeda551f5c995729335d70f54aa`](./contracts/celo-42220/0x003a4c7fda849eeda551f5c995729335d70f54aa/); celo `0xf1c4a8d18229d4dcffa2a5f90d5053a1fd21a947` | ✅ Audited |
| SpecificGroupStrategy | unknown | celo | n/a | 3 deployments: celo [`0x01a767b740ea021731f0dcbb3992d3c1d0c8b926`](./contracts/celo-42220/0x01a767b740ea021731f0dcbb3992d3c1d0c8b926/); celo `0x52a1d5d90450567bce39fbe3fcabb9a6be34a1f0`; celo `0x54c819e39fde40aa8fcf1244589ec5aebf32999a` | ✅ Audited |
| SpecificGroupStrategy | unknown | celo | n/a | 2 deployments: celo [`0x365e623c568f0e8ee6aa93a5ac42fda9daa58d23`](./contracts/celo-42220/0x365e623c568f0e8ee6aa93a5ac42fda9daa58d23/); celo `0xb88af6eac9cd146d8b03b66708ef76bebd937871` | ✅ Audited |
| SpecificGroupStrategy | unknown | celo | n/a | 2 deployments: celo [`0x77744692a673ef93370e996aec1dd04d10fed190`](./contracts/celo-42220/0x77744692a673ef93370e996aec1dd04d10fed190/); celo `0xee0ba5940b51eb8c7f8ec7f97e8ca87d082055a5` | ✅ Audited |
| SpecificGroupStrategy | unknown | celo | n/a | 2 deployments: celo [`0x9dd19aa3c4ef6ebd253baf98cb27ea7c792cc4e8`](./contracts/celo-42220/0x9dd19aa3c4ef6ebd253baf98cb27ea7c792cc4e8/); celo `0xe11359c9cf7256d6791fe0cc7e80379094a71c2f` | ✅ Audited |
| Vote | unknown | celo | n/a | 2 deployments: celo [`0x3c6e9000c449d15e584bc1ab98e9aa14a5fcce0f`](./contracts/celo-42220/0x3c6e9000c449d15e584bc1ab98e9aa14a5fcce0f/); celo `0x9760e0ad8ad961dc95a98a8dcdba71870ae7a3d3` | ✅ Audited |
| Vote | unknown | celo | n/a | 2 deployments: celo [`0x54496eb9b1ec14bf718b5de11f269b23063f83bd`](./contracts/celo-42220/0x54496eb9b1ec14bf718b5de11f269b23063f83bd/); celo `0xda30d1f96c17fe7919fc12ea672915c2e0b9ab8e` | ✅ Audited |
| Vote | unknown | celo | n/a | 2 deployments: celo [`0x655f0ac07c850412e6499670fdb9cef54c3c70fc`](./contracts/celo-42220/0x655f0ac07c850412e6499670fdb9cef54c3c70fc/); celo `0xfdffa56d70a458777ad1f34e0c5c6ef5de66a28f` | ✅ Audited |
| Vote | unknown | celo | n/a | 2 deployments: celo [`0x681db4da2d4d71181657d0c05c1d7e8030f6cc3e`](./contracts/celo-42220/0x681db4da2d4d71181657d0c05c1d7e8030f6cc3e/); celo `0xcc31206ac415be3396f2df2040495b4dda0237b8` | ✅ Audited |
| Vote | unknown | celo | n/a | [`0xbb4e49d75045803ab76ae8eee2916f0c712e65bf`](./contracts/celo-42220/0xbb4e49d75045803ab76ae8eee2916f0c712e65bf/) | ✅ Audited |

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Accounts | unknown | celo | n/a | [`0x7d21685c17607338b313a7174bab6620bad0aab7`](./contracts/celo-42220/0x7d21685c17607338b313a7174bab6620bad0aab7/) | ⚠️ Unaudited |
| Attestations | unknown | celo | n/a | [`0xdc553892cdeeed9f575aa0fba099e5847fd88d20`](./contracts/celo-42220/0xdc553892cdeeed9f575aa0fba099e5847fd88d20/) | ⚠️ Unaudited |
| BlockchainParameters | unknown | celo | n/a | [`0x6e10a8864c65434a721d82e424d727326f9d5bfa`](./contracts/celo-42220/0x6e10a8864c65434a721d82e424d727326f9d5bfa/) | ⚠️ Unaudited |
| DefaultStrategy | unknown | celo | n/a | 2 deployments: celo [`0x2f9ba7121ea67436aa7910080b4b68efee539e2d`](./contracts/celo-42220/0x2f9ba7121ea67436aa7910080b4b68efee539e2d/); celo `0xd1825d874cb920b3a0545aa73f02116a5678c317` | ⚠️ Unaudited |
| DefaultStrategy | unknown | celo | n/a | 2 deployments: celo [`0x5231221d0e45768d6e0315ca2e9eccc1ef466f09`](./contracts/celo-42220/0x5231221d0e45768d6e0315ca2e9eccc1ef466f09/); celo `0xaf37a82d47035ef6d42a6e5588c1e5970b1d33f5` | ⚠️ Unaudited |
| DefaultStrategy | unknown | celo | n/a | 3 deployments: celo [`0x5bd084845f8ce18384d361bf8f4742ead18eed3d`](./contracts/celo-42220/0x5bd084845f8ce18384d361bf8f4742ead18eed3d/); celo `0x820f7aac0eb929aab930eb0c5d8e286a6671184d`; celo `0xf0b67ab98dd5725565cf96496b5eda455622f7ff` | ⚠️ Unaudited |
| DoubleSigningSlasher | unknown | celo | n/a | [`0x50c100bacde7e2b546371eb0be1eaccf0a6772ec`](./contracts/celo-42220/0x50c100bacde7e2b546371eb0be1eaccf0a6772ec/) | ⚠️ Unaudited |
| Election | unknown | celo | n/a | [`0x8d6677192144292870907e3fa8a5527fe55a7ff6`](./contracts/celo-42220/0x8d6677192144292870907e3fa8a5527fe55a7ff6/) | ⚠️ Unaudited |
| EpochRewards | unknown | celo | n/a | [`0x07f007d389883622ef8d4d347b3f78007f28d8b7`](./contracts/celo-42220/0x07f007d389883622ef8d4d347b3f78007f28d8b7/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | celo | n/a | 2 deployments: celo [`0x0239b96d10a434a56cc9e09383077a0490cf9398`](./contracts/celo-42220/0x0239b96d10a434a56cc9e09383077a0490cf9398/); celo `0x78b405d3a6af7a1f17b74fcea51934f4ee46f38e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | celo | n/a | 2 deployments: celo [`0x3a3ed74b1cc543d5eb323f70ac2f19977a0ea088`](./contracts/celo-42220/0x3a3ed74b1cc543d5eb323f70ac2f19977a0ea088/); celo `0xd54bc0ab3b363a0e34767581daab4a9db1684a09` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | celo | n/a | 2 deployments: celo [`0x8bd8a8055b4c64753047721f9abd2a82bdd01c89`](./contracts/celo-42220/0x8bd8a8055b4c64753047721f9abd2a82bdd01c89/); celo `0xf676df6eb86cca235e2ee67245d2d7ac0f3c3839` | ⚠️ Unaudited |
| Escrow | unknown | celo | n/a | [`0xf4fa51472ca8d72af678975d9f8795a504e7ada5`](./contracts/celo-42220/0xf4fa51472ca8d72af678975d9f8795a504e7ada5/) | ⚠️ Unaudited |
| Exchange | unknown | celo | n/a | [`0x67316300f17f063085ca8bca4bd3f7a5a3c66275`](./contracts/celo-42220/0x67316300f17f063085ca8bca4bd3f7a5a3c66275/) | ⚠️ Unaudited |
| FeeCurrencyWhitelist | unknown | celo | n/a | [`0xbb024e9cdcb2f9e34d893630d19611b8a5381b3c`](./contracts/celo-42220/0xbb024e9cdcb2f9e34d893630d19611b8a5381b3c/) | ⚠️ Unaudited |
| FixidityLib | unknown | celo | n/a | [`0xd9ce4209888cfdfeb7c3d6e2ca34eeb06272284d`](./contracts/celo-42220/0xd9ce4209888cfdfeb7c3d6e2ca34eeb06272284d/) | ⚠️ Unaudited |
| Freezer | unknown | celo | n/a | 2 deployments: celo [`0x47a472f45057a9d79d62c6427367016409f4ff5a`](./contracts/celo-42220/0x47a472f45057a9d79d62c6427367016409f4ff5a/); celo `0xa79cdb272799175a118a4ce49cecbf3ec86649e6` | ⚠️ Unaudited |
| GasPriceMinimum | unknown | celo | n/a | [`0xdfca3a8d7699d8bafe656823ad60c17cb8270ecc`](./contracts/celo-42220/0xdfca3a8d7699d8bafe656823ad60c17cb8270ecc/) | ⚠️ Unaudited |
| GoldToken | unknown | celo | n/a | [`0x471ece3750da237f93b8e339c536989b8978a438`](./contracts/celo-42220/0x471ece3750da237f93b8e339c536989b8978a438/) | ⚠️ Unaudited |
| Governance | unknown | celo | n/a | [`0xd533ca259b330c7a88f74e000a3faea2d63b7972`](./contracts/celo-42220/0xd533ca259b330c7a88f74e000a3faea2d63b7972/) | ⚠️ Unaudited |
| GovernanceSlasher | unknown | celo | n/a | [`0xf2a347f184b0fef572c7cbd2c392359eccf43f3c`](./contracts/celo-42220/0xf2a347f184b0fef572c7cbd2c392359eccf43f3c/) | ⚠️ Unaudited |
| GroupHealth | unknown | celo | n/a | 2 deployments: celo [`0x004377e7c1c68b97c2e00943b426ba172ff476eb`](./contracts/celo-42220/0x004377e7c1c68b97c2e00943b426ba172ff476eb/); celo `0xf8bf1b688a975f12f61f877dd146f03ec8beb878` | ⚠️ Unaudited |
| GroupHealth | unknown | celo | n/a | 2 deployments: celo [`0x073bb388eeea656e056c8750494cd0bc460985d9`](./contracts/celo-42220/0x073bb388eeea656e056c8750494cd0bc460985d9/); celo `0x140b36ffc554d174fbf1b436c50d5409bdcecdcf` | ⚠️ Unaudited |
| GroupHealth | unknown | celo | n/a | 2 deployments: celo [`0x193df9d86435e2ef4c75467d0d38c2cf00d556ad`](./contracts/celo-42220/0x193df9d86435e2ef4c75467d0d38c2cf00d556ad/); celo `0x9c6c01488dc9c38dd2dc1a6bd7b6b66c70c4cc57` | ⚠️ Unaudited |
| GroupHealth | unknown | celo | n/a | 2 deployments: celo [`0x205f4cb670fdbcbda1c14d81fdacd7092bbc64e1`](./contracts/celo-42220/0x205f4cb670fdbcbda1c14d81fdacd7092bbc64e1/); celo `0xbc7c8e2065e7dd573eaa189d932b09c50343051c` | ⚠️ Unaudited |
| GroupHealth | unknown | celo | n/a | 2 deployments: celo [`0x2f59796ae74ed01fcf6fbcf79ec7013a571a2f18`](./contracts/celo-42220/0x2f59796ae74ed01fcf6fbcf79ec7013a571a2f18/); celo `0xf6bccbba274e16822271315fdd724c7aafa94220` | ⚠️ Unaudited |
| Manager | unknown | celo | n/a | 2 deployments: celo [`0x18f51d47f7cdc9feb8f67cf95d856565584f3fcf`](./contracts/celo-42220/0x18f51d47f7cdc9feb8f67cf95d856565584f3fcf/); celo `0xb3ac6d1c1289ce211cc8197b2e3d1ef446d10774` | ⚠️ Unaudited |
| Manager | unknown | celo | n/a | 2 deployments: celo [`0x25b7f372d51e785826fb294f9458892af5bb807f`](./contracts/celo-42220/0x25b7f372d51e785826fb294f9458892af5bb807f/); celo `0xacd0ad376c5426abf0f81353c227d7512340cb43` | ⚠️ Unaudited |
| Manager | unknown | celo | n/a | 2 deployments: celo [`0x43e55a252d22c01d114ad325fc0a62877346fb58`](./contracts/celo-42220/0x43e55a252d22c01d114ad325fc0a62877346fb58/); celo `0xa7ec4a31ac7f5cec4340bc39d04244a1cba6eb74` | ⚠️ Unaudited |
| Manager | unknown | celo | n/a | 2 deployments: celo [`0x443579fcb9518529d358e0a10e9de42e92de5af7`](./contracts/celo-42220/0x443579fcb9518529d358e0a10e9de42e92de5af7/); celo `0x548fab1b071dbe542617294ec73d478134837329` | ⚠️ Unaudited |
| Manager | unknown | celo | n/a | 2 deployments: celo [`0x534a0b843817679928625063219324902291648b`](./contracts/celo-42220/0x534a0b843817679928625063219324902291648b/); celo `0x70b1bde39a387444f5790ec8052ff244e7c72e62` | ⚠️ Unaudited |
| Manager | unknown | celo | n/a | 2 deployments: celo [`0x954bc8b6afe0e7109ec61b204be01d4bf8c5e5af`](./contracts/celo-42220/0x954bc8b6afe0e7109ec61b204be01d4bf8c5e5af/); celo `0xc9cd085d12e12274ad099b5ece5a744203c6c674` | ⚠️ Unaudited |
| Manager | unknown | celo | n/a | 2 deployments: celo [`0xa60fcf6fd40cadca90359bc94ca21bf3b97c70f5`](./contracts/celo-42220/0xa60fcf6fd40cadca90359bc94ca21bf3b97c70f5/); celo `0xe12f7e5c2300b7f79fd8ff7e44b10e66e4dd0312` | ⚠️ Unaudited |
| Migrations | unknown | celo | n/a | [`0xe8882d0f80bd82a618251093124f56fdd8faf4b7`](./contracts/celo-42220/0xe8882d0f80bd82a618251093124f56fdd8faf4b7/) | ⚠️ Unaudited |
| MultiSig | unknown | celo | n/a | 2 deployments: celo [`0x13f1f8706710069bc55b71e320a3fb2d3775c27e`](./contracts/celo-42220/0x13f1f8706710069bc55b71e320a3fb2d3775c27e/); celo `0x8652ceb3e0edc477f4d0750f2fd5c1e0acae782a` | ⚠️ Unaudited |
| MultiSig | unknown | celo | n/a | 2 deployments: celo [`0x2d952d7a21fbce9d52e62973303908e8fc124cd0`](./contracts/celo-42220/0x2d952d7a21fbce9d52e62973303908e8fc124cd0/); celo `0x55e953bffe423ed7950a392db01f5cdda2b36128` | ⚠️ Unaudited |
| MultiSig | unknown | celo | n/a | 2 deployments: celo [`0x2e37af02023644a1203d9c3daf96ecd635e9e4df`](./contracts/celo-42220/0x2e37af02023644a1203d9c3daf96ecd635e9e4df/); celo `0x846b04993f65ea397838568d83b4b956f2d6013f` | ⚠️ Unaudited |
| MultiSig | unknown | celo | n/a | 2 deployments: celo [`0x41822d8a191fcfb1cfca5f7048818acd8ee933d3`](./contracts/celo-42220/0x41822d8a191fcfb1cfca5f7048818acd8ee933d3/); celo `0xb5795ccf25d01617a55592508d3982bc5a158fad` | ⚠️ Unaudited |
| MultiSig | unknown | celo | n/a | 2 deployments: celo [`0x5aa1c651b864b42c6c6acd1e8a4ee807e4e8f2e3`](./contracts/celo-42220/0x5aa1c651b864b42c6c6acd1e8a4ee807e4e8f2e3/); celo `0xfb197ea7d72f106a107ddd4d50ba0439d3b374ee` | ⚠️ Unaudited |
| MultiSig | unknown | celo | n/a | 2 deployments: celo [`0x78b50bd80ecbd9f44b616d89b835ed8982220cca`](./contracts/celo-42220/0x78b50bd80ecbd9f44b616d89b835ed8982220cca/); celo `0x85a9aa5067dff9745fc32d741cb144bd8c64f3f3` | ⚠️ Unaudited |
| MultiSig | unknown | celo | n/a | 2 deployments: celo [`0x78daa21fce4d30e74ff745da3204764a0ad40179`](./contracts/celo-42220/0x78daa21fce4d30e74ff745da3204764a0ad40179/); celo `0x8bd50c8df89840ca8e78c32a730076397933f818` | ⚠️ Unaudited |
| MultiSig | unknown | celo | n/a | 2 deployments: celo [`0x88d1ae61a25c73e2adffd7b3b58477f42cd48c24`](./contracts/celo-42220/0x88d1ae61a25c73e2adffd7b3b58477f42cd48c24/); celo `0xe57f6f8620fce79c723ed9da69f7e3dd7c07c0c4` | ⚠️ Unaudited |
| MultiSig | unknown | celo | n/a | 2 deployments: celo [`0x98c93ee03873c472d267a6844a4d5ccab714dc67`](./contracts/celo-42220/0x98c93ee03873c472d267a6844a4d5ccab714dc67/); celo `0xaab51fc8143d943d74885413064d707fe2d47145` | ⚠️ Unaudited |
| Proposals | unknown | celo | n/a | [`0xd4b9fd4f900fdbb58ce284f82730653f9379cbc4`](./contracts/celo-42220/0xd4b9fd4f900fdbb58ce284f82730653f9379cbc4/) | ⚠️ Unaudited |
| Random | unknown | celo | n/a | [`0x22a4aaf42a50bfa7238182460e32f15859c93dfe`](./contracts/celo-42220/0x22a4aaf42a50bfa7238182460e32f15859c93dfe/) | ⚠️ Unaudited |
| RebasedStakedCelo | unknown | celo | n/a | 2 deployments: celo [`0x0251c3224f15e875fe6fbca04c0f9117366cc806`](./contracts/celo-42220/0x0251c3224f15e875fe6fbca04c0f9117366cc806/); celo `0x6b8bb0aca4bde7e844dfa6f6bc90ad0a3d2352aa` | ⚠️ Unaudited |
| RebasedStakedCelo | unknown | celo | n/a | 2 deployments: celo [`0x52bb5091b2e2319300b4db33b63d715c89a195c0`](./contracts/celo-42220/0x52bb5091b2e2319300b4db33b63d715c89a195c0/); celo `0x97b5ee93630ac26b581b1c4add966af8f95b795c` | ⚠️ Unaudited |
| RebasedStakedCelo | unknown | celo | n/a | 2 deployments: celo [`0x58fc5556dfb1a1b23e32b395f6522aa86c14713c`](./contracts/celo-42220/0x58fc5556dfb1a1b23e32b395f6522aa86c14713c/); celo `0xdc5762753043327d74e0a538199c1488fc1f44cf` | ⚠️ Unaudited |
| Registry | unknown | celo | n/a | [`0x203fdf86a00999107df531fa00b4ba81d674cb66`](./contracts/celo-42220/0x203fdf86a00999107df531fa00b4ba81d674cb66/) | ⚠️ Unaudited |
| Reserve | unknown | celo | n/a | [`0x9380fa34fd9e4fd14c06305fd7b6199089ed4eb9`](./contracts/celo-42220/0x9380fa34fd9e4fd14c06305fd7b6199089ed4eb9/) | ⚠️ Unaudited |
| ReserveSpenderMultiSigProxy | unknown | celo | n/a | [`0x554fca0f7c465cd2f8c305a10bf907a2034d2a19`](./contracts/celo-42220/0x554fca0f7c465cd2f8c305a10bf907a2034d2a19/) | ⚠️ Unaudited |
| SortedOracles | unknown | celo | n/a | [`0xefb84935239dacdecf7c5ba76d8de40b077b7b33`](./contracts/celo-42220/0xefb84935239dacdecf7c5ba76d8de40b077b7b33/) | ⚠️ Unaudited |
| StableTokenV3 | unknown | celo | n/a | [`0x765de816845861e75a25fca122bb6898b8b1282a`](./contracts/celo-42220/0x765de816845861e75a25fca122bb6898b8b1282a/) | ⚠️ Unaudited |
| StakedCelo | unknown | celo | n/a | 2 deployments: celo [`0x085a0d7612f35a94bd72e9ce2ff8bc86727f21ca`](./contracts/celo-42220/0x085a0d7612f35a94bd72e9ce2ff8bc86727f21ca/); celo `0x95cc0c75015059dd659db9b528101c5ba91c4e49` | ⚠️ Unaudited |
| StakedCelo | unknown | celo | n/a | 2 deployments: celo [`0x0b2f88ce833ecfc84a006a4c6db7ea23d565f75b`](./contracts/celo-42220/0x0b2f88ce833ecfc84a006a4c6db7ea23d565f75b/); celo `0x922333bdcb665e91eef9508de56ab2a3c2794692` | ⚠️ Unaudited |
| StakedCelo | unknown | celo | n/a | 2 deployments: celo [`0x2c2e2bb4ce3264fc2f70161ba72340b9ee4edc3a`](./contracts/celo-42220/0x2c2e2bb4ce3264fc2f70161ba72340b9ee4edc3a/); celo `0x809b7ebabb2e4e1e4d1104b3b361b898ae632426` | ⚠️ Unaudited |
| StakedCelo | unknown | celo | n/a | 2 deployments: celo [`0x6e17cf4e1a21125d0ce9a1ce4a284ad7bf783b67`](./contracts/celo-42220/0x6e17cf4e1a21125d0ce9a1ce4a284ad7bf783b67/); celo `0xc668583dcbdc9ae6fa3ce46462758188adfdfc24` | ⚠️ Unaudited |
| StakedCelo | unknown | celo | n/a | 2 deployments: celo [`0x9122855efe96f0f53eda66602ebea000733ddcfc`](./contracts/celo-42220/0x9122855efe96f0f53eda66602ebea000733ddcfc/); celo `0xb59b1c36e4466f19c84dd2aeccace718b32c4b61` | ⚠️ Unaudited |
| TransferWhitelist | unknown | celo | n/a | [`0xb49e4d6f0b7f8d0440f75697e6c8b37e09178bcf`](./contracts/celo-42220/0xb49e4d6f0b7f8d0440f75697e6c8b37e09178bcf/) | ⚠️ Unaudited |
| Validators | unknown | celo | n/a | [`0xaeb865bca93ddc8f47b8e29f40c5399ce34d0c58`](./contracts/celo-42220/0xaeb865bca93ddc8f47b8e29f40c5399ce34d0c58/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | celo | n/a | `0x0198db9696aac48c5edaa7b8a0b0d5d20eb2632c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x03f69652876d45acf168acd7cbece9aaf52887b8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x094ee251965823285fd35d70175225cf5f520d67` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x09b17f887721035c2d73b0628c4bdb5666a31cce` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0cc6e134abd23d826d72c1cb9331d1af66ac6a77` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x12364a15f52b822f12dd858faeedc49f472fba57` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1690e229c37219f0a10e102232de5e2591de7df5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1cf4f97705f812a18830d5be60b8cdfc3543ec90` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1f0e8b1f8d39c1bf81311b4bd86337f15bd32cea` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x204ba494de6a50a116ecd340556be8a15734c9d4` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x48b505f1c5b7300de070da9c85324272fc65f187` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4cf604c6251c87d0c83e17f88397dec67ead825f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4e843ad7e0dcd656bdfe4d3649285e01724678b0` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x585e1e617dbebdc7b13cf2ec8d11ea85fa3a26c6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x59f4ece373e26b39f389887c26b399497d7a4b68` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x61257eaf53497829636383f6c4ac467d575c3fd5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x63af253c645ca35a4a2b35aab30c611abeb3e40a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x672b7ddaf201e5c1a71e5843848035dbccdaf224` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6c5d141990146bd3d11c877b0dd608167fc5a11d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6c611aa922e9cfc40500e849d780f0e5708b1287` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7158689eb1a161f38f5227f5e2a8eef65a3333cc` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x799c0cefd290bbb7f1bdc1a1dbfdc2f875db47b3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7c68b5647fb5624cb1f83209a5d828111f264969` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8897ecd44b98a220dbc1a19e668796b123a27f57` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8b3842da1304eae0894286021e26cb8283ed37e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8dd4f800851db9dc219fdfaeb82f8d69e2b13582` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x969d7b57c869fec5163318753aa27cc896ead654` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9a642a8a77635b5df73eacf8ba389dcbb87bee9b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa6dacd16c9a7d823b7e2701ea0226e20c7debbfc` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xaa933baf03cfc55b8e4e0d7de479bcc12f189352` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xacf9d7ee602195a87cc4e86cf00186361a045d15` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb325a8e12344953e8b8b1afbf1d5580d36c26245` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb42d0c1fa3f714055054c2001d09556761210a22` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xba53ef24579b1b505f823ac6be85e7ae3b0b38e5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbd42adbe4904c50827287536635c042f70721bf7` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc053ca07fb7003fd9594154afc1a15573e407207` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc21090ac772a0aeb28472073c976d89dab011e19` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc35269b01c873cfd441b35090a83e6aeb307cd30` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc54e26ca615884ae5e6f67d75aeb3bb17648986b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd2a7fbc114a135c671e63fdde540d4a471265865` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd3188fefca5b9f385caedc0bad67960a3f6f4c69` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd3a6f30326301e864c5fa5a4a7f61026fc726702` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xefe50f83ba23240a85c39aff429b31e556d2c80f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf9de2da9bf81dfab66d09db1b7d71cf11851c3ed` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xfe6803022191b40256a0c6571e23a6f49b7d64ed` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Celo Audit Competition Summary Report_Nov24.pdf](https://github.com/celo-org/staked-celo/blob/master/audit/Celo%20Audit%20Competition%20Summary%20Report_Nov24.pdf) | Celo | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |
| [Celo-staking-audit-mar24(Public).pdf](https://github.com/celo-org/staked-celo/blob/master/audit/Celo-staking-audit-mar24(Public).pdf) | Celo | Audit | 2024-04 | stale | Direct | contract_name | 35 | high |
| [FTI_audit_stCELO.pdf](https://github.com/celo-org/staked-celo/blob/master/audit/FTI_audit_stCELO.pdf) | FTI | Audit | 2022-05 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | [`0x7d21685c17607338b313a7174bab6620bad0aab7`](./contracts/celo-42220/0x7d21685c17607338b313a7174bab6620bad0aab7/) | Accounts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xdc553892cdeeed9f575aa0fba099e5847fd88d20`](./contracts/celo-42220/0xdc553892cdeeed9f575aa0fba099e5847fd88d20/) | Attestations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x6e10a8864c65434a721d82e424d727326f9d5bfa`](./contracts/celo-42220/0x6e10a8864c65434a721d82e424d727326f9d5bfa/) | BlockchainParameters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2f9ba7121ea67436aa7910080b4b68efee539e2d`](./contracts/celo-42220/0x2f9ba7121ea67436aa7910080b4b68efee539e2d/) | DefaultStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x5231221d0e45768d6e0315ca2e9eccc1ef466f09`](./contracts/celo-42220/0x5231221d0e45768d6e0315ca2e9eccc1ef466f09/) | DefaultStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x5bd084845f8ce18384d361bf8f4742ead18eed3d`](./contracts/celo-42220/0x5bd084845f8ce18384d361bf8f4742ead18eed3d/) | DefaultStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x50c100bacde7e2b546371eb0be1eaccf0a6772ec`](./contracts/celo-42220/0x50c100bacde7e2b546371eb0be1eaccf0a6772ec/) | DoubleSigningSlasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x8d6677192144292870907e3fa8a5527fe55a7ff6`](./contracts/celo-42220/0x8d6677192144292870907e3fa8a5527fe55a7ff6/) | Election | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x07f007d389883622ef8d4d347b3f78007f28d8b7`](./contracts/celo-42220/0x07f007d389883622ef8d4d347b3f78007f28d8b7/) | EpochRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xf4fa51472ca8d72af678975d9f8795a504e7ada5`](./contracts/celo-42220/0xf4fa51472ca8d72af678975d9f8795a504e7ada5/) | Escrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x67316300f17f063085ca8bca4bd3f7a5a3c66275`](./contracts/celo-42220/0x67316300f17f063085ca8bca4bd3f7a5a3c66275/) | Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xbb024e9cdcb2f9e34d893630d19611b8a5381b3c`](./contracts/celo-42220/0xbb024e9cdcb2f9e34d893630d19611b8a5381b3c/) | FeeCurrencyWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xd9ce4209888cfdfeb7c3d6e2ca34eeb06272284d`](./contracts/celo-42220/0xd9ce4209888cfdfeb7c3d6e2ca34eeb06272284d/) | FixidityLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x47a472f45057a9d79d62c6427367016409f4ff5a`](./contracts/celo-42220/0x47a472f45057a9d79d62c6427367016409f4ff5a/) | Freezer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xdfca3a8d7699d8bafe656823ad60c17cb8270ecc`](./contracts/celo-42220/0xdfca3a8d7699d8bafe656823ad60c17cb8270ecc/) | GasPriceMinimum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x471ece3750da237f93b8e339c536989b8978a438`](./contracts/celo-42220/0x471ece3750da237f93b8e339c536989b8978a438/) | GoldToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xd533ca259b330c7a88f74e000a3faea2d63b7972`](./contracts/celo-42220/0xd533ca259b330c7a88f74e000a3faea2d63b7972/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xf2a347f184b0fef572c7cbd2c392359eccf43f3c`](./contracts/celo-42220/0xf2a347f184b0fef572c7cbd2c392359eccf43f3c/) | GovernanceSlasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x004377e7c1c68b97c2e00943b426ba172ff476eb`](./contracts/celo-42220/0x004377e7c1c68b97c2e00943b426ba172ff476eb/) | GroupHealth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x073bb388eeea656e056c8750494cd0bc460985d9`](./contracts/celo-42220/0x073bb388eeea656e056c8750494cd0bc460985d9/) | GroupHealth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x193df9d86435e2ef4c75467d0d38c2cf00d556ad`](./contracts/celo-42220/0x193df9d86435e2ef4c75467d0d38c2cf00d556ad/) | GroupHealth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x205f4cb670fdbcbda1c14d81fdacd7092bbc64e1`](./contracts/celo-42220/0x205f4cb670fdbcbda1c14d81fdacd7092bbc64e1/) | GroupHealth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2f59796ae74ed01fcf6fbcf79ec7013a571a2f18`](./contracts/celo-42220/0x2f59796ae74ed01fcf6fbcf79ec7013a571a2f18/) | GroupHealth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x18f51d47f7cdc9feb8f67cf95d856565584f3fcf`](./contracts/celo-42220/0x18f51d47f7cdc9feb8f67cf95d856565584f3fcf/) | Manager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x25b7f372d51e785826fb294f9458892af5bb807f`](./contracts/celo-42220/0x25b7f372d51e785826fb294f9458892af5bb807f/) | Manager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x43e55a252d22c01d114ad325fc0a62877346fb58`](./contracts/celo-42220/0x43e55a252d22c01d114ad325fc0a62877346fb58/) | Manager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x443579fcb9518529d358e0a10e9de42e92de5af7`](./contracts/celo-42220/0x443579fcb9518529d358e0a10e9de42e92de5af7/) | Manager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x534a0b843817679928625063219324902291648b`](./contracts/celo-42220/0x534a0b843817679928625063219324902291648b/) | Manager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x954bc8b6afe0e7109ec61b204be01d4bf8c5e5af`](./contracts/celo-42220/0x954bc8b6afe0e7109ec61b204be01d4bf8c5e5af/) | Manager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xa60fcf6fd40cadca90359bc94ca21bf3b97c70f5`](./contracts/celo-42220/0xa60fcf6fd40cadca90359bc94ca21bf3b97c70f5/) | Manager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xe8882d0f80bd82a618251093124f56fdd8faf4b7`](./contracts/celo-42220/0xe8882d0f80bd82a618251093124f56fdd8faf4b7/) | Migrations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x13f1f8706710069bc55b71e320a3fb2d3775c27e`](./contracts/celo-42220/0x13f1f8706710069bc55b71e320a3fb2d3775c27e/) | MultiSig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2d952d7a21fbce9d52e62973303908e8fc124cd0`](./contracts/celo-42220/0x2d952d7a21fbce9d52e62973303908e8fc124cd0/) | MultiSig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2e37af02023644a1203d9c3daf96ecd635e9e4df`](./contracts/celo-42220/0x2e37af02023644a1203d9c3daf96ecd635e9e4df/) | MultiSig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x41822d8a191fcfb1cfca5f7048818acd8ee933d3`](./contracts/celo-42220/0x41822d8a191fcfb1cfca5f7048818acd8ee933d3/) | MultiSig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x5aa1c651b864b42c6c6acd1e8a4ee807e4e8f2e3`](./contracts/celo-42220/0x5aa1c651b864b42c6c6acd1e8a4ee807e4e8f2e3/) | MultiSig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x78b50bd80ecbd9f44b616d89b835ed8982220cca`](./contracts/celo-42220/0x78b50bd80ecbd9f44b616d89b835ed8982220cca/) | MultiSig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x78daa21fce4d30e74ff745da3204764a0ad40179`](./contracts/celo-42220/0x78daa21fce4d30e74ff745da3204764a0ad40179/) | MultiSig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x88d1ae61a25c73e2adffd7b3b58477f42cd48c24`](./contracts/celo-42220/0x88d1ae61a25c73e2adffd7b3b58477f42cd48c24/) | MultiSig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x98c93ee03873c472d267a6844a4d5ccab714dc67`](./contracts/celo-42220/0x98c93ee03873c472d267a6844a4d5ccab714dc67/) | MultiSig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xd4b9fd4f900fdbb58ce284f82730653f9379cbc4`](./contracts/celo-42220/0xd4b9fd4f900fdbb58ce284f82730653f9379cbc4/) | Proposals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x22a4aaf42a50bfa7238182460e32f15859c93dfe`](./contracts/celo-42220/0x22a4aaf42a50bfa7238182460e32f15859c93dfe/) | Random | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0251c3224f15e875fe6fbca04c0f9117366cc806`](./contracts/celo-42220/0x0251c3224f15e875fe6fbca04c0f9117366cc806/) | RebasedStakedCelo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x52bb5091b2e2319300b4db33b63d715c89a195c0`](./contracts/celo-42220/0x52bb5091b2e2319300b4db33b63d715c89a195c0/) | RebasedStakedCelo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x58fc5556dfb1a1b23e32b395f6522aa86c14713c`](./contracts/celo-42220/0x58fc5556dfb1a1b23e32b395f6522aa86c14713c/) | RebasedStakedCelo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x203fdf86a00999107df531fa00b4ba81d674cb66`](./contracts/celo-42220/0x203fdf86a00999107df531fa00b4ba81d674cb66/) | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x9380fa34fd9e4fd14c06305fd7b6199089ed4eb9`](./contracts/celo-42220/0x9380fa34fd9e4fd14c06305fd7b6199089ed4eb9/) | Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x554fca0f7c465cd2f8c305a10bf907a2034d2a19`](./contracts/celo-42220/0x554fca0f7c465cd2f8c305a10bf907a2034d2a19/) | ReserveSpenderMultiSigProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xefb84935239dacdecf7c5ba76d8de40b077b7b33`](./contracts/celo-42220/0xefb84935239dacdecf7c5ba76d8de40b077b7b33/) | SortedOracles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x765de816845861e75a25fca122bb6898b8b1282a`](./contracts/celo-42220/0x765de816845861e75a25fca122bb6898b8b1282a/) | StableTokenV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x085a0d7612f35a94bd72e9ce2ff8bc86727f21ca`](./contracts/celo-42220/0x085a0d7612f35a94bd72e9ce2ff8bc86727f21ca/) | StakedCelo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0b2f88ce833ecfc84a006a4c6db7ea23d565f75b`](./contracts/celo-42220/0x0b2f88ce833ecfc84a006a4c6db7ea23d565f75b/) | StakedCelo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2c2e2bb4ce3264fc2f70161ba72340b9ee4edc3a`](./contracts/celo-42220/0x2c2e2bb4ce3264fc2f70161ba72340b9ee4edc3a/) | StakedCelo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x6e17cf4e1a21125d0ce9a1ce4a284ad7bf783b67`](./contracts/celo-42220/0x6e17cf4e1a21125d0ce9a1ce4a284ad7bf783b67/) | StakedCelo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x9122855efe96f0f53eda66602ebea000733ddcfc`](./contracts/celo-42220/0x9122855efe96f0f53eda66602ebea000733ddcfc/) | StakedCelo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xb49e4d6f0b7f8d0440f75697e6c8b37e09178bcf`](./contracts/celo-42220/0xb49e4d6f0b7f8d0440f75697e6c8b37e09178bcf/) | TransferWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xaeb865bca93ddc8f47b8e29f40c5399ce34d0c58`](./contracts/celo-42220/0xaeb865bca93ddc8f47b8e29f40c5399ce34d0c58/) | Validators | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 74 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=2, extraction_exact=35

Fork inheritance lineage and inherited audits are included when available.
