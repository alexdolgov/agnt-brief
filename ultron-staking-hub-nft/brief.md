# Agentic Audit Brief: Ultron Staking Hub NFT

## Project Overview

- Project: Ultron Staking Hub NFT (`ultron-staking-hub-nft`)
- Website: [https://ultron.foundation/technology#staking-hub](https://ultron.foundation/technology#staking-hub)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.766Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: avalanche, bsc, ethereum, fantom, polygon
- Contract surface: 145 unique implementations (147 raw deployments)
- DeFi Llama TVL: $3,005,043.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Staking Pool. Structurally: 7 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (baseupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 182; live-surface contracts included: 147 (3 live, 144 unknown).
- Excluded by liveness: 35 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 145 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 144
- Unique implementations: 145
- Raw deployments: 147
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20Custom | token | ethereum | n/a | 3 deployments: ethereum [`0x5aa158404fed6b4730c13f49d3a7f820e14a636f`](./contracts/ethereum-1/0x5aa158404fed6b4730c13f49d3a7f820e14a636f/); bsc `0xd983ab71a284d6371908420d8ac6407ca943f810`; avalanche `0xc685e8eddc9f078666794cbfcd8d8351bac404ef` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (144)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0794187b56e732100051f7e010b4bdf4666cb331` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ab2a602d1018987cdcb29ae6fb6e3ebe44b1412` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dcd76b4a7357249d6160d456670bacc53292e27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05789a9a05e2b248eee0ac96df48a7ae7701a853` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0abe51a57e09d41b5c0879730acea565ebef2c66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x122ecaafb7f5ca62cb70a4533131fc9ff6a3d1e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1789944479ea514415c2fdad79c8fbbea0c12b55` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x183bce362fd6a70debe302a42b495ca6cf744f8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x189d9135006035dbe968c5d6d54d393dc11798a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1912d380198da321d9584c8f58dd9f76c43d6997` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c3940b89fae30121b73f554be43bb9274abb758` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d2e95f74b4cb85e1f33839d95172854a7c49a3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f3beaf2ce2e11d5511de5e72cbdd658efb9fa0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x203be7012907ae4c5f5b3d6cff0a9238aca67506` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x206d41368ac01509b05adddfcd20327745d19834` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26da5776068f94da371ecc48bb11e681abe087e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28a9e537c3e51956f1985a5fbef305a26c427f99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fb18c227e92100ec946448854f20ab0893f87d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2feb8d9dc80e9885359377e665f4b8e193ae072f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31b185de3dae171bf0aed5446acfb3d4e283eafd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x339e47789ac95c0c257118cf0dcfd1b9bd19137e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33f0c573e9415497d30fb7c1bd4632b2f27dc689` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35c8f1c64a7eef4eebeebe572039db9884bca891` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c04d2811cb1a51b6a6ed2b4f05f576737ac9c77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d82af6c4aab49fe8aad0ed1370c1f788bcedc50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ddacaf6340fbd90ac4abe606ea0fa44542171d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f666caf3b29142359cfbe8667d71c1cb26c90ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41f8e38c384c8ccaf2df98fb1a199fcf5519381a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x435f04eb9ff2494bb884ab699cac809eaa97f34e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x454e81fbfc03800103bff5156e009fcf06ae3dba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a61a7162fda7aea419c6b8c9ebe0b0ef9c1aed0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x567546fdbfd30eaba8b401726af71fb74b9d3dce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5aeca9dd3cea3a16bc1ff86ad4f432179955d65a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b6f74edf6beb91956b38f8ee2d923482ab462ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5becca1ed77a58f4c087c7167c3a8fb23dd94c8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f1699d79bce941da32fbeaa1b5685674570154b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6025adad5b1eac55f24e3e4783e0e881428017e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60ddb311c374cdf8e1f8b07c67995631a47f3f06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x647c3f4ad0b1f1656164f7e898f9e198a72ce710` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68143b58803be6c6ac899c32af1a74bd296ae846` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a5c037ae962321896a0c7f306ab9b827f62ac16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ab2a602d1018987cdcb29ae6fb6e3ebe44b1412` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6bbb3d411465044e34fb3beed8e2fe2bf07f8ebc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d7ed5b3dc7fd0945356d611094bd4ba41c23d82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e1b4f314ef0c7300f0d5eed440e552eff58e033` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e8cf224b18d9b28d2689052a7d3f106b43e6bb3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7463a434d5ffc5b256f8f034df2518da41cc9fee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x789b4ee78554372236e6ca1ef71b49f1e56cf659` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79dc1b9b02e4c30716fa045d683321fd6188ab09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b7557d150ad40e414b7b737a88b0b9095f6a19e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ca73fe29fbb44d439702b656619834a94e8d214` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ee504b90fbd407af6f06253e7c2046384ad9fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83227eeadd0efd554ae5175dd80ccfaf969e0cac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ab2b389552663bfaa17459df8038edbec2c6047` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b3cba51db7a5663993f851d75c659103d5f64a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9003af85924fa9417d6f989cc7773d665de8e66f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91e09b366e4249fd402f9e79d7d186d0664f9b9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x939842112911b507eb413d4143455ab8374afa79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93a6e4b7b970abebfd5684e69e6d75bea7ee5d5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9572067586d731af9c7449ce7c9d05130ef4d386` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x965b34760bb7973a4c29d74633548446f1484208` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x96c49cc924e7c17951f3567a3f12f592fb832f39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x985a244adc494f0a809e8ea8bc597a40b7093c44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9dcd76b4a7357249d6160d456670bacc53292e27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e2f95a7168e6dffd3104f8cd7457ff5f5d4d0b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa036d350e3ba56d6730fd660d64a2c422ab5383d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5cdcc8715ded4ff0fc5ef9ef73b670278c7a0dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa72f1803eaec705720960f640578637e24da99b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9c5f9b0d852a2d4bee6e2033cd6d424e424de23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad5d423542d4cb9853bff5b7a7da6b67018e5688` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad85b012d38469045d0b6f53f18e2600be43ea20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1c24acd36be3971a8f7f4f599ff9e097a87cbc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb32c0b6fcf664083372cbbd6b3f1e0dff4108909` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3774ff94ffc3f40183eb7de5d4af064470c1070` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5b7fc8a3c80b37e6fe3661648161fb60d03aa28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb717181d0c942f681422e975c4f8635ca06626db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb7ede3e902df05e6e51f7661eab2d17f7e3e04d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbdf7d4073d88126f9e299ffe2b850afb08360199` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc563775b4a0f69bd3a139eea197c8f4781247cd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc75e73f26e612a2ebde33c2a879af7d2655435d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8447280b4321a492ff93328fcd6d36e5c4ba6a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc997328df92aeab5f17eddc909d8e8910b979229` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb0d31a34e2cf1d38c9b161f2d3dc9f38271b7f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfa7ff9457bfe0973a25ff072448e95f7c4e99ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3183a3c3e98cf0650079462fb1da38f136b4dcd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7b6d51685daa5beddfb286f1025bd54aefeda90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb3d05d25d40f1c3f600dfbf5a11cf742fbfa60d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb4014ddced48026a765ecdf93712209862767d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb5a77b8fd92a8251a542f63642b573b5a331ce3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdba12f82f930ec7d3069a61c4e3d80b3b564d6ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd794cc7de096019bd08cc01c1d1056d7ab8cd5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde676d68c9f147ff9d191e9957b0330c3c585669` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdea328f714bb16543bce9473ae6e3bb155c8afe3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfe5f96bc503ce467afb9c4b4da95962f1e96c48` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0b62413147de8bcb5c9badede0dfdba4158fec1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe171e08ede4289abafc1b4ed69bd49fa72f499f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1f0d4a5123fd0834be805d84520dfdcd8cf00b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5004995132c143dd9ad1be18fd43176eb05fdc2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5343795060ac34f8577deec66477aaf2899f917` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7c1476c6cbdb821da024bcdac9b61d1c8b38737` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9361a7c40d869b7424806d2bcc369c13c921cb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeca80f0a969054e9ca973877e82f08c3409137e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed356d027dbd74d140b6774a1d45cf7d12b19be0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee132a7873b484c9153d5cda15cb37efd01ba1ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1129d0a082d98b3eda3e6a3ee8ef05ad0442b8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf31bfef7f5009429da5e1f2a7110811b3571e44b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf335387314a9101b6cb2d5ed327278d404757797` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf54a9d6560462502f30c5f9c866094290ab4625e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf625ebe49318ee3c425fb93c8a4f0aaa8780e53f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6505afb8fdfe31f466d601f4ad28dc262144f29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf730057756aa09b80be3b1e0db1a742ae0622178` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7c758aa9df0c9c74776d61beead726b04964c59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe21dd0ec80e744a473770827e1ad6393a5a94f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x045f0f2de758743c84b756b1fca735a0ddf0b8f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x13036d98b19fd0368a69f614ca8ff40cbfbd9cf7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x169ac560852ed79af3d97a8977dcf2eba54a0488` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17a083f01c597c99ad8c145bdc52d25c2255bc82` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1e0333a561ab23a664271e4aec31b9f5c6fd5379` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2318bf5809a72aabadd15a3453a18e50bbd651cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2806bb5e34a135f17d521899dfb3c8dc3fd51ee3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x283f045908b874dd3b9297c6d0034e4e709a50a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4605b30404ddb9b2649b8a71ae953d1330dfaccd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4646b4fd795580bb38a25edaba431f912d3b1d3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x51c9ab382d7ddb7e72ebe99a2d623d4ca4bb494f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x598e5dbc2f6513e6cb1ba253b255a5b73a2a720b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6094a1e3919b302e236b447f45c4eb2dece9d9f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6ab2a602d1018987cdcb29ae6fb6e3ebe44b1412` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6fe94412953d373ef464b85637218efa9eab8e97` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7696c8db5ecf0511a41d3ad8480ed03fa61ee3cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7aa27940581e1a53da8af041cdb92092b408e154` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8c14a978b251eaffdabef5ac48e15568e53d3477` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97fdd294024f50c388e39e73f1705a35cfe87656` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9dcd76b4a7357249d6160d456670bacc53292e27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa8731cbf4a402aed371c6930921896706b8e8bd8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5bb1911cf6c83c1a6e439951c40c2949b0d907f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc7cac85c1779d2b8ada94effff49a4754865e2e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd2b86a80a8f30b83843e247a50ecdc8d843d87dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd79e96c0ee62f1c57ef874d414b65ea75e46e5dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe8ef8a6fe387c2d10951a63ca8f37db6b8fa02c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfe21dd0ec80e744a473770827e1ad6393a5a94f0` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x8867f422cd9cf0c66ba71d22bc8edc641e91949d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6ab2a602d1018987cdcb29ae6fb6e3ebe44b1412` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9dcd76b4a7357249d6160d456670bacc53292e27` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe21dd0ec80e744a473770827e1ad6393a5a94f0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [sourcehat.com/audits/UltronFoundation](https://sourcehat.com/audits/UltronFoundation) | SourceHat | Audit | 2022-05 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5aa158404fed6b4730c13f49d3a7f820e14a636f`](./contracts/ethereum-1/0x5aa158404fed6b4730c13f49d3a7f820e14a636f/) | ERC20Custom | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 144 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=1

Zero-match audit list:

- [21057] sourcehat.com/audits/UltronFoundation

Fork inheritance lineage and inherited audits are included when available.
