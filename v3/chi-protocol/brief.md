# Agentic Audit Brief: Chi Protocol

## Project Overview

- Project: Chi Protocol (`chi-protocol`)
- Website: [https://app.chiprotocol.io/](https://app.chiprotocol.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:39.403Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 49 unique implementations (84 raw deployments)
- DeFi Llama TVL: $7,420.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Partially Algorithmic Stablecoin. Structurally: 41 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 12 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 8 common project-authored base contract(s) (proxy, erc1967upgrade, adapter). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 93; live-surface contracts included: 84 (72 live, 12 unknown).
- Excluded by liveness: 9 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/40 (5.0%)
- Deployed-live implementations: 40 of 49 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/40
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 49
- Raw deployments: 84
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 2 | 5.0% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CHI | unknown | ethereum | n/a | [`0x3b2141...b712ba`](./contracts/ethereum-1/0x3b21418081528845a6df4e970bd2185545b712ba/) | ✅ Audited |
| USC | unknown | ethereum | n/a | [`0x38547d...3e142c`](./contracts/ethereum-1/0x38547d918b9645f2d94336b6b61aeb08053e142c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbitrageV2 | unknown | ethereum | n/a | [`0x9d5e27...6135c5`](./contracts/ethereum-1/0x9d5e2734a4b957999f0c29a172c668907e6135c5/) | ⚠️ Unaudited |
| ArbitrageV3 | unknown | ethereum | n/a | [`0xf19375...002b15`](./contracts/ethereum-1/0xf19375b3668c377cec8dd6c8528651f83b002b15/) | ⚠️ Unaudited |
| ArbitrageV4 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x8329f5...8ee2c4`](./contracts/ethereum-1/0x8329f59da55a171d051905fbf8bfe5f01c8ee2c4/); ethereum `0x8b75de...eb84bd`; ethereum `0xdf7391...de2e83` | ⚠️ Unaudited |
| ChiLocking | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcdcf3c...a866a3`](./contracts/ethereum-1/0xcdcf3c9a1b7b988c833aa19902b2e53aa3a866a3/); ethereum `0xe3dd17...956603` | ⚠️ Unaudited |
| ChiStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x31ee9c...5d8c5e`](./contracts/ethereum-1/0x31ee9cee0f32dcd9ab61558e6dff2fe8de5d8c5e/); ethereum `0xab1dca...e241c6` | ⚠️ Unaudited |
| ChiVesting | unknown | ethereum | n/a | 2 deployments: ethereum [`0x426dba...ef79fc`](./contracts/ethereum-1/0x426dbaa2b33ce1b833c13b72503f5128afef79fc/); ethereum `0x854936...f72239` | ⚠️ Unaudited |
| DataProvider | unknown | ethereum | n/a | 11 deployments: ethereum [`0x1a3870...d26bd1`](./contracts/ethereum-1/0x1a387041aa6660cd801b5c96aa1b4028a7d26bd1/); ethereum `0x3619c8...fcf4ea`; ethereum `0x65c03d...cdfa37`; ethereum `0x65f9e9...3bf5b9`; ethereum `0x8012df...92bf03`; ethereum `0x8917ac...93f2a4`; ethereum `0x8d0175...1fe74e`; ethereum `0x9d689d...7a050e`; ethereum `0xd6ec6b...18ca20`; ethereum `0xdf313b...5c4900`; ethereum `0xec6ad5...a1efe4` | ⚠️ Unaudited |
| LockingManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x06ad9f...1f88ae`](./contracts/ethereum-1/0x06ad9f7dcf8db10b1a39168e32ace2425a1f88ae/); ethereum `0xb8aff4...4ac10c` | ⚠️ Unaudited |
| LockingManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x371a13...f98ff5`](./contracts/ethereum-1/0x371a13db03e929944ad61530f5bfc7a86cf98ff5/); ethereum `0x40c53d...736331` | ⚠️ Unaudited |
| LockingManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6ac12e...be620a`](./contracts/ethereum-1/0x6ac12ec9e0463004304d46559c8df9b130be620a/); ethereum `0xb976e5...be9a09` | ⚠️ Unaudited |
| LockingManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x8a911b...b9b0e0`](./contracts/ethereum-1/0x8a911b41fbc5592805ad9046bd0252b1f6b9b0e0/); ethereum `0xda8687...9d4758` | ⚠️ Unaudited |
| LockingManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x96f325...b096b1`](./contracts/ethereum-1/0x96f3258e9c15ea33c82cd062220634df7fb096b1/); ethereum `0xf602cb...48b065` | ⚠️ Unaudited |
| LPRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3ccc8e...6b46de`](./contracts/ethereum-1/0x3ccc8e02eb810d84da0107f0bd6dd90ee76b46de/); ethereum `0xc34ac3...726cb7` | ⚠️ Unaudited |
| LPStaking | unknown | ethereum | n/a | [`0x998d15...cd1134`](./contracts/ethereum-1/0x998d150449aad4518732f6551dee0bbeaacd1134/) | ⚠️ Unaudited |
| OCHI | unknown | ethereum | n/a | [`0x1bdd31...ca5b97`](./contracts/ethereum-1/0x1bdd314be506ce64ffa98640185eb53963ca5b97/) | ⚠️ Unaudited |
| OCHI | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8c3904...335daa`](./contracts/ethereum-1/0x8c3904bc848f6beff87c37f0414430a54b335daa/); ethereum `0xdd0255...9fe9e0` | ⚠️ Unaudited |
| PriceFeedAggregator | operational_periphery | ethereum | n/a | [`0xb3a362...933bd0`](./contracts/ethereum-1/0xb3a36232ecc1da6c8d0d3f417e00406566933bd0/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x347451...8704ea`](./contracts/ethereum-1/0x347451e2bc19cb63e6a370d5ab8d09591b8704ea/) | ⚠️ Unaudited |
| ReserveHolder | unknown | ethereum | n/a | [`0xa579c8...d31bfd`](./contracts/ethereum-1/0xa579c86bd3e482956b9ac5a99ea279d03dd31bfd/) | ⚠️ Unaudited |
| ReserveHolderV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b944e...84a3f5`](./contracts/ethereum-1/0x6b944e7903d05e0396cfc263a5f563e93d84a3f5/); ethereum `0xc36303...817e2a` | ⚠️ Unaudited |
| RewardController | unknown | ethereum | n/a | [`0x03f626...f6a5fd`](./contracts/ethereum-1/0x03f6265357d06e12d84771569f891cc244f6a5fd/) | ⚠️ Unaudited |
| RewardControllerV2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x157395...003f63`](./contracts/ethereum-1/0x1573955078a502490e542694e90042f631003f63/); ethereum `0x16b5db...b27899`; ethereum `0x6347c0...97b064` | ⚠️ Unaudited |
| RewardControllerV2 | governance | ethereum | n/a | 2 deployments: ethereum [`0xb9e08d...9d0258`](./contracts/ethereum-1/0xb9e08d13d2694b561a5033aca07ba7dea49d0258/); ethereum `0xeeddeb...bce407` | ⚠️ Unaudited |
| StakedToken | token | ethereum | n/a | [`0xf40a7f...ae5668`](./contracts/ethereum-1/0xf40a7f75c0e5cf5fefd56c40fdf494b58dae5668/) | ⚠️ Unaudited |
| StakingManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x140245...8a6b16`](./contracts/ethereum-1/0x1402452d1ff1066acb48aa2d5e4c0ca81a8a6b16/); ethereum `0x3881d1...83b75d` | ⚠️ Unaudited |
| StakingManager | unknown | ethereum | n/a | [`0x15337d...8fa6d3`](./contracts/ethereum-1/0x15337d6cfbf69fb1446fa870288420d4498fa6d3/) | ⚠️ Unaudited |
| stUSC | unknown | ethereum | n/a | [`0x20c70f...7dac93`](./contracts/ethereum-1/0x20c70fdf07bc9873f5b67056a76b5c9cf47dac93/) | ⚠️ Unaudited |
| stUSC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6dd973...702761`](./contracts/ethereum-1/0x6dd9738fb2277fcd6b2f5eb5fdaaaec32e702761/); ethereum `0x8bbe02...4c91d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x037528...90318d`](./contracts/ethereum-1/0x037528457cf5b0b9dab641fd7f0ce8fc9690318d/); ethereum `0xd85c49...22126f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x60abb5...a505e3`](./contracts/ethereum-1/0x60abb55c8488698153db0af2af362edb25a505e3/); ethereum `0xc548e0...83ec42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | 3 deployments: ethereum [`0x85cd28...4bb307`](./contracts/ethereum-1/0x85cd2803223c864d625b1d289fdd3cee7e4bb307/); ethereum `0xb9cdfa...8909a1`; ethereum `0xd66dab...8685e6` | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | n/a | [`0xa4b80f...f83d4d`](./contracts/ethereum-1/0xa4b80f3ba55a4ed1316b173f64d5d036d7f83d4d/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 2 deployments: ethereum [`0x88d1ff...da8739`](./contracts/ethereum-1/0x88d1ffb9f94fc881ea0d83dddcdb196ee9da8739/); ethereum `0x9f93f4...ac6bdc` | ⚠️ Unaudited |
| USCStaking | unknown | ethereum | n/a | [`0x18ca6c...9d0a1b`](./contracts/ethereum-1/0x18ca6cbfa7957d6d52b632458aa41a15d59d0a1b/) | ⚠️ Unaudited |
| USCStakingV2 | unknown | ethereum | n/a | [`0xfb9287...e1b958`](./contracts/ethereum-1/0xfb928766557aadd868c07bce1895d99796e1b958/) | ⚠️ Unaudited |
| WeEthAdapter | adapter | ethereum | n/a | [`0x7f6da7...8af5b6`](./contracts/ethereum-1/0x7f6da7071d3524c61c2c87c4e631e52cbc8af5b6/) | ⚠️ Unaudited |
| wstUSC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6196dc...2b58f0`](./contracts/ethereum-1/0x6196dc0d965816e34feae12fcb8c8094e72b58f0/); ethereum `0xa90f87...9111dd` | ⚠️ Unaudited |
| wstUSC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x97fdee...730ba2`](./contracts/ethereum-1/0x97fdeec510b5fb34b675d13196af0f8313730ba2/); ethereum `0xb7343a...963871` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x438589...392f7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52e11e...ddff0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b06e6...103c59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e46b9...b8a1ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71c349...3eeb46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72fe0f...a8b356` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc2819...5597de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd383a2...66437c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4cc67...c156f9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ABDK_Chi_ChiProtocol_v_1_0.pdf](https://github.com/abdk-consulting/audits/blob/main/chi/ABDK_Chi_ChiProtocol_v_1_0.pdf) | ABDK | Audit | 2023-12 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
