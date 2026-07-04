# Agentic Audit Brief: Trevee Earn

## Project Overview

- Project: Trevee Earn (`trevee-earn`)
- Website: [https://rings.money/](https://rings.money/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:02.068Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: ethereum, plasma, sonic
- Contract surface: 55 unique implementations (140 raw deployments)
- DeFi Llama TVL: $962,180.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 47 project-authored contract(s) across 3 chain(s); 5 ERC4626 vaults, 6 ERC20 tokens, 1 ERC721 NFT, 3 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 25 common project-authored base contract(s) (proxy, erc1967upgrade, erc20permit). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 206; live-surface contracts included: 112 (108 live, 4 unknown).
- Excluded by liveness: 94 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/52 (0.0%)
- Deployed-live implementations: 52 of 55 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/52
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 55
- Raw deployments: 140
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ATokenInstance | token | ethereum | n/a | 4 deployments: ethereum [`0x238789...d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/); ethereum `0x32a626...9a4259`; ethereum `0x4d5f47...c514e8`; ethereum `0x98c23e...e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | sonic | n/a | 2 deployments: sonic [`0x578ee1...cd11c6`](./contracts/sonic-146/0x578ee1ca3a8e1b54554da1bf7c583506c4cd11c6/); sonic `0xe18ab8...1ece96` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | ethereum | n/a | 7 deployments: ethereum [`0x375448...1be720`](./contracts/ethereum-1/0x3754480db8b3e607fbe125697eb496a44a1be720/); ethereum `0x555f4d...fb7957`; sonic [`0x375448...1be720`](./contracts/sonic-146/0x3754480db8b3e607fbe125697eb496a44a1be720/); sonic `0x5448a6...39d8cc`; sonic `0x555f4d...fb7957`; sonic `0x65b6af...90e133`; sonic `0x6df97e...8b6ef3` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 9 deployments: ethereum [`0x3bce5c...4c7812`](./contracts/ethereum-1/0x3bce5cb273f0f148010bbea2470e7b5df84c7812/); ethereum `0xbb30e7...32bfbd`; ethereum `0xd3dce7...9b97ae`; sonic [`0x3bce5c...4c7812`](./contracts/sonic-146/0x3bce5cb273f0f148010bbea2470e7b5df84c7812/); sonic `0x455d5f...f85265`; sonic `0x4d85ba...a932ba`; sonic `0xbb30e7...32bfbd`; sonic `0xd08510...5948d0`; sonic `0xd3dce7...9b97ae` | ⚠️ Unaudited |
| Bridge | unknown | sonic | n/a | 2 deployments: sonic [`0x0c3443...b4322d`](./contracts/sonic-146/0x0c34438efe0e13ad2a64e9ced14bf6bb58b4322d/); sonic `0x9ef762...c895b3` | ⚠️ Unaudited |
| FraxOFTUpgradeable | unknown | sonic | n/a | 3 deployments: sonic [`0x3ec384...7fde45`](./contracts/sonic-146/0x3ec3849c33291a9ef4c5db86de593eb4a37fde45/); sonic `0x43edd7...5a9050`; sonic `0x90581e...cf7927` | ⚠️ Unaudited |
| FraxOFTUpgradeable | unknown | sonic | n/a | [`0xeed9de...8c1483`](./contracts/sonic-146/0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483/) | ⚠️ Unaudited |
| FrxUSD | unknown | ethereum | n/a | [`0xcacd6f...586e29`](./contracts/ethereum-1/0xcacd6fd266af91b8aed52accc382b4e165586e29/) | ⚠️ Unaudited |
| FrxUSDOFTUpgradeable | unknown | sonic | n/a | [`0x80eede...d600df`](./contracts/sonic-146/0x80eede496655fb9047dd39d9f418d5483ed600df/) | ⚠️ Unaudited |
| fToken | token | plasma | n/a | 4 deployments: ethereum `0x5c20b5...cedd18`; ethereum `0x6a29a4...605c5b`; ethereum `0x9fb7b4...251b33`; plasma [`0x1dd4b1...2ed27b`](./contracts/plasma-9745/0x1dd4b13fcae900c60a350589be8052959d2ed27b/) | ⚠️ Unaudited |
| GhoToken | token | ethereum | n/a | [`0x40d16f...ae6c2f`](./contracts/ethereum-1/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f/) | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x31a5a9...18f5b8`](./contracts/ethereum-1/0x31a5a9f60dc3d62fa5168352caf0ee05aa18f5b8/); ethereum `0x358cfa...2c776a`; sonic [`0x31a5a9...18f5b8`](./contracts/sonic-146/0x31a5a9f60dc3d62fa5168352caf0ee05aa18f5b8/); sonic `0x358cfa...2c776a` | ⚠️ Unaudited |
| Liquidator | unknown | sonic | n/a | 2 deployments: sonic [`0x332a62...f9a926`](./contracts/sonic-146/0x332a6211b594fefed5a5d779e51dacd145f9a926/); sonic `0xd8c562...558402` | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2371e1...740618`](./contracts/ethereum-1/0x2371e134e3455e0593363cbf89d3b6cf53740618/); ethereum `0xbeef01...2a64cb`; ethereum `0xd63070...d33a3d` | ⚠️ Unaudited |
| mHYPER | unknown | plasma | n/a | 2 deployments: plasma [`0xb31bea...a75f8a`](./contracts/plasma-9745/0xb31bea5c2a43f942a3800558b1aa25978da75f8a/); plasma `0xd3239a...893eb0` | ⚠️ Unaudited |
| MHyperCustomAggregatorFeed | unknown | plasma | n/a | 2 deployments: plasma [`0xaa0163...68899a`](./contracts/plasma-9745/0xaa016343d80a05e96ca4287607bfe1550568899a/); plasma `0xfc3e47...1a08f0` | ⚠️ Unaudited |
| MHyperDataFeed | unknown | plasma | n/a | 2 deployments: plasma [`0x2eb410...076bc9`](./contracts/plasma-9745/0x2eb410e4cb94e2e9e3cde3f7b405be4fcc076bc9/); plasma `0x73b372...e15c0b` | ⚠️ Unaudited |
| MHyperDepositVault | unknown | plasma | n/a | 2 deployments: plasma [`0x062ea1...a603e4`](./contracts/plasma-9745/0x062ea1beaf82e09b44e30bc9e926af7599a603e4/); plasma `0xa603cf...d4286e` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | unknown | plasma | n/a | 2 deployments: plasma [`0x429409...b98681`](./contracts/plasma-9745/0x429409624853649a0dc08693249155813db98681/); plasma `0x880661...6cb77c` | ⚠️ Unaudited |
| MidasAccessControl | unknown | plasma | n/a | 4 deployments: plasma [`0x0ee21b...d8974b`](./contracts/plasma-9745/0x0ee21b6c1f6aed64ce3c67767168ea62f3d8974b/); plasma `0x3ea351...4fab72`; plasma `0x4e7caa...cd0f39`; plasma `0x88b70f...6890fa` | ⚠️ Unaudited |
| MintedERC20 | unknown | sonic | n/a | 14 deployments: sonic [`0x0fdbce...4be3fd`](./contracts/sonic-146/0x0fdbce271bea0d9819034cd09021e0bbe94be3fd/); sonic `0x2fb960...e2eea1`; sonic `0x48540d...6fc335`; sonic `0x53f753...81e698`; sonic `0x616478...8f6194`; sonic `0x6c7d5e...f354f9`; sonic `0x7cb451...e8edb3`; sonic `0x7fff4c...ccd270`; sonic `0x8f1cbc...c6544c`; sonic `0x9cacb5...7e8c6b`; sonic `0xb026e4...8269fd`; sonic `0xb5f0ed...186fac`; sonic `0xc6915d...38030c`; sonic `0xf1ef7d...71a74b` | ⚠️ Unaudited |
| MintedERC20 | token | sonic | n/a | 2 deployments: sonic [`0x50c42d...f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/); sonic `0x9605cc...abf386` | ⚠️ Unaudited |
| NativeTokenAdapter | unknown | sonic | n/a | 2 deployments: sonic [`0x4c5683...ad6c6c`](./contracts/sonic-146/0x4c5683a9ede3c8b4fb5ad2e980bbf88652ad6c6c/); sonic `0x6d9d62...e91a1e` | ⚠️ Unaudited |
| plUSD | unknown | plasma | n/a | 3 deployments: plasma [`0x09ef71...965f5a`](./contracts/plasma-9745/0x09ef712e8bf561fa6bb0e17db1fa0523c0965f5a/); plasma `0x14723d...dc7431`; plasma `0xf91c31...f358cd` | ⚠️ Unaudited |
| PlUsdCustomAggregatorFeed | unknown | plasma | n/a | 3 deployments: plasma [`0x11428a...a6c772`](./contracts/plasma-9745/0x11428a874c29367527362b9b8d60c5e4fea6c772/); plasma `0x428d01...a01829`; plasma `0x4718e6...e9a7d3` | ⚠️ Unaudited |
| PlUsdDataFeed | unknown | plasma | n/a | 3 deployments: plasma [`0x2b3f35...683432`](./contracts/plasma-9745/0x2b3f3514867cbccfadc80121297bb8088c683432/); plasma `0x574f31...fa35a4`; plasma `0x8a7bd8...47f96f` | ⚠️ Unaudited |
| PlUsdDepositVault | unknown | plasma | n/a | 3 deployments: plasma [`0x0a0817...3588a8`](./contracts/plasma-9745/0x0a0817be02f0ab5370a9ec36cf399d1ead3588a8/); plasma `0x2b690c...1b0615`; plasma `0xc50c3d...82b77d` | ⚠️ Unaudited |
| PlUsdRedemptionVaultWithSwapper | adapter | plasma | n/a | 3 deployments: plasma [`0x24e49d...f6bd75`](./contracts/plasma-9745/0x24e49d2ad8f0bcd0cf7f2a5ab560ca4319f6bd75/); plasma `0x850ec1...7bc0fc`; plasma `0xf76488...b43cc9` | ⚠️ Unaudited |
| PoolV3 | core_logic | ethereum | n/a | [`0xff9499...81244b`](./contracts/ethereum-1/0xff94993fa7ea27efc943645f95adb36c1b81244b/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | sonic | n/a | [`0x90409d...874be3`](./contracts/sonic-146/0x90409d5b57e77ca394167b781cfc79a2a0874be3/) | ⚠️ Unaudited |
| SfrxUSD | unknown | ethereum | n/a | [`0xcf62f9...c9c5b6`](./contracts/ethereum-1/0xcf62f905562626cfcdd2261162a51fd02fc9c5b6/) | ⚠️ Unaudited |
| SFrxUSDOFTUpgradeable | unknown | sonic | n/a | [`0x5bff88...c070c0`](./contracts/sonic-146/0x5bff88ca1442c2496f7e475e9e7786383bc070c0/) | ⚠️ Unaudited |
| splUSD | unknown | plasma | n/a | 2 deployments: plasma [`0x616185...598343`](./contracts/plasma-9745/0x616185600989bf8339b58ac9e539d49536598343/); plasma `0xf1e3c1...aa9053` | ⚠️ Unaudited |
| SplUsdCustomAggregatorFeed | unknown | plasma | n/a | 2 deployments: plasma [`0xae7d92...8652b0`](./contracts/plasma-9745/0xae7d92bedcf6aa692e46d731a6df5ec53f8652b0/); plasma `0xfe5ae6...a59566` | ⚠️ Unaudited |
| SplUsdDataFeed | unknown | plasma | n/a | 2 deployments: plasma [`0x853d18...737d57`](./contracts/plasma-9745/0x853d1871e37ec7bc4ef1088b88db237e62737d57/); plasma `0xaa24ba...d84455` | ⚠️ Unaudited |
| SplUsdDepositVault | core_logic | plasma | n/a | 2 deployments: plasma [`0x4ef9ff...84093f`](./contracts/plasma-9745/0x4ef9ff56162bd3cb5073fb20dbd355c59084093f/); plasma `0xd93346...3be283` | ⚠️ Unaudited |
| SplUsdRedemptionVaultWithSwapper | unknown | plasma | n/a | 2 deployments: plasma [`0x340467...2796ce`](./contracts/plasma-9745/0x3404676e77abca60ffb1c00a8e09da21832796ce/); plasma `0x69ecab...30ae50` | ⚠️ Unaudited |
| StakeToken | token | ethereum | n/a | [`0x1a88df...c1885d`](./contracts/ethereum-1/0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | sonic | n/a | 3 deployments: sonic [`0x49aceb...cc6562`](./contracts/sonic-146/0x49acebf8f0f79e1ecb0fd47d684dadec81cc6562/); sonic `0x5e3902...60dae0`; sonic `0x825254...e1f4a9` | ⚠️ Unaudited |
| TetherTokenAdapter | unknown | sonic | n/a | 2 deployments: sonic [`0x188042...53d4e4`](./contracts/sonic-146/0x1880425307124ce875aac3e9eb47b5a87453d4e4/); sonic `0x667e06...aa304a` | ⚠️ Unaudited |
| TetherTokenV2 | unknown | sonic | n/a | 2 deployments: sonic [`0x604782...a5eaf9`](./contracts/sonic-146/0x6047828dc181963ba44974801ff68e538da5eaf9/); sonic `0xc80268...252fad` | ⚠️ Unaudited |
| TokenPairs | unknown | sonic | n/a | 2 deployments: sonic [`0x134e4c...00ba94`](./contracts/sonic-146/0x134e4c207ad5a13549de1ebf8d43c1f49b00ba94/); sonic `0xabf0c9...5ebf25` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 3 deployments: plasma [`0xa4812e...6e828b`](./contracts/plasma-9745/0xa4812ee64059657ca9af278eeb64ad912a6e828b/); plasma `0xda56c2...e62404`; plasma `0xedb387...75d78a` | ⚠️ Unaudited |
| UpdateManager | unknown | sonic | n/a | 2 deployments: sonic [`0x1d3c99...176bb7`](./contracts/sonic-146/0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7/); sonic `0x7160ec...e4ee53` | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x2fc1e7...ec27e9`](./contracts/sonic-146/0x2fc1e74bc8a6d15fe768c10c2ede7d6d95ec27e9/); sonic `0xf2b303...4c90d6` | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x47bf4c...15d234`](./contracts/sonic-146/0x47bf4c2f17c547a3d9052258b91919d09b15d234/); sonic `0xf00941...470689` | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x724749...47a245`](./contracts/sonic-146/0x72474981c4932021ec628ca7596b47bbb247a245/); sonic `0xa0943a...d601cd` | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | n/a | [`0xeae33e...9ed7b2`](./contracts/sonic-146/0xeae33e053eaf1bcc8d33ab9bde53e5bd699ed7b2/) | ⚠️ Unaudited |
| Voter | unknown | sonic | n/a | 3 deployments: sonic [`0x43739b...55fa05`](./contracts/sonic-146/0x43739b96b19ae7c2e0d80be7832325846f55fa05/); sonic `0xb84194...469337`; sonic `0xc31c4b...1ee7c3` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | sonic | n/a | 3 deployments: sonic [`0x0966ca...5bb86b`](./contracts/sonic-146/0x0966cae7338518961c2d35493d3eb481a75bb86b/); sonic `0x1ec2b9...e3a578`; sonic `0x7585d9...5afa9e` | ⚠️ Unaudited |
| WFRAXTokenOFTUpgradeable | token | sonic | n/a | [`0x64445f...4e561a`](./contracts/sonic-146/0x64445f0aecc51e94ad52d8ac56b7190e764e561a/) | ⚠️ Unaudited |
| Wrapper | unknown | sonic | n/a | 3 deployments: sonic [`0x9fb76f...494206`](./contracts/sonic-146/0x9fb76f7ce5fceaa2c42887ff441d46095e494206/); sonic `0xdb58c4...10c866`; sonic `0xe8a41c...f37c47` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PendleMidasSY | unknown | plasma | n/a | `0x78bb1c...5d90be` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8f1b9c...f16250` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xc19921...95fb16` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
