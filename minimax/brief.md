# Agentic Audit Brief: Minimax

## Project Overview

- Project: Minimax (`minimax`)
- Website: [https://www.minimax.finance](https://www.minimax.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:33.129Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc, fantom
- Contract surface: 245 unique implementations (311 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 21 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 15 cross-contract reference(s). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 336; live-surface contracts included: 311 (77 live, 234 unknown).
- Excluded by liveness: 25 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/29 (0.0%)
- Deployed-live implementations: 29 of 245 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/29
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 216
- Unique implementations: 245
- Raw deployments: 311
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Market | unknown | bsc | n/a | 3 deployments: bsc [`0x228fef...7837ed`](./contracts/bsc-56/0x228fef9ed32ca3aa5c99639ee42c23d6807837ed/); bsc `0x2ba4d0...afcf35`; bsc `0x7e8dc5...7d97f3` | ⚠️ Unaudited |
| Migrations | operational_periphery | bsc | n/a | 5 deployments: bsc [`0xc9d864...7563f9`](./contracts/bsc-56/0xc9d8648a39addcf02f3f73b4cc7fa273e97563f9/); bsc `0xeb1832...efb93b`; bsc `0xeceeac...24efce`; bsc `0xf0ed2b...a186e7`; bsc `0xf1f7bc...e54003` | ⚠️ Unaudited |
| MinimaxAdvanced | unknown | bsc | n/a | [`0x50e4ed...e3c83c`](./contracts/bsc-56/0x50e4ede716d977c53836a688851998c773e3c83c/) | ⚠️ Unaudited |
| MinimaxBase | unknown | bsc | n/a | [`0x529476...0c8543`](./contracts/bsc-56/0x529476965f5de94d59139232c6537bc5210c8543/) | ⚠️ Unaudited |
| MinimaxMain | unknown | bsc | n/a | 25 deployments: bsc [`0x01db71...808c7a`](./contracts/bsc-56/0x01db71fb8d8bb666d76e584fbf253b09db808c7a/); bsc `0x0494cf...fdb6cf`; bsc `0x121cbe...09fdaf`; bsc `0x280a58...964e96`; bsc `0x2cac01...9dc3d8`; bsc `0x314a14...3feac0`; bsc `0x31afd7...8c37db`; bsc `0x377c06...e8280d`; bsc `0x39174d...4072c4`; bsc `0x3eea95...bf71ef`; bsc `0x5a3b24...77f73d`; bsc `0x62adbe...1d0bf6`; bsc `0x62d24c...0bf7f0`; bsc `0x69436e...b6d803`; bsc `0x6d2fc4...aee44f`; bsc `0x759724...850e31`; bsc `0x7f0a34...cf3343`; bsc `0x868515...71a52a`; bsc `0x92de2b...eb0852`; bsc `0x9d3cd7...193007`; bsc `0xa0c37e...8e5c2a`; bsc `0xa65b6a...656abb`; bsc `0xb55c22...f759c4`; bsc `0xc3e86f...9ac140`; bsc `0xd9e4d8...f6520e` | ⚠️ Unaudited |
| MinimaxMain | unknown | bsc | n/a | [`0x304734...2b8bf6`](./contracts/bsc-56/0x3047346280247cc3314c66fd5e400877f62b8bf6/) | ⚠️ Unaudited |
| PairTokenDetector | unknown | bsc | n/a | [`0xab221c...514be9`](./contracts/bsc-56/0xab221cfd18470bca955a13b8d8df8a371a514be9/) | ⚠️ Unaudited |
| PositionBalanceLib | unknown | bsc | n/a | 2 deployments: bsc [`0x202c0f...cce45e`](./contracts/bsc-56/0x202c0ff74b1666b79d68d689c6e0a8cdbccce45e/); bsc `0x592c07...37a2c5` | ⚠️ Unaudited |
| PositionExchangeLib | unknown | bsc | n/a | [`0x6aff47...f32bf5`](./contracts/bsc-56/0x6aff4762317661633268e35ce59d883ab7f32bf5/) | ⚠️ Unaudited |
| PositionLib | unknown | bsc | n/a | 3 deployments: bsc [`0x4648d2...abe3c9`](./contracts/bsc-56/0x4648d23395bfa19dc681ac7506e99e2f0dabe3c9/); bsc `0xc5238f...824875`; bsc `0xe2bbe8...3c5a46` | ⚠️ Unaudited |
| ProxyCallerApi | unknown | bsc | n/a | 2 deployments: bsc [`0x7e5c19...6da357`](./contracts/bsc-56/0x7e5c1998651181e3306b76faa0223512b16da357/); bsc `0xa2aee4...856dfd` | ⚠️ Unaudited |
| SingleMarket | unknown | bsc | n/a | 2 deployments: bsc [`0x8b0f5f...c23a78`](./contracts/bsc-56/0x8b0f5f4d92afc0a9ecad1c92b3fd8ba84dc23a78/); bsc `0x9c2354...13ed09` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x0a4221...d327a7`](./contracts/bsc-56/0x0a42212ec73469c48bbe567ad6d32e0687d327a7/); bsc `0x43acdb...013795` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 15 deployments: bsc [`0x0dc29d...424f94`](./contracts/bsc-56/0x0dc29db18b864d2c011e28a771fe727423424f94/); bsc `0x3b0d06...c70ed8`; bsc `0x3e3a0d...f13e41`; bsc `0x454bf0...ff6c15`; bsc `0x4b73b8...a24d28`; bsc `0x4e60fa...f08a0e`; bsc `0x5754e2...68a5af`; bsc `0x59d166...f5a04a`; bsc `0x600f4e...45ea71`; bsc `0x94f4ee...fc5e43`; bsc `0xa889ab...1ef08b`; bsc `0xab4ac0...967140`; bsc `0xb5c72e...b76e5c`; bsc `0xe977b8...eef403`; bsc `0xfb2b9e...f04d3f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x194fce...75b0a3`](./contracts/bsc-56/0x194fce12b3bd0ec19bd40316a130e7433175b0a3/); bsc `0xcc91df...d07865` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x1a63c7...644a2d`](./contracts/bsc-56/0x1a63c7854cd65a26eb64a80c02141c51c2644a2d/); bsc `0xae1b3a...7b1f9b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x1ad6ba...da09d1`](./contracts/bsc-56/0x1ad6badfc1f2091d7aa5ce9fe3399560feda09d1/); bsc `0x360d88...e41494` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x1e7391...38146b`](./contracts/bsc-56/0x1e73917bd53921c93a8958a3b7172b474838146b/); bsc `0xf661cf...4acbc1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x284b03...a273d7`](./contracts/bsc-56/0x284b033ac0958c623a6e41e3338163d7daa273d7/); bsc `0x5ced0d...54f6a1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x467440...f06d1f`](./contracts/bsc-56/0x467440a9552b46dcc27477eace2e39a6f7f06d1f/); bsc `0x5e8ce9...03375e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x46a611...271fe8`](./contracts/bsc-56/0x46a6112b370f7fad65181f756a7d3ee612271fe8/); bsc `0xe203ba...9b035b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x48a6f8...9efae6`](./contracts/bsc-56/0x48a6f878ca955de85de5e6193e87a7aba39efae6/); bsc `0x57429c...975672` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x53aaeb...ce2659`](./contracts/bsc-56/0x53aaeb637dbe20d6f1539ff6936afebe59ce2659/); bsc `0xf8e0ec...da8e4b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x540ac9...8c3414`](./contracts/bsc-56/0x540ac962466d386ae39eb3ba28a43a5e038c3414/); bsc `0x86d3a8...596ffd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x6a1905...f01c2f`](./contracts/bsc-56/0x6a1905b97481a86c2f0146f95b66e0a5c3f01c2f/); bsc `0x9c2b70...a90820` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x6d722c...57afe0`](./contracts/bsc-56/0x6d722caf519c4699c91584214c364ab26357afe0/); bsc `0xbbb2f1...fe8a72` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x99ce0e...43fb96`](./contracts/bsc-56/0x99ce0efaf271cc350def61b7c95d0c959543fb96/); bsc `0xa4c495...f4a328` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xa7736a...f5eb91`](./contracts/bsc-56/0xa7736a9840191467fb965571887bed1dd4f5eb91/); bsc `0xfdde74...67e6cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xe6600d...46ce94`](./contracts/bsc-56/0xe6600df7da38ddfcc901a91b9bdd7daf9f46ce94/); bsc `0xeb3a7f...712fa5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (216)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0027f3...2013b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01a78c...708108` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01cd0f...2d8cd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01e413...89e0c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x031c47...d59674` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x037bea...b476f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04c960...862cc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x060a1e...a97516` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0617b0...3de200` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06b619...a3d5f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08f51c...8fea2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x096caf...46a9c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a8ab3...52be5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b1420...a5ab3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b5378...cd3c9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0bc3da...82b537` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d8be2...bdcc5d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f51cd...c196af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f5db7...1d7316` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x104971...3c7532` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x112425...ba1071` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19b41b...44e88e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a2c1c...8aec27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b5a52...0fb58f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1baea2...4594b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d03cf...9dfd35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d3d9e...834bac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d8300...9c71c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21a0a0...00a914` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x230c22...702498` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23115a...7f02ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25ff37...54d5b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26b526...51db25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26bd35...802c73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2710c2...a9a91f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x284eb4...1cf418` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28d0c6...10826f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29d6cb...160e4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b109b...89ddb3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ce212...a7869c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fa0a5...bb893b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30f878...dbe67e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x34e4ac...538495` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x34f09b...3e9ac7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3612e7...3fab3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x370133...e9ca19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37217b...791a4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38992f...ab6948` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38a760...271488` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38c2cd...88c62b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a158f...d28dad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e3790...97b614` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fb18b...880495` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42fd3e...328d89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x459807...bb0ec7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46da54...6f16a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4839ff...164178` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x497b4d...97d686` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b0006...250939` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cc0f0...c7cfe3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cd2ed...339c93` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cda51...97ae43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ff558...1cbe18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50568a...2082bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55a724...38a367` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x564b52...96aceb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x565237...6fd1a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x568178...4ba288` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5810d0...0c35c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x588acf...f68141` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58bcae...9a8015` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c771a...8e2933` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ea7ec...f09858` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x602055...af7fd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62fe8f...a2d383` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6665d6...2bebeb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x669b37...bce6b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66e70e...d6c422` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x699dc9...0b2e79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6afdba...d8a4d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b2633...f23cd0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f8c13...92f348` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x701517...7c12c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70d256...4a816c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x720b43...162da0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73955e...a46275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x757922...bad58e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x789ae9...c58f8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79318b...9e45d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b639f...f8e7b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7cfbfd...33229a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x815a06...04c8ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x841643...f9b419` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84297a...15507a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x85cf8d...195bae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86ce5c...54ba49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86fde5...631058` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x875468...e9b1e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87704f...392d1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88023a...6f083f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88a5c1...773645` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89bbef...33c150` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a72fc...aabefa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c56bc...e7dabd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e46d7...15fac0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x908f16...41990c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9092b8...cf015e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x909322...d6c3d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91cc3c...f87099` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91f62c...751dc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9390ce...0c9817` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9398f1...b70e3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94c920...9eb338` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x955dfa...3b7ec0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x973148...e13255` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99db96...8c03bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9cefe0...6ca0c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d7439...0daa98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ddcb9...131c59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ecabd...d3960a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ef57a...94ade7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2e98f...821ede` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa30230...76adb5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3edd9...c50af2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa585e1...7a3952` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa68f26...6fa05c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa8b6d3...b41993` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa8fdfd...32f561` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9917c...7c2af3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab104d...a999c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabb441...ae9af2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac7c29...176310` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad3f75...c996ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaddee4...2c2b8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf6f16...df9e57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafc332...b13cba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb19e40...bad714` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2fef5...25a91c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5d698...8be88f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb6f240...ef343a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb709e2...937943` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb86a2e...284594` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8bcc4...02271f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb921cb...2c82c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbaa555...9fbde2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb3006...bf73d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbcfc48...b9510d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd40ed...32a85c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf729e...aa8725` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf79f5...86b9e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfbab2...9e4c37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3dbf9...1e9e61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4b0f1...ff457e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4ce07...5b8624` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc575b9...93aecb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5f9ea...677d28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6e289...dccf81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6e510...d8e878` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc708b0...a85ca8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7c1e3...c56fd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8e732...a715d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc92196...2c2e45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9c8b6...6d0465` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbb93e...262e05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbc298...0b1316` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc5624...df695c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd4a88...a52c23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd511f...30c14b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcead2a...cf1788` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1035c...28d74e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3698c...e559f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3f452...1af64b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd613c5...b15d0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6622b...1ac88a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7e185...09ec0d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8c97a...61c84d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc7ce5...0a7384` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdcaeae...404faa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd8e78...ed7d1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe02b89...f261e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe04a58...1b6f67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0dc50...50274c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3be84...d4f2f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4e2dc...876147` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5cf85...09a70c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe70a5f...ade98f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe80d68...e55225` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8a6c9...1f5f62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8fb30...2ee14f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe91122...26b6ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe96274...1b9448` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea4c24...1e22a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecc4fa...9e8958` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed4856...496b45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed88bf...424514` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed96af...cec060` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee46ea...b1ff74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee7954...664fd7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee8c6f...12c0cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef0670...99e5e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0cf42...919b2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf18181...22da75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2576c...3083ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3977d...4ff8b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf44e92...c249a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf55a04...49cc4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5c3fe...344ca7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf672a8...014e94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf679c5...96b156` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf84e2e...aba878` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa4108...36e3f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa5781...802038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc6b34...3f5fa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe2697...9caf5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff9c9d...00251d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 2 deployments: fantom `0x2274fb...f1833b`; fantom `0x2e3416...898f26` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hacken.io/audits/minimax-finance/sca-minimax-finance-bep20-staking-vesting-feb2022](https://hacken.io/audits/minimax-finance/sca-minimax-finance-bep20-staking-vesting-feb2022) | Hacken | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x228fef...7837ed`](./contracts/bsc-56/0x228fef9ed32ca3aa5c99639ee42c23d6807837ed/) | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc9d864...7563f9`](./contracts/bsc-56/0xc9d8648a39addcf02f3f73b4cc7fa273e97563f9/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x50e4ed...e3c83c`](./contracts/bsc-56/0x50e4ede716d977c53836a688851998c773e3c83c/) | MinimaxAdvanced | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x529476...0c8543`](./contracts/bsc-56/0x529476965f5de94d59139232c6537bc5210c8543/) | MinimaxBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01db71...808c7a`](./contracts/bsc-56/0x01db71fb8d8bb666d76e584fbf253b09db808c7a/) | MinimaxMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x304734...2b8bf6`](./contracts/bsc-56/0x3047346280247cc3314c66fd5e400877f62b8bf6/) | MinimaxMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xab221c...514be9`](./contracts/bsc-56/0xab221cfd18470bca955a13b8d8df8a371a514be9/) | PairTokenDetector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x202c0f...cce45e`](./contracts/bsc-56/0x202c0ff74b1666b79d68d689c6e0a8cdbccce45e/) | PositionBalanceLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6aff47...f32bf5`](./contracts/bsc-56/0x6aff4762317661633268e35ce59d883ab7f32bf5/) | PositionExchangeLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4648d2...abe3c9`](./contracts/bsc-56/0x4648d23395bfa19dc681ac7506e99e2f0dabe3c9/) | PositionLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7e5c19...6da357`](./contracts/bsc-56/0x7e5c1998651181e3306b76faa0223512b16da357/) | ProxyCallerApi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8b0f5f...c23a78`](./contracts/bsc-56/0x8b0f5f4d92afc0a9ecad1c92b3fd8ba84dc23a78/) | SingleMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 226 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13496] hacken.io/audits/minimax-finance/sca-minimax-finance-bep20-staking-vesting-feb2022

Fork inheritance lineage and inherited audits are included when available.
