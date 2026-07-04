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
| BSCSBaseStartPool | unknown | bsc | n/a | [`0x4ec382...446a38`](./contracts/bsc-56/0x4ec38213e29d311917fc45aff907e8285a446a38/) | ✅ Audited |
| BSCSToken | unknown | bsc | n/a | 2 deployments: bsc [`0x62b547...05a6ca`](./contracts/bsc-56/0x62b547b27354d31fcde029504e1c2dcd3f05a6ca/); bsc `0xbcb24a...b7f45d` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BSCSBNBLPBSCSStartPool | core_logic | bsc | n/a | [`0x3cfede...41936c`](./contracts/bsc-56/0x3cfede1dc2134a53383a435d197ed34db741936c/) | ⚠️ Unaudited |
| BSCSBNBLPearnBSCSIDOPool | core_logic | bsc | n/a | [`0x3036f3...e7985e`](./contracts/bsc-56/0x3036f3195cf84a3d95a0dde8bdf137ae7fe7985e/) | ⚠️ Unaudited |
| BSCSBSCSIDOPool | core_logic | bsc | n/a | 2 deployments: bsc [`0x0b8c29...45f6cd`](./contracts/bsc-56/0x0b8c29319e69fe053f27585da2f6f924e745f6cd/); bsc `0xcaf51d...2e34b4` | ⚠️ Unaudited |
| BSCSBSCSStartPool | core_logic | bsc | n/a | 3 deployments: bsc [`0x06ce5d...0739a6`](./contracts/bsc-56/0x06ce5d3f04856a514d51d6328a4e2378aa0739a6/); bsc `0x6d7c8a...576f80`; bsc `0x72a643...ab18c9` | ⚠️ Unaudited |
| BSCSBUSDLPBSCSStartPool | core_logic | bsc | n/a | [`0xcff637...b0e991`](./contracts/bsc-56/0xcff637bc7eb80acac69207746a9ed34a16b0e991/) | ⚠️ Unaudited |
| BSCSIDO180DaysPool | core_logic | bsc | n/a | [`0xd67fd7...fbe12c`](./contracts/bsc-56/0xd67fd740e0fbed8367d9146ba177ff3b22fbe12c/) | ⚠️ Unaudited |
| COGIBNBCAKELPCOGI | unknown | bsc | n/a | [`0xf06747...951ebb`](./contracts/bsc-56/0xf06747435ce1761ec389030fd63c35f956951ebb/) | ⚠️ Unaudited |
| COGIBSCSPool | core_logic | bsc | n/a | [`0x95f2df...91212b`](./contracts/bsc-56/0x95f2df23ea5b35314938d70c8baa8a0f1191212b/) | ⚠️ Unaudited |
| COGICOGIPool | core_logic | bsc | n/a | [`0xa3d040...48b092`](./contracts/bsc-56/0xa3d0407de3da12593537e0e685e3b8be2648b092/) | ⚠️ Unaudited |
| DALBUSDDALPool | core_logic | bsc | n/a | [`0xb801d8...2fe17a`](./contracts/bsc-56/0xb801d820852010b46bcbd2c85e9cde07052fe17a/) | ⚠️ Unaudited |
| KDGKDGIDOPool | core_logic | bsc | n/a | 3 deployments: bsc [`0x5dba3b...4492d7`](./contracts/bsc-56/0x5dba3b19b38fd8ad467437b9891e1f93874492d7/); bsc `0x60f38a...eda6fa`; bsc `0xdf785a...17505c` | ⚠️ Unaudited |
| StakeMSTearneBSCS | unknown | bsc | n/a | [`0x2a6848...34fa8e`](./contracts/bsc-56/0x2a6848df4ddbd12aa5abaff30ec626ec1134fa8e/) | ⚠️ Unaudited |
| StakingReward | unknown | bsc | n/a | [`0xf17897...9935f4`](./contracts/bsc-56/0xf1789773b664cf6525e7aa12f4bf6c8a089935f4/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x014fa2...d079fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x021ebb...dc47cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0313e1...29cb30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03b0c3...95f1a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04875d...041a29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x051a0c...3afd78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05c7e2...c6712d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x066b02...beeb36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x068750...250533` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06b587...c288bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x073756...bbfc02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07bc85...18972e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07d435...0e3f69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x092f7e...e21de1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a39d8...9995be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e5eca...2489e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10ef56...e8fe80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1394ce...b9f8af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x149400...e3fc8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14c287...9dc2aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x164102...94036c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16dc4a...a8339a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1bd6d7...50983a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e3fa6...6d150f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1eaca8...f67144` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1fe086...068e2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x204ce0...e38fbe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x209e19...0e96fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24e37e...d2c5c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x267339...00e99f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28524c...dee36e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x291ed2...35ea24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29665b...74516f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ba430...475486` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c98a4...430a0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30dd5e...e7d8be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3336e2...a5a131` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3575de...1df8b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36f700...0bfeda` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x372743...da091f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x373860...6e0390` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x382e2d...97c8f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a245f...d1d3eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b9ead...0d620f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ceee5...50fd0c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x410d15...388075` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41aeb1...62eec3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44aa61...083121` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4756be...75217a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4aa519...3bb2d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4bc3fa...6d8f08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d6a46...4d2d99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4dda5d...d6d4a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e78bf...c265df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4fdcf6...8839d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53a417...40c427` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a9d24...b73e84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b2b95...1ebd91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ca891...2e3acc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ceaa4...a95313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dbb1b...3c453b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x604d2d...9b16fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60d96c...5b4997` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63e9b5...2c2010` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x650ffc...83f503` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65ddcc...441037` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x67eb3e...072241` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68d179...7886ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x692154...4bc369` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69a238...8a023f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a1dba...fa55ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6cf2eb...aecfdb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6db0ef...0b75c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70702b...5ff8c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x718d77...71e4e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7290c2...7b6f1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76f01e...1fabeb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77e5ca...9b542f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7979e4...6711f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d2ccb...00220f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e4e45...c97f28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f12af...a5837b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80171c...fd4d20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x851ed4...e6125e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x870028...ed8e49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8bf51f...225b5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e2d75...dbd64a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f12fe...cc2f22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f6fec...ad9075` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x931cc1...09575a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa28633...d58cfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4af57...890c94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa52962...ca8a10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa56381...65d491` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa8fccf...f60125` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad7fc3...42e61c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae1cc0...000f4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae8b5b...32bca6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0e09b...78097b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb19f83...4d3e9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb20872...6fb7ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb30ae4...02569b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5314c...5c9e3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb950c5...cb703f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb2ab2...3f0fa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd499a...1070dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe3fd8...6ffcef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbee54e...640ef7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc00f26...d21f69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc19240...c82738` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1e19b...496236` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc50ec6...d12531` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5b7c4...fd4df0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc63436...b0fd72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6373c...f750e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8b55b...18af07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc98fdc...aa9108` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcabed0...5c19ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbe7da...90d88c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc2041...918c2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcdd11b...90f8e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xceba70...b0fcd7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf79c3...7cbe2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd08dea...7d51f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd0e53a...58c04c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd25acb...445fdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd34a09...66534d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd4cbd1...850b0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd796b2...9f5688` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd92040...0adf75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb6e03...757435` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc67cb...73ba50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdcc7c6...2d32a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd5d41...9fbd4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe02977...0a19af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4b242...3d0c47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4f4d7...95c33a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb03f3...f1dc74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb28ea...cdf0b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb8b51...efcafb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf05e72...f0b063` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0c9f8...0b2d4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0dc5c...7dbcd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf56d81...f2ce9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6e62d...a4b46b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf708db...551259` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7deec...e62939` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfbd4dd...8b8319` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe7747...6b52be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfed669...70d563` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff4582...480f81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xffa6d4...416ef1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-BSCStationStartPools-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-BSCStationStartPools-v1.0.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | contract_name | 1 | high |
| [BSCS Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/Audit_Reports/blob/master/BSCS%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x3cfede...41936c`](./contracts/bsc-56/0x3cfede1dc2134a53383a435d197ed34db741936c/) | BSCSBNBLPBSCSStartPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3036f3...e7985e`](./contracts/bsc-56/0x3036f3195cf84a3d95a0dde8bdf137ae7fe7985e/) | BSCSBNBLPearnBSCSIDOPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b8c29...45f6cd`](./contracts/bsc-56/0x0b8c29319e69fe053f27585da2f6f924e745f6cd/) | BSCSBSCSIDOPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x06ce5d...0739a6`](./contracts/bsc-56/0x06ce5d3f04856a514d51d6328a4e2378aa0739a6/) | BSCSBSCSStartPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcff637...b0e991`](./contracts/bsc-56/0xcff637bc7eb80acac69207746a9ed34a16b0e991/) | BSCSBUSDLPBSCSStartPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd67fd7...fbe12c`](./contracts/bsc-56/0xd67fd740e0fbed8367d9146ba177ff3b22fbe12c/) | BSCSIDO180DaysPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf06747...951ebb`](./contracts/bsc-56/0xf06747435ce1761ec389030fd63c35f956951ebb/) | COGIBNBCAKELPCOGI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x95f2df...91212b`](./contracts/bsc-56/0x95f2df23ea5b35314938d70c8baa8a0f1191212b/) | COGIBSCSPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa3d040...48b092`](./contracts/bsc-56/0xa3d0407de3da12593537e0e685e3b8be2648b092/) | COGICOGIPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb801d8...2fe17a`](./contracts/bsc-56/0xb801d820852010b46bcbd2c85e9cde07052fe17a/) | DALBUSDDALPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5dba3b...4492d7`](./contracts/bsc-56/0x5dba3b19b38fd8ad467437b9891e1f93874492d7/) | KDGKDGIDOPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a6848...34fa8e`](./contracts/bsc-56/0x2a6848df4ddbd12aa5abaff30ec626ec1134fa8e/) | StakeMSTearneBSCS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf17897...9935f4`](./contracts/bsc-56/0xf1789773b664cf6525e7aa12f4bf6c8a089935f4/) | StakingReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
