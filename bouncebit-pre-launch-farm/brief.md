# Agentic Audit Brief: BounceBit pre-launch Farm

## Project Overview

- Project: BounceBit pre-launch Farm (`bouncebit-pre-launch-farm`)
- Website: [https://bouncebit.io](https://bouncebit.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:08.526Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 144 unique implementations (145 raw deployments)
- DeFi Llama TVL: $0.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 24 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (proxy, erc1967upgrade, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 237; live-surface contracts included: 145 (3 live, 142 unknown).
- Excluded by liveness: 92 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 144 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 142
- Unique implementations: 144
- Raw deployments: 145
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BounceAuctionToken | token | ethereum | n/a | [`0xa9b1eb5908cfc3cdf91f9b8b3a74108598009096`](./contracts/ethereum-1/0xa9b1eb5908cfc3cdf91f9b8b3a74108598009096/) | ⚠️ Unaudited |
| BRC20 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1981e32c2154936741ab6541a737b87c68f13ce1`](./contracts/ethereum-1/0x1981e32c2154936741ab6541a737b87c68f13ce1/); ethereum `0x38e382f74dfb84608f3c1f10187f6bef5951de93` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (142)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x008f5ded5048809c2a0d222430fbe55eebe64589` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x00ddd56533967c86bb2651541691d2c563d51b7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01096e802a1f6798173f2b876fbc6a8d423d8bdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x011f626f9045f100cbcb3778fc78c43e0da880f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03ccaeecb9d3ad2d029e114833525e23a8a3bd51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0634ee9e5163389a04b3ff6c9b05de71c24c1916` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10392a5436c9c0893762fb3e34611bda343bcad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13a74b442b64a815450d1888f77521b7f3d95c52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x169a4c9cf0fd7065a7f9ff5a25aaca87c38a082c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1aef02f9f4d75c33f5bc21aa48f0dbf2051e8468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c12073a29da864b4d648e77dc7cc8d27d21ee38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c91ba122aeccf4c3ca8b8b21268a40989978e3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ed3624f0743d8c63363ddc246a0a60191d0b45a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20c580debf6c25094f8ae3740e12165474fe454c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x249a788619e01e4061cf770d186b383a46a9856f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27bea5bde5f03b62b51c81ba857d4a7e7176d89e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27cdbff71b6eca053acac6ee2802c22387d68bcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x289b30372d64ccfde3075f5851fc4500432eb90c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29954af83cfb79828ff27994be3ea8b215613aa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29c50ee9395ef82f1f873ddcae6b97bf2fa11c68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b41cd1fa68410b2c9d859ffe92b7f9a49ebc626` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dc54a40e251c124e6ace70a31de8e2577a4c6ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31558fa2c181bd2aced111b04287f1e99b871817` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3277e4dee96f67bf885563859cdde1c5a5c9aa02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32d3d2910c9956f13d7cd3ff634d4c048428f9b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x374e3e20b8666ec488cb4066dbd997d0124c5996` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x393063ed7fd74b53bf31b6c6eaecdc70f6ccef5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39d09fa0360c0679f7ba7005069ed5ea9f140ec6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a31babbb9e8d59eee190e050ea9b95eadab2d65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c6e240e619a84ddbbeee8baea2bf94f2b03de79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d134c696dea0a32ebc5ddec4477276597937c97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e09e0c223c77f6474ab719bd2d683ca4fb37518` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e9ac89eb471db639cf2247bd91eb7c29f6ac8e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f4443dfb996102e3a8445658dde4b65d35ea318` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40259d74317f638847ced62b42ed7e0c68fec21b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x426476ecec3a9269fa1931bf9f92bb8877e8cbda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4374467889fb25ea3cd6b9fd97bcc1e4b7f19403` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4647570ff8376f99984271da9b24190cc5390c56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46a06adf9eaa3c98868c73b43d1854c06a1b3064` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46f9700922d5b2a9f856a806fc06c2c7c0a4d087` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47c5602ec23e332583197ea0d92c86b75290dff3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a843b1b848c5eb30ebacc6129af0ea658a67804` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b105d426ae2dd0f5bbaf58e4f4ad7464a55a376` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ceb65c4f5b70d2afef97ffdd6c3bc1337f64697` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d909602a35e88acbcecd1c8fc2a0c0cdd213857` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fe0b2caf99d82df7fd78899661fd7cb7eb05f90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x508fdb3b989f925289d3231dc29daac756cf7e90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5151a3a5783bc1be5d0774866d27aec569f73d4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5395c50f0f485261f50bafd1f32f76da60424b8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53c3082b305faa0aeda156387dad129718787607` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54518caecfa56706eb1e38178f0899560a218c20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x567d05613a83b17e5b2a38cc7143cabd3c2f4193` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4b51c08c52057a52fc64c3be32b92815bea079` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b5e07c8c05489cd0d2227afa816478cd039c624` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5bdb8e07f2257c89d981f549f6be52a227f8accc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c5ced12c1add17dd74924b24109f3fd9a362e3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5daada98174d52bb51923f50c50e2b2d0aa63874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ed473932f614ad8b6df07fb267e58fdf97fd7e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60f299b3493f8b356b87e084b927b23a2590a8c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61b355715dd6cb512557bc7ba7c454e3718a7c6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x665c7fcd620392c9dca1233a9a6e437065e7eb00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c8d038871de3205ce915da0f33d934a4553351e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d5028881fd559f2c6b8d1d0f32522fbac92d991` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x705ab7983dbedec36b801b952091d61b46b7ab7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7131dce35adbb48b50a8076718684d6e1f263b72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x720bc3ac8c1a9408d5acd94ebd26ba5c98c67fb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74e6fc4540ccd6d31eeec1fc3c80dee2f68623b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78af91b1c51206ed2e820a05f22c13969805d31f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ace84c7e9462ae41499942292c8425c3799cfb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cb0b39f350f51d7795254f5ddbecaa8f37c1556` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d70a93ed07916b2909d665ea87d45230d135fa1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e43783e84a04ed07407b03e9bed094539670064` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85389eb3448dfc80ea640741d5719c13c23b39ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x853c97d50604f4c5097d736b2c8b5a5af15b3c02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8564e1e7457bce44d8f5f8683b4d48ebeec8b4f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x892675a8ba206aac4d2523b739a4a2c6aa8f7010` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89987719c6048f3094922575c5fe8e75614aaf4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8acac29b39b87c207e2428665b3b01ea2c701385` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b8d8c23d74338d01eaa3b46bf39552a63215e31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dfc964ccb1af4210a76c31d0d539fec5bcc6526` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ff2caf6a9bf06ec7fd280e8d9f5999a39c0395f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9058b8dc6233870f93452a7fd99d67d5c0b6fa68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x908865286cc2f0e0566c27899d5528d957d13866` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x937cef0dad7342b43eeb338af2feecea7b5aa1c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93b233a91f9076d538504092463f567e5c467acb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9676137a912ea389ef6470cd9674a775b35b505e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97e5bc1e873117480bc876740a1ac9e198fca230` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e2dfa11e9b63f9851244e6b67aad6183e890d13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa17b04d3d1654e364e648e1038eb297a198a4ff2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2d1273ec445d22865894dd705a561b21b74c33d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3620acffc7b0dc97875c360946b7847e619596c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa91901ab5e4d1e85b046568c869aefea1616ce71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf67d5466a19a9d7f1d4411bb1d471cb1632f12a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb468ab08385c42b086cf487ad4f1821a18ee714f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6790f0bbf6df000421300156e992e65d2779ce9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb89f020abf5e5c2e87937e87d21cb995da5b8855` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8b81d951ae6c5b6264aac150a976ff86329f3b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb923a4940815203a34be67c7e6bea9f7dc713e26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb496fdc4d6ec5f7cb26e8032895997d1482fcd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe657663d75208ec93da5a8a19342a283e8a5b6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfca0b6ef4e71b585202ba45a60ccd3cf3a84082` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc01d7f8baea8c824a247629c77b8a1221ee3d0f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0433f9fbc7abf4476a37cab8d25d196012babf4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc08ecdd5d9a98079b154b6e17351664354b236e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3320a01d6816dc0c2ffcb390edb0b680d3ea5b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc391762585ea214db570e71f0f23976df825a3ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc422ffd705f28cb164fbbdbb1a504bf1238fc3e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc56a5f8dbcded9608dcb6330fc4892194dee95f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6af188256874063d82c4334e46374959b5d13e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc75cb3fac326900ceae35613995644f539a69e49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8bdfd7896e95484565e5b692511fdfd0cd45b61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc94d0b92399f4331df32ebcb2315b456840bee17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca17d3dfea071bb8ed7741a851238c146ada6bd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca3b92392d76239a4d3c852eab3229bc0780b78a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcaeda32209af0b1c8833ddfd032d175d66284613` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb142a6a47a3d9f0e10c8b7a1be6b69756b7a247` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb9c87cbb204ec0fee858c86597a5ed1c24ea758` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd02409071e508f2c4e66536e8a4322007f854617` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1a166df4dacfdce0c8fde3e19fa07438ae4d9f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1eebed4ffe8bc5caece05eef612527a38c1b885` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd29faa45f6c3d1af8e27b516dd61c0c2298d318c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4d0c9fcd48fbd22452cb6528be4541249139c0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd67dc2b6ff9a8d7b91c019976ef59c7d3a3d30f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd90134d1ebdb335b8d07087fa0bf78644931f626` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe11add6956077174c008f842b82135b50e377128` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe15bedee51109dac4b99432d1a66aeed98f7496e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1bdf493e0df8f047769bcf2bd4ad1d0f3d020f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe28f8786076afa9b4bd3cff2d0aa3bccde3686c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6724a25e22af2cc566d8e55ee5f7a4110feb118` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7fed0497a921cd8589d8fa9e9f27eca4598c3ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea5eff18f051617d576cc2c9912bfb5a65b6eded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebf4139ae4c382afde130e5b7b876e93eb6d2653` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecd2b33c4e80f284c3d0bdc8147fdf02ca30a737` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0fd3e4a3f7bbabc1a7a8a0015e2376c1f2c6767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf125be92d497abb71a988186a91cf8d0f70fb4d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1dfe5a961347d73bed2f601e9a21dd1eee854ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf24835d1bba65ea3a1f8eff9355cd425c62b2c4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf376a04e8af043e8b7a7033c04e6c9451debd895` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7e44596ab3c614ac84437994277a1abeaa8578c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfad5d34bdffacf31dd1e12c0b1dddec145be15f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbd7014699ccf47107a90ccc1147e214daf71e8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff1580d085fd300d55030f102375e481083afd55` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/aNWumH92fd1205exOOBs/uploads/KFpCcHfuzqSvO1yGpUJL/BounceBit-Vault_audit_report_2024-02-09.pdf](https://3876813834-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaNWumH92fd1205exOOBs%2Fuploads%2FKFpCcHfuzqSvO1yGpUJL%2FBounceBit-Vault_audit_report_2024-02-09.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa9b1eb5908cfc3cdf91f9b8b3a74108598009096`](./contracts/ethereum-1/0xa9b1eb5908cfc3cdf91f9b8b3a74108598009096/) | BounceAuctionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1981e32c2154936741ab6541a737b87c68f13ce1`](./contracts/ethereum-1/0x1981e32c2154936741ab6541a737b87c68f13ce1/) | BRC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 142 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12853] spaces/aNWumH92fd1205exOOBs/uploads/KFpCcHfuzqSvO1yGpUJL/BounceBit-Vault_audit_report_2024-02-09.pdf

Fork inheritance lineage and inherited audits are included when available.
