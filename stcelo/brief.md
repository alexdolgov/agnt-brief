# Agentic Audit Brief: stCELO

## Project Overview

- Project: stCELO (`stcelo`)
- Website: [https://stcelo.xyz/](https://stcelo.xyz/)
- Lifecycle: active (Tier 0, 53.9% below peak)
- Generated: 2026-05-21T13:42:06.104Z
- Pipeline run: v2-pipeline-2026-05-21-0269ae-1f09
- Chains: celo
- Contract surface: 98 logical contracts (144 raw addresses)
- DeFi Llama TVL: $1,701,436.56
- On-chain TVL (included contracts): $1,702,335.96

## Project Description

stCELO is a liquid staking protocol on Celo that allows users to stake CELO tokens and receive a liquid staking derivative (stCELO) representing their staked position plus rewards. It manages staking through validator group selection and provides governance mechanisms for protocol upgrades.

### Architecture

The Liquid Staking family relies on Manager for administrative control and Account for user staking logic, while Governance multisigs own and upgrade core contracts via ERC1967Proxy. Staking strategies and health checks are modularized into separate contracts used by the core staking system.

## Audit Coverage Summary

- Audited logical contracts: 49/98 (50.0%)
- Raw deployed addresses: 144
- Unaudited contracts: 49
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (unaudited native TVL): $850,718.28

## Contract Surface

### native (89)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| celo | [`0x003a4c...0f54aa`](./contracts/celo-42220/0x003a4c7fda849eeda551f5c995729335d70f54aa/) | SpecificGroupStrategy | core_logic | n/a | yes | celo `0xe11359...a71c2f`; celo `0xee0ba5...2055a5`; celo `0xf1c4a8...21a947` |
| celo | [`0x01a767...c8b926`](./contracts/celo-42220/0x01a767b740ea021731f0dcbb3992d3c1d0c8b926/) | SpecificGroupStrategy | core_logic | n/a | yes | none |
| celo | [`0x073bb3...0985d9`](./contracts/celo-42220/0x073bb388eeea656e056c8750494cd0bc460985d9/) | GroupHealth | unknown | n/a | no | celo `0x004377...f476eb`; celo `0x140b36...cecdcf`; celo `0x9c6c01...c4cc57`; celo `0xbc7c8e...43051c`; celo `0xf6bccb...a94220` |
| celo | [`0x075507...fb4a53`](./contracts/celo-42220/0x07550767a1604af3e504749e284792ff30fb4a53/) | Account | core_logic | n/a | yes | celo `0x1edec9...5d654a`; celo `0x250c1b...f380d2`; celo `0x2e1193...af278c`; celo `0x6bbd91...ae298d` |
| celo | [`0x08a212...5e770d`](./contracts/celo-42220/0x08a2121c9c143b9b06ffa27269d25af96c5e770d/) | Manager | governance | n/a | yes | celo `0x25b7f3...bb807f`; celo `0x43e55a...46fb58`; celo `0x443579...de5af7`; celo `0x70b1bd...c72e62`; celo `0x954bc8...c5e5af`; celo `0xa60fcf...7c70f5`; celo `0xb3ac6d...d10774` |
| celo | [`0x094ee2...520d67`](./contracts/celo-42220/0x094ee251965823285fd35d70175225cf5f520d67/) | UnnamedContract | unknown | n/a | no | none |
| celo | [`0x0a0b72...9f3ade`](./contracts/celo-42220/0x0a0b728d00f0e3a3d8c6849e76dc98b1d39f3ade/) | Account | core_logic | n/a | yes | none |
| celo | [`0x13d01f...a419c9`](./contracts/celo-42220/0x13d01fc33da51b1b63bb3bbe2af2ae91b5a419c9/) | Account | core_logic | n/a | yes | none |
| celo | [`0x18f51d...4f3fcf`](./contracts/celo-42220/0x18f51d47f7cdc9feb8f67cf95d856565584f3fcf/) | Manager | governance | n/a | yes | none |
| celo | [`0x193df9...d556ad`](./contracts/celo-42220/0x193df9d86435e2ef4c75467d0d38c2cf00d556ad/) | GroupHealth | unknown | n/a | no | none |
| celo | [`0x1b4b48...32c73d`](./contracts/celo-42220/0x1b4b48453e3a64eb55d1d30f0f7fa9e2fe32c73d/) | StakedCelo | token | $1,702,335.96 | yes | celo `0x085a0d...7f21ca`; celo `0x0b2f88...65f75b`; celo `0x2c2e2b...4edc3a`; celo `0xb59b1c...2c4b61`; celo `0xc66858...fdfc24` |
| celo | [`0x1cf4f9...43ec90`](./contracts/celo-42220/0x1cf4f97705f812a18830d5be60b8cdfc3543ec90/) | UnnamedContract | unknown | n/a | no | none |
| celo | [`0x1f0e8b...d32cea`](./contracts/celo-42220/0x1f0e8b1f8d39c1bf81311b4bd86337f15bd32cea/) | UnnamedContract | unknown | n/a | no | none |
| celo | [`0x205f4c...bc64e1`](./contracts/celo-42220/0x205f4cb670fdbcbda1c14d81fdacd7092bbc64e1/) | GroupHealth | unknown | n/a | no | none |
| celo | [`0x2cb8b2...00e9af`](./contracts/celo-42220/0x2cb8b2e0915629c8999e739932f6a6642600e9af/) | Manager | governance | n/a | yes | none |
| celo | [`0x2f05b8...31ba0b`](./contracts/celo-42220/0x2f05b88e89b44e4b57b4ba652cadfa414f31ba0b/) | Manager | governance | n/a | yes | none |
| celo | [`0x2f5979...1a2f18`](./contracts/celo-42220/0x2f59796ae74ed01fcf6fbcf79ec7013a571a2f18/) | GroupHealth | unknown | n/a | no | none |
| celo | [`0x2f9ba7...539e2d`](./contracts/celo-42220/0x2f9ba7121ea67436aa7910080b4b68efee539e2d/) | DefaultStrategy | core_logic | n/a | no | celo `0xd1825d...78c317` |
| celo | [`0x365e62...a58d23`](./contracts/celo-42220/0x365e623c568f0e8ee6aa93a5ac42fda9daa58d23/) | SpecificGroupStrategy | core_logic | n/a | yes | celo `0xb88af6...937871` |
| celo | [`0x3c6e90...fcce0f`](./contracts/celo-42220/0x3c6e9000c449d15e584bc1ab98e9aa14a5fcce0f/) | Vote | unknown | n/a | yes | celo `0x9760e0...e7a3d3`; celo `0xcc3120...0237b8`; celo `0xda30d1...b9ab8e`; celo `0xfdffa5...66a28f` |
| celo | [`0x4387a0...4c6429`](./contracts/celo-42220/0x4387a066e282673f459feeeda3087d29ca4c6429/) | StakedCelo | token | n/a | yes | none |
| celo | [`0x4443a4...6ac578`](./contracts/celo-42220/0x4443a491f63fd212fd9932c1e27fe60f586ac578/) | GroupHealth | unknown | n/a | no | none |
| celo | [`0x44c2fe...f0271f`](./contracts/celo-42220/0x44c2fe995417b528a861e5428dae7358d5f0271f/) | StakedCelo | token | n/a | yes | none |
| celo | [`0x48b505...65f187`](./contracts/celo-42220/0x48b505f1c5b7300de070da9c85324272fc65f187/) | UnnamedContract | unknown | n/a | no | none |
| celo | [`0x4c8eed...44a1bc`](./contracts/celo-42220/0x4c8eedd889dcc3e7fd15b909d040d1d4e444a1bc/) | Account | core_logic | n/a | yes | none |
| celo | [`0x523122...466f09`](./contracts/celo-42220/0x5231221d0e45768d6e0315ca2e9eccc1ef466f09/) | DefaultStrategy | core_logic | n/a | no | celo `0xaf37a8...1d33f5` |
| celo | [`0x52a1d5...34a1f0`](./contracts/celo-42220/0x52a1d5d90450567bce39fbe3fcabb9a6be34a1f0/) | SpecificGroupStrategy | core_logic | n/a | yes | none |
| celo | [`0x52bb50...a195c0`](./contracts/celo-42220/0x52bb5091b2e2319300b4db33b63d715c89a195c0/) | RebasedStakedCelo | token | n/a | no | celo `0x0251c3...6cc806`; celo `0x97b5ee...5b795c`; celo `0xdc5762...1f44cf` |
| celo | [`0x534a0b...91648b`](./contracts/celo-42220/0x534a0b843817679928625063219324902291648b/) | Manager | governance | n/a | yes | none |
| celo | [`0x54496e...3f83bd`](./contracts/celo-42220/0x54496eb9b1ec14bf718b5de11f269b23063f83bd/) | Vote | unknown | n/a | yes | none |
| celo | [`0x548fab...837329`](./contracts/celo-42220/0x548fab1b071dbe542617294ec73d478134837329/) | Manager | governance | n/a | yes | none |
| celo | [`0x54c819...32999a`](./contracts/celo-42220/0x54c819e39fde40aa8fcf1244589ec5aebf32999a/) | SpecificGroupStrategy | core_logic | n/a | yes | none |
| celo | [`0x58fc55...14713c`](./contracts/celo-42220/0x58fc5556dfb1a1b23e32b395f6522aa86c14713c/) | RebasedStakedCelo | token | n/a | no | none |
| celo | [`0x5aa1c6...e8f2e3`](./contracts/celo-42220/0x5aa1c651b864b42c6c6acd1e8a4ee807e4e8f2e3/) | MultiSig | governance | n/a | no | celo `0x13f1f8...75c27e`; celo `0x2d952d...124cd0`; celo `0x2e37af...e9e4df`; celo `0x78daa2...d40179`; celo `0x85a9aa...64f3f3`; celo `0x88d1ae...d48c24`; celo `0xaab51f...d47145`; celo `0xfb197e...b374ee` |
| celo | [`0x5b4a33...f341a5`](./contracts/celo-42220/0x5b4a33bec1d5bd90f450139cf8d9073566f341a5/) | Account | core_logic | n/a | yes | none |
| celo | [`0x5bd084...8eed3d`](./contracts/celo-42220/0x5bd084845f8ce18384d361bf8f4742ead18eed3d/) | DefaultStrategy | core_logic | n/a | no | none |
| celo | [`0x63af25...b3e40a`](./contracts/celo-42220/0x63af253c645ca35a4a2b35aab30c611abeb3e40a/) | UnnamedContract | unknown | n/a | no | none |
| celo | [`0x655f0a...3c70fc`](./contracts/celo-42220/0x655f0ac07c850412e6499670fdb9cef54c3c70fc/) | Vote | unknown | n/a | yes | none |
| celo | [`0x681db4...f6cc3e`](./contracts/celo-42220/0x681db4da2d4d71181657d0c05c1d7e8030f6cc3e/) | Vote | unknown | n/a | yes | none |
| celo | [`0x694ab8...003cfb`](./contracts/celo-42220/0x694ab80a18c0c0e72e4219c397f23cc99f003cfb/) | Account | core_logic | n/a | yes | none |
| celo | [`0x6a519c...3c577c`](./contracts/celo-42220/0x6a519cd5ffa127dd20406ab4d8b11e91f13c577c/) | Account | core_logic | n/a | yes | none |
| celo | [`0x6b8bb0...2352aa`](./contracts/celo-42220/0x6b8bb0aca4bde7e844dfa6f6bc90ad0a3d2352aa/) | RebasedStakedCelo | token | n/a | no | none |
| celo | [`0x6e17cf...783b67`](./contracts/celo-42220/0x6e17cf4e1a21125d0ce9a1ce4a284ad7bf783b67/) | StakedCelo | token | n/a | yes | none |
| celo | [`0x6f4606...09ff3e`](./contracts/celo-42220/0x6f46060c2f760eaba09d972efa74ed6aae09ff3e/) | GroupHealth | unknown | n/a | no | none |
| celo | [`0x737bce...3b2fdf`](./contracts/celo-42220/0x737bce423d87b8bccb9e2b3b483082a5fd3b2fdf/) | RebasedStakedCelo | token | n/a | no | none |
| celo | [`0x777446...fed190`](./contracts/celo-42220/0x77744692a673ef93370e996aec1dd04d10fed190/) | SpecificGroupStrategy | core_logic | n/a | yes | none |
| celo | [`0x78b405...46f38e`](./contracts/celo-42220/0x78b405d3a6af7a1f17b74fcea51934f4ee46f38e/) | Manager | governance | n/a | yes | celo `0x0239b9...cf9398` |
| celo | [`0x78b50b...220cca`](./contracts/celo-42220/0x78b50bd80ecbd9f44b616d89b835ed8982220cca/) | MultiSig | governance | n/a | no | none |
| celo | [`0x809b7e...632426`](./contracts/celo-42220/0x809b7ebabb2e4e1e4d1104b3b361b898ae632426/) | StakedCelo | token | n/a | yes | none |
| celo | [`0x80ef43...8f5ac4`](./contracts/celo-42220/0x80ef43888b64e4bd60b0e8e28e99716e418f5ac4/) | RebasedStakedCelo | token | n/a | no | none |
| celo | [`0x820f7a...71184d`](./contracts/celo-42220/0x820f7aac0eb929aab930eb0c5d8e286a6671184d/) | DefaultStrategy | core_logic | n/a | no | none |
| celo | [`0x846b04...d6013f`](./contracts/celo-42220/0x846b04993f65ea397838568d83b4b956f2d6013f/) | MultiSig | governance | n/a | no | none |
| celo | [`0x8652ce...ae782a`](./contracts/celo-42220/0x8652ceb3e0edc477f4d0750f2fd5c1e0acae782a/) | MultiSig | governance | n/a | no | none |
| celo | [`0x8897ec...a27f57`](./contracts/celo-42220/0x8897ecd44b98a220dbc1a19e668796b123a27f57/) | UnnamedContract | unknown | n/a | no | none |
| celo | [`0x8bd50c...33f818`](./contracts/celo-42220/0x8bd50c8df89840ca8e78c32a730076397933f818/) | MultiSig | governance | n/a | no | none |
| celo | [`0x8c89e7...67c594`](./contracts/celo-42220/0x8c89e7ceb22300c43c9118f317d33e9be767c594/) | RebasedStakedCelo | token | n/a | no | none |
| celo | [`0x912285...3ddcfc`](./contracts/celo-42220/0x9122855efe96f0f53eda66602ebea000733ddcfc/) | StakedCelo | token | n/a | yes | none |
| celo | [`0x922333...794692`](./contracts/celo-42220/0x922333bdcb665e91eef9508de56ab2a3c2794692/) | StakedCelo | token | n/a | yes | none |
| celo | [`0x95b8f3...6ba914`](./contracts/celo-42220/0x95b8f3068ae248b062574a1d977c4503dd6ba914/) | Account | core_logic | n/a | yes | none |
| celo | [`0x95cc0c...1c4e49`](./contracts/celo-42220/0x95cc0c75015059dd659db9b528101c5ba91c4e49/) | StakedCelo | token | n/a | yes | none |
| celo | [`0x98c93e...14dc67`](./contracts/celo-42220/0x98c93ee03873c472d267a6844a4d5ccab714dc67/) | MultiSig | governance | n/a | no | none |
| celo | [`0x9dd19a...2cc4e8`](./contracts/celo-42220/0x9dd19aa3c4ef6ebd253baf98cb27ea7c792cc4e8/) | SpecificGroupStrategy | core_logic | n/a | yes | none |
| celo | [`0xa7ec4a...a6eb74`](./contracts/celo-42220/0xa7ec4a31ac7f5cec4340bc39d04244a1cba6eb74/) | Manager | governance | n/a | yes | none |
| celo | [`0xa97be8...8babcb`](./contracts/celo-42220/0xa97be82bee72a809fe4b3ad158535879028babcb/) | StakedCelo | token | n/a | yes | none |
| celo | [`0xacd0ad...40cb43`](./contracts/celo-42220/0xacd0ad376c5426abf0f81353c227d7512340cb43/) | Manager | governance | n/a | yes | none |
| celo | [`0xad3317...4eba11`](./contracts/celo-42220/0xad3317aecdbc6a92271d9d43c0d157c6404eba11/) | RebasedStakedCelo | token | n/a | no | none |
| celo | [`0xad3df8...18d52e`](./contracts/celo-42220/0xad3df8fc103fd3d91d963dc719d059df2918d52e/) | Account | core_logic | n/a | yes | none |
| celo | [`0xafddbc...734a1d`](./contracts/celo-42220/0xafddbc2ce90c66a055e91ccca7bbd08909734a1d/) | StakedCelo | token | n/a | yes | none |
| celo | [`0xb05860...906732`](./contracts/celo-42220/0xb05860dd77620793d549fa0dec4989a54e906732/) | MultiSig | governance | n/a | no | none |
| celo | [`0xb6316a...3bd394`](./contracts/celo-42220/0xb6316a0241afe66914b56b6242b989ad1e3bd394/) | Manager | governance | n/a | yes | none |
| celo | [`0xb78ab3...7aecf1`](./contracts/celo-42220/0xb78ab3f89c97c0291b747c3ba8814b5aa47aecf1/) | MultiSig | governance | n/a | no | none |
| celo | [`0xb82dd2...f0bc81`](./contracts/celo-42220/0xb82dd2d0dd04bf689992cf9006ba2201b8f0bc81/) | Account | core_logic | n/a | yes | none |
| celo | [`0xbb4e49...2e65bf`](./contracts/celo-42220/0xbb4e49d75045803ab76ae8eee2916f0c712e65bf/) | Vote | unknown | n/a | yes | none |
| celo | [`0xc2fd56...33e3d0`](./contracts/celo-42220/0xc2fd564028536df9fe87de36bbab6ae26b33e3d0/) | Account | core_logic | n/a | yes | celo `0x4aad04...54c432` |
| celo | [`0xc66760...79face`](./contracts/celo-42220/0xc667602b4067a759908cd747706f55c77779face/) | Account | core_logic | n/a | yes | none |
| celo | [`0xc9cd08...c6c674`](./contracts/celo-42220/0xc9cd085d12e12274ad099b5ece5a744203c6c674/) | Manager | governance | n/a | yes | none |
| celo | [`0xd54bc0...684a09`](./contracts/celo-42220/0xd54bc0ab3b363a0e34767581daab4a9db1684a09/) | DefaultStrategy | core_logic | n/a | no | celo `0x3a3ed7...0ea088` |
| celo | [`0xd718b6...5f5745`](./contracts/celo-42220/0xd718b64bc1facbd0087d827c0a3ea144445f5745/) | DefaultStrategy | core_logic | n/a | no | none |
| celo | [`0xda3eb1...eb2aa8`](./contracts/celo-42220/0xda3eb100c32cd9387a834f9b9fee340300eb2aa8/) | MultiSig | governance | n/a | no | none |
| celo | [`0xdfc2da...45a67c`](./contracts/celo-42220/0xdfc2daf5ff1bc48ec4518436a015da416745a67c/) | RebasedStakedCelo | token | n/a | no | none |
| celo | [`0xe12f7e...dd0312`](./contracts/celo-42220/0xe12f7e5c2300b7f79fd8ff7e44b10e66e4dd0312/) | Manager | governance | n/a | yes | none |
| celo | [`0xe57f6f...07c0c4`](./contracts/celo-42220/0xe57f6f8620fce79c723ed9da69f7e3dd7c07c0c4/) | MultiSig | governance | n/a | no | none |
| celo | [`0xe923a9...fda387`](./contracts/celo-42220/0xe923a9ee94e006bc0763d3a62d3dcf167cfda387/) | Manager | governance | n/a | yes | none |
| celo | [`0xf0b67a...22f7ff`](./contracts/celo-42220/0xf0b67ab98dd5725565cf96496b5eda455622f7ff/) | DefaultStrategy | core_logic | n/a | no | none |
| celo | [`0xf38592...128d39`](./contracts/celo-42220/0xf385924febb37f96c0a1d609f3c40d71d7128d39/) | MultiSig | governance | n/a | no | none |
| celo | [`0xf676df...3c3839`](./contracts/celo-42220/0xf676df6eb86cca235e2ee67245d2d7ac0f3c3839/) | DefaultStrategy | core_logic | n/a | no | celo `0x8bd8a8...d01c89` |
| celo | [`0xf6aeb1...e13657`](./contracts/celo-42220/0xf6aeb1050d9e8151d4a0a5e7144f819f01e13657/) | Manager | governance | n/a | yes | none |
| celo | [`0xf8bf1b...beb878`](./contracts/celo-42220/0xf8bf1b688a975f12f61f877dd146f03ec8beb878/) | GroupHealth | unknown | n/a | no | none |
| celo | [`0xfea79f...c69625`](./contracts/celo-42220/0xfea79f2563ffd79f8ef2af190b9bbd75fcc69625/) | Manager | governance | n/a | yes | none |

### standard_library (2)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| celo | [`0x1bb789...27af07`](./contracts/celo-42220/0x1bb7897a1b023a74d3a439476c52495a2927af07/) | MultiSig | governance | n/a | no | none |
| celo | [`0x55e953...b36128`](./contracts/celo-42220/0x55e953bffe423ed7950a392db01f5cdda2b36128/) | MultiSig | governance | n/a | no | none |

### needs_review (7)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| celo | [`0xacf9d7...045d15`](./contracts/celo-42220/0xacf9d7ee602195a87cc4e86cf00186361a045d15/) | UnnamedContract | unknown | n/a | no | none |
| celo | [`0xc053ca...407207`](./contracts/celo-42220/0xc053ca07fb7003fd9594154afc1a15573e407207/) | UnnamedContract | unknown | n/a | no | none |
| celo | [`0xd11cc1...1828a1`](./contracts/celo-42220/0xd11cc172d802c1a94e81c5f432471bd34d1828a1/) | UnnamedContract | unknown | n/a | no | none |
| celo | [`0xd22e18...629ef2`](./contracts/celo-42220/0xd22e18556e43cb29d6d6172d4b33fd2edb629ef2/) | UnnamedContract | unknown | n/a | no | none |
| celo | [`0xd3188f...6f4c69`](./contracts/celo-42220/0xd3188fefca5b9f385caedc0bad67960a3f6f4c69/) | UnnamedContract | unknown | n/a | no | none |
| celo | [`0xe26ed0...12602f`](./contracts/celo-42220/0xe26ed019aa0d780ac49826604357b1319b12602f/) | UnnamedContract | unknown | n/a | no | none |
| celo | [`0xffe124...b5c406`](./contracts/celo-42220/0xffe124dde2b29fa848ad8caaebe85651f0b5c406/) | UnnamedContract | unknown | n/a | no | none |

## Audit Inventory

| Audit | Auditor | Date | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---:|---|
| [Celo-staking-audit-mar24(Public).pdf](https://github.com/celo-org/staked-celo/blob/master/audit/Celo-staking-audit-mar24(Public).pdf) | Unknown | 2024-04 | Direct | UNKNOWN | 35 | high |
| [FTI_audit_stCELO.pdf](https://github.com/celo-org/staked-celo/blob/master/audit/FTI_audit_stCELO.pdf) | FTI | 2022-05 | Direct | UNKNOWN | 53 | high |

## Coverage Gaps

Unaudited native contracts ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | [`0x073bb3...0985d9`](./contracts/celo-42220/0x073bb388eeea656e056c8750494cd0bc460985d9/) | GroupHealth | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x094ee2...520d67`](./contracts/celo-42220/0x094ee251965823285fd35d70175225cf5f520d67/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x193df9...d556ad`](./contracts/celo-42220/0x193df9d86435e2ef4c75467d0d38c2cf00d556ad/) | GroupHealth | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x1cf4f9...43ec90`](./contracts/celo-42220/0x1cf4f97705f812a18830d5be60b8cdfc3543ec90/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x1f0e8b...d32cea`](./contracts/celo-42220/0x1f0e8b1f8d39c1bf81311b4bd86337f15bd32cea/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x205f4c...bc64e1`](./contracts/celo-42220/0x205f4cb670fdbcbda1c14d81fdacd7092bbc64e1/) | GroupHealth | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2f5979...1a2f18`](./contracts/celo-42220/0x2f59796ae74ed01fcf6fbcf79ec7013a571a2f18/) | GroupHealth | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2f9ba7...539e2d`](./contracts/celo-42220/0x2f9ba7121ea67436aa7910080b4b68efee539e2d/) | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x4443a4...6ac578`](./contracts/celo-42220/0x4443a491f63fd212fd9932c1e27fe60f586ac578/) | GroupHealth | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x48b505...65f187`](./contracts/celo-42220/0x48b505f1c5b7300de070da9c85324272fc65f187/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x523122...466f09`](./contracts/celo-42220/0x5231221d0e45768d6e0315ca2e9eccc1ef466f09/) | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x52bb50...a195c0`](./contracts/celo-42220/0x52bb5091b2e2319300b4db33b63d715c89a195c0/) | RebasedStakedCelo | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x58fc55...14713c`](./contracts/celo-42220/0x58fc5556dfb1a1b23e32b395f6522aa86c14713c/) | RebasedStakedCelo | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x5aa1c6...e8f2e3`](./contracts/celo-42220/0x5aa1c651b864b42c6c6acd1e8a4ee807e4e8f2e3/) | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x5bd084...8eed3d`](./contracts/celo-42220/0x5bd084845f8ce18384d361bf8f4742ead18eed3d/) | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x63af25...b3e40a`](./contracts/celo-42220/0x63af253c645ca35a4a2b35aab30c611abeb3e40a/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x6b8bb0...2352aa`](./contracts/celo-42220/0x6b8bb0aca4bde7e844dfa6f6bc90ad0a3d2352aa/) | RebasedStakedCelo | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x6f4606...09ff3e`](./contracts/celo-42220/0x6f46060c2f760eaba09d972efa74ed6aae09ff3e/) | GroupHealth | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x737bce...3b2fdf`](./contracts/celo-42220/0x737bce423d87b8bccb9e2b3b483082a5fd3b2fdf/) | RebasedStakedCelo | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x78b50b...220cca`](./contracts/celo-42220/0x78b50bd80ecbd9f44b616d89b835ed8982220cca/) | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x80ef43...8f5ac4`](./contracts/celo-42220/0x80ef43888b64e4bd60b0e8e28e99716e418f5ac4/) | RebasedStakedCelo | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x820f7a...71184d`](./contracts/celo-42220/0x820f7aac0eb929aab930eb0c5d8e286a6671184d/) | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x846b04...d6013f`](./contracts/celo-42220/0x846b04993f65ea397838568d83b4b956f2d6013f/) | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x8652ce...ae782a`](./contracts/celo-42220/0x8652ceb3e0edc477f4d0750f2fd5c1e0acae782a/) | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x8897ec...a27f57`](./contracts/celo-42220/0x8897ecd44b98a220dbc1a19e668796b123a27f57/) | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x8bd50c...33f818`](./contracts/celo-42220/0x8bd50c8df89840ca8e78c32a730076397933f818/) | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x8c89e7...67c594`](./contracts/celo-42220/0x8c89e7ceb22300c43c9118f317d33e9be767c594/) | RebasedStakedCelo | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x98c93e...14dc67`](./contracts/celo-42220/0x98c93ee03873c472d267a6844a4d5ccab714dc67/) | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xad3317...4eba11`](./contracts/celo-42220/0xad3317aecdbc6a92271d9d43c0d157c6404eba11/) | RebasedStakedCelo | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xb05860...906732`](./contracts/celo-42220/0xb05860dd77620793d549fa0dec4989a54e906732/) | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xb78ab3...7aecf1`](./contracts/celo-42220/0xb78ab3f89c97c0291b747c3ba8814b5aa47aecf1/) | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xd54bc0...684a09`](./contracts/celo-42220/0xd54bc0ab3b363a0e34767581daab4a9db1684a09/) | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xd718b6...5f5745`](./contracts/celo-42220/0xd718b64bc1facbd0087d827c0a3ea144445f5745/) | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xda3eb1...eb2aa8`](./contracts/celo-42220/0xda3eb100c32cd9387a834f9b9fee340300eb2aa8/) | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xdfc2da...45a67c`](./contracts/celo-42220/0xdfc2daf5ff1bc48ec4518436a015da416745a67c/) | RebasedStakedCelo | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xe57f6f...07c0c4`](./contracts/celo-42220/0xe57f6f8620fce79c723ed9da69f7e3dd7c07c0c4/) | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xf0b67a...22f7ff`](./contracts/celo-42220/0xf0b67ab98dd5725565cf96496b5eda455622f7ff/) | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xf38592...128d39`](./contracts/celo-42220/0xf385924febb37f96c0a1d609f3c40d71d7128d39/) | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xf676df...3c3839`](./contracts/celo-42220/0xf676df6eb86cca235e2ee67245d2d7ac0f3c3839/) | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xf8bf1b...beb878`](./contracts/celo-42220/0xf8bf1b688a975f12f61f877dd146f03ec8beb878/) | GroupHealth | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 89 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=88

Fork inheritance lineage and inherited audits are included when available.
