# Agentic Audit Brief: Trevee Earn

## Project Overview

- Project: Trevee Earn (`trevee-earn`)
- Website: [https://rings.money/](https://rings.money/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.453Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: ethereum, plasma, sonic
- Contract surface: 46 unique implementations (110 raw deployments)
- DeFi Llama TVL: $962,180.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 47 project-authored contract(s) across 3 chain(s); 5 ERC4626 vaults, 6 ERC20 tokens, 1 ERC721 NFT, 3 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 25 common project-authored base contract(s) (proxy, erc1967upgrade, erc20permit). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 156; live-surface contracts included: 91 (87 live, 4 unknown).
- Excluded by liveness: 65 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/39 (0.0%)
- Deployed-live implementations: 43 of 46 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/43
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 46
- Raw deployments: 110
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

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ATokenInstance | token | ethereum | n/a | 4 deployments: ethereum [`0x23878914efe38d27c4d67ab83ed1b93a74d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/); ethereum `0x32a6268f9ba3642dda7892add74f1d34469a4259`; ethereum `0x4d5f47fa6a74757f35c14fd3a6ef8e3c9bc514e8`; ethereum `0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | sonic | n/a | 2 deployments: sonic [`0x578ee1ca3a8e1b54554da1bf7c583506c4cd11c6`](./contracts/sonic-146/0x578ee1ca3a8e1b54554da1bf7c583506c4cd11c6/); sonic `0xe18ab82c81e7eecff32b8a82b1b7d2d23f1ece96` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | ethereum | n/a | 7 deployments: ethereum [`0x3754480db8b3e607fbe125697eb496a44a1be720`](./contracts/ethereum-1/0x3754480db8b3e607fbe125697eb496a44a1be720/); ethereum `0x555f4df2180df6257860f23b29d653c1aafb7957`; sonic [`0x3754480db8b3e607fbe125697eb496a44a1be720`](./contracts/sonic-146/0x3754480db8b3e607fbe125697eb496a44a1be720/); sonic `0x5448a65ddb14e6f273cd0ed6598805105a39d8cc`; sonic `0x555f4df2180df6257860f23b29d653c1aafb7957`; sonic `0x65b6afb8c1521b48488df04224dc019ea390e133`; sonic `0x6df97ed8b28d9528cd34335c0a151f10e48b6ef3` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 9 deployments: ethereum [`0x3bce5cb273f0f148010bbea2470e7b5df84c7812`](./contracts/ethereum-1/0x3bce5cb273f0f148010bbea2470e7b5df84c7812/); ethereum `0xbb30e76d9bb2cc9631f7fc5eb8e87b5aff32bfbd`; ethereum `0xd3dce716f3ef535c5ff8d041c1a41c3bd89b97ae`; sonic [`0x3bce5cb273f0f148010bbea2470e7b5df84c7812`](./contracts/sonic-146/0x3bce5cb273f0f148010bbea2470e7b5df84c7812/); sonic `0x455d5f11fea33a8fa9d3e285930b478b6bf85265`; sonic `0x4d85ba8c3918359c78ed09581e5bc7578ba932ba`; sonic `0xbb30e76d9bb2cc9631f7fc5eb8e87b5aff32bfbd`; sonic `0xd0851030c94433c261b405fecbf1dec5e15948d0`; sonic `0xd3dce716f3ef535c5ff8d041c1a41c3bd89b97ae` | ⚠️ Unaudited |
| FraxOFTUpgradeable | unknown | sonic | n/a | 3 deployments: sonic [`0x3ec3849c33291a9ef4c5db86de593eb4a37fde45`](./contracts/sonic-146/0x3ec3849c33291a9ef4c5db86de593eb4a37fde45/); sonic `0x43edd7f3831b08fe70b7555ddd373c8bf65a9050`; sonic `0x90581eca9469d8d7f5d3b60f4715027adfcf7927` | ⚠️ Unaudited |
| FraxOFTUpgradeable | unknown | sonic | n/a | [`0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483`](./contracts/sonic-146/0xeed9de5e41b53d1c8fab8aab4b0e446f828c1483/) | ⚠️ Unaudited |
| FrxUSD | unknown | ethereum | n/a | [`0xcacd6fd266af91b8aed52accc382b4e165586e29`](./contracts/ethereum-1/0xcacd6fd266af91b8aed52accc382b4e165586e29/) | ⚠️ Unaudited |
| FrxUSDOFTUpgradeable | unknown | sonic | n/a | [`0x80eede496655fb9047dd39d9f418d5483ed600df`](./contracts/sonic-146/0x80eede496655fb9047dd39d9f418d5483ed600df/) | ⚠️ Unaudited |
| fToken | token | plasma | n/a | 4 deployments: ethereum `0x5c20b550819128074fd538edf79791733ccedd18`; ethereum `0x6a29a46e21c730dca1d8b23d637c101cec605c5b`; ethereum `0x9fb7b4477576fe5b32be4c1843afb1e55f251b33`; plasma [`0x1dd4b13fcae900c60a350589be8052959d2ed27b`](./contracts/plasma-9745/0x1dd4b13fcae900c60a350589be8052959d2ed27b/) | ⚠️ Unaudited |
| GhoToken | token | ethereum | n/a | [`0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f`](./contracts/ethereum-1/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f/) | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x31a5a9f60dc3d62fa5168352caf0ee05aa18f5b8`](./contracts/ethereum-1/0x31a5a9f60dc3d62fa5168352caf0ee05aa18f5b8/); ethereum `0x358cfacf00d0b4634849821bb3d1965b472c776a`; sonic [`0x31a5a9f60dc3d62fa5168352caf0ee05aa18f5b8`](./contracts/sonic-146/0x31a5a9f60dc3d62fa5168352caf0ee05aa18f5b8/); sonic `0x358cfacf00d0b4634849821bb3d1965b472c776a` | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2371e134e3455e0593363cbf89d3b6cf53740618`](./contracts/ethereum-1/0x2371e134e3455e0593363cbf89d3b6cf53740618/); ethereum `0xbeef01735c132ada46aa9aa4c54623caa92a64cb`; ethereum `0xd63070114470f685b75b74d60eec7c1113d33a3d` | ⚠️ Unaudited |
| mHYPER | unknown | plasma | n/a | 2 deployments: plasma [`0xb31bea5c2a43f942a3800558b1aa25978da75f8a`](./contracts/plasma-9745/0xb31bea5c2a43f942a3800558b1aa25978da75f8a/); plasma `0xd3239a355d47269e77cd028f2e965ef9fd893eb0` | ⚠️ Unaudited |
| MHyperCustomAggregatorFeed | unknown | plasma | n/a | 2 deployments: plasma [`0xaa016343d80a05e96ca4287607bfe1550568899a`](./contracts/plasma-9745/0xaa016343d80a05e96ca4287607bfe1550568899a/); plasma `0xfc3e47c4da8f3a01ac76c3c5ecfbfc302e1a08f0` | ⚠️ Unaudited |
| MHyperDataFeed | unknown | plasma | n/a | 2 deployments: plasma [`0x2eb410e4cb94e2e9e3cde3f7b405be4fcc076bc9`](./contracts/plasma-9745/0x2eb410e4cb94e2e9e3cde3f7b405be4fcc076bc9/); plasma `0x73b3724c97931b4e31b6b944230d365dffe15c0b` | ⚠️ Unaudited |
| MHyperDepositVault | unknown | plasma | n/a | 2 deployments: plasma [`0x062ea1beaf82e09b44e30bc9e926af7599a603e4`](./contracts/plasma-9745/0x062ea1beaf82e09b44e30bc9e926af7599a603e4/); plasma `0xa603cf264adeb8e7f0f063c116929adac2d4286e` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | unknown | plasma | n/a | 2 deployments: plasma [`0x429409624853649a0dc08693249155813db98681`](./contracts/plasma-9745/0x429409624853649a0dc08693249155813db98681/); plasma `0x880661f9b412065d616890ca458dccd0146cb77c` | ⚠️ Unaudited |
| MidasAccessControl | unknown | plasma | n/a | 4 deployments: plasma [`0x0ee21b6c1f6aed64ce3c67767168ea62f3d8974b`](./contracts/plasma-9745/0x0ee21b6c1f6aed64ce3c67767168ea62f3d8974b/); plasma `0x3ea351249daa640f4ababc06b3118f35324fab72`; plasma `0x4e7caa4d3192e91c4fdb123fc927efa559cd0f39`; plasma `0x88b70f4f0a0344c305a29ce082a167c7436890fa` | ⚠️ Unaudited |
| MintedERC20 | token | sonic | n/a | [`0x50c42deacd8fc9773493ed674b675be577f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | ⚠️ Unaudited |
| plUSD | unknown | plasma | n/a | 3 deployments: plasma [`0x09ef712e8bf561fa6bb0e17db1fa0523c0965f5a`](./contracts/plasma-9745/0x09ef712e8bf561fa6bb0e17db1fa0523c0965f5a/); plasma `0x14723d7e7072b65c7d0cdff71a4fbbc5c4dc7431`; plasma `0xf91c31299e998c5127bc5f11e4a657fc0cf358cd` | ⚠️ Unaudited |
| PlUsdCustomAggregatorFeed | unknown | plasma | n/a | 3 deployments: plasma [`0x11428a874c29367527362b9b8d60c5e4fea6c772`](./contracts/plasma-9745/0x11428a874c29367527362b9b8d60c5e4fea6c772/); plasma `0x428d0191cb350ec2c34f7d332e25be7bb8a01829`; plasma `0x4718e64c12cae76552696934f0b346cfc1e9a7d3` | ⚠️ Unaudited |
| PlUsdDataFeed | unknown | plasma | n/a | 3 deployments: plasma [`0x2b3f3514867cbccfadc80121297bb8088c683432`](./contracts/plasma-9745/0x2b3f3514867cbccfadc80121297bb8088c683432/); plasma `0x574f3132a7fc596f61cfff711770e1e7d9fa35a4`; plasma `0x8a7bd8886f784d0019b3285a41ea4dbdff47f96f` | ⚠️ Unaudited |
| PlUsdDepositVault | unknown | plasma | n/a | 3 deployments: plasma [`0x0a0817be02f0ab5370a9ec36cf399d1ead3588a8`](./contracts/plasma-9745/0x0a0817be02f0ab5370a9ec36cf399d1ead3588a8/); plasma `0x2b690cab819a815732544aeb422474efdc1b0615`; plasma `0xc50c3d19f668b8fc355d7e21e3f9e16b2982b77d` | ⚠️ Unaudited |
| PlUsdRedemptionVaultWithSwapper | adapter | plasma | n/a | 3 deployments: plasma [`0x24e49d2ad8f0bcd0cf7f2a5ab560ca4319f6bd75`](./contracts/plasma-9745/0x24e49d2ad8f0bcd0cf7f2a5ab560ca4319f6bd75/); plasma `0x850ec16c59e527e262d5a1331e9ad965997bc0fc`; plasma `0xf7648811133635db67091a35a5abef18f3b43cc9` | ⚠️ Unaudited |
| PoolV3 | core_logic | ethereum | n/a | [`0xff94993fa7ea27efc943645f95adb36c1b81244b`](./contracts/ethereum-1/0xff94993fa7ea27efc943645f95adb36c1b81244b/) | ⚠️ Unaudited |
| SfrxUSD | unknown | ethereum | n/a | [`0xcf62f905562626cfcdd2261162a51fd02fc9c5b6`](./contracts/ethereum-1/0xcf62f905562626cfcdd2261162a51fd02fc9c5b6/) | ⚠️ Unaudited |
| SFrxUSDOFTUpgradeable | unknown | sonic | n/a | [`0x5bff88ca1442c2496f7e475e9e7786383bc070c0`](./contracts/sonic-146/0x5bff88ca1442c2496f7e475e9e7786383bc070c0/) | ⚠️ Unaudited |
| splUSD | unknown | plasma | n/a | 2 deployments: plasma [`0x616185600989bf8339b58ac9e539d49536598343`](./contracts/plasma-9745/0x616185600989bf8339b58ac9e539d49536598343/); plasma `0xf1e3c154dcb0c3b9e66a9b7191007d12efaa9053` | ⚠️ Unaudited |
| SplUsdCustomAggregatorFeed | unknown | plasma | n/a | 2 deployments: plasma [`0xae7d92bedcf6aa692e46d731a6df5ec53f8652b0`](./contracts/plasma-9745/0xae7d92bedcf6aa692e46d731a6df5ec53f8652b0/); plasma `0xfe5ae64f5ba6a45b9267a5ba274620539fa59566` | ⚠️ Unaudited |
| SplUsdDataFeed | unknown | plasma | n/a | 2 deployments: plasma [`0x853d1871e37ec7bc4ef1088b88db237e62737d57`](./contracts/plasma-9745/0x853d1871e37ec7bc4ef1088b88db237e62737d57/); plasma `0xaa24baba4da60b2aeaf80b1db07b0a4a7fd84455` | ⚠️ Unaudited |
| SplUsdDepositVault | core_logic | plasma | n/a | 2 deployments: plasma [`0x4ef9ff56162bd3cb5073fb20dbd355c59084093f`](./contracts/plasma-9745/0x4ef9ff56162bd3cb5073fb20dbd355c59084093f/); plasma `0xd9334689f66af838a65c93e7c16f6d1da63be283` | ⚠️ Unaudited |
| SplUsdRedemptionVaultWithSwapper | unknown | plasma | n/a | 2 deployments: plasma [`0x3404676e77abca60ffb1c00a8e09da21832796ce`](./contracts/plasma-9745/0x3404676e77abca60ffb1c00a8e09da21832796ce/); plasma `0x69ecab6aa7bdfddd99def0891c0317076430ae50` | ⚠️ Unaudited |
| StakeToken | token | ethereum | n/a | [`0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d`](./contracts/ethereum-1/0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | sonic | n/a | 3 deployments: sonic [`0x49acebf8f0f79e1ecb0fd47d684dadec81cc6562`](./contracts/sonic-146/0x49acebf8f0f79e1ecb0fd47d684dadec81cc6562/); sonic `0x5e39021ae7d3f6267dc7995bb5dd15669060dae0`; sonic `0x825254012306bb410b550631895fe58ddce1f4a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 3 deployments: plasma [`0xa4812ee64059657ca9af278eeb64ad912a6e828b`](./contracts/plasma-9745/0xa4812ee64059657ca9af278eeb64ad912a6e828b/); plasma `0xda56c2dafaf034b7bb490fab19162e2dd2e62404`; plasma `0xedb38732f51787a312268f19fe0a18d90075d78a` | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x2fc1e74bc8a6d15fe768c10c2ede7d6d95ec27e9`](./contracts/sonic-146/0x2fc1e74bc8a6d15fe768c10c2ede7d6d95ec27e9/); sonic `0xf2b3038c8bb9c4b225841496cf1d4ca47b4c90d6` | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x47bf4c2f17c547a3d9052258b91919d09b15d234`](./contracts/sonic-146/0x47bf4c2f17c547a3d9052258b91919d09b15d234/); sonic `0xf00941fd53d1292d093ee0411520a2a545470689` | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x72474981c4932021ec628ca7596b47bbb247a245`](./contracts/sonic-146/0x72474981c4932021ec628ca7596b47bbb247a245/); sonic `0xa0943aa332b58f0ffdd48b44a3212e9bf9d601cd` | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | n/a | [`0xeae33e053eaf1bcc8d33ab9bde53e5bd699ed7b2`](./contracts/sonic-146/0xeae33e053eaf1bcc8d33ab9bde53e5bd699ed7b2/) | ⚠️ Unaudited |
| Voter | unknown | sonic | n/a | 3 deployments: sonic [`0x43739b96b19ae7c2e0d80be7832325846f55fa05`](./contracts/sonic-146/0x43739b96b19ae7c2e0d80be7832325846f55fa05/); sonic `0xb84194e28f624bbba3c9181f3a1120ee76469337`; sonic `0xc31c4bc46bcd55e7483f2aaf194f7cf7641ee7c3` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | sonic | n/a | 3 deployments: sonic [`0x0966cae7338518961c2d35493d3eb481a75bb86b`](./contracts/sonic-146/0x0966cae7338518961c2d35493d3eb481a75bb86b/); sonic `0x1ec2b9a77a7226acd457954820197f89b3e3a578`; sonic `0x7585d9c32db1528ceae4770fd1d01b888f5afa9e` | ⚠️ Unaudited |
| WFRAXTokenOFTUpgradeable | token | sonic | n/a | [`0x64445f0aecc51e94ad52d8ac56b7190e764e561a`](./contracts/sonic-146/0x64445f0aecc51e94ad52d8ac56b7190e764e561a/) | ⚠️ Unaudited |
| Wrapper | unknown | sonic | n/a | 3 deployments: sonic [`0x9fb76f7ce5fceaa2c42887ff441d46095e494206`](./contracts/sonic-146/0x9fb76f7ce5fceaa2c42887ff441d46095e494206/); sonic `0xdb58c4db1a0f45dda3d2f8e44c3300bb6510c866`; sonic `0xe8a41c62bb4d5863c6eadc96792cfe90a1f37c47` | ⚠️ Unaudited |

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
| PendleMidasSY | unknown | plasma | n/a | `0x78bb1cccfd0fb5e9d46ba4e0e566a54df65d90be` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8f1b9c1fd67136d525e14d96efb3887a33f16250` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xc199215cd8704738e4ece4c04821546c8f95fb16` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x23878914efe38d27c4d67ab83ed1b93a74d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x578ee1ca3a8e1b54554da1bf7c583506c4cd11c6`](./contracts/sonic-146/0x578ee1ca3a8e1b54554da1bf7c583506c4cd11c6/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3754480db8b3e607fbe125697eb496a44a1be720`](./contracts/ethereum-1/0x3754480db8b3e607fbe125697eb496a44a1be720/) | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bce5cb273f0f148010bbea2470e7b5df84c7812`](./contracts/ethereum-1/0x3bce5cb273f0f148010bbea2470e7b5df84c7812/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcacd6fd266af91b8aed52accc382b4e165586e29`](./contracts/ethereum-1/0xcacd6fd266af91b8aed52accc382b4e165586e29/) | FrxUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x80eede496655fb9047dd39d9f418d5483ed600df`](./contracts/sonic-146/0x80eede496655fb9047dd39d9f418d5483ed600df/) | FrxUSDOFTUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x1dd4b13fcae900c60a350589be8052959d2ed27b`](./contracts/plasma-9745/0x1dd4b13fcae900c60a350589be8052959d2ed27b/) | fToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f`](./contracts/ethereum-1/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f/) | GhoToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0xb31bea5c2a43f942a3800558b1aa25978da75f8a`](./contracts/plasma-9745/0xb31bea5c2a43f942a3800558b1aa25978da75f8a/) | mHYPER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0xaa016343d80a05e96ca4287607bfe1550568899a`](./contracts/plasma-9745/0xaa016343d80a05e96ca4287607bfe1550568899a/) | MHyperCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x2eb410e4cb94e2e9e3cde3f7b405be4fcc076bc9`](./contracts/plasma-9745/0x2eb410e4cb94e2e9e3cde3f7b405be4fcc076bc9/) | MHyperDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x062ea1beaf82e09b44e30bc9e926af7599a603e4`](./contracts/plasma-9745/0x062ea1beaf82e09b44e30bc9e926af7599a603e4/) | MHyperDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x429409624853649a0dc08693249155813db98681`](./contracts/plasma-9745/0x429409624853649a0dc08693249155813db98681/) | MHyperRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x0ee21b6c1f6aed64ce3c67767168ea62f3d8974b`](./contracts/plasma-9745/0x0ee21b6c1f6aed64ce3c67767168ea62f3d8974b/) | MidasAccessControl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x50c42deacd8fc9773493ed674b675be577f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | MintedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x09ef712e8bf561fa6bb0e17db1fa0523c0965f5a`](./contracts/plasma-9745/0x09ef712e8bf561fa6bb0e17db1fa0523c0965f5a/) | plUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x11428a874c29367527362b9b8d60c5e4fea6c772`](./contracts/plasma-9745/0x11428a874c29367527362b9b8d60c5e4fea6c772/) | PlUsdCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x2b3f3514867cbccfadc80121297bb8088c683432`](./contracts/plasma-9745/0x2b3f3514867cbccfadc80121297bb8088c683432/) | PlUsdDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x0a0817be02f0ab5370a9ec36cf399d1ead3588a8`](./contracts/plasma-9745/0x0a0817be02f0ab5370a9ec36cf399d1ead3588a8/) | PlUsdDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x24e49d2ad8f0bcd0cf7f2a5ab560ca4319f6bd75`](./contracts/plasma-9745/0x24e49d2ad8f0bcd0cf7f2a5ab560ca4319f6bd75/) | PlUsdRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff94993fa7ea27efc943645f95adb36c1b81244b`](./contracts/ethereum-1/0xff94993fa7ea27efc943645f95adb36c1b81244b/) | PoolV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf62f905562626cfcdd2261162a51fd02fc9c5b6`](./contracts/ethereum-1/0xcf62f905562626cfcdd2261162a51fd02fc9c5b6/) | SfrxUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5bff88ca1442c2496f7e475e9e7786383bc070c0`](./contracts/sonic-146/0x5bff88ca1442c2496f7e475e9e7786383bc070c0/) | SFrxUSDOFTUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x616185600989bf8339b58ac9e539d49536598343`](./contracts/plasma-9745/0x616185600989bf8339b58ac9e539d49536598343/) | splUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0xae7d92bedcf6aa692e46d731a6df5ec53f8652b0`](./contracts/plasma-9745/0xae7d92bedcf6aa692e46d731a6df5ec53f8652b0/) | SplUsdCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x853d1871e37ec7bc4ef1088b88db237e62737d57`](./contracts/plasma-9745/0x853d1871e37ec7bc4ef1088b88db237e62737d57/) | SplUsdDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x4ef9ff56162bd3cb5073fb20dbd355c59084093f`](./contracts/plasma-9745/0x4ef9ff56162bd3cb5073fb20dbd355c59084093f/) | SplUsdDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x3404676e77abca60ffb1c00a8e09da21832796ce`](./contracts/plasma-9745/0x3404676e77abca60ffb1c00a8e09da21832796ce/) | SplUsdRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d`](./contracts/ethereum-1/0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d/) | StakeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x49acebf8f0f79e1ecb0fd47d684dadec81cc6562`](./contracts/sonic-146/0x49acebf8f0f79e1ecb0fd47d684dadec81cc6562/) | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2fc1e74bc8a6d15fe768c10c2ede7d6d95ec27e9`](./contracts/sonic-146/0x2fc1e74bc8a6d15fe768c10c2ede7d6d95ec27e9/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x47bf4c2f17c547a3d9052258b91919d09b15d234`](./contracts/sonic-146/0x47bf4c2f17c547a3d9052258b91919d09b15d234/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x72474981c4932021ec628ca7596b47bbb247a245`](./contracts/sonic-146/0x72474981c4932021ec628ca7596b47bbb247a245/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xeae33e053eaf1bcc8d33ab9bde53e5bd699ed7b2`](./contracts/sonic-146/0xeae33e053eaf1bcc8d33ab9bde53e5bd699ed7b2/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x43739b96b19ae7c2e0d80be7832325846f55fa05`](./contracts/sonic-146/0x43739b96b19ae7c2e0d80be7832325846f55fa05/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0966cae7338518961c2d35493d3eb481a75bb86b`](./contracts/sonic-146/0x0966cae7338518961c2d35493d3eb481a75bb86b/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x64445f0aecc51e94ad52d8ac56b7190e764e561a`](./contracts/sonic-146/0x64445f0aecc51e94ad52d8ac56b7190e764e561a/) | WFRAXTokenOFTUpgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9fb76f7ce5fceaa2c42887ff441d46095e494206`](./contracts/sonic-146/0x9fb76f7ce5fceaa2c42887ff441d46095e494206/) | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
