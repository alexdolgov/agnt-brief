# Agentic Audit Brief: Seer

## Project Overview

- Project: Seer (`seer`)
- Website: [https://seer.pm/](https://seer.pm/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:55.262Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: ethereum, gnosis
- Contract surface: 197 unique implementations (322 raw deployments)
- DeFi Llama TVL: $983,763.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prediction Market. Structurally: 69 project-authored contract(s) across 2 chain(s); 3 ERC721 NFTs, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 19 common project-authored base contract(s) (immutablestate, peripherypayments, peripheryimmutablestate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 365; live-surface contracts included: 322 (151 live, 171 unknown).
- Excluded by liveness: 43 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/25 (0.0%)
- Deployed-live implementations: 26 of 197 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/26
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 171
- Unique implementations: 197
- Raw deployments: 322
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

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraFactory | registry | gnosis | n/a | [`0xa0864c...7da766`](./contracts/gnosis-100/0xa0864cca6e114013ab0e27cbd5b6f4c8947da766/) | ⚠️ Unaudited |
| CentralVault | core_logic | gnosis | n/a | 4 deployments: gnosis [`0x0ec662...c2b84d`](./contracts/gnosis-100/0x0ec66212a45f6b289e1965ac218d95b350c2b84d/); gnosis `0x4f49a8...f0f82b`; gnosis `0x7f2265...d57894`; gnosis `0xde8d8f...249995` | ⚠️ Unaudited |
| ConditionalRouter | adapter | gnosis | n/a | [`0x774284...13c29c`](./contracts/gnosis-100/0x774284d5cdfec3a0a0ebc7283ad4d5b33013c29c/) | ⚠️ Unaudited |
| ConditionalTokens | token | ethereum | n/a | 2 deployments: ethereum [`0xc59b0e...407e0c`](./contracts/ethereum-1/0xc59b0e4de5f1248c1140964e0ff287b192407e0c/); gnosis `0xceafdd...43c0ce` | ⚠️ Unaudited |
| CreditsManager | governance | gnosis | n/a | 4 deployments: gnosis [`0x17592e...ea8a61`](./contracts/gnosis-100/0x17592efe59a318a6b0afe32145ee04eafeea8a61/); gnosis `0x43bd67...43af17`; gnosis `0xb29d0c...4d2d70`; gnosis `0xfeb801...c9768b` | ⚠️ Unaudited |
| ForesightCredits | unknown | gnosis | n/a | [`0x09e701...2c94f9`](./contracts/gnosis-100/0x09e7014d2c15eb8c5ee25853fe6842ff5e2c94f9/) | ⚠️ Unaudited |
| FPMMDeterministicFactory | registry | gnosis | n/a | [`0x9083a2...a3eef0`](./contracts/gnosis-100/0x9083a2b699c0a4ad06f63580bde2635d26a3eef0/) | ⚠️ Unaudited |
| FutarchyFactory | registry | gnosis | n/a | 4 deployments: ethereum `0xf9369c...9d3678`; gnosis [`0xa6cb18...30a345`](./contracts/gnosis-100/0xa6cb18fcdc17a2b44e5cad2d80a6d5942d30a345/); gnosis `0xe789e4...f6b792`; gnosis `0xecfbc2...30942f` | ⚠️ Unaudited |
| FutarchyProposal | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0956b7...2d8a1c`](./contracts/ethereum-1/0x0956b70ac0eca45db9661a1cee96b2e7062d8a1c/); gnosis `0xbba6c5...05be7d`; gnosis `0xd342be...5eab66`; gnosis `0xec4fb9...5b484c` | ⚠️ Unaudited |
| FutarchyRealityProxy | unknown | gnosis | n/a | 4 deployments: ethereum `0xa638f2...5280dc`; gnosis [`0x03e1fc...a61cfc`](./contracts/gnosis-100/0x03e1fcfe3f1edc5833001588fb6377cb50a61cfc/); gnosis `0xb5786f...438e7b`; gnosis `0xc64c75...025d0f` | ⚠️ Unaudited |
| FutarchyRouter | adapter | gnosis | n/a | 4 deployments: ethereum `0xac9bf8...3f98dc`; gnosis [`0x7495a5...e1228f`](./contracts/gnosis-100/0x7495a583ba85875d59407781b4958ed6e0e1228f/); gnosis `0x74c4df...c19c7c`; gnosis `0xe2996f...c9f74e` | ⚠️ Unaudited |
| GnosisRouter | unknown | gnosis | n/a | 11 deployments: gnosis [`0x1c6761...18ea9a`](./contracts/gnosis-100/0x1c676107eee61cc2b400df92ae0fe08ea818ea9a/); gnosis `0x1cc00a...d75b61`; gnosis `0x2070b8...59e140`; gnosis `0x790510...90509f`; gnosis `0x7babb8...eb281d`; gnosis `0x7e9757...d7f72a`; gnosis `0x8046a0...77fa79`; gnosis `0xacf776...9c6a70`; gnosis `0xe94d65...837389`; gnosis `0xec9048...c70fb8`; gnosis `0xf68ff4...349d07` | ⚠️ Unaudited |
| MainnetRouter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x886ef0...af8bc6`](./contracts/ethereum-1/0x886ef0a78fabbae942f1da1791a8ed02a5af8bc6/); ethereum `0xfe8bf5...4a46b2` | ⚠️ Unaudited |
| Market | unknown | gnosis | n/a | 33 deployments: ethereum `0x8bdc50...d27b93`; gnosis [`0x0b5f90...59d93a`](./contracts/gnosis-100/0x0b5f90febc2fc44c43985b2a712f159ca059d93a/); gnosis `0x0d479a...a3ac09`; gnosis `0x20a3b1...1bc2d2`; gnosis `0x21a72f...d1d6a3`; gnosis `0x225030...117711`; gnosis `0x232474...fa5ca8`; gnosis `0x60eb95...c110bf`; gnosis `0x612f80...07bc1e`; gnosis `0x61cdb9...32f459`; gnosis `0x6ac12e...4ef581`; gnosis `0x829c91...88dbcb`; gnosis `0x87aabb...e0baf7`; gnosis `0x87cf5c...d0173c`; gnosis `0x8b8de5...454778`; gnosis `0x8f76bc...a9636a`; gnosis `0x9510c9...9e8aeb`; gnosis `0x9b6cca...7d8de1`; gnosis `0x9baeee...cda933`; gnosis `0x9e2272...24ad10`; gnosis `0x9ef70c...80bc7f`; gnosis `0xab903c...3f98ac`; gnosis `0xabe35c...4802f9`; gnosis `0xbbf8f7...bcc32e`; gnosis `0xc57764...088e17`; gnosis `0xc72f73...a0ca9e`; gnosis `0xe0d285...f51915`; gnosis `0xe820d0...4bb647`; gnosis `0xf27989...bb134e`; gnosis `0xf444a3...8423fd`; gnosis `0xfbebbb...cd2df0`; gnosis `0xfc5e55...cb63ce`; gnosis `0xfe414d...4b7c36` | ⚠️ Unaudited |
| MarketFactory | registry | gnosis | n/a | 23 deployments: ethereum `0x1f728c...7b7904`; ethereum `0x3124e9...c77a73`; ethereum `0x336695...38f348`; gnosis [`0x1246c7...f58e90`](./contracts/gnosis-100/0x1246c7e5ac59ba73a45a62e3081b548f02f58e90/); gnosis `0x2dbe07...582467`; gnosis `0x2e3937...ecb68e`; gnosis `0x47fc00...3a78fb`; gnosis `0x4c98aa...8e6ed0`; gnosis `0x69ad60...b792b3`; gnosis `0x724478...d86c09`; gnosis `0x83183d...5cdcf1`; gnosis `0x846f8f...92e6c5`; gnosis `0x8dd6fa...96e949`; gnosis `0x9498d2...c7bcc8`; gnosis `0xa99121...12ce33`; gnosis `0xaa43e7...a82ed7`; gnosis `0xab797c...7a87fc`; gnosis `0xc73323...b1131c`; gnosis `0xd1220e...821948`; gnosis `0xe619f5...14a2e6`; gnosis `0xe61f8c...13a788`; gnosis `0xeb0214...c20e6d`; gnosis `0xf365be...9818bf` | ⚠️ Unaudited |
| MarketView | unknown | gnosis | n/a | 17 deployments: ethereum `0x44921b...a79f00`; ethereum `0xab797c...7a87fc`; ethereum `0xb2ab74...84771a`; gnosis [`0x0427d4...916d9f`](./contracts/gnosis-100/0x0427d45906c8e1c156d8e06c1fefc4584b916d9f/); gnosis `0x3e202f...57142a`; gnosis `0x4ba0c4...dd4cc4`; gnosis `0x5f26f0...a5bbba`; gnosis `0x783b4b...2244ae`; gnosis `0x95493f...90f59c`; gnosis `0x995dc9...27626f`; gnosis `0xbb85ca...dfdf8d`; gnosis `0xd1f885...36414a`; gnosis `0xd34b07...e849e2`; gnosis `0xd45d4b...5d35e7`; gnosis `0xda834f...9d9dbf`; gnosis `0xe1834d...475172`; gnosis `0xfe6f08...a56aa0` | ⚠️ Unaudited |
| ParimutuelVault | core_logic | gnosis | n/a | 2 deployments: gnosis [`0x506dcc...0b6137`](./contracts/gnosis-100/0x506dcc9781b895b02559014544a83bd39f0b6137/); gnosis `0x659a90...2810c9` | ⚠️ Unaudited |
| PickemSlateFactory | registry | gnosis | n/a | 4 deployments: gnosis [`0x2a9fa7...5b0cad`](./contracts/gnosis-100/0x2a9fa7bad74e85d91c8f9fc1258f065e285b0cad/); gnosis `0x4df41e...1612f5`; gnosis `0xa2cd7c...d9bb67`; gnosis `0xfe5754...aac3c3` | ⚠️ Unaudited |
| RealityProxy | unknown | gnosis | n/a | 8 deployments: ethereum `0xc72f73...a0ca9e`; gnosis [`0x132bcf...4037dd`](./contracts/gnosis-100/0x132bcfb0003234a791deb118f8271bcfda4037dd/); gnosis `0x41ab65...6aa10c`; gnosis `0x691215...2c7d63`; gnosis `0xc260ad...0f2d6c`; gnosis `0xdec7c0...c4a210`; gnosis `0xee30cb...503490`; gnosis `0xf7e648...e6e9af` | ⚠️ Unaudited |
| SeerCredits | unknown | gnosis | n/a | 3 deployments: gnosis [`0x3a0d86...dc607c`](./contracts/gnosis-100/0x3a0d8671efcbc172edbe32f91169bbc984dc607c/); gnosis `0xedd48e...51acaf`; gnosis `0xf67736...cd466b` | ⚠️ Unaudited |
| SlateFactory | registry | gnosis | n/a | 2 deployments: gnosis [`0x31ac36...6ecbac`](./contracts/gnosis-100/0x31ac36cbaa3e7e57a1542f6623fc775ec86ecbac/); gnosis `0xb5a01f...22f1d9` | ⚠️ Unaudited |
| SportsSlateFactory | registry | gnosis | n/a | 6 deployments: gnosis [`0x293dfe...4640d1`](./contracts/gnosis-100/0x293dfe3ffe40454598ebc745d46da3d3c44640d1/); gnosis `0x6938ef...dc070a`; gnosis `0x7e53af...a732d8`; gnosis `0x8a670a...7f2999`; gnosis `0x931fc6...3fc6c4`; gnosis `0x96f61c...2a3619` | ⚠️ Unaudited |
| TradingCredits | unknown | gnosis | n/a | 3 deployments: gnosis [`0x02d727...e2e5c2`](./contracts/gnosis-100/0x02d727a6a93eb45d2c20f6d9c7a97ae8fce2e5c2/); gnosis `0x075b4c...decc15`; gnosis `0x122f6b...ca35a8` | ⚠️ Unaudited |
| UniswapV3Factory | registry | ethereum | n/a | [`0x1f9843...31f984`](./contracts/ethereum-1/0x1f98431c8ad98523631ae4a59f267346ea31f984/) | ⚠️ Unaudited |
| Wrapped1155Factory | registry | ethereum | n/a | [`0xd19431...10b79f`](./contracts/ethereum-1/0xd194319d1804c1051dd21ba1dc931ca72410b79f/) | ⚠️ Unaudited |
| WrappedERC20Factory | unknown | gnosis | n/a | 5 deployments: gnosis [`0x383753...f2887a`](./contracts/gnosis-100/0x383753af6ca47e1b46b000e07ab210fd04f2887a/); gnosis `0x5bc8dd...e3b557`; gnosis `0x940b60...b3c2f1`; gnosis `0xb105c8...dcae3c`; gnosis `0xd0ee78...6d6c40` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (171)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1a1bab...f96d6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25c676...64721f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x423998...5a6671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47a38c...335a77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x880d95...006788` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd88e1...3c6bdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7b94f...bd8b44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe97b78...8a9114` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeaa5a2...d6d709` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x00ca76...0dede3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x016e62...f7dd0b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x023652...90b191` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x02b547...1dcbcb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x030e3b...67269d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x03835b...3017c9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x03cb70...43acf2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x03d034...d5e012` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x04cdb6...ceccde` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x0791e8...497408` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x07dd32...a23981` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x0956b7...2d8a1c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x099efd...b91ff4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x09e84c...cd9ef8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x0bd271...53d101` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x0d3273...4015c4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x0db8c3...d0534f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x100d17...2f4460` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x12bb49...4ce346` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x13ba6a...a3d070` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x14662a...4c1443` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x16a434...42e2ae` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x17181c...77b6c9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x177375...ad9b1e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x179d8f...2d05dd` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x189d70...9e33ca` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x19b1a7...947319` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x19ecfa...b40065` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1b2a23...3f3ea6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1b780d...b72dc4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1ba2db...44d9b5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1ea2e0...ad0825` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1f728c...7b7904` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1ff0e9...8596ad` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x204a20...2f8be7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x221456...775c7a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2342b8...496041` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x25a3e5...c9da05` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2831df...0f391d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x28f293...ceb77d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2a5961...16c241` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2b8ad6...1a4ce9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2cb70f...408120` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2db41e...180a4e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2e51bf...0cea37` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3038ad...6ff0e5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3124e9...c77a73` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3332bb...08550a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x336695...38f348` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x34578a...449f59` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x38801c...2fbb44` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3a4634...58ccab` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3dc2a2...a196e7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4115c9...59618f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x43a365...2a9ed5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x43c1a3...ab3e4f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x43f306...4f6e79` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x44921b...a79f00` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x478189...e8023d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4cf647...76368d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4f547e...92fb86` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x55bae1...ac426a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5759c0...099735` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5817da...561d27` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x591af1...2d2843` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x592e6d...a6b232` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5a8638...8cf9df` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5be39c...5f8965` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5eaa42...d486e6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6082be...1b5f3b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x615fbb...82018a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x643752...5a2d04` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x64a4f9...3b2134` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x654e8e...0fd3e1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x70664c...da8900` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x73f989...dc42b5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7563c9...15eaa3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x769578...b8305d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7e1acb...dfd1db` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7ece77...ed3b15` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7f4026...a3a41e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8030a0...4fe3ed` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x806d57...4ee9af` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x821d40...8528e6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x841f32...18076e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x84c6fc...2aee5d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x85306c...ea3598` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8819f2...0cca73` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x886ef0...af8bc6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x89038b...274273` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x894f1e...b304e4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x89527d...a76910` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8a9647...eac6c3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8b4ad9...3f9db3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8e81fe...3f7261` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8f83a8...23cc8e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8ffdef...32ac58` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x978494...dd2b57` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x98a164...0b4245` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x99dd9b...4b4474` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9aea5a...88ccad` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9b1f03...f49ee2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9d2166...11f7c2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9da1fd...000ddd` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa1a986...beb0f5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa2a7b2...e5da5d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa48b4d...904a9e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa59180...8fa1cf` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa638f2...5280dc` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa6e428...0c6f06` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa7f711...333a56` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa834cc...a75e9d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa8457b...f61e4b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xab964d...b8ea92` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xac9bf8...3f98dc` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xace2c6...6ec7d2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xae3002...347dea` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xafc6fd...ede6f6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb0f1d2...01270b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb19126...50e141` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb2ab74...84771a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb43721...1a7394` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb5330e...154573` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb745fe...5b3202` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb89733...9450b8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb917d7...522476` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xba333a...877970` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbaabc8...706fb2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbb6061...04759b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbdf422...b511f6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbe0034...c8af7f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc2d432...9d063d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc7b072...34cfa3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xcbbbab...1c69fa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xcbec93...ed59ed` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xcd07b0...a1550b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd1f878...215143` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd24880...02d415` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd4e7f4...b8eac9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd6cc87...5a5ea2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd7e119...7f6917` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd90546...900cc9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xdacc76...1fb78c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xdd193f...849bd1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xdeb5dc...0b3791` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe1e55a...1647d7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe36967...71007e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe5a4df...add300` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe81c8b...162568` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe939dd...aec4ac` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe9d43d...4414e3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xeb311c...9dcf5c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xefa6cb...f0f485` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf06f41...6f99bf` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf1e315...461fd9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf5ccbf...7723b9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf8b24d...63ff82` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf9369c...9d3678` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfafaf0...33cd15` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfb4c45...3c16b7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfdafab...d5aad3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xff62fb...015199` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit-reports.md](https://seer-3.gitbook.io/seer-documentation/other/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | [`0xa0864c...7da766`](./contracts/gnosis-100/0xa0864cca6e114013ab0e27cbd5b6f4c8947da766/) | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0ec662...c2b84d`](./contracts/gnosis-100/0x0ec66212a45f6b289e1965ac218d95b350c2b84d/) | CentralVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x774284...13c29c`](./contracts/gnosis-100/0x774284d5cdfec3a0a0ebc7283ad4d5b33013c29c/) | ConditionalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc59b0e...407e0c`](./contracts/ethereum-1/0xc59b0e4de5f1248c1140964e0ff287b192407e0c/) | ConditionalTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x17592e...ea8a61`](./contracts/gnosis-100/0x17592efe59a318a6b0afe32145ee04eafeea8a61/) | CreditsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x09e701...2c94f9`](./contracts/gnosis-100/0x09e7014d2c15eb8c5ee25853fe6842ff5e2c94f9/) | ForesightCredits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x9083a2...a3eef0`](./contracts/gnosis-100/0x9083a2b699c0a4ad06f63580bde2635d26a3eef0/) | FPMMDeterministicFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xa6cb18...30a345`](./contracts/gnosis-100/0xa6cb18fcdc17a2b44e5cad2d80a6d5942d30a345/) | FutarchyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0956b7...2d8a1c`](./contracts/ethereum-1/0x0956b70ac0eca45db9661a1cee96b2e7062d8a1c/) | FutarchyProposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x03e1fc...a61cfc`](./contracts/gnosis-100/0x03e1fcfe3f1edc5833001588fb6377cb50a61cfc/) | FutarchyRealityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x7495a5...e1228f`](./contracts/gnosis-100/0x7495a583ba85875d59407781b4958ed6e0e1228f/) | FutarchyRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x1c6761...18ea9a`](./contracts/gnosis-100/0x1c676107eee61cc2b400df92ae0fe08ea818ea9a/) | GnosisRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x886ef0...af8bc6`](./contracts/ethereum-1/0x886ef0a78fabbae942f1da1791a8ed02a5af8bc6/) | MainnetRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0b5f90...59d93a`](./contracts/gnosis-100/0x0b5f90febc2fc44c43985b2a712f159ca059d93a/) | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x1246c7...f58e90`](./contracts/gnosis-100/0x1246c7e5ac59ba73a45a62e3081b548f02f58e90/) | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0427d4...916d9f`](./contracts/gnosis-100/0x0427d45906c8e1c156d8e06c1fefc4584b916d9f/) | MarketView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x506dcc...0b6137`](./contracts/gnosis-100/0x506dcc9781b895b02559014544a83bd39f0b6137/) | ParimutuelVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x2a9fa7...5b0cad`](./contracts/gnosis-100/0x2a9fa7bad74e85d91c8f9fc1258f065e285b0cad/) | PickemSlateFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x132bcf...4037dd`](./contracts/gnosis-100/0x132bcfb0003234a791deb118f8271bcfda4037dd/) | RealityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x3a0d86...dc607c`](./contracts/gnosis-100/0x3a0d8671efcbc172edbe32f91169bbc984dc607c/) | SeerCredits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x31ac36...6ecbac`](./contracts/gnosis-100/0x31ac36cbaa3e7e57a1542f6623fc775ec86ecbac/) | SlateFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x293dfe...4640d1`](./contracts/gnosis-100/0x293dfe3ffe40454598ebc745d46da3d3c44640d1/) | SportsSlateFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x02d727...e2e5c2`](./contracts/gnosis-100/0x02d727a6a93eb45d2c20f6d9c7a97ae8fce2e5c2/) | TradingCredits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd19431...10b79f`](./contracts/ethereum-1/0xd194319d1804c1051dd21ba1dc931ca72410b79f/) | Wrapped1155Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x383753...f2887a`](./contracts/gnosis-100/0x383753af6ca47e1b46b000e07ab210fd04f2887a/) | WrappedERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 171 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21122] audit-reports.md

Fork inheritance lineage and inherited audits are included when available.
