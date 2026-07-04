# Agentic Audit Brief: Harmonix Finance

## Project Overview

- Project: Harmonix Finance (`harmonix-finance`)
- Website: [https://app.harmonix.fi](https://app.harmonix.fi)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.220Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, ethereum, hyperliquid
- Contract surface: 285 unique implementations (489 raw deployments)
- DeFi Llama TVL: $5,180,091.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 22 project-authored contract(s) across 3 chain(s); 1 ERC4626 vault, 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 3 common project-authored base contract(s) (proxy, erc1967upgrade, habaseupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 522; live-surface contracts included: 445 (221 live, 224 unknown).
- Excluded by liveness: 77 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/157 (7.0%)
- Deployed-live implementations: 157 of 285 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/157
- Verified + Unaudited implementations: 146
- Verified by bytecode match: 0
- Unverified implementations: 128
- Unique implementations: 285
- Raw deployments: 489
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Verichains | Tier 2 | 6 | 3.8% | 2024-08 |
| Hyperliquid | Tier 2 | 5 | 3.2% | 2025-05 |
| Zenith | Tier 2 | 5 | 3.2% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FundContract | unknown | hyperliquid | n/a | 6 deployments: hyperliquid [`0x02513f...c2db7f`](./contracts/hyperliquid-999/0x02513f514c38b685fbd05b87750d3f05c3c2db7f/); hyperliquid `0x74bd05...e6f286`; hyperliquid `0x7a428b...6e6341`; hyperliquid `0x8c03fc...e01dce`; hyperliquid `0xe7ac6c...e9227c`; hyperliquid `0xed76bd...99ba97` | ✅ Audited |
| FundContract | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1108fe...47be55`](./contracts/hyperliquid-999/0x1108fe54384c5c4ade2d25e420303e08c047be55/); hyperliquid `0xfde5b0...8d725c` | ✅ Audited |
| FundContract | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x2aaa1e...3c62c3`](./contracts/hyperliquid-999/0x2aaa1ee7d6a457d67a95ace8d5d05b33a73c62c3/); hyperliquid `0xb8e91f...843064`; hyperliquid `0xe82152...8413c1` | ✅ Audited |
| FundContract | unknown | hyperliquid | n/a | 4 deployments: hyperliquid [`0x3e79f3...f8cc41`](./contracts/hyperliquid-999/0x3e79f3b6d5c9d8299c54ebbe2814bb563bf8cc41/); hyperliquid `0x5b85ac...0d3b0a`; hyperliquid `0xb3f282...12cab7`; hyperliquid `0xba0557...b8863b` | ✅ Audited |
| FundContract | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x55a463...cadcdd`](./contracts/hyperliquid-999/0x55a4639f748ecef62bc43afcf9e51729e8cadcdd/); hyperliquid `0xd54fae...f5e7b4` | ✅ Audited |
| KelpRestakingDeltaNeutralVault | unknown | ethereum | n/a | [`0x09f2b4...4429df`](./contracts/ethereum-1/0x09f2b45a6677858f016ebef1e8f141d6944429df/) | ✅ Audited |
| KelpRestakingDeltaNeutralVault | unknown | arbitrum | n/a | [`0x3c610c...779058`](./contracts/arbitrum-42161/0x3c610cde6d4c2a379f0f461d7ed05ed709779058/) | ✅ Audited |
| KelpRestakingDeltaNeutralVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x554ef8...815d95`](./contracts/arbitrum-42161/0x554ef8e21832ffc5779f212512d9ab96a7815d95/); arbitrum `0x9e2d37...2ea13a` | ✅ Audited |
| KelpRestakingDeltaNeutralVault | unknown | arbitrum | n/a | [`0xa50169...116b20`](./contracts/arbitrum-42161/0xa50169bdfd3b7aa14bd411891c1aba40dc116b20/) | ✅ Audited |
| KelpRestakingDeltaNeutralVault | unknown | arbitrum | n/a | [`0xbbff0a...07f855`](./contracts/arbitrum-42161/0xbbff0affba8426608d2b319f6a2cc58bbf07f855/) | ✅ Audited |
| KelpRestakingDeltaNeutralVault | unknown | arbitrum | n/a | [`0xfadf54...d2ac61`](./contracts/arbitrum-42161/0xfadf54397db24571499895f37a37b967e7d2ac61/) | ✅ Audited |

### ⚠️ Verified + Unaudited (146)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x05a626...5e72f7`](./contracts/hyperliquid-999/0x05a626914c582bff59f0a1aac3a4540def5e72f7/); hyperliquid `0x41e146...22419c` | ⚠️ Unaudited |
| AccessManager | governance | hyperliquid | n/a | 2 deployments: hyperliquid [`0x28257c...7d3808`](./contracts/hyperliquid-999/0x28257cd6b21519a281a90637462bf7956c7d3808/); hyperliquid `0x408e48...9bf97c` | ⚠️ Unaudited |
| AssetVault | unknown | hyperliquid | n/a | 5 deployments: hyperliquid [`0x25b4dc...dbbdfb`](./contracts/hyperliquid-999/0x25b4dc5f96312c7083a58d80d8ecad6ecddbbdfb/); hyperliquid `0x31aaa5...3d77e1`; hyperliquid `0x77a1b9...8e81f5`; hyperliquid `0x7db7bc...71f166`; hyperliquid `0xee09a7...bd7cbe` | ⚠️ Unaudited |
| ClaimReward | unknown | hyperliquid | n/a | 4 deployments: hyperliquid [`0x04b7b5...945e97`](./contracts/hyperliquid-999/0x04b7b5cb8c3b7f35fb604fcf92e0d3925c945e97/); hyperliquid `0xbef024...98fbc0`; hyperliquid `0xc3d0ed...b38889`; hyperliquid `0xe0a8d9...864045` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x057f4e...a310f8`](./contracts/hyperliquid-999/0x057f4eb91dfd050a59cb1ecba9cc759a1aa310f8/); hyperliquid `0x3d9148...dc1eaa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1357a7...03552a`](./contracts/hyperliquid-999/0x1357a71eab7bc50cd579dfa68935a920e203552a/); hyperliquid `0x69051e...c58518` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1368ee...eebc42`](./contracts/hyperliquid-999/0x1368ee9d1212ae5b26ff166049220051a9eebc42/); hyperliquid `0xe4ba90...9268ea` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x24e1cd...188043`](./contracts/hyperliquid-999/0x24e1cd4081aff985cbd58ef639aea56cdb188043/); hyperliquid `0xf463c9...ddd986` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x276787...31b844`](./contracts/hyperliquid-999/0x2767870670a65913c3d877699bd72b0cec31b844/); hyperliquid `0xfaefcd...698722` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x2ca5cf...d77291`](./contracts/hyperliquid-999/0x2ca5cf8ef7b35c2c7df4d7c204a58c6f16d77291/); hyperliquid `0x33a821...e2537f`; hyperliquid `0x4d9cb8...994032` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2fef70...0c565c`](./contracts/hyperliquid-999/0x2fef70f905a0fd21fe2493acc1be5eef870c565c/); hyperliquid `0x8e40b4...a88fa8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x307825...6f0a50`](./contracts/hyperliquid-999/0x30782559957f0853419c7021e91c83338a6f0a50/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x310484...4c7f42`](./contracts/hyperliquid-999/0x3104845028ab1a9670ae025874c12aaefe4c7f42/); hyperliquid `0xd040c6...de73b6` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x31b626...88cb5c`](./contracts/hyperliquid-999/0x31b626e0554da4fcaff9987dedc3ea3f3288cb5c/); hyperliquid `0x5533b7...19b87c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x380c52...bde06e`](./contracts/hyperliquid-999/0x380c522064688b4c9b2375b0acdce4f7cfbde06e/); hyperliquid `0x586c80...4b2f0c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x388238...462d7f`](./contracts/hyperliquid-999/0x388238bb8805a9a1412aee7abf5c23ac1e462d7f/); hyperliquid `0xdb0036...ad3bca` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x47b100...ce4a9f`](./contracts/hyperliquid-999/0x47b100d7f444405759e9b226f6cb1cdb8cce4a9f/); hyperliquid `0xde3524...ed215e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x59fddf...4e9736`](./contracts/hyperliquid-999/0x59fddf86d74b4c0c38033931a44814d9ff4e9736/); hyperliquid `0x5da664...a33268`; hyperliquid `0xeeb9c3...06e2c1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5bb6b9...c5ced0`](./contracts/hyperliquid-999/0x5bb6b9fcef8fb3d5db5dcf04bf53730069c5ced0/); hyperliquid `0x98870d...634205` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6c17d3...039f17`](./contracts/hyperliquid-999/0x6c17d3b2dcd25dd779be50bd27f5dad2a1039f17/); hyperliquid `0x6d5eba...a33280` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6e850b...fc824e`](./contracts/hyperliquid-999/0x6e850b15d6f6ac830b5791c0c7452901c1fc824e/); hyperliquid `0xe9552e...1a2366` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x72dd37...290f29`](./contracts/hyperliquid-999/0x72dd37c3cda4537df0c77a23526a341d20290f29/); hyperliquid `0x9ff5cb...fa7ee6`; hyperliquid `0xf8c853...b166a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x79325d...fb7093`](./contracts/hyperliquid-999/0x79325d3c5567624903b2a49542a9ed3a21fb7093/); hyperliquid `0x81e31e...3e0ec8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7cee01...1bb021`](./contracts/hyperliquid-999/0x7cee0144f324b85bc0d6d19028dc030d161bb021/); hyperliquid `0x941e59...9a1b9e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7d0a42...3d6337`](./contracts/hyperliquid-999/0x7d0a4237e52875e7e3a8f029332b054c143d6337/); hyperliquid `0xf6808d...610051` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x83ff30...4e328e`](./contracts/hyperliquid-999/0x83ff304e86df2bb44847067b074f8218494e328e/); hyperliquid `0x99e38e...e18398` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x84a081...468537`](./contracts/hyperliquid-999/0x84a08190995ff4c2f839defd5272b2813f468537/); hyperliquid `0xb7bf0f...578c36` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x8ad875...7f2623`](./contracts/hyperliquid-999/0x8ad875d4fbb2365b7c67c397c574e32b297f2623/); hyperliquid `0x9a2b46...317a42` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xa19140...0326f0`](./contracts/hyperliquid-999/0xa191407f1bc1a4454e9dd5a1ae277aac8d0326f0/); hyperliquid `0xeebbf3...9745ee` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xabf874...1d62ac`](./contracts/hyperliquid-999/0xabf874c491569b3a6c2dec5b69dc5c5a121d62ac/); hyperliquid `0xaf74f3...e7e1b1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xacf32f...261588`](./contracts/hyperliquid-999/0xacf32fd95bd16e7a77f353583542eff40e261588/); hyperliquid `0xb2cda4...57d6cf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xb0820f...9fbc40`](./contracts/hyperliquid-999/0xb0820fd4c7517a2690a267941551bc3ded9fbc40/); hyperliquid `0xdc2338...ee8cf8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xb8f440...4d650d`](./contracts/hyperliquid-999/0xb8f44096442c1f1d9540accc0f3f6814524d650d/); hyperliquid `0xf5704a...9cab46` | ⚠️ Unaudited |
| FundNavFeed | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x26493d...d67077`](./contracts/hyperliquid-999/0x26493d5d3121a7938f8835436d777b6d10d67077/); hyperliquid `0x3bed7e...c13643`; hyperliquid `0x9f39f5...8c289c` | ⚠️ Unaudited |
| FundVault | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x55b71e...0e0cfe`](./contracts/hyperliquid-999/0x55b71eea81b3043b65e718d8b6e31a59090e0cfe/); hyperliquid `0xabe515...333535`; hyperliquid `0xb6335c...47ddb6` | ⚠️ Unaudited |
| HaForDefiStrategy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1f808f...c5d173`](./contracts/hyperliquid-999/0x1f808f9f518a31a7737026056f3c2f2bccc5d173/); hyperliquid `0x7f6fdd...81a93a` | ⚠️ Unaudited |
| HaForDefiStrategy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4c5754...43dc0c`](./contracts/hyperliquid-999/0x4c57541f4fcbd234a5ecf31cc38572cae943dc0c/); hyperliquid `0xe6d168...452f80` | ⚠️ Unaudited |
| HaForwardDestinationStrategy | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x23be71...37c072`](./contracts/hyperliquid-999/0x23be7156c97e0d7413b35fca81ca236e8137c072/); hyperliquid `0x8ea4ff...3dd712`; hyperliquid `0xacde7a...38e0c1` | ⚠️ Unaudited |
| HAR | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x391121...a2af18`](./contracts/hyperliquid-999/0x391121d817da42ed3434d281aedbbcc416a2af18/); hyperliquid `0xdceabc...f92744` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x02a1d5...f00520`](./contracts/hyperliquid-999/0x02a1d5fba537c7156f5374d2c740fab4bdf00520/); hyperliquid `0x9938db...32be1c` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x06adea...031def`](./contracts/hyperliquid-999/0x06adeaaa77a319a639bca0f36f54a6b4bf031def/); hyperliquid `0xa5b21f...32a3d0` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0d4033...2cc429`](./contracts/hyperliquid-999/0x0d403355c2fc8bd4d0dca2e677d1f388882cc429/); hyperliquid `0xf25d52...eb4e80` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1e1ca9...e4e602`](./contracts/hyperliquid-999/0x1e1ca9ea99a0c37e4e512dc96c4a770877e4e602/); hyperliquid `0x6f58cb...cb8571` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x28e0f1...111dfa`](./contracts/hyperliquid-999/0x28e0f14839cf8dbfae8a561b31d0518c35111dfa/); hyperliquid `0x9ff6ed...578a21` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x48898c...f35c94`](./contracts/hyperliquid-999/0x48898ca06d346b1cf6d3148e83840d7c43f35c94/); hyperliquid `0x884c96...372b15` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4a06e9...5227a1`](./contracts/hyperliquid-999/0x4a06e9f5c819263c0f803a8a35f44280a15227a1/); hyperliquid `0xbbb6b5...0f16a6` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x56d782...1579e2`](./contracts/hyperliquid-999/0x56d782d4400fa82e14bfba9bd9e836b4d91579e2/); hyperliquid `0xcbf856...64bbe9` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5979aa...3f49e2`](./contracts/hyperliquid-999/0x5979aa38e5bcaa2e0b4ba3795c530022103f49e2/); hyperliquid `0xc34a47...5935c8` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5bd4dd...cd9b09`](./contracts/hyperliquid-999/0x5bd4ddaf9ad88a4881e4f364ba2e8c8123cd9b09/); hyperliquid `0xf414b6...b1ea15` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x605646...bc8fef`](./contracts/hyperliquid-999/0x6056469445b71867f8d6a6b483bd3b7be4bc8fef/); hyperliquid `0xfe05fa...6095d6` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x65b0a6...ae035f`](./contracts/hyperliquid-999/0x65b0a63fac21d15cc8c4b7a93972e1b1c6ae035f/); hyperliquid `0x99ced1...f10505` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6fab94...bdf59b`](./contracts/hyperliquid-999/0x6fab94fb032dad8e53eb368116d6b72c0bbdf59b/); hyperliquid `0xf4e681...bd9d4d` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7d852a...d4b40d`](./contracts/hyperliquid-999/0x7d852a046b7f47d9164d726a896c67249ad4b40d/); hyperliquid `0xaffbc8...77e8ce` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x95f283...6c6f97`](./contracts/hyperliquid-999/0x95f2836501530886afa793f08fefd193fc6c6f97/); hyperliquid `0xef84f7...c256f6` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xae24f8...90b136`](./contracts/hyperliquid-999/0xae24f8222832c40edb6bbcdd20030aa79790b136/); hyperliquid `0xc8bdf4...2f8016` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xbdf77a...80b5d5`](./contracts/hyperliquid-999/0xbdf77abf7c360600b6607fcba1562ec6ea80b5d5/); hyperliquid `0xc60719...364fa1` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xf1c57e...0c6a65`](./contracts/hyperliquid-999/0xf1c57eea645d51d03dd02f025d6dc084690c6a65/); hyperliquid `0xfeda37...9b4d55` | ⚠️ Unaudited |
| HaVaultReader | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x3a0b0e...436f52`](./contracts/hyperliquid-999/0x3a0b0e25becefcda10ac367f4f3dc33060436f52/); hyperliquid `0x8210b8...1bc4ec` | ⚠️ Unaudited |
| HaVaultReader | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x66341e...046fe9`](./contracts/hyperliquid-999/0x66341e783529c0837ab16791e031e109d9046fe9/); hyperliquid `0x8bb3a6...e78473` | ⚠️ Unaudited |
| HaVaultReader | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x76994f...988bdc`](./contracts/hyperliquid-999/0x76994facc865399b08a850e8c1d8a172a2988bdc/); hyperliquid `0xb95803...b35ddd` | ⚠️ Unaudited |
| HaVaultReader | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xb80235...6ba14c`](./contracts/hyperliquid-999/0xb80235f6f82031f2b9a5bf91c9de46e6b06ba14c/); hyperliquid `0xf37741...c4ee92` | ⚠️ Unaudited |
| HyperCorePriceFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x699704...c45dbb`](./contracts/hyperliquid-999/0x6997045d980098206e435d388e81719adfc45dbb/); hyperliquid `0xe19085...110eef` | ⚠️ Unaudited |
| MultiVestingDistributorMock | operational_periphery | hyperliquid | n/a | [`0x30c9fc...a2111f`](./contracts/hyperliquid-999/0x30c9fc26028c3065e0bfd9b7ba1c7c9984a2111f/) | ⚠️ Unaudited |
| MultiVestingDistributorMock | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x45de26...a27f0f`](./contracts/hyperliquid-999/0x45de263bea4587c22c9b21aa392f8e5c5ca27f0f/); hyperliquid `0x8d8c70...d4b24a` | ⚠️ Unaudited |
| MultiVestingDistributorMock | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7bc78c...ad335f`](./contracts/hyperliquid-999/0x7bc78ca95d1755db67d7dda3108f161c0ead335f/); hyperliquid `0x7ee84a...e912b6` | ⚠️ Unaudited |
| NavAggregateModel | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x8e9e87...301d30`](./contracts/hyperliquid-999/0x8e9e8705a50ec4720b14d84e34af73421e301d30/); hyperliquid `0xa3f4f7...387514` | ⚠️ Unaudited |
| PendleHedgeVault | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0110bb...bfabe0`](./contracts/arbitrum-42161/0x0110bb8d3e530eb9a53f92fe848a06f2c5bfabe0/); arbitrum `0x561b08...9979fc`; arbitrum `0xc0fa1d...cb50ee` | ⚠️ Unaudited |
| PoolFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc7c8cd...a9473b`](./contracts/ethereum-1/0xc7c8cdd1e9817fc98ad1b05cd3633c6471a9473b/); ethereum `0xe18567...c4a9c3` | ⚠️ Unaudited |
| PoolFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x727446...2e6285`](./contracts/arbitrum-42161/0x7274463bf93e0058481042cbd6e0cc73042e6285/); arbitrum `0x81302b...1b70c1` | ⚠️ Unaudited |
| PriceFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x389c28...991df8`](./contracts/hyperliquid-999/0x389c289413c195918647a1c827476848c1991df8/); hyperliquid `0xcd66bc...91ea65` | ⚠️ Unaudited |
| ProxyAdmin | governance | hyperliquid | n/a | [`0x7c95d4...706ada`](./contracts/hyperliquid-999/0x7c95d4c96c410a6e7dedf4bc78eb93b916706ada/) | ⚠️ Unaudited |
| ShareToken | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x581f83...4e79fc`](./contracts/hyperliquid-999/0x581f839f495625aea422b0103e6a7727e34e79fc/); hyperliquid `0xfa2f2f...9e0f5d` | ⚠️ Unaudited |
| ShareToken | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7c8516...288aee`](./contracts/hyperliquid-999/0x7c8516bfaa7c3390aff61fe511e2ccc3cf288aee/); hyperliquid `0xc70882...8e98c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcf8be3...dbc820`](./contracts/ethereum-1/0xcf8be38f161db8241bbbdbab4231f9df62dbc820/); ethereum `0xe1a201...9db69b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 12 deployments: hyperliquid [`0x053a18...f70faa`](./contracts/hyperliquid-999/0x053a18d869a3d5927594cbc270107caab6f70faa/); hyperliquid `0x069b24...6dd472`; hyperliquid `0x2cbce1...b38dba`; hyperliquid `0x56edc8...e41898`; hyperliquid `0x6c8023...c3497b`; hyperliquid `0x807c47...b22c5b`; hyperliquid `0x8276e1...b386c9`; hyperliquid `0x933e97...65d270`; hyperliquid `0xa6ccd0...6cfe2c`; hyperliquid `0xc13a77...18b799`; hyperliquid `0xd031ad...888cd4`; hyperliquid `0xd8e0aa...720da7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x05e3b8...828f04`](./contracts/hyperliquid-999/0x05e3b82444edecdc64b556c938f4ae623a828f04/); hyperliquid `0xa56c9b...19687d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0aa13b...e53180`](./contracts/hyperliquid-999/0x0aa13b638c60212ce3947ead9c38498c01e53180/); hyperliquid `0x15d21b...b176b2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x0c7612...c089c4`](./contracts/hyperliquid-999/0x0c7612d7b3c6f5775966ae291ffe0d4537c089c4/); hyperliquid `0xa4ceed...1f67a7`; hyperliquid `0xe0446f...405613` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x10f4a5...8fbe0d`](./contracts/hyperliquid-999/0x10f4a52b66ead12fec74d97293ff491dbb8fbe0d/); hyperliquid `0xef447e...babb3b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x16ab14...99d754`](./contracts/hyperliquid-999/0x16ab14c6deb158b3d8f3846c702d65309599d754/); hyperliquid `0xf58fbd...bdb0d0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x16cde7...39ad82`](./contracts/hyperliquid-999/0x16cde735538e935e68b2ddc7c0d657acfe39ad82/); hyperliquid `0xd4e0bb...b0ef28` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x176458...4aab17`](./contracts/hyperliquid-999/0x17645878a354eed54ee238dccdf72cce224aab17/); hyperliquid `0xbbb276...5a8fb9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 4 deployments: hyperliquid [`0x179348...bb22c6`](./contracts/hyperliquid-999/0x179348034c7fa35d2d5a0149c17cede52fbb22c6/); hyperliquid `0xa45541...dfb899`; hyperliquid `0xcca4cf...30f8f5`; hyperliquid `0xebf181...2249d8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 4 deployments: hyperliquid [`0x19de72...e3d344`](./contracts/hyperliquid-999/0x19de72a5f174c92703d92f1fbd1afc6df1e3d344/); hyperliquid `0x6f62bb...0b5d8d`; hyperliquid `0x74a055...a3ca90`; hyperliquid `0x998103...f48867` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 5 deployments: hyperliquid [`0x206e19...15da40`](./contracts/hyperliquid-999/0x206e193fafdf881e709cca50308552a7f615da40/); hyperliquid `0x3ed61e...edf014`; hyperliquid `0x585740...dfa1dd`; hyperliquid `0x6bc7a3...88525b`; hyperliquid `0xcc33ab...b58223` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2dd5f1...41607f`](./contracts/hyperliquid-999/0x2dd5f122bde4313d9e44b434589d46326141607f/); hyperliquid `0xfec8f5...a17da8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x39a7d3...6e99da`](./contracts/hyperliquid-999/0x39a7d3dff6d2e31b4a11ca8c8969b619fe6e99da/); hyperliquid `0x82d8a0...4a799d`; hyperliquid `0x8bf477...c2d4eb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 5 deployments: hyperliquid [`0x3c298b...6eba5d`](./contracts/hyperliquid-999/0x3c298b0d324fe16db73fe5e74023335bbd6eba5d/); hyperliquid `0x4b4532...1a9630`; hyperliquid `0x76b009...4c69d6`; hyperliquid `0xe67fd0...fa9c5a`; hyperliquid `0xef16af...320d1f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 9 deployments: hyperliquid [`0x3c5374...4493fd`](./contracts/hyperliquid-999/0x3c5374a8efceb94c3e1176afc0bf89b4f14493fd/); hyperliquid `0x48e94d...ea9b82`; hyperliquid `0x95b08e...3f9dd1`; hyperliquid `0x9e780b...490dba`; hyperliquid `0xa855f9...43fa58`; hyperliquid `0xb618a0...7fe3e7`; hyperliquid `0xcbd7d9...045bc4`; hyperliquid `0xd844fb...b3fbe8`; hyperliquid `0xe695af...a9445f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x3d5556...e90b11`](./contracts/hyperliquid-999/0x3d5556eadd436630b1ad6f52ca0259431ee90b11/); hyperliquid `0x9f255e...b6a17e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 4 deployments: hyperliquid [`0x49005d...6f5816`](./contracts/hyperliquid-999/0x49005d40b44de5f886b57f1c3f307b62a76f5816/); hyperliquid `0x9128a2...c6a3d6`; hyperliquid `0xa5b788...ec5583`; hyperliquid `0xa950a8...2aa037` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x496d50...6f2f40`](./contracts/hyperliquid-999/0x496d50ac1b149e0af4116ab021153c2a646f2f40/); hyperliquid `0x49be29...4eb8d8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4c81e8...2792ca`](./contracts/hyperliquid-999/0x4c81e8a35ad2b76c142016cfab8356a4672792ca/); hyperliquid `0xcbb9e4...b43656` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4dc4ad...ce3b3b`](./contracts/hyperliquid-999/0x4dc4ad1cde51c4a1e4a5b30a87c9c302e9ce3b3b/); hyperliquid `0x74aa6a...2bab4a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x509110...270ca4`](./contracts/hyperliquid-999/0x509110583cd97c7900cdf1e98f0b42fe53270ca4/); hyperliquid `0xbb9655...462325` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x543303...dadac4`](./contracts/hyperliquid-999/0x543303266113b64d03ec17b7ec3829f8cddadac4/); hyperliquid `0x8a59df...845a4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x5736fd...4bf3a5`](./contracts/hyperliquid-999/0x5736fd4c0bc99307391272c0a2aa31686b4bf3a5/); hyperliquid `0xde38ed...d218ff`; hyperliquid `0xeec3ef...30799e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5df933...73b451`](./contracts/hyperliquid-999/0x5df93330c2a799cb77d62f61842271c28e73b451/); hyperliquid `0x8085c6...0f5e28` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x61d077...77b0b5`](./contracts/hyperliquid-999/0x61d077a516dcbebf56121b6c0a9851254677b0b5/); hyperliquid `0xee6286...63d9f6`; hyperliquid `0xf768d0...f0f2d0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x65d389...aa5d34`](./contracts/hyperliquid-999/0x65d389daea19fc9a704b17a81f953d70ceaa5d34/); hyperliquid `0xe4d49e...d7ccb6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x70725d...857f1a`](./contracts/hyperliquid-999/0x70725df576badb27dcb8e5235be6376b6b857f1a/); hyperliquid `0xcafd6e...9990fc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x74487e...6fa10f`](./contracts/hyperliquid-999/0x74487ea81aa60c772b9d7dbe151dfd8d1f6fa10f/); hyperliquid `0xf377f2...52e6c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7d6659...50ecca`](./contracts/hyperliquid-999/0x7d66591a4eb57d25ad68f303d3c223744250ecca/); hyperliquid `0xf05a94...1b58c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x8576c0...53d233`](./contracts/hyperliquid-999/0x8576c0b29dc0105fcb97a3b40dab6514da53d233/); hyperliquid `0xeff352...7d8aad` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x94c000...2a1d4a`](./contracts/hyperliquid-999/0x94c000e8164a28e5a80d53c0bc2b266fca2a1d4a/); hyperliquid `0xdc7ad6...60d135` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x9fdb47...c92d8d`](./contracts/hyperliquid-999/0x9fdb47d4d3c2d64d8cb39ad5d23325755dc92d8d/); hyperliquid `0xbeb903...e891df` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xcda710...5c1642`](./contracts/hyperliquid-999/0xcda71089bdc5c7d6eafafe304902629ed75c1642/); hyperliquid `0xd8fb7e...97b3bc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x05427a...4db7c5`](./contracts/arbitrum-42161/0x05427aa001303115b14634673dd3ff53e94db7c5/); arbitrum `0x9efd0b...80253c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x067610...f44aa2`](./contracts/arbitrum-42161/0x067610dde86ab8aea2edb887b77ad928f3f44aa2/); arbitrum `0x1ef01c...dc31a8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0866af...11334e`](./contracts/arbitrum-42161/0x0866af9ff18072ee16d059082c7ea6170a11334e/); arbitrum `0x8005bf...191e37` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x09873c...44cdf1`](./contracts/arbitrum-42161/0x09873caead90d60cd84c9543e0d5cd772c44cdf1/); arbitrum `0x2cbb40...268177` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x13f093...8f3a4c`](./contracts/arbitrum-42161/0x13f093db3dc780a45994a4ac46182aa0978f3a4c/); arbitrum `0xefaebf...82aafb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1453b9...cca767`](./contracts/arbitrum-42161/0x1453b9642875b4df6e4867ee2782d92859cca767/); arbitrum `0x1d47ca...8e3688` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x14d9ed...a5e1df`](./contracts/arbitrum-42161/0x14d9edb7b3bf083cfda4e3c40352346df4a5e1df/); arbitrum `0x4ff8d6...abbba7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1ea6bf...07ae7f`](./contracts/arbitrum-42161/0x1ea6bfa5d0a350d3b9e2e22b213df5b79d07ae7f/); arbitrum `0x236a88...cdf331` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x27c6cf...384499`](./contracts/arbitrum-42161/0x27c6cf5e57b331ad8ffca727984639672e384499/); arbitrum `0x917d63...d3a538` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x299ebc...a200f1`](./contracts/arbitrum-42161/0x299ebcd583507d5d5ddd61fd5cc51d831da200f1/); arbitrum `0x8f1cb3...de2b87`; arbitrum `0xee1607...51702a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3363a8...420135`](./contracts/arbitrum-42161/0x3363a85c31cf13a96802e2935724232767420135/); arbitrum `0xc5b144...3eb261` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3447c5...023ab4`](./contracts/arbitrum-42161/0x3447c595061dd3c7a3a42f99917cefd44d023ab4/); arbitrum `0xc0e2b9...72e5aa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x346c29...22e322`](./contracts/arbitrum-42161/0x346c29a4d72356f9737c30be275e36215a22e322/); arbitrum `0x3c983b...6fc407` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x3b584a...48affd`](./contracts/arbitrum-42161/0x3b584a4119969984355a5ec05070b3c72948affd/); arbitrum `0x59f3f6...3679af`; arbitrum `0xc2b64d...efe6dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3cfd18...d2bcf4`](./contracts/arbitrum-42161/0x3cfd185151d2ccacbaf72191de142ac300d2bcf4/); arbitrum `0x72b054...179b9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x488440...7efce1`](./contracts/arbitrum-42161/0x488440b63558d2fc85b3283062af289ea97efce1/); arbitrum `0xbd8c05...7e8d34` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4d5d7d...b1ec86`](./contracts/arbitrum-42161/0x4d5d7db8028ac0a430f0194e023cd67350b1ec86/); arbitrum `0xc03226...e6f6ff` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x50e2d3...f06482`](./contracts/arbitrum-42161/0x50e2d315a26e2fc8f0ebb79425e5ed4b1df06482/); arbitrum `0x74cf10...f7f4a2`; arbitrum `0xe46c3b...000705` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x55e5ce...bad344`](./contracts/arbitrum-42161/0x55e5ce11fb4fd79f934a892e11b8ea1e85bad344/); arbitrum `0xc60d4c...b0604d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x58ec43...f553e8`](./contracts/arbitrum-42161/0x58ec4389edc6a94df2f8ff43a72b4eba63f553e8/); arbitrum `0x843329...49090b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x613545...155c23`](./contracts/arbitrum-42161/0x61354503329c56c9207fe5d9f46cc37cb1155c23/); arbitrum `0xabc7ec...1e2316` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x63cbb4...ba953f`](./contracts/arbitrum-42161/0x63cbb431b8a2ac2c149cb577befde98fc6ba953f/); arbitrum `0xb39a04...356e13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x66299c...50e436`](./contracts/arbitrum-42161/0x66299c8538cf6ebb8e10bd5aed954b2dfe50e436/); arbitrum `0xc61c90...e4ac73` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x69753e...7b8944`](./contracts/arbitrum-42161/0x69753e7372a4a6bd6f509261f1d0467fab7b8944/); arbitrum `0xc75dee...dc3b74` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6a0755...f04a13`](./contracts/arbitrum-42161/0x6a075515711b668296be6e8455df23b871f04a13/); arbitrum `0xc5463b...9f3080` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x75fa7c...62c2c6`](./contracts/arbitrum-42161/0x75fa7c51f02ed5ba327f0820cb3908f9d362c2c6/); arbitrum `0xdabb35...75171c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7a74a0...396a64`](./contracts/arbitrum-42161/0x7a74a00425c17ade906b34b38f5e8705c2396a64/); arbitrum `0xc5d824...a64d1b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7d79c8...4a09a3`](./contracts/arbitrum-42161/0x7d79c838cf3cda1bd3734be6b3c1a160234a09a3/); arbitrum `0xda6b3c...99a2d0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x862102...96c200`](./contracts/arbitrum-42161/0x862102ce12c72129b70460eb6cbdbded6396c200/); arbitrum `0xc00e16...aea7b3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x889991...fdf773`](./contracts/arbitrum-42161/0x8899910a8c47e177c574454e8249f5e9dcfdf773/); arbitrum `0xf12f87...9b00e3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x89c45b...c81cd4`](./contracts/arbitrum-42161/0x89c45b79c03ce6284ca948d0223e102810c81cd4/); arbitrum `0xd85cea...d0cb71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x988297...8cd9ce`](./contracts/arbitrum-42161/0x9882975617e8ef77520262cb0add36c2598cd9ce/); arbitrum `0xa28557...d1dc98` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9e5785...42898c`](./contracts/arbitrum-42161/0x9e578563d7e47adf00492b7e392e50b77c42898c/); arbitrum `0xc96648...66d2c2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc2f10f...9f87ea`](./contracts/arbitrum-42161/0xc2f10ff8fd1deb771d46aa892a7d58e3e99f87ea/); arbitrum `0xca5bff...c9cce5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | [`0xc71ba0...bc590b`](./contracts/arbitrum-42161/0xc71ba0e3c1fb9cbcb15fbc677e78c99ac1bc590b/) | ⚠️ Unaudited |
| VaultManager | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x30454c...9ef4a5`](./contracts/hyperliquid-999/0x30454c49b1d5b4366afca609bb7fe13cb39ef4a5/); hyperliquid `0xa6a24e...8d96d2`; hyperliquid `0xe17545...b34edf` | ⚠️ Unaudited |
| VaultManager | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x48dc37...525a60`](./contracts/hyperliquid-999/0x48dc377fc48823f4e1eeb47039944900cd525a60/); hyperliquid `0xd1c8dc...23ebcb` | ⚠️ Unaudited |
| VaultManagerAdmin | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2e2b6b...0d9db5`](./contracts/hyperliquid-999/0x2e2b6b658dc472188a1f8d39997bc5b1930d9db5/); hyperliquid `0x437c94...66e4ba` | ⚠️ Unaudited |
| VaultManagerAdmin | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6bf8b2...40b9dc`](./contracts/hyperliquid-999/0x6bf8b2d571333685fb9c1b5d997e126aa040b9dc/); hyperliquid `0x6dca76...3380a2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (128)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x083050...59ab73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bcf1f...ffbc44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3893b2...1455fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4577f6...5fd0a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62cc48...d58265` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c3c1a...714d62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x725004...a246a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaed44e...bf31f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4ae01...0a71ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf36c7d...5c46b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfce1db...1e197b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x068759...1d33ef` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x143a2d...2d7c66` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x18f79c...880f13` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x256a50...d1195d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2b2f1b...8c6f87` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2f5d93...c80820` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x310ed3...1321fb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x358ac2...0f0fce` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3b76ba...3a0621` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x406f26...385054` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4d312e...a06df5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x523bd6...cf979c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x594d7b...69850a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5b0e7f...b2c995` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x650ea9...c98cc5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x68aa54...8cc4eb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x68ad5a...3afd88` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6b2b46...5bebc4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6bd6a0...baf0b1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6e2f4f...90608e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6ea74d...34a4e8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x75c80a...1efe4d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x75d13b...ab997c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7b5e2d...ff2f82` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7d05a1...97df74` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7d507d...b6d273` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8290ef...a8bc82` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x868ddb...512b60` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x884a7e...ac7338` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8ae11b...c08b59` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8ce286...a0a400` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8e153f...87ceb4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x92ae81...9f62e7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa3af27...c22086` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb003ff...36fa3e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb16fd8...205b6f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb869de...8573b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc6fbb0...d5468e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd734ef...f3b0e3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xde1f97...8dc75c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xde3201...57d228` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xde3e20...c963e2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe6d860...d0eb5d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xea2c3f...3f0b4f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xeb4a4b...b00fcf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf2a7e3...00206b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf3e5e2...1dafc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0530f9...f0805d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x092ece...1b40a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f812e...aeeb07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x14352d...d0e164` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17ee33...fe87fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1dff18...5506da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1eaf47...ce057d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2614dd...567fe8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x26c45f...61055b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2a1745...104ee9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d0741...5b54bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3056d6...0d78a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x347eae...0ade91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x36dd11...464f08` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37ff35...01704b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d502f...cfd685` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4325d1...15962f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43aeef...640695` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b2365...6fea36` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d2000...340e65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4eadd7...5b93ad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5dc9e7...f24312` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5dcd79...b607b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x616e10...afd5b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x68387f...af7a03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f7a38...3da3be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x730922...3b54f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x730be4...62f6e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7689ba...ab133a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x76c43c...d2b327` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x86c3f3...8894d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x88c66b...e994c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x88d4b2...f939a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ad3e1...dda865` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c488f...6833b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d7c63...d8c9f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9032c1...45c9c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x95c40e...3fddf6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97d501...4c5086` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b30af...3b1181` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9be0ec...e86993` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f907c...06eb2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa48391...114dac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6dc78...74d19b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaae0ab...f058c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab0776...89bfdd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xabdd30...291e9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaed44e...bf31f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf89e8...4062fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2db8e...0ad762` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb30693...8e8855` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb916a2...83bf18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba5f28...8a0293` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbca7c5...d4b7b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf2ff9...8d4c10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc1169a...9dcf4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc17f76...1ce559` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc25987...d32d85` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc5b919...55c514` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc927fe...1e14c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd0f26d...44e2c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd46cf5...372699` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe1568a...0781b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe1a201...9db69b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebd56c...4fe5e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf37b1a...1ea557` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf40859...d4c83c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7c693...0566aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc1dcc...e3e010` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfe0dcb...18eb25` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Harmonix Finance - Zenith Audit Report.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Harmonix%20Finance%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-09 | fresh | Direct | contract_name | 17 | high |
| [HarmonixFinance-Hyperliquid-Security-Review.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/HarmonixFinance-Hyperliquid-Security-Review.pdf) | Hyperliquid | Audit | 2025-05 | aging | Direct | contract_name | 17 | high |
| [Verichains Public Report - HarmonixFinance.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Verichains%20Public%20Report%20-%20HarmonixFinance.pdf) | Verichains | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Report - Kelp Delta.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Verichains%20Public%20Report%20-%20Kelp%20Delta.pdf) | Verichains | Audit | 2024-08 | aging | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 285 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=41

Zero-match audit list:

- [14731] Verichains Public Report - HarmonixFinance.pdf

Fork inheritance lineage and inherited audits are included when available.
