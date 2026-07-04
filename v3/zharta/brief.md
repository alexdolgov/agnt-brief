# Agentic Audit Brief: Zharta

## Project Overview

- Project: Zharta (`zharta`)
- Website: [https://www.zharta.io](https://www.zharta.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:18.053Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: ethereum
- Contract surface: 114 unique implementations (235 raw deployments)
- DeFi Llama TVL: $2.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Zharta is an NFT lending protocol that allows users to borrow against their NFTs as collateral. It provides instant liquidity without requiring users to sell their assets.

### Architecture

The protocol consists of a single product family with one core contract, indicating a monolithic architecture where all lending logic is contained within a single contract.

## Contract Surface Quality

- Indexed contracts: 235; live-surface contracts included: 235 (0 live, 235 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 114 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/26
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 88
- Unique implementations: 114
- Raw deployments: 235
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 2 | 7.7% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LendingPoolPeripheral | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1f88e8...2a7c41`](./contracts/ethereum-1/0x1f88e85ffd826081d59f295a7335cf7de92a7c41/); ethereum `0x5b31e4...8386ad`; ethereum `0x8d0f9c...94badb`; ethereum `0xa5df70...e5ea10` | ✅ Audited |
| Loans | unknown | ethereum | n/a | 11 deployments: ethereum [`0x033870...d5a82c`](./contracts/ethereum-1/0x033870261728bd0fd1a35649491f0b7842d5a82c/); ethereum `0x0a5180...e1d0ab`; ethereum `0x1693c2...da3b09`; ethereum `0x1cf3da...7246ee`; ethereum `0x3f8ac2...b00f6c`; ethereum `0x5f5a2d...2076a8`; ethereum `0x79c21c...8310f0`; ethereum `0x9c27e6...e381eb`; ethereum `0xaf2f47...788636`; ethereum `0xb7c8c7...725ef2`; ethereum `0xb9fbd1...bb1b29` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CentrifugeOracleAdapter | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4819ce...07bc61`](./contracts/ethereum-1/0x4819cec6cddd16f13fc2351193672b4f1e07bc61/); ethereum `0x5559cb...bc7409`; ethereum `0xb3fa00...f418d9` | ⚠️ Unaudited |
| LiquidationsOTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x06becc...8ad0bd`](./contracts/ethereum-1/0x06beccd91eb221011a43ac0511c84871ad8ad0bd/); ethereum `0x4c852d...e3c9ed` | ⚠️ Unaudited |
| LiquidationsPeripheral | unknown | ethereum | n/a | 5 deployments: ethereum [`0x04fc02...873ecc`](./contracts/ethereum-1/0x04fc02deeee6f4fa51e11cc762e2e47ab8873ecc/); ethereum `0xa2e592...5834ab`; ethereum `0xc7edac...849512`; ethereum `0xce1818...2da7f2`; ethereum `0xd8b492...58520f` | ⚠️ Unaudited |
| LoansCore | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5bb5f5...ac8c7b`](./contracts/ethereum-1/0x5bb5f52d11aba5d08d6cf715b64142e91cac8c7b/); ethereum `0xe6c79b...c5189c` | ⚠️ Unaudited |
| LoansOTC | unknown | ethereum | n/a | [`0x285e17...a894c9`](./contracts/ethereum-1/0x285e17700867c8f46548c955d7e0d9b2d2a894c9/) | ⚠️ Unaudited |
| LOTM Renting Protocol Contract | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0bce64...b555ae`](./contracts/ethereum-1/0x0bce649673e5b6221cf3100d8e5333d890b555ae/); ethereum `0x1f3af6...865e23`; ethereum `0x25a471...486d95`; ethereum `0xa4f85d...20c57c` | ⚠️ Unaudited |
| LOTM Renting Protocol Vault Contract | unknown | ethereum | n/a | 4 deployments: ethereum [`0x9f2d2f...a30a6c`](./contracts/ethereum-1/0x9f2d2fe35cc5b030d2a4d96f0ed6d264c5a30a6c/); ethereum `0xb2a6ae...439164`; ethereum `0xf73108...661a7a`; ethereum `0xfd586c...b0c2ad` | ⚠️ Unaudited |
| P2PLendingControl | core_logic | ethereum | n/a | [`0xa11704...a5c062`](./contracts/ethereum-1/0xa11704b3dd545dc0771d9a9c5572064db2a5c062/) | ⚠️ Unaudited |
| P2PLendingErc20 | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x12c1c1...d7b23d`](./contracts/ethereum-1/0x12c1c1aeca59d19230e7e86f8455c4ae97d7b23d/); ethereum `0x3257cd...116705`; ethereum `0x3f9eee...1e9a3a`; ethereum `0xc4cb90...1290c7`; ethereum `0xcf4364...b872ee` | ⚠️ Unaudited |
| P2PLendingNfts | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x5f1943...9deda7`](./contracts/ethereum-1/0x5f19431bc8a3eb21222771c6c867a63a119deda7/); ethereum `0xa5bc43...73e496` | ⚠️ Unaudited |
| P2PLendingSecuritizeErc20 | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0c14ba...64efd8`](./contracts/ethereum-1/0x0c14ba3eb1edd16cd9f4015b461c21fcf264efd8/); ethereum `0xa0a505...02531d`; ethereum `0xa554b9...e67e48`; ethereum `0xa86be5...925ff3`; ethereum `0xbfd975...fe6c32` | ⚠️ Unaudited |
| P2PLendingSecuritizeLiquidation | unknown | ethereum | n/a | [`0x25a2d5...891457`](./contracts/ethereum-1/0x25a2d5d3e571478373d1d8e5c7870dbbaf891457/) | ⚠️ Unaudited |
| P2PLendingSecuritizeRefinance | unknown | ethereum | n/a | 2 deployments: ethereum [`0x70db61...256da8`](./contracts/ethereum-1/0x70db613d2be5678e47f127f331471d6f99256da8/); ethereum `0xca1e2f...242ac2` | ⚠️ Unaudited |
| P2PLendingVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x08ae35...df5d22`](./contracts/ethereum-1/0x08ae358060c6af60710eafda7b9f06c375df5d22/); ethereum `0x532341...d7636d`; ethereum `0x9b8ea6...f6d05b` | ⚠️ Unaudited |
| P2PLendingVaultedErc20 | core_logic | ethereum | n/a | 31 deployments: ethereum [`0x051c32...7722aa`](./contracts/ethereum-1/0x051c3253b791abd27fb1c7a9a247c531ae7722aa/); ethereum `0x122722...b6508e`; ethereum `0x132515...ada3e2`; ethereum `0x179fd2...0d0da8`; ethereum `0x196543...4dc2c9`; ethereum `0x1a5b96...c0d961`; ethereum `0x1a7113...5562c4`; ethereum `0x235e4c...cb6719`; ethereum `0x25d504...ada35c`; ethereum `0x2a2fec...9f6d5d`; ethereum `0x34eb34...c04bbc`; ethereum `0x4e33a4...b6ff35`; ethereum `0x5a403e...757598`; ethereum `0x5dc4f0...7687ff`; ethereum `0x5e1f36...e20718`; ethereum `0x644cb6...09ff52`; ethereum `0x72ed89...c21514`; ethereum `0x735775...f190d9`; ethereum `0x8107f6...7345b6`; ethereum `0x84cf87...705d2f`; ethereum `0x8963df...6376d1`; ethereum `0x8f5e0e...50d74f`; ethereum `0xa48459...9ed969`; ethereum `0xc5fe6b...3e414e`; ethereum `0xdef19b...8a1768`; ethereum `0xf0c6d8...05387c`; ethereum `0xf1aaff...5d9397`; ethereum `0xf6cd03...9817fe`; ethereum `0xf7ea0e...a71419`; ethereum `0xf9e78b...70a079`; ethereum `0xfed19f...ea6841` | ⚠️ Unaudited |
| P2PLendingVaultedLiquidation | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x4cdc09...cbdb75`](./contracts/ethereum-1/0x4cdc097c838fa7bc8ec6917d9d5f07f52bcbdb75/); ethereum `0xa311a5...36eb61` | ⚠️ Unaudited |
| P2PLendingVaultedRefinance | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x8850de...9c7519`](./contracts/ethereum-1/0x8850dea069963fafdd7723e7d4a5854d639c7519/); ethereum `0xafcc36...56d0f9`; ethereum `0xf70051...a016a1` | ⚠️ Unaudited |
| SecuritizeProxy | unknown | ethereum | n/a | 5 deployments: ethereum [`0x20a3a7...67cd1b`](./contracts/ethereum-1/0x20a3a745a0be8836d49ce431f647db6ce767cd1b/); ethereum `0x2de123...c3e59d`; ethereum `0xc4b436...bd12f8`; ethereum `0xcb47c6...2ed399`; ethereum `0xee6749...794fbf` | ⚠️ Unaudited |
| SecuritizeRegistrarConnector | unknown | ethereum | n/a | [`0xf06eab...691a7b`](./contracts/ethereum-1/0xf06eab34f0e80f2dafaaba9170ac6e7890691a7b/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 19 deployments: ethereum [`0x0d46c4...c08108`](./contracts/ethereum-1/0x0d46c4ab996d8fd0fecee3edbe2557e3fac08108/); ethereum `0x14433c...3e5d0d`; ethereum `0x3d63f6...6a6d4c`; ethereum `0x3fe48d...795f2e`; ethereum `0x5be916...87ef27`; ethereum `0x5d9246...9b8d8d`; ethereum `0x6474ab...28f308`; ethereum `0x713468...b01904`; ethereum `0x7767a2...418b20`; ethereum `0x809d7a...0b8424`; ethereum `0x8445b9...9a2cf5`; ethereum `0x99a4ec...a279ad`; ethereum `0xaeea0f...867f7a`; ethereum `0xb5f755...f5da46`; ethereum `0xc9607c...4e655b`; ethereum `0xcb1bd8...a446e7`; ethereum `0xd74d51...ec8bcb`; ethereum `0xe3c959...0ee271`; ethereum `0xee5c14...01fdbc` | ⚠️ Unaudited |
| xPrismOracleAdapter | unknown | ethereum | n/a | [`0x210f81...6e5b4e`](./contracts/ethereum-1/0x210f81e80b0243cb23a1bbcbb02c980c2d6e5b4e/) | ⚠️ Unaudited |
| Zharta Renting Contract | unknown | ethereum | n/a | 10 deployments: ethereum [`0x049dbd...0ba42c`](./contracts/ethereum-1/0x049dbde43b4c030191a63b70e16eff7fd50ba42c/); ethereum `0x2dbae2...72ea73`; ethereum `0x2ef699...284d94`; ethereum `0x53ea44...ae0079`; ethereum `0x5a9168...60c01c`; ethereum `0x65890a...50b2aa`; ethereum `0x7c9ba0...8c11f8`; ethereum `0xbef115...6848ef`; ethereum `0xdaec5a...f08123`; ethereum `0xe8d846...3a3875` | ⚠️ Unaudited |
| Zharta Renting Vault Contract | unknown | ethereum | n/a | 10 deployments: ethereum [`0x102c16...e89a47`](./contracts/ethereum-1/0x102c160714119e32b0f82a597b8a9fa7cfe89a47/); ethereum `0x2f7a6f...79401c`; ethereum `0x433744...d3d923`; ethereum `0x716dcb...d5d61f`; ethereum `0x91e67f...ffb2c7`; ethereum `0x94fa19...8a30b2`; ethereum `0xb17c79...fcc72a`; ethereum `0xb79a0f...c3e318`; ethereum `0xce52b9...842345`; ethereum `0xf35053...987faa` | ⚠️ Unaudited |
| Zharta RentingERC721 Contract | unknown | ethereum | n/a | 10 deployments: ethereum [`0x29193d...9279b9`](./contracts/ethereum-1/0x29193d61fc8d9ec84b61643aad2a4153999279b9/); ethereum `0x4f0ed3...9bcb5d`; ethereum `0x6133cf...942b29`; ethereum `0x702e32...8974f3`; ethereum `0x9068a1...38af24`; ethereum `0x97d03c...2f1087`; ethereum `0x9951cf...3a5202`; ethereum `0xcbe9b0...aba89f`; ethereum `0xce898d...9c9d7a`; ethereum `0xd59e84...9eefb0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (88)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x017d4f...0cba7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01ebc2...81300b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02325e...1e419e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0513b1...19fefb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x075fee...92c774` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b2d6a...91cc45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c0726...663690` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cb2ed...3d175b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10d62e...cc36b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14cb2d...3fdfaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1814b0...0de070` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e0cdc...1baa5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e1ec9...4fa237` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fff95...23851d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24a020...306a5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2689f1...51d78a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x279902...ac3328` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x279fc5...1bde32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27d45e...be3659` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c6739...a33dd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34c35c...ed00cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35b854...df24a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37ecc3...7714f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a7eef...fb5d83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bd148...f40f85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e0265...c88373` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x409f6c...05d3ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4170cc...0e2a34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x424c83...feec93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44d2f0...349fe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x454d32...f92d79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x483efb...aaed98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bea7f...6d64a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c74ed...1ef75c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4eb10b...5f8453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f74b4...442176` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x539353...25446c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53de37...e30ce9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x573229...8829cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x580f37...4a67c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61be8b...8eff34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x640c9c...d28ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x655c60...b41b80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x678188...2912fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f93d5...38f9e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ca34c...31dfed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85abce...ea79c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86e489...a86074` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x872562...4ed2f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a2b60...3eeb5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ae9fa...4ce0b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d84b3...0c2562` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dffcb...13cacd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e97e4...eee82c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f69f1...53a8d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x949250...06c144` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cf98d...9aed23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d6820...b3aaba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f9b4e...2a5c26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa53cce...3bc796` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa79da8...fc29c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaaa9f1...045ee1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb482f7...0f093c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4bd8c...e9e222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb51675...745637` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5d3e7...02d724` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb6ebd...4ee831` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf206c...357fdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc22b02...da5f85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9eb98...563108` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca5473...191e50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd59dad...002552` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd62aab...b4e75b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda7f77...62dbfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde7b91...367a09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde9106...1e1e81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf96d6...bfe704` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3af99...00eb14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3d6b3...968d72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe62f72...42f2bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe96f28...b1851d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea15ad...a44e8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1a2af...544401` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4fbc8...c85ff9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfab717...01fbf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc4563...3b49ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcc3ab...a05b87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd1c9a...4948cb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Zharta_SCAudit_Report_Final.pdf](https://raw.githubusercontent.com/Zharta/protocol-v1/97ad0167fff89b8f4f8d70ecef76869ca89b8b63/docs/audits/Zharta_SCAudit_Report_Final.pdf) | yAudit | Audit | 2023-01 | stale | Direct | contract_name | 2 | n/a |
| [Zharta - Audit Report Final.pdf](https://raw.githubusercontent.com/Zharta/protocol-v1/97ad0167fff89b8f4f8d70ecef76869ca89b8b63/docs/audits/Zharta%20-%20Audit%20Report%20Final.pdf) | yAudit | Audit | 2022-05 | stale | Direct | contract_name | 2 | n/a |
| [zharta-oct-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/zharta-oct-25(Final).pdf) | Hexens | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 114 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Zero-match audit list:

- [14183] zharta-oct-25(Final).pdf

Fork inheritance lineage and inherited audits are included when available.
