# Agentic Audit Brief: Zoo Finance

## Project Overview

- Project: Zoo Finance (`zoo-finance`)
- Website: [https://zoofi.io](https://zoofi.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.976Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, base, berachain, bsc, sei
- Contract surface: 68 unique implementations (98 raw deployments)
- DeFi Llama TVL: $27,950,714.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 43 project-authored contract(s) across 5 chain(s); 4 ERC20 tokens, 3 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 18 common project-authored base contract(s) (upgradeableproxy, proxy, zooerc20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 144; live-surface contracts included: 96 (58 live, 38 unknown).
- Excluded by liveness: 48 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/29 (0.0%)
- Deployed-live implementations: 33 of 68 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 35
- Unique implementations: 68
- Raw deployments: 98
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

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentTokenV2 | token | base | n/a | [`0xff8104251e7761163fac3211ef5583fb3f8583d6`](./contracts/base-8453/0xff8104251e7761163fac3211ef5583fb3f8583d6/) | ⚠️ Unaudited |
| BEP20TokenImplementation | token | bsc | n/a | 5 deployments: bsc [`0x0d8ce2a99bb6e3b7db580ed848240e4a0f9ae153`](./contracts/bsc-56/0x0d8ce2a99bb6e3b7db580ed848240e4a0f9ae153/); bsc `0x101d82428437127bf1608f699cd651e6abf9766e`; bsc `0x88f1a5ae2a3bf98aeaf342d26b30a79438c9142e`; bsc `0x9ac983826058b8a9c7aa1c9171441191232e8404`; bsc `0xbf5140a22578168fd562dccf235e5d43a02ce9b1` | ⚠️ Unaudited |
| CheckerClaimAndWithdraw | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x13f34e49fefbe55fec4b62afb7adf3920b04370f`](./contracts/arbitrum-42161/0x13f34e49fefbe55fec4b62afb7adf3920b04370f/); arbitrum `0x73098d4a071d9bc675deaa589392b2b1414b9a22` | ⚠️ Unaudited |
| CheckerClaimAndWithdraw | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x179b3dd2a3e5bf076c8523695996c3d0e764dcdb`](./contracts/arbitrum-42161/0x179b3dd2a3e5bf076c8523695996c3d0e764dcdb/); arbitrum `0xf16fff83de694bceaeec224eea64a78af7a2a130` | ⚠️ Unaudited |
| CheckerLicenseNFT | token | arbitrum | n/a | 3 deployments: arbitrum [`0x349834ba064f4b9286888611dfdb9035c1112d9a`](./contracts/arbitrum-42161/0x349834ba064f4b9286888611dfdb9035c1112d9a/); arbitrum `0x4395cbd65d40a2e3fdacbccb155fb6188a747531`; arbitrum `0x9e6cd11a40cda817e26e7c3ed979f03da535f6b0` | ⚠️ Unaudited |
| CheckerLicenseNFTv2 | token | arbitrum | n/a | [`0xc227e25544edd261a9066932c71a25f4504972f1`](./contracts/arbitrum-42161/0xc227e25544edd261a9066932c71a25f4504972f1/) | ⚠️ Unaudited |
| CheckerNFTClaim | token | arbitrum | n/a | [`0xfa4dfdedf41e3b41529cc161b542d84c4a3f31da`](./contracts/arbitrum-42161/0xfa4dfdedf41e3b41529cc161b542d84c4a3f31da/) | ⚠️ Unaudited |
| DragonswapFactory | registry | sei | n/a | [`0x71f6b49ae1558357bbb5a6074f1143c46cbca03d`](./contracts/sei-1329/0x71f6b49ae1558357bbb5a6074f1143c46cbca03d/) | ⚠️ Unaudited |
| DragonswapRouter | adapter | sei | n/a | [`0xa4cf2f53d1195addde9e4d3aca54f556895712f2`](./contracts/sei-1329/0xa4cf2f53d1195addde9e4d3aca54f556895712f2/) | ⚠️ Unaudited |
| DragonswapStakerFactory | registry | sei | n/a | [`0x34975246b5a3c8e9e1c19bf9b6a6088b741d4e2d`](./contracts/sei-1329/0x34975246b5a3c8e9e1c19bf9b6a6088b741d4e2d/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x17a90eda8c919b97d36e0082266bf9432fb1eea1`](./contracts/arbitrum-42161/0x17a90eda8c919b97d36e0082266bf9432fb1eea1/); arbitrum `0xf74b2eab9763e412849f7923317d31be49118b3b` | ⚠️ Unaudited |
| InfraredBribeVault | operational_periphery | berachain | n/a | 2 deployments: berachain [`0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63`](./contracts/berachain-80094/0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63/); berachain `0x6686bdff3ad20ae45e811c2451dfee8aa0f338c0` | ⚠️ Unaudited |
| InfraredBribeVaultV2 | operational_periphery | berachain | n/a | 6 deployments: berachain [`0x702b707c2f8dd26f4f1e51cf425035d355a02767`](./contracts/berachain-80094/0x702b707c2f8dd26f4f1e51cf425035d355a02767/); berachain `0x94822b9ba715e9e3079ed12489dc7a016694fc67`; berachain `0xa6c0413f620cd8487dac7c1770335ee169934826`; berachain `0xbc8015241a8445add39de75477d0ac46f5884f55`; berachain `0xe6d15592f337f54e8bd47e56bbb22af12f0d4083`; berachain `0xf579c039c52ab795f0c4e358d3b462be883cdd9f` | ⚠️ Unaudited |
| InterchainToken | token | arbitrum | n/a | [`0xc87b37a581ec3257b734886d9d3a581f5a9d056c`](./contracts/arbitrum-42161/0xc87b37a581ec3257b734886d9d3a581f5a9d056c/) | ⚠️ Unaudited |
| LntOFTAdapter | adapter | arbitrum | n/a | [`0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63`](./contracts/arbitrum-42161/0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63/) | ⚠️ Unaudited |
| LntVault0GArbUpg | core_logic | arbitrum | n/a | [`0x3010abd2fb29496282111088f4240bbb13dba454`](./contracts/arbitrum-42161/0x3010abd2fb29496282111088f4240bbb13dba454/) | ⚠️ Unaudited |
| LntVault0GArbUpgV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x50bdb4a9a2bd520a13eb8d412854d95b1cc3aaac`](./contracts/arbitrum-42161/0x50bdb4a9a2bd520a13eb8d412854d95b1cc3aaac/); arbitrum `0x9619fedb5f44b9eafef465d5df954f807acdc6f0` | ⚠️ Unaudited |
| LntVaultAethirSigner | core_logic | arbitrum | n/a | [`0x8bf32a9603859235cdaf32e8201982a6cdcf411a`](./contracts/arbitrum-42161/0x8bf32a9603859235cdaf32e8201982a6cdcf411a/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | bsc | n/a | [`0x7b8a01b39d58278b5de7e48c8449c9f4f5170613`](./contracts/bsc-56/0x7b8a01b39d58278b5de7e48c8449c9f4f5170613/) | ⚠️ Unaudited |
| Protocol | unknown | arbitrum | n/a | [`0x170e0c91ffa71dc3c16d43f754b3aece688470c8`](./contracts/arbitrum-42161/0x170e0c91ffa71dc3c16d43f754b3aece688470c8/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | 2 deployments: bsc [`0x589b4931d426146864f6e3df652316a6d643ed8f`](./contracts/bsc-56/0x589b4931d426146864f6e3df652316a6d643ed8f/); bsc `0xc9a7f5b73e853664044ab31936d0e6583d8b1c79` | ⚠️ Unaudited |
| QuoterV2 | periphery | bsc | n/a | 2 deployments: bsc [`0x78d78e420da98ad378d7799be8f4af69033eb077`](./contracts/bsc-56/0x78d78e420da98ad378d7799be8f4af69033eb077/); bsc `0xd00bd441cef3623dc59b5d9b5ef96ee87b42db42` | ⚠️ Unaudited |
| SwapRouter02 | adapter | bsc | n/a | [`0xb971ef87ede563556b2ed4b1c0b0019111dd85d2`](./contracts/bsc-56/0xb971ef87ede563556b2ed4b1c0b0019111dd85d2/) | ⚠️ Unaudited |
| TickLens | unknown | bsc | n/a | 2 deployments: bsc [`0xd9270014d396281579760619ccf4c3af0501a47c`](./contracts/bsc-56/0xd9270014d396281579760619ccf4c3af0501a47c/); bsc `0xf5f4496219f31cdcba6130b5402873624585615a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x0281e98322e4e8e53491d576ee6a2bfce644c55c`](./contracts/bsc-56/0x0281e98322e4e8e53491d576ee6a2bfce644c55c/); bsc `0xaec98e489ae35f243eb63452f6ad233a6c97ee97` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x70421847195a77586ca46192e6e0337d610b0d7c`](./contracts/bsc-56/0x70421847195a77586ca46192e6e0337d610b0d7c/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | base | n/a | [`0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24`](./contracts/base-8453/0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | arbitrum | n/a | [`0xc30a053e4689a1080eb7dcbf09b3bf7b628309dd`](./contracts/arbitrum-42161/0xc30a053e4689a1080eb7dcbf09b3bf7b628309dd/) | ⚠️ Unaudited |
| V3Migrator | periphery | bsc | n/a | [`0x32681814957e0c13117ddc0c2aba232b5c9e760f`](./contracts/bsc-56/0x32681814957e0c13117ddc0c2aba232b5c9e760f/) | ⚠️ Unaudited |
| VaultCalculator | unknown | berachain | n/a | 8 deployments: berachain [`0x38402aa01220a1d19edfe061760877a353728214`](./contracts/berachain-80094/0x38402aa01220a1d19edfe061760877a353728214/); berachain `0x38d913835fa8115b60665d902f05b0cd772377fe`; berachain `0x831dc0dabe78b245c51f701ca21fb25760189c69`; berachain `0x856d8c0e177c6024160ec054f1fa9a5c24c0636d`; berachain `0x8d50571796c86fd7018b5711a10a498eeaf5761f`; berachain `0x9619fedb5f44b9eafef465d5df954f807acdc6f0`; berachain `0xefb7baabd0f31c3a7095dc861d695d9ea1ffd0a6`; berachain `0xfbfaf4eb4ed2e241510a1b7917f58401986492ad` | ⚠️ Unaudited |
| VestingToken | operational_periphery | bsc | n/a | 3 deployments: bsc [`0x24ef95c39dfaa8f9a5adf58edf76c5b22c34ef46`](./contracts/bsc-56/0x24ef95c39dfaa8f9a5adf58edf76c5b22c34ef46/); sei `0x92838ccdb9dceabc8e77415d73ecb06f8050cc5f`; base [`0x24ef95c39dfaa8f9a5adf58edf76c5b22c34ef46`](./contracts/base-8453/0x24ef95c39dfaa8f9a5adf58edf76c5b22c34ef46/) | ⚠️ Unaudited |
| VTSwapHook | unknown | arbitrum | n/a | [`0xbf4b4a83708474528a93c123f817e7f2a0637a88`](./contracts/arbitrum-42161/0xbf4b4a83708474528a93c123f817e7f2a0637a88/) | ⚠️ Unaudited |
| WSEI | unknown | sei | n/a | [`0xe30fedd158a2e3b13e9badaeabafc5516e95e8c7`](./contracts/sei-1329/0xe30fedd158a2e3b13e9badaeabafc5516e95e8c7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (35)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x53a1f55283245a99e25004079f6228def7603d91) | proxy | arbitrum | n/a | `0xf8dfaa0967c812a43d02059f2b14786dceb84e8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x831d93e55af23a2977e4da892d5005f4f2995071` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd4855cea813a843002d750da09c2e8d966c945c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed202a7050ee856ba9f0d3cd5eabcab6b8a23a88` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x1434ae03cfa29d314da73fc18013ccd04f100af6` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x17714e037a66df3f4faa78d6ba240ab5f50129f0` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x3362cb23043cb5e7c52711c5763c69fd513a3a88` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x4ceec87a23e4ae4171d4438210bdad7d2138dca7` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x4dc1ee827dd9b578f6d58c5657859c4aee077aa5` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x621239a06b12a1210152585305ec6c1e68917830` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x7b2c42c52c03d69930842162ea0b1028e367d139` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xb34b27e0fb109a7fa3faa0596d4d115c423c785b` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xb6ba61b2ed4a983f12b5b507255047c239ee1012` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xca9851e8c209906d612aa41d683a6db7fd2d5266` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xee5aeecd6c9409424f88163aff415efcb9027a88` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b72494fd4f092569b87e1a10f92268384f07a88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x056e530679857dbd884f7a9bd71e6b8a76909181` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f70e725553c8e3341e46caa4e9b303e9d810fc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x550b031acbc56b309a8ef28914959115f6a97202`; arbitrum `0x6e603014ace3ae06f34ffe259106af77c056d913` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x878aac1ca6b36a2841ae0200f2366a4178c2ca22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x893509c486def081b959bed440d97f15b014643a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c6e434bb1c51728bdcc250255c1f654471d85eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d50571796c86fd7018b5711a10a498eeaf5761f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa341e92b22b1a2c94b24163eae09aed34e8ea134` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba3a59d369bdde63929691721e063105bbe12fe9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0fa386ae92f18a783476d09121291a1972c30dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc78ae1d6ff234775f3f8d12f77cb7ed5cbc4e976` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7fc9ab355567af429fb5bb3b535eab4c7e48567` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeaed7fae18203674ce4e9d16d5f3af254c14a329` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebf1039d30d7a03e6f09d0815431db339017d031` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xefb7baabd0f31c3a7095dc861d695d9ea1ffd0a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf6f4a88ffd26fb14da4cff997ca773b06e3b2db3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x893509c486def081b959bed440d97f15b014643a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xeaed7fae18203674ce4e9d16d5f3af254c14a329` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xeb407254f0962de56d7984b41b12974f0ee44342` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit-report.md](https://doc.zoofi.io/security/audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xff8104251e7761163fac3211ef5583fb3f8583d6`](./contracts/base-8453/0xff8104251e7761163fac3211ef5583fb3f8583d6/) | AgentTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d8ce2a99bb6e3b7db580ed848240e4a0f9ae153`](./contracts/bsc-56/0x0d8ce2a99bb6e3b7db580ed848240e4a0f9ae153/) | BEP20TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13f34e49fefbe55fec4b62afb7adf3920b04370f`](./contracts/arbitrum-42161/0x13f34e49fefbe55fec4b62afb7adf3920b04370f/) | CheckerClaimAndWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x179b3dd2a3e5bf076c8523695996c3d0e764dcdb`](./contracts/arbitrum-42161/0x179b3dd2a3e5bf076c8523695996c3d0e764dcdb/) | CheckerClaimAndWithdraw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x349834ba064f4b9286888611dfdb9035c1112d9a`](./contracts/arbitrum-42161/0x349834ba064f4b9286888611dfdb9035c1112d9a/) | CheckerLicenseNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc227e25544edd261a9066932c71a25f4504972f1`](./contracts/arbitrum-42161/0xc227e25544edd261a9066932c71a25f4504972f1/) | CheckerLicenseNFTv2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfa4dfdedf41e3b41529cc161b542d84c4a3f31da`](./contracts/arbitrum-42161/0xfa4dfdedf41e3b41529cc161b542d84c4a3f31da/) | CheckerNFTClaim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x71f6b49ae1558357bbb5a6074f1143c46cbca03d`](./contracts/sei-1329/0x71f6b49ae1558357bbb5a6074f1143c46cbca03d/) | DragonswapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xa4cf2f53d1195addde9e4d3aca54f556895712f2`](./contracts/sei-1329/0xa4cf2f53d1195addde9e4d3aca54f556895712f2/) | DragonswapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x34975246b5a3c8e9e1c19bf9b6a6088b741d4e2d`](./contracts/sei-1329/0x34975246b5a3c8e9e1c19bf9b6a6088b741d4e2d/) | DragonswapStakerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63`](./contracts/berachain-80094/0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63/) | InfraredBribeVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x702b707c2f8dd26f4f1e51cf425035d355a02767`](./contracts/berachain-80094/0x702b707c2f8dd26f4f1e51cf425035d355a02767/) | InfraredBribeVaultV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc87b37a581ec3257b734886d9d3a581f5a9d056c`](./contracts/arbitrum-42161/0xc87b37a581ec3257b734886d9d3a581f5a9d056c/) | InterchainToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63`](./contracts/arbitrum-42161/0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63/) | LntOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3010abd2fb29496282111088f4240bbb13dba454`](./contracts/arbitrum-42161/0x3010abd2fb29496282111088f4240bbb13dba454/) | LntVault0GArbUpg | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x50bdb4a9a2bd520a13eb8d412854d95b1cc3aaac`](./contracts/arbitrum-42161/0x50bdb4a9a2bd520a13eb8d412854d95b1cc3aaac/) | LntVault0GArbUpgV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8bf32a9603859235cdaf32e8201982a6cdcf411a`](./contracts/arbitrum-42161/0x8bf32a9603859235cdaf32e8201982a6cdcf411a/) | LntVaultAethirSigner | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7b8a01b39d58278b5de7e48c8449c9f4f5170613`](./contracts/bsc-56/0x7b8a01b39d58278b5de7e48c8449c9f4f5170613/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x170e0c91ffa71dc3c16d43f754b3aece688470c8`](./contracts/arbitrum-42161/0x170e0c91ffa71dc3c16d43f754b3aece688470c8/) | Protocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x78d78e420da98ad378d7799be8f4af69033eb077`](./contracts/bsc-56/0x78d78e420da98ad378d7799be8f4af69033eb077/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb971ef87ede563556b2ed4b1c0b0019111dd85d2`](./contracts/bsc-56/0xb971ef87ede563556b2ed4b1c0b0019111dd85d2/) | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd9270014d396281579760619ccf4c3af0501a47c`](./contracts/bsc-56/0xd9270014d396281579760619ccf4c3af0501a47c/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x32681814957e0c13117ddc0c2aba232b5c9e760f`](./contracts/bsc-56/0x32681814957e0c13117ddc0c2aba232b5c9e760f/) | V3Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x38402aa01220a1d19edfe061760877a353728214`](./contracts/berachain-80094/0x38402aa01220a1d19edfe061760877a353728214/) | VaultCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x24ef95c39dfaa8f9a5adf58edf76c5b22c34ef46`](./contracts/bsc-56/0x24ef95c39dfaa8f9a5adf58edf76c5b22c34ef46/) | VestingToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbf4b4a83708474528a93c123f817e7f2a0637a88`](./contracts/arbitrum-42161/0xbf4b4a83708474528a93c123f817e7f2a0637a88/) | VTSwapHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xe30fedd158a2e3b13e9badaeabafc5516e95e8c7`](./contracts/sei-1329/0xe30fedd158a2e3b13e9badaeabafc5516e95e8c7/) | WSEI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 37 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3916] audit-report.md

Fork inheritance lineage and inherited audits are included when available.
