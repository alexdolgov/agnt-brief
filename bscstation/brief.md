# Agentic Audit Brief: BSCStation

## Project Overview

- Project: BSCStation (`bscstation`)
- Website: [https://defai.bscs.finance/](https://defai.bscs.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:08.601Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: bsc
- Contract surface: 167 unique implementations (173 raw deployments)
- DeFi Llama TVL: $1,495.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 139 project-authored contract(s) across 1 chain(s); 117 ERC20 tokens, 3 ERC721 NFTs, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 5 common project-authored base contract(s) (erc165, erc721holder, erc1155burnable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 470; live-surface contracts included: 173 (21 live, 152 unknown).
- Excluded by liveness: 297 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/15 (13.3%)
- Deployed-live implementations: 15 of 167 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/15
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 152
- Unique implementations: 167
- Raw deployments: 173
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 6.7% | 2021-10 |
| unknown | Tier 2 | 1 | 6.7% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BSCSBaseStartPool | unknown | bsc | n/a | [`0x4ec38213e29d311917fc45aff907e8285a446a38`](./contracts/bsc-56/0x4ec38213e29d311917fc45aff907e8285a446a38/) | ✅ Audited |
| BSCSToken | unknown | bsc | n/a | 2 deployments: bsc [`0x62b547b27354d31fcde029504e1c2dcd3f05a6ca`](./contracts/bsc-56/0x62b547b27354d31fcde029504e1c2dcd3f05a6ca/); bsc `0xbcb24afb019be7e93ea9c43b7e22bb55d5b7f45d` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BSCSBNBLPBSCSStartPool | core_logic | bsc | n/a | [`0x3cfede1dc2134a53383a435d197ed34db741936c`](./contracts/bsc-56/0x3cfede1dc2134a53383a435d197ed34db741936c/) | ⚠️ Unaudited |
| BSCSBNBLPearnBSCSIDOPool | core_logic | bsc | n/a | [`0x3036f3195cf84a3d95a0dde8bdf137ae7fe7985e`](./contracts/bsc-56/0x3036f3195cf84a3d95a0dde8bdf137ae7fe7985e/) | ⚠️ Unaudited |
| BSCSBSCSIDOPool | core_logic | bsc | n/a | 2 deployments: bsc [`0x0b8c29319e69fe053f27585da2f6f924e745f6cd`](./contracts/bsc-56/0x0b8c29319e69fe053f27585da2f6f924e745f6cd/); bsc `0xcaf51d8b12b3333774191a08dfcaf5718a2e34b4` | ⚠️ Unaudited |
| BSCSBSCSStartPool | core_logic | bsc | n/a | 3 deployments: bsc [`0x06ce5d3f04856a514d51d6328a4e2378aa0739a6`](./contracts/bsc-56/0x06ce5d3f04856a514d51d6328a4e2378aa0739a6/); bsc `0x6d7c8ad9abbfee50bb3be2b58d4e08a755576f80`; bsc `0x72a643471020fce60248d37548c459b87cab18c9` | ⚠️ Unaudited |
| BSCSBUSDLPBSCSStartPool | core_logic | bsc | n/a | [`0xcff637bc7eb80acac69207746a9ed34a16b0e991`](./contracts/bsc-56/0xcff637bc7eb80acac69207746a9ed34a16b0e991/) | ⚠️ Unaudited |
| BSCSIDO180DaysPool | core_logic | bsc | n/a | [`0xd67fd740e0fbed8367d9146ba177ff3b22fbe12c`](./contracts/bsc-56/0xd67fd740e0fbed8367d9146ba177ff3b22fbe12c/) | ⚠️ Unaudited |
| COGIBNBCAKELPCOGI | unknown | bsc | n/a | [`0xf06747435ce1761ec389030fd63c35f956951ebb`](./contracts/bsc-56/0xf06747435ce1761ec389030fd63c35f956951ebb/) | ⚠️ Unaudited |
| COGIBSCSPool | core_logic | bsc | n/a | [`0x95f2df23ea5b35314938d70c8baa8a0f1191212b`](./contracts/bsc-56/0x95f2df23ea5b35314938d70c8baa8a0f1191212b/) | ⚠️ Unaudited |
| COGICOGIPool | core_logic | bsc | n/a | [`0xa3d0407de3da12593537e0e685e3b8be2648b092`](./contracts/bsc-56/0xa3d0407de3da12593537e0e685e3b8be2648b092/) | ⚠️ Unaudited |
| DALBUSDDALPool | core_logic | bsc | n/a | [`0xb801d820852010b46bcbd2c85e9cde07052fe17a`](./contracts/bsc-56/0xb801d820852010b46bcbd2c85e9cde07052fe17a/) | ⚠️ Unaudited |
| KDGKDGIDOPool | core_logic | bsc | n/a | 3 deployments: bsc [`0x5dba3b19b38fd8ad467437b9891e1f93874492d7`](./contracts/bsc-56/0x5dba3b19b38fd8ad467437b9891e1f93874492d7/); bsc `0x60f38a74a7da4bd921202ba1903d5a1c8deda6fa`; bsc `0xdf785ab1bbaa32dc6cacf44af49eb6c87b17505c` | ⚠️ Unaudited |
| StakeMSTearneBSCS | unknown | bsc | n/a | [`0x2a6848df4ddbd12aa5abaff30ec626ec1134fa8e`](./contracts/bsc-56/0x2a6848df4ddbd12aa5abaff30ec626ec1134fa8e/) | ⚠️ Unaudited |
| StakingReward | unknown | bsc | n/a | [`0xf1789773b664cf6525e7aa12f4bf6c8a089935f4`](./contracts/bsc-56/0xf1789773b664cf6525e7aa12f4bf6c8a089935f4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (152)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x014fa251714f06e749003925b41253325bd079fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x021ebb2a77bcd79ac2e42a222b26dc15f8dc47cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0313e1e46b37c1fdf7ec4892519e67dd4a29cb30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03b0c3a129ad78ac1c605fef1215cb227c95f1a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04875d511e33d1634ab30005803a53ffef041a29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x051a0ccedb28e6523eece0087f8f2487cf3afd78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05c7e2cce9eeb435eece6c3aa54de1dc12c6712d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x066b028f94fc69bde794aadb55cb5b9e0ebeeb36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0687508bba00675cc9b4e1b061d34eaa4a250533` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06b5871d93ae7c92c8289df352ee0cdd26c288bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07375609cd1d1f17d8fb1b26a4287be505bbfc02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07bc85f0357dde8729cae5f47012cc76f918972e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07d4357b8e00e8bf3e132f44eb251888020e3f69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x092f7e16b0cf1c03340a3fa0deea9f305ae21de1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a39d82dd8f851968a5a11c6a9318a2ec19995be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e5eca84395bd539bf0a00dc3a2c887a0d2489e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10ef561073f9cb52e7b8d14906f4c2aad6e8fe80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1394ceebb961d9e4a9c188fa69f519ba20b9f8af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14940043ab5c9288dd00088a91023213e3e3fc8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14c287078c07f8fc74e3f1f537a03b5f359dc2aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x164102ab59eeb19914fd294d7bf5bd00c194036c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16dc4af6720f52ae11f87a3d858a9c918ba8339a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1bd6d7b5047d9c050efd61256ac5f2477f50983a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e3fa6a96c20259e030a105308a9a09d1b6d150f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1eaca8e9e40228c4933ae82fa214c6fd82f67144` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1fe0865b510f8329e57e74f178f319c13c068e2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x204ce0237442395703ca5d0b9888b0120de38fbe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x209e19e0f7d83d2cee86796b1b2aa29a0d0e96fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24e37ea2754bc9ff1f4f8d8d28279a0278d2c5c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2673394a5bef71657e21bc915bacbc2bb900e99f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28524c992c7ae30803d313fb24883145ecdee36e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x291ed22b698e14b6cbabb1cd70779c556135ea24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29665bedf3b59b7c1a671925c12656460c74516f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ba430734b9c6421b30d5712c623d7eb98475486` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c98a43ccf4a854df8eef08398a41cf5c9430a0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30dd5e329f1a9318fde746e6e9ff8a1aeee7d8be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3336e2fcce8ee5ee9f83fbf004ae41ca5ca5a131` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3575de5f521fbbb6149dc4592505483edf1df8b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36f700e025001b18af83e8e02f31aac6110bfeda` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37274326e2cfc55d53663c40a5910e978cda091f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3738602277db42f212e0d900e2f51707626e0390` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x382e2dd693c1c1645a3a00e5014c093c5297c8f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a245f0a31226bdca89b8afbb1f5052768d1d3eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b9ead7bd7d6a474b661fc9802add9a0020d620f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ceee5606b51ff8c480ac8c45dd7d3278f50fd0c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x410d1529c5779f3b1b5568bdc26fd03454388075` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41aeb1f73e6e28f6a015de38f39533336862eec3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44aa6108bb6f3fb41ee1cb374a66f124cd083121` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4756be1063f8db03886ac9c4f871faecae75217a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4aa5190a5ec364b5bb50af9b51904dc2bf3bb2d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4bc3fa305bc56741e75d93c0e652002ce36d8f08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d6a467ebbcd8a2544a9ec03fa3b9e2de64d2d99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4dda5d5bf1308dd7212d22ad8fdf5fab53d6d4a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e78bfdb20191ecc6dbcb91813955bae0dc265df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4fdcf609db1440a7ea9c844e6c9699dcf78839d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53a417d2dcc08ab241b3e53de6293508e940c427` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a9d24b2c0fb75252a97522f69abd0bbf6b73e84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b2b950469eefa8bc51ab7c15e62cd12501ebd91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ca891adc6fa8f8a1a78de8d0a9cbbee022e3acc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ceaa4b44b2110625dbf01302eedfd3f00a95313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dbb1be53986a3706e950cdeb181e2025d3c453b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x604d2d2be178b191bc8d64a16b0579a0fe9b16fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60d96cb45dc434c5fdd6de146c4eb0e8835b4997` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63e9b5bbd842d7a7c997288ba1f15a3e472c2010` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x650ffc4ad938f0cf8d39cd44bbe820c90d83f503` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65ddcce5c5bfd232b7aae5b74f6cd1277f441037` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x67eb3e30809911c2cf35c5ff91294d1055072241` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68d17910fc64fc3fa16532b39c9ebabef77886ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6921541404a663fb66f556367a4c12c11c4bc369` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69a238270b08eebc1a9c926c18a991f54a8a023f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a1dba2fce175d3b051f629b95e52b4f49fa55ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6cf2ebb9714b61af0e5f390e53b3cbbe38aecfdb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6db0efc62b3e9164620c9e7b7074b0c4f20b75c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70702ba02f384d0483459b64bd6af733e15ff8c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x718d77dd8e5fb5de48d77bee22b237b30f71e4e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7290c2149906e41d9b10444ee345189ff37b6f1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76f01e1b4c61cb89ad3039cab48ebac7441fabeb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77e5cac1d9b9c157fedd9f1fc70fae79ec9b542f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7979e4ad155aadfd995d0a02873944c6ff6711f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d2ccbe938c26ead556a7eebab5c0c32c000220f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e4e45b2f4adb37bec3774715be28f4aeac97f28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f12af7b4eccf7bfcc2ae124fcca235819a5837b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80171c7c715402901cc5ca3b2e7712b765fd4d20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x851ed46ae6efa05ac6f98bb0210635565be6125e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8700285ce5207eb6277a06ef72832c6977ed8e49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8bf51f4cdcb1940c2841074f18401708cf225b5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e2d758418636980886fe39c6f63129612dbd64a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f12feba23fb328a43a83e7955af5c9e68cc2f22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f6fec6b1a1c50e0c379cfe8b7cabe9457ad9075` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x931cc1240c4bdf5e1e95073dce80bad37509575a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa28633af7900810752650bc13f96d06c78d58cfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4af571b6c284d7c3e4c325c838caf5ee2890c94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa52962045ed7eb9a55620dcaa1927fea62ca8a10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5638187bfd04e9c69477dfc1c7fda14b765d491` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa8fccf1f04922a5eaec31e2b003658fe5ef60125` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad7fc30f2be8a9e469df5c5a1043c7fb7e42e61c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae1cc095b86a8219ba5bb4b9ecbbf4af00000f4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae8b5b9c077ea270614aa6d4bca06a186732bca6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0e09b86a913bd57d52a1c917fdc79b61978097b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb19f83ef77874c476351cb0902be467e9b4d3e9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2087275faa646533715f5531af9508e576fb7ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb30ae48cc09b0447e18a29b96cb540060c02569b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5314c2f212ec910f58c01239067f087b15c9e3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb950c5ae067809e5d8ebbeed62c9c7b984cb703f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb2ab251a38e673ac8dc1e6c4db48bfac83f0fa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd499ac286a4f3d065884380ef26bdce361070dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe3fd8fe92008e1aeeb618e281c23c6c166ffcef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbee54edc384f76ddc4927f51f765027e01640ef7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc00f2604f522126ba773e82fb440738659d21f69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc19240cfb8a498ef6a38cf6ab21e7d857dc82738` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1e19b5673a285a70d111800a707b392de496236` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc50ec6e6b0021d10daac2f16e8065a52b8d12531` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5b7c45e1d6b614d2eb9d3892cbe7bd7aafd4df0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc63436beae40b5f404ad911c73f0c4e920b0fd72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6373cc108801f08e0b40d96c90e07c28cf750e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8b55b6260c9cb47b153aeaced43c93bee18af07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc98fdc7ca20f709dc115291da7a53c6dbdaa9108` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcabed0b5f3f45c946d3950bbf752484d4c5c19ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbe7daffddf8307270a1d7c08e19d281fe90d88c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc20418b16266e8061449d6721929d8d1f918c2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcdd11bb3a87e80750fafd8f49bbf20ffd690f8e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xceba70d9d695e8ed8e0f0b0dea8f45f0a4b0fcd7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf79c3a1289c9df28b191c79b0d0344f557cbe2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd08dea91c8078106563c246d9351898bd87d51f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd0e53a417577c9634496c5e8b97ceb8c2a58c04c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd25acb34c570e95e6a1b2e3f2c8e837a06445fdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd34a090a27d26bf789780c45ea0a6beae166534d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd4cbd1342aa913fefb96bb97222e82df61850b0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd796b245fb4ace3728055dcd0d49de81529f5688` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd92040d7f8b37e251541e30881180145c20adf75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb6e03477e6c36ba1da9231a8cf4b1e12e757435` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc67cb10c6e2c1b4a9c272edc0b0d6b6e573ba50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdcc7c61225a8867f765ae96fd638c4aa4b2d32a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd5d41a74468a3f94838a6a8df237275c29fbd4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe02977e09452a6bb4ca7e60b0379b27b0e0a19af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4b242089970a3fab42d52d8a1b0c3e6633d0c47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4f4d7a6d54c9fe87d5c00d81f837a240695c33a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb03f31c438411da44cb77537e243df13ef1dc74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb28eaeb3704194f9c33b4ef094c919e85cdf0b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb8b513dbde241114b144a991a2730a566efcafb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf05e727837ea42c7bc6244fcd4a499a0def0b063` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0c9f8d26052d7071ccdb81e671ca0b8ba0b2d4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0dc5c6e4051a810363ef1fc3094990cdf7dbcd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf56d81a228e0272f32b28740a5ccf21029f2ce9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6e62d9758875ed753204dabc90c21d7e0a4b46b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf708dbfc74dbc7e87ad4dc12904588f0f2551259` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7deec13e2d0cf394e3850d6ce820f4166e62939` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfbd4dd18f6983d684916f27fb3678469f48b8319` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe7747f3fb3e96f04d88e46b7e1c2968e86b52be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfed669c1ffaa3a82d4d2ab73dd998dc21d70d563` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff4582a09ef3784a5a05b36ada8fdc34bb480f81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xffa6d4091949ac3450f1ae8bbf7d5827d1416ef1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-BSCStationStartPools-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-BSCStationStartPools-v1.0.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | contract_name | 1 | high |
| [BSCS Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/Audit_Reports/blob/master/BSCS%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x3cfede1dc2134a53383a435d197ed34db741936c`](./contracts/bsc-56/0x3cfede1dc2134a53383a435d197ed34db741936c/) | BSCSBNBLPBSCSStartPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3036f3195cf84a3d95a0dde8bdf137ae7fe7985e`](./contracts/bsc-56/0x3036f3195cf84a3d95a0dde8bdf137ae7fe7985e/) | BSCSBNBLPearnBSCSIDOPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b8c29319e69fe053f27585da2f6f924e745f6cd`](./contracts/bsc-56/0x0b8c29319e69fe053f27585da2f6f924e745f6cd/) | BSCSBSCSIDOPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x06ce5d3f04856a514d51d6328a4e2378aa0739a6`](./contracts/bsc-56/0x06ce5d3f04856a514d51d6328a4e2378aa0739a6/) | BSCSBSCSStartPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcff637bc7eb80acac69207746a9ed34a16b0e991`](./contracts/bsc-56/0xcff637bc7eb80acac69207746a9ed34a16b0e991/) | BSCSBUSDLPBSCSStartPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd67fd740e0fbed8367d9146ba177ff3b22fbe12c`](./contracts/bsc-56/0xd67fd740e0fbed8367d9146ba177ff3b22fbe12c/) | BSCSIDO180DaysPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf06747435ce1761ec389030fd63c35f956951ebb`](./contracts/bsc-56/0xf06747435ce1761ec389030fd63c35f956951ebb/) | COGIBNBCAKELPCOGI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x95f2df23ea5b35314938d70c8baa8a0f1191212b`](./contracts/bsc-56/0x95f2df23ea5b35314938d70c8baa8a0f1191212b/) | COGIBSCSPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa3d0407de3da12593537e0e685e3b8be2648b092`](./contracts/bsc-56/0xa3d0407de3da12593537e0e685e3b8be2648b092/) | COGICOGIPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb801d820852010b46bcbd2c85e9cde07052fe17a`](./contracts/bsc-56/0xb801d820852010b46bcbd2c85e9cde07052fe17a/) | DALBUSDDALPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5dba3b19b38fd8ad467437b9891e1f93874492d7`](./contracts/bsc-56/0x5dba3b19b38fd8ad467437b9891e1f93874492d7/) | KDGKDGIDOPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a6848df4ddbd12aa5abaff30ec626ec1134fa8e`](./contracts/bsc-56/0x2a6848df4ddbd12aa5abaff30ec626ec1134fa8e/) | StakeMSTearneBSCS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf1789773b664cf6525e7aa12f4bf6c8a089935f4`](./contracts/bsc-56/0xf1789773b664cf6525e7aa12f4bf6c8a089935f4/) | StakingReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 152 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
