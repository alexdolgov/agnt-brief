# Agentic Audit Brief: four.meme

## Project Overview

- Project: four.meme (`four.meme`)
- Website: [https://four.meme](https://four.meme)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.451Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc
- Contract surface: 256 unique implementations (257 raw deployments)
- DeFi Llama TVL: $4,031,946.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 7 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 272; live-surface contracts included: 257 (1 live, 256 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 256 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 255
- Unique implementations: 256
- Raw deployments: 257
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
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
| ERC1967Proxy | unknown | bsc | n/a | 2 deployments: bsc [`0xe8c2d68c4f491eedeff6d613ec013e3aa6e9240b`](./contracts/bsc-56/0xe8c2d68c4f491eedeff6d613ec013e3aa6e9240b/); bsc `0xf251f83e40a78868fcfa3fa4599dad6494e46034` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (255)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x003d5d55eff1b5751e6bbf880f3673c087245a9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x00622196849a964b243ea3bce0beeedfa0e2d5e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0095f53e687c54cad9bfc17a6198b0ee2385eaa3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0120b2f7c53733273366eb4c33926ef0e14d2bfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0188a1bc461ff902c20be6ae1d03b41e6b415326` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x052f0c850b6a4afd9a468bbc92d0ba08f6f04272` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06d0a6a358c8873783b3f0fac3e93bdb1899e0d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09550d7e4f764dd1352fffaf70bf8ebc7ea45468` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a6da1dd3a7856429b54cdea6973a696dbc18bd0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0acd453b42ead767323d85502dfecd904abff56c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b5b5be7104fc1291ec65c4572eb44633b877516` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0bbe7e8c02d3de30dbaf9262a8e9faa69c9bfe4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0cc78251cfc0356b2b513a9ed97be1e33ecb43c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0da23f971b0076e60f45f120a3f66f7da5a74eac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0daab7aed28dded7da2e2cd3f23d9435356d7da0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e50b582691165e28791ead04d4e7466a6832538` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0fed788842ede120a10050f5cba05589241919a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x134ad2044cc63042439f08448afbe3f0305c183d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1600ceaf22277e33aba444bb924d856d1c9f946c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16903f8f8245c015f8e1c0208ab6b32224e4aa1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x170665cf90186ccb5eab7633678b8726760522e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x172b750a1c08390a8a8a0e6a40add95177397266` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x172fdafc8cd77e2b10682b6291db31a5d2c37b26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19b9b9927937d2af97536f5f23821a33b9a2d22e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c818188b45f93947c326547ab7de5c56e2e9fa0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cbbe1368675f027c4ee7326f4e8260d1f363c4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1da2f031567af3d6b1309052de3720270ae476c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20a08a54202366b1018869aea58fdbbb06898e5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x220b694b4ab628152e6392ddedd9304f914fee92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23e0d387350200ade3def26759a6d4a6ab751886` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x244983e23f6ba9b3e925ef89b467a0be4c76b7d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2653699a4c350e5a289a337481eb899ce9915531` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26766780ce084f706d4c7f655acef72992cbef7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26b3c9ea841bf72cdddd7cfc62e964df81529dbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26f2a77eeaf104d754efe02a1b30bdef2095383e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x275d840c31ce742eab419d030f71ada93f4980bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27ff8933eeba1b21622f4a520ba858393be33d15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29d5935f644fb75e7cede31a3340ba847bb4cc57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a11445f6051814527b90f3102c144105e613f5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a57a0ef5015b36d198c83a5885f1753677d36e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b6e6e4def77583229299cf386438a227e683b28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c249fd028391a41bff4472fd663589b3a83baa9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d9844ed699bd347261e4de1250270e349a00774` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30038b69c34d953659f4f73fc48a342a83a7fc47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x306e9324da01033c96e2b95c1c7965152e0bbb22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x315dab3f991f95649f3252c54d096b20291f968e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x328aee1995ed2f3c86d6bac34dda06dd3a74e8ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x339a38ed74f6e710f4005f214c6b98a8bca9c633` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x34308642021b48738300948cef056fdc58e0757b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x350a94c918f7a0c8d108ba90f1b242b0143572b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35500b5569898af15dcf3d9ae72a18ca3df0a4c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35bfd60e5a70ed6c328350b116e3cd88520948a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x366ad0f86c175c2c995911d4200efb129a79afdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3719522727558b0bbea4703691f3afa1d5bdbc1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x385260acd8ecd78a3f4fe032ed0df03d2b3c240d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3aec69f4d8a969c2338e61473abf2d0ba8771f70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3eebc5d8f1df21d65ed71fbed19938cd2ad6a63d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f0cd2a3d4fd929065691997515a9edf63a5fb76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f4992636ef8b482322c9424a2e072299b064e7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40f37d9a3f8a8e45c3e8d097da2bfb361ea13bd7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40fe6c838224741c81544305ebebcae9b62ebb58` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4111cccbe423f2d66ed67d162f2cc6a2f039ac63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42d2123acd2a950d11fd26198d8a8ad1e30ef30c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4320997fe4852cc9e0560451d74a5d2467588c76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43e02c59e4a76916e7f6c162091e9b53e922076e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44e971c374219e9abac725db30874ff6b463571b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46263168c3a5c119096feb76efabf7c76b03ba67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4874edd7254d26811b6f2e07dd9eb77e2bd11887` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48c17298f6ec3376b91d24eb2d0d264671b7b926` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49548e33558c5bd270b7f44ee126ff63c725171c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d46f7605cbd4ad40234243c8794a54c56354adc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e465931ed9cb76c454482acd4fa2b3d2cb32c9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f183af2bb7699aea562cb3f8b9003c67df421d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5038a0523a3ca4e0001dd68b7fdf1c5a57e1ee24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x520d181cc64241a7b051dd24cbbf002bb6c847d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x537e4a4be03efde31f1d3632d52e1793e4ab0ae0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x544d59fad624259b33203df459ec072f9080930a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5632a1ecf66be372a3f1955ba4016d608614bd64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56b5b14438a586f99309a7720678ef6a54fd64a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57019953fc5d754b01ed9b135db494cb04ef39ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5799eed0bd47e9adc9cb2b9031b1346e2f205f3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57df49f5d8412d05e792c30c023ee974c48a90b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a5ecf3c9be4cc3859cbb65c53cf5339d2c9ff2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a732963f3ec24e0c2bd59592c7b57ed7b5ba422` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ba864b4578fabc49a3f23f55da5aaa1f710f441` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c40af6da9149aa029c78a3e7fb68db1ee5df7ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5cbacee2c1f754584d15f52c5087c556dfe5c991` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e9bc37383da4a472fd075231501ab70c97161c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f2fa01b4a72838c6d165663e2df522f0e5f081b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62ac9ce0d8e11390a106212adaa2525496319c7f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65750e40ac73d2992a0804c2ae4395649afe5ea0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65ffa4998fb64f9f800921a2611daed8d2e8ce36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66be2feb8e84ca30f083666589d46d8ec1f33d19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x67b4aca6ba8036cf34067e4bd8a91b1441f06364` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x67b8e00cecddf76cfce73f11e2ddbb6534075a7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x687cfb9f5a232e0ddccf3a0d4064f7c69fc13ac8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x689a29d99fd54dd341672448c63e2e5e39ef97f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68ab1862ea52f82a6aff504fa2aca0f442eba29c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x693937ce4d9743a13c046ef7ca95fd806ab85cb9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c614df1e9afa7b636815c146dc4e4dc8991e14f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e2e924ec4643a7eb07083a6cabb360a3a177026` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ef1598fa50dac26fc9932b332ff4afe0114582e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ff0ca00ebc607c29bde81638a9e45e1f80dae42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7086be0630acb1ac5887bc3ecd63e32b7a083bf9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71e1e3f0e160d7186f918c3b80e1efa94a146948` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72c2f956d8bbf2d6f15d487b3742c417bb061079` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x732771f396ca1cb26bf58fa93ee5d399f378203e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x735b9ab98117fd36daa7b6b5a9047bea6228f834` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x743e44adb32147708b84b8d558b07d012306e03c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x744c6d4862a08ce54fa41126a47658c46f8421c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x757eba15a64468e6535532fcf093cef90e226f85` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x75bb6eee1d11d23dd2a8620251a2f830913883bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x794135e99dd4a5ec13f2264aa1f4f9bb6c32623d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79bef4c2a25524b12bbb5e9e3f2ac34d5f3cf694` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79c7909097a2a5cedb8da900e3192cee671521a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ba85baba04263486110e67e5b467d6f57c31cb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bafea94a57e3c80c3c18a73978c37afadea3c4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7de72e9069ca2b4fb4f60f2f355d22d71a65ff80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7eca6d7cb1c21d29ce39531f1b174af6749a01dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f9411ea1a34b0b0d91a54b4776d00e78a329bbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x807dbd2e0ee76b38fcaeaa4b44bc5fa757cb526d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80d34a5517c00eaf35585900db2b1dfd044c0d0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81cd76978545fe275280ba2f2c74e9af7e3b58bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8263a3a83a41bfd7e14388a9534a76fddf98e8a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x831e98f8b59f96a3b7329e66b02169b3ce0ecae6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8366e7f3b9077c9b209fe918cea80accac58cc89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8604e3b98c228c9fe71dddbc2eedbe01d1acb935` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8631471b91d2ededa104407abff4626cac31002e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86b38367c1721911abcae2ba8f3896153fabe347` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87ab952d8d62f65afb3598bbd643e18d5d276ea7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87deff5483361f5ca8fd876ad81515698e5930f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x880037666bb8ee29fcc8add099c6f5261533760b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x884879004a37eadcfab8e90624d6e01efd12702e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x891373a2f6b65d04b9acc0f86e53d52a32b7e30b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a5addc253d8d58d938f0e46f83713fb6da318b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8adffd6811bfc934eef75fd30c7e866de553eafb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8bac70c118cff7be24b1032216d10f732c4b14e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8bc3f2a8ecd173fbe26458425c5772e86398b90d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8d369b8c1750700f257939983cb76531b4cb2953` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e6aeb3996dcf73b41d66c9fb21ba67a968018c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ee95f9111201316c1181d5f10d59647115405a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8fb1765135dfb42c7f51cf694296911281b6e7ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x904065e50900fdd2f635c210caafbb512a307655` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x905e52660cfc72dffedfe824c1e5fe20a1a0c54e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x912b60ec41ed4892c6cfee2706e19492b646fc7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x924dd1bfe4d21c67b3b49a177b3ccc66e198878e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x939a201133cd46fcdd7627c1a3d4be167e5e6d48` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94241c243eeae86c1249397b8d69ce0423fcf210` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9589513d2b5ce207553121388fab6bbba5a2c652` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x959894ac7c3ea791a1548182167c5cf0d1321dcd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97c933fc136253f9e1f1ae40f0c55a4116d65d04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x982326de6bab6ebc6cc251830943fd31cd272444` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x999c6b32ea2a0ffc594cadcd0f0809b2fa11f268` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99d409e192b09098d999c8c0aac5aad4f6b84396` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a4f8007c305eecc7f49fe07e1be7314d01a6a70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b89996d1c6ba7210aa03c3b03afb25288307e61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bb4ec466c01d624fd72ffb67324262d48411724` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bc3a93de2747c6985846cfe18d006b2dd214c0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9cdfeb39f502152ebf3ab0de8110ce31a3dc2216` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9cf6c7a92e452a878d3a34136ba779dbbb26b125` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ee36b543c97fcde34fea7b29916c0d348ca2c0c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0e94ce3a85a0adecf3e6a778017ecf31ad55715` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa143b72490bc1d6c275b8b916b8294ff22b2694c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1b0944c69934b122484868b858d4ab8b5cc4343` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa22b232e13ca047e2354a1cd03e927e68f1436c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa285353bfd31fc949d37305d5610d0ef7f378cf9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2cfe40facd67eaa5dc60b8ca539b24ab6f9f078` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3e3bacde6ef3bb1340ec5283609f27475d323a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa74ab50e24ae9a9db16225d154a4a6c8305c704e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7f3c7df28b3d0e9f99096ce30018331cdd7980f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa91fc15d721e3cf99911aa9cd445f78a0c6c4680` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa94c1ca5c3ae405ce4279971e90de362e6e8e1b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa1d6f755fff2816af737630deb6ec9e0707f325` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaaa22decddaf39ce3baf421c314e5ef5a446332d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab78721273da26d0e45b30f540f55758d8e1f2c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb11ad1d723f795684d90e03cae93943eb8e81545` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1c2c585e24c322f6822b3b97bdf34fe9b217383` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb28723a16d3347cdc0ce035eb1c1eb0b7406682f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2b8800d65c58a75fff10eebe21243d0bb7aa50b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2f8a2a07e5160deee18107dc44c3d7e79027de5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3544b9a32130eb5edd658da2eb3955b3923b9e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5f039607c4c384077e2e9f1a0aac295636d968b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb6783461f7939fb56a0299375a3bb2e65035b028` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb80afc54cf66c92e1805502bdef3007161fbe42b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb1b81cd7bf58634a8d332de4bc756d19163646c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb6f3b2407c066ce3dfe46dee30953bfddc24f0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd17a5d1f802edf1bfc80d84ad66d3039b28ce75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd17b10011752a49d8652cf7cedb7e8575a68bc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4961d71a0188a6434ee20254014402a4f8c10f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6496e138af13c0026e14ffbd32eae6764eab8b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc67e3aaa57324d97e39c045f09f17ebb9cad3780` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc797c37f27cebe19e03c66a556f86d93a3fb4479` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7e591568a11ada4ebe46bf089ea8cc37d5d6967` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7ec5e3434b3428743bfb460c525443e7bd2814d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc83bfc24fe879d68b1b727b0605c23c502a9e148` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9d24f338105a334bbd7967ef2c0bb6625eea30c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb104346d89311f4a106840b42139f48bfefe14a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcdba21e34c61baaa11e5620faed8f0872d81a64a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcdcf192cedf7744d536bdaefedf654688ac3d7e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd01c174b4ca93672d6e7927fa02e0b64078a84df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2b81d95441d4f6d061309d7fd38767c37ca327c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd40cf1868f23cb3c1dcde135dbe648f6a69da44d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd40f6102307b46488147a77545cfa46a2b161a29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5fbf028cfb6a2f52e3f55c1d21d486fd49738cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd62bdbf546f03536a7b5e871f9779b0af27c1ed1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd63cbf542c7096b1df52c7e97644f365c0ebc6fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6dbe549a94ea4ece78dc8288944f672589addcf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd876272002ecec9b11045eef4481c91a4e5bb130` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd94ba45c7d6dda21ed9b74ab9ccbe4d3ae726e79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd98738890b6784e76ad0d5cb3b7fe5c011efd600` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9c69f01de023ee6d6924951bb89a48bc8ca3aa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb18884c6bdc77cbfeaf1563eb435db63bb5ea20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd06e55dafa90f450751218b0dc2fb5425a2642d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xddfca98321eed9552e0eb8f8d900f22c6fd788b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf0b2c85835922c6206969c31952539aafb731ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf431c159e37b0895902bc25376f1c61f7b9463f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf7ed07bd98c71daab6b290aa812211ad76548cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf8a07922e62bdf7ba370e0b2616540d4670588c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdff35ea99f55a696a84052a010456dc983141a60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe060c04359f13097c5047a6fb182b9976b95281f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe291ecf1894f0ef547e3a3a2d40fbf50779de771` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe29895eed41027b785f48aec15459de8f1c179f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe31a402f50b02e73aa2b0cbe09a8d91b9ce31e6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3b51bc97031856785586bca694df088c39170f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3bf44336deff09fa2f81ce26a1e1e39b29408ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5dd1f5ad501e3589148a4a2ebdb60a444f55a5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe641c6f8bff571b2b5a4fb4e1f9ce28ffd41e88b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7b09a5dfedd7d17617fe27d15726fe4cec352ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe81a00f372e7028284b85de88e5f442d860eea17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe84d98d1a181d701ecf656905b74024008299f8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8808575140e177b94d925f8a679e6a2fdcee646` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9ff292cb4f3602112ec83f7dbebd0ee77e3ef33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeaf211b6f7f86ec21f07a463f7df75cae87a0609` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb78159d4863e3ffcbdc5d3d7ad6e95432a48202` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeba1fda619460a91764542ae47af705027f9eece` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec203bf61f86f7df581e2ce2f973699212c315b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeca350fabec2222cf54c97feae3016f4ad3b0b74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecd0807e3bb87963d54ea0f5752c2889db441103` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xedd5a101e21e49687b06eb9a2820438db93bbc44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeff54bc1e23b6eb2bb1bc9e3b98bef46bc999df5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeff785873674bc03bfaeb406d158ef9ad06dd763` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf08e20d6e0761012348411236163ad74c814b11b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1c527b070078bd8ce2f67a275b9983063906ffd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2e197070a1713b78388a4743e391455a6935ede` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5c58fe89be1027dc631d1fa2f160252dbc5dac6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf678866966264fa0c0291f4c109b432b9e9478e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7aa9de3be7d6189d629260496d8bf6857734b5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf814a4911b56264e027107d60ea5be0446777c37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8f374d4276102064223c89cf5568f014acd690b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf99a67f06f90e326e463125b5f79272d5142306b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf99d95e255caf49a840f1f54cbde2575c065b7a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfbf8ed4014d15e9725e8d7664f2fec90da9f2a07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd23586d58d8ac5565ef0307398f7a4db01619c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd546a6f8a7f0493fc77ec95b44338ca888e0b07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe682d32adb78c8934d9b8a6c7705d8eb7f0a254` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [easy-fight-6a5.notion.site/Salus-Audit-Report-294ce2c0b4e442cb81e090b0232ae243](https://easy-fight-6a5.notion.site/Salus-Audit-Report-294ce2c0b4e442cb81e090b0232ae243) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 256 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2522] easy-fight-6a5.notion.site/Salus-Audit-Report-294ce2c0b4e442cb81e090b0232ae243

Fork inheritance lineage and inherited audits are included when available.
