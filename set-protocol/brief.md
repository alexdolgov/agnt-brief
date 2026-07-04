# Agentic Audit Brief: Set Protocol

## Project Overview

- Project: Set Protocol (`set-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:55.327Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: ethereum
- Contract surface: 248 unique implementations (326 raw deployments)
- DeFi Llama TVL: $8,913,031.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 128 project-authored contract(s) across 1 chain(s); 9 ERC20 tokens, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 10 common project-authored base contract(s) (baseextension, timelockupgrade, mutualupgrade). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Index Coop** (`index-coop`) in the AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, SignedSnapshotStakingPool subsystem.
7 audits inherited from `index-coop`, scoped to that subsystem.

Total inherited audits: 7. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 521; live-surface contracts included: 326 (118 live, 208 unknown).
- Excluded by liveness: 195 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/39 (15.4%)
- Deployed-live implementations: 40 of 248 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/40
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 208
- Unique implementations: 248
- Raw deployments: 326
- Audits discovered: 7 (0 direct, 7 inherited from forked code)
- Scoreable audits (matched contracts): 7
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/indexcoop/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 15.4% (Code4rena, Immunefi, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 6 | 15.0% | 2022-06 |
| Immunefi | Tier 1 | 6 | 15.0% | n/a |
| iosiro | Tier 2 | 6 | 15.0% | 2021-09 |
| OpenZeppelin | Tier 1 | 6 | 15.0% | n/a |
| unknown | Tier 2 | 6 | 15.0% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CustomOracleNavIssuanceModule | unknown | ethereum | n/a | [`0x234467...8a1ba3`](./contracts/ethereum-1/0x2344674b23ad076908fd2396373cfe9cd48a1ba3/) | ✅ Audited |
| DEXAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x25a880...3f6fca`](./contracts/ethereum-1/0x25a8803b9b611cc13d807829d73049cd803f6fca/); ethereum `0xb7cc88...b74598` | ✅ Audited |
| DEXAdapter | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3026eb...a0a860`](./contracts/ethereum-1/0x3026eb2097468fcdc5387af73379948f8aa0a860/); ethereum `0x6408e1...ed8044`; ethereum `0xc43ee8...3f2eb9` | ✅ Audited |
| SetToken | unknown | ethereum | n/a | 10 deployments: ethereum [`0x02ec0c...bc36a6`](./contracts/ethereum-1/0x02ec0c9e6d3c08b8fb12fec51ccba048afbc36a6/); ethereum `0x0b498f...801c2b`; ethereum `0x1494ca...ba3c2b`; ethereum `0x48ccc6...3bbd0f`; ethereum `0x58222d...163a4a`; ethereum `0x72e364...d634d7`; ethereum `0x7c07f7...256a84`; ethereum `0xaa6e81...5665bd`; ethereum `0xf860f9...bbf1bc`; ethereum `0xfa10e1...3e4e37` | ✅ Audited |
| SetTokenCreator | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2758bf...47b75e`](./contracts/ethereum-1/0x2758bf6af0ec63f1710d3d7890e1c263a247b75e/); ethereum `0x86a73e...14ef43`; ethereum `0xef72d3...fd748a` | ✅ Audited |
| SignedSnapshotStakingPool | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2881cc...112e0d`](./contracts/ethereum-1/0x2881cc01aad96c70319f308906d49c3784112e0d/); ethereum `0x3329ef...24cd42`; ethereum `0x52ceed...913886`; ethereum `0xbe0302...09a9c6` | ✅ Audited |

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveLeverageModule | unknown | ethereum | n/a | [`0x251bd1...5f51dc`](./contracts/ethereum-1/0x251bd1d42df1f153d86a5ba2305faade4d5f51dc/) | ⚠️ Unaudited |
| AirdropExtension | unknown | ethereum | n/a | 6 deployments: ethereum [`0x07a578...8c03c9`](./contracts/ethereum-1/0x07a578e02db4e1d518ee1856580c7ac0058c03c9/); ethereum `0x0fba2b...e59183`; ethereum `0x102829...655fa3`; ethereum `0x2cf29f...cbcac1`; ethereum `0x63bf66...8cc0eb`; ethereum `0xea381e...21df5f` | ⚠️ Unaudited |
| AuctionRebalanceExtension | unknown | ethereum | n/a | 6 deployments: ethereum [`0x2b5990...58d01b`](./contracts/ethereum-1/0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b/); ethereum `0x418a29...f2092b`; ethereum `0x94caea...37ff4a`; ethereum `0xa985e6...09ba84`; ethereum `0xacce49...2597dc`; ethereum `0xeafb43...d72d26` | ⚠️ Unaudited |
| BasicIssuanceModule | unknown | ethereum | n/a | [`0xd8ef3c...32f94d`](./contracts/ethereum-1/0xd8ef3cace8b4907117a45b0b125c68560532f94d/) | ⚠️ Unaudited |
| Core | unknown | ethereum | n/a | [`0xf55186...a120c8`](./contracts/ethereum-1/0xf55186cc537e7067ea616f2aae007b4427a120c8/) | ⚠️ Unaudited |
| DebtIssuanceModule | unknown | ethereum | n/a | [`0x39f024...2ecb92`](./contracts/ethereum-1/0x39f024d621367c044bace2bf0fb15fb3612ecb92/) | ⚠️ Unaudited |
| DebtIssuanceModuleV2 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x04b59f...85f0f3`](./contracts/ethereum-1/0x04b59f9f09750c044d7cfbc177561e409085f0f3/); ethereum `0x515a09...58381c`; ethereum `0x69a592...f28d57`; ethereum `0xa0a98e...a8fd59` | ⚠️ Unaudited |
| DebtIssuanceModuleV3 | unknown | ethereum | n/a | [`0x86b7c6...875193`](./contracts/ethereum-1/0x86b7c605c03b9bbb0f6a25fbbb63baf15d875193/) | ⚠️ Unaudited |
| DelegatedManager | unknown | ethereum | n/a | [`0xb04d1d...bee140`](./contracts/ethereum-1/0xb04d1dae75c0764e8ff5f835d2f0771101bee140/) | ⚠️ Unaudited |
| DelegatedManagerFactory | unknown | ethereum | n/a | [`0x38d8fa...a3b235`](./contracts/ethereum-1/0x38d8fa043913e8ef6466d01bef4af42cafa3b235/) | ⚠️ Unaudited |
| DEXAdapterV2 | unknown | ethereum | n/a | [`0x888589...d5de8d`](./contracts/ethereum-1/0x88858930b3f1946a5c41a5ded7b5335431d5de8d/) | ⚠️ Unaudited |
| DEXAdapterV3 | unknown | ethereum | n/a | [`0x28764a...8e50ef`](./contracts/ethereum-1/0x28764a27139d7241c9198c43720a0df1c18e50ef/) | ⚠️ Unaudited |
| ExchangeIssuanceIcEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x40e8e5...2fe8a3`](./contracts/ethereum-1/0x40e8e58052272496dcf42953cf7e699b522fe8a3/); ethereum `0x945db3...f4e2d1` | ⚠️ Unaudited |
| ExchangeIssuanceLeveraged | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f2c59...538d64`](./contracts/ethereum-1/0x2f2c59212d1d0468efa456fe51f49ed4a5538d64/); ethereum `0x981b21...a794e1` | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | ethereum | n/a | [`0xf42ecd...6e4b25`](./contracts/ethereum-1/0xf42ecdc112365ff79a745b4cf7d4c266bd6e4b25/) | ⚠️ Unaudited |
| FeeSplitExtension | unknown | ethereum | n/a | 30 deployments: ethereum [`0x026aa0...135518`](./contracts/ethereum-1/0x026aa079c4f9cff80b0521b64f8f2d8ccf135518/); ethereum `0x04d58e...b2c08b`; ethereum `0x0d5f4c...ecdfca`; ethereum `0x0daf2d...077ffd`; ethereum `0x0e716b...cc3d5f`; ethereum `0x1554a6...5070c9`; ethereum `0x1b7d68...c54e74`; ethereum `0x1d8e28...33d185`; ethereum `0x23aa81...990a8b`; ethereum `0x2573f2...cc28aa`; ethereum `0x5d6476...39372c`; ethereum `0x5e568e...f85bf1`; ethereum `0x623c7b...6e7dee`; ethereum `0x7ec2ac...d6b41c`; ethereum `0x7febfc...d299d0`; ethereum `0x83adee...0b4491`; ethereum `0x87a120...49e6ca`; ethereum `0x978177...cd373c`; ethereum `0xa8a23b...2cfaec`; ethereum `0xa9c13c...f97bc3`; ethereum `0xab7eba...06b82e`; ethereum `0xac761f...4ab05a`; ethereum `0xafe68a...995814`; ethereum `0xb9a238...e51987`; ethereum `0xc62e39...bf9563`; ethereum `0xcb63b9...4bfdaf`; ethereum `0xd17300...4775dd`; ethereum `0xd5a152...fd6bb9`; ethereum `0xe833c9...c1ec3a`; ethereum `0xf1872a...8e8f51` | ⚠️ Unaudited |
| FixedRebalanceExtension | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5f98cb...48efbb`](./contracts/ethereum-1/0x5f98cbb7ac52fa5ef3660b7ab34e03398b48efbb/); ethereum `0x9fe734...26ad84` | ⚠️ Unaudited |
| FlashMint4626 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe48370...127f53`](./contracts/ethereum-1/0xe483701d4f8c3b9b7b662fee2543503d6d127f53/); ethereum `0xf5cf95...79aca9` | ⚠️ Unaudited |
| FlashMintDex | unknown | ethereum | n/a | [`0xcde265...6d277e`](./contracts/ethereum-1/0xcde2657a980a8e2b7c5957d30b2ac768cb6d277e/) | ⚠️ Unaudited |
| FlashMintHyETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1c19c6...28d7ad`](./contracts/ethereum-1/0x1c19c605cb071e22a0a46bc9e24b5ce64a28d7ad/); ethereum `0xc290c3...20109a` | ⚠️ Unaudited |
| FlashMintHyETHV2 | unknown | ethereum | n/a | [`0x940ecb...aa6a7e`](./contracts/ethereum-1/0x940ecb16416fe52856e8653b2958bfd556aa6a7e/) | ⚠️ Unaudited |
| FlashMintHyETHV3 | unknown | ethereum | n/a | [`0xcb1eea...dddf49`](./contracts/ethereum-1/0xcb1eea349f25288627f008c5e2a69b684bdddf49/) | ⚠️ Unaudited |
| FlashMintLeveraged | unknown | ethereum | n/a | 5 deployments: ethereum [`0x45c005...ca45d0`](./contracts/ethereum-1/0x45c00508c14601fd1c1e296eb3c0e3eeedca45d0/); ethereum `0x63bcc1...bf863e`; ethereum `0x766304...ef055d`; ethereum `0x9d116b...1d46ed`; ethereum `0xb4354d...96db48` | ⚠️ Unaudited |
| FlashMintNAV | unknown | ethereum | n/a | [`0x62f160...2ea1cf`](./contracts/ethereum-1/0x62f160391d2f1e3a176f32f51ade6ed8bb2ea1cf/) | ⚠️ Unaudited |
| FlashMintNotional | unknown | ethereum | n/a | [`0x9da999...7bd476`](./contracts/ethereum-1/0x9da9992b5d01bd0efb1ee8310e8011dc837bd476/) | ⚠️ Unaudited |
| FlashMintWrapped | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5c0d0a...69faa2`](./contracts/ethereum-1/0x5c0d0a9a0c3a0a5b591496ff894686893b69faa2/); ethereum `0x7dde62...207801` | ⚠️ Unaudited |
| FlexibleLeverageStrategyExtension | unknown | ethereum | n/a | 4 deployments: ethereum [`0x097afa...d2911f`](./contracts/ethereum-1/0x097afae7b0e0ea0880c8dba7475c12a1f3d2911f/); ethereum `0x9ba41a...0c00a1`; ethereum `0xc0584e...85c610`; ethereum `0xfd4ea5...37e9ad` | ⚠️ Unaudited |
| FLIRebalanceViewer | unknown | ethereum | n/a | 4 deployments: ethereum [`0x14d9f0...4e37eb`](./contracts/ethereum-1/0x14d9f0d529e80747b128ac2b145e4208e44e37eb/); ethereum `0x463215...e763ee`; ethereum `0x517f76...90efa7`; ethereum `0x8f4517...536217` | ⚠️ Unaudited |
| OptimisticAuctionRebalanceExtensionV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4677f9...510732`](./contracts/ethereum-1/0x4677f9eac72e10469949d73d8ef71883ce510732/); ethereum `0xf0d343...c2cec7` | ⚠️ Unaudited |
| ProtocolViewer | unknown | ethereum | n/a | [`0x6b65c4...6ef2e5`](./contracts/ethereum-1/0x6b65c4760f56ea89a21193af5b909395766ef2e5/) | ⚠️ Unaudited |
| PrtFeeSplitExtension | unknown | ethereum | n/a | [`0x43c3ef...f90613`](./contracts/ethereum-1/0x43c3ef32e52f17777789c71002ef4a887df90613/) | ⚠️ Unaudited |
| StreamingFeeModule | unknown | ethereum | n/a | 3 deployments: ethereum [`0x08f866...10cdec`](./contracts/ethereum-1/0x08f866c74205617b6f3903ef481798eced10cdec/); ethereum `0x165edf...b9a186`; ethereum `0x3d8d14...eb901b` | ⚠️ Unaudited |
| TradeModule | unknown | ethereum | n/a | [`0x90f765...41c129`](./contracts/ethereum-1/0x90f765f63e7dc5ae97d6c576bf693fb6af41c129/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | [`0x5b6787...d986dc`](./contracts/ethereum-1/0x5b67871c3a857de81a1ca0f9f7945e5670d986dc/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (208)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0156ab...84e5c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x045f01...621fc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04fbed...2c724c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x056ec1...a8c537` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06da99...66f012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0892e4...719c42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0da425...66b488` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e6020...336b28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12472d...71fc12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12951b...d9bd45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12dfc5...c4490c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1434f1...5c4b25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14f032...04c53d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x172620...b13b5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17efe2...1509fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x186485...b0a706` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18b739...7372af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19ab95...606992` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19c6d1...651aac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d763b...b9e4d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d8ab7...774c9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1db929...f60467` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e43c2...6d4dd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e7c93...3ee4f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f6ee9...3165e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fa77d...2cc91c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2020a4...405ce7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20fc9b...bf9e53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22d3f7...db2771` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25c499...7b305c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x263c23...ec1c05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26de33...135b03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x285c5b...efb95e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x289178...44358c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x290e20...26167c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x293dcc...158151` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ba59e...72937a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c2c21...ec9d00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d4b48...f5ed51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e309c...50de21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ea9ba...7e9830` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f5076...208d9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x323f6f...7393cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x328967...140010` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33fa3f...44563e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x365beb...a36861` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x370041...ea59ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38e546...34a92b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39f920...85f244` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ac811...25ef85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b71dc...784cc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bec87...861e84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d5f04...dfd299` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d9da9...da045e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e262d...73dc39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fec72...1600a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x422405...929e44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x422790...189775` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42c225...148019` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x460031...9a4d19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x468905...3d886c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4737ed...21046c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47ef27...e09ffd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48c985...b4dad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a4dff...bdc621` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c4c64...f0cefa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c5e0c...361770` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d2147...9e90ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f08ee...f520ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f7028...f0de4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fee5d...4ee034` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x504e22...3bf061` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50711c...76d154` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x510cae...a919ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5188fc...ad4805` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5374e7...a6c787` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x558eb5...0d581c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56413b...af1008` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x595f8d...286d3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a1e0f...0b92c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e64f5...486ca4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ecd8e...8972ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5efda1...8fc85f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60ca2b...522fc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6169c6...6f1d9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x616dad...a4ff54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6462ff...d962a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x653d46...c93a36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65d103...e30d46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x678292...732f88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x680228...2573ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6804c7...330a28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68fb1f...5034b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d9e20...9912c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f76cf...528742` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x706c76...d8cb74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71a254...c5802a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72a944...82d285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75fbbd...adcfb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77116a...23fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7734df...198075` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79cfd6...4436a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b17dc...2718c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b4c75...d4002a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b651c...56ccfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b79f4...396b73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x805195...385950` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x815e82...6526b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x818c63...dd5d40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8440f6...3e21c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85fa4e...cf6b77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x864fea...574c17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88b2cb...3d3faf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x896c7a...930ac0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89829a...454eba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89bfd8...d17a41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89c714...275fa8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a0184...23eb69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a0b06...badb52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ced7e...ba9614` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d5cf8...659c69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ddf05...195117` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8de07c...2a9abe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e32db...276783` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ffc4f...8924a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x900fd0...4ab506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91866a...59e4b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91fbdc...31d2a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x925ffe...dd8b24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x931a80...d37d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9378ad...48fead` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x952464...222976` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95b485...e1f9a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x970694...83f319` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97b4d7...b2f614` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9865f7...e1ed3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a56e2...d9f778` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cfe76...70919b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d2e0b...bd27ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d411a...496ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9daae5...36ddf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e3951...b6043e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e49d7...369aa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e9a0a...b097d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f30fb...9fd0d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0e3d1...22e7ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1821d...db9690` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa245c6...2de355` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa26191...24d7fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2bb0b...101c61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa32a06...78439a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa361f9...d8ca96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa65579...3bbb25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa71978...81ec66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8a895...f1ddb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabe137...608994` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad2d61...7ac5ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadcfd8...6f5bfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadd948...00c79c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaee656...b7117c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafcb6e...56b24b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2aa87...61f218` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2d113...3f1ddb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4b3a9...df8fb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb50f3f...39c259` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5f100...495a2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba1ba9...28d16d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbafb2f...31c71c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb570b...68f12c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc006e...6e6770` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcad60...67bf53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0aafe...6365ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc12092...74ebab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc19a26...42c1da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc360e6...754d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc488e1...5bb588` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4d32a...f83af1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5d964...21097e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6e977...cf5e7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7e2bf...1e6256` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8dba7...2425d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc91410...b7c118` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce0348...fb6153` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd04aab...cdac82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd07f5a...ae197f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd50f2f...9d2487` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd629f4...648348` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7937c...400852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd85af8...1088eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd88e46...fdede8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdad75a...3fdd15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc733e...4d86ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd5825...6d5382` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe66364...12dae6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a8f8...c61478` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7e6ac...8e4c0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea01d1...fde7d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedc75f...15d053` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeebaba...9a63b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf00ff2...2a4ed7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf04ff1...b3c581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2c421...1846ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3055e...d7bd37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3be07...3d43be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5f8d1...b68f0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8ba20...e6b448` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8f9a2...9ece56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfff8d0...bbbd4a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [IndexIcUSDAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexIcUSDAuditReport.md) | unknown | Audit | 2024-09 | aging | Inherited from Index Coop — forked code, scoped to AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, +1 more | inherited | 22 | n/a |
| [IndexPRTAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexPRTAuditReport.md) | unknown | Audit | 2024-07 | stale | Inherited from Index Coop — forked code, scoped to AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, +1 more | inherited | 22 | n/a |
| [IndexDIMv3AuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexDIMv3AuditReport.md) | unknown | Audit | 2024-05 | stale | Inherited from Index Coop — forked code, scoped to AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, +1 more | inherited | 22 | n/a |
| [code4rena.com/reports/2022-06-notional-coop](https://code4rena.com/reports/2022-06-notional-coop) | Code4rena | Contest | 2022-06 | stale | Inherited from Index Coop — forked code, scoped to AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, +1 more | inherited | 22 | n/a |
| [8a96ae7b9746ba8394dc6c16202a6b64 (GitHub directory)](https://gist.github.com/bernard-wagner/8a96ae7b9746ba8394dc6c16202a6b64) | iosiro | Audit | 2021-09 | stale | Inherited from Index Coop — forked code, scoped to AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, +1 more | inherited | 22 | n/a |
| [immunefi.com/bug-bounty/indexcoop/information](https://immunefi.com/bug-bounty/indexcoop/information) | Immunefi | Bug Bounty | Ongoing | n/a | Inherited from Index Coop — forked code, scoped to AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, +1 more | n/a | n/a | n/a |
| [www.openzeppelin.com/news/set-protocol-audit](https://www.openzeppelin.com/news/set-protocol-audit) | OpenZeppelin | Audit | n/a | unknown | Inherited from Index Coop — forked code, scoped to AaveLeverageStrategyExtension, CustomOracleNavIssuanceModule, DEXAdapter, SetToken, +1 more | inherited | 22 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x07a578...8c03c9`](./contracts/ethereum-1/0x07a578e02db4e1d518ee1856580c7ac0058c03c9/) | AirdropExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b5990...58d01b`](./contracts/ethereum-1/0x2b5990df9212de51c6f6ccd2d651e6ba5158d01b/) | AuctionRebalanceExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8ef3c...32f94d`](./contracts/ethereum-1/0xd8ef3cace8b4907117a45b0b125c68560532f94d/) | BasicIssuanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf55186...a120c8`](./contracts/ethereum-1/0xf55186cc537e7067ea616f2aae007b4427a120c8/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39f024...2ecb92`](./contracts/ethereum-1/0x39f024d621367c044bace2bf0fb15fb3612ecb92/) | DebtIssuanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b59f...85f0f3`](./contracts/ethereum-1/0x04b59f9f09750c044d7cfbc177561e409085f0f3/) | DebtIssuanceModuleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86b7c6...875193`](./contracts/ethereum-1/0x86b7c605c03b9bbb0f6a25fbbb63baf15d875193/) | DebtIssuanceModuleV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb04d1d...bee140`](./contracts/ethereum-1/0xb04d1dae75c0764e8ff5f835d2f0771101bee140/) | DelegatedManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38d8fa...a3b235`](./contracts/ethereum-1/0x38d8fa043913e8ef6466d01bef4af42cafa3b235/) | DelegatedManagerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x888589...d5de8d`](./contracts/ethereum-1/0x88858930b3f1946a5c41a5ded7b5335431d5de8d/) | DEXAdapterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28764a...8e50ef`](./contracts/ethereum-1/0x28764a27139d7241c9198c43720a0df1c18e50ef/) | DEXAdapterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40e8e5...2fe8a3`](./contracts/ethereum-1/0x40e8e58052272496dcf42953cf7e699b522fe8a3/) | ExchangeIssuanceIcEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f2c59...538d64`](./contracts/ethereum-1/0x2f2c59212d1d0468efa456fe51f49ed4a5538d64/) | ExchangeIssuanceLeveraged | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf42ecd...6e4b25`](./contracts/ethereum-1/0xf42ecdc112365ff79a745b4cf7d4c266bd6e4b25/) | ExchangeIssuanceZeroEx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x026aa0...135518`](./contracts/ethereum-1/0x026aa079c4f9cff80b0521b64f8f2d8ccf135518/) | FeeSplitExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f98cb...48efbb`](./contracts/ethereum-1/0x5f98cbb7ac52fa5ef3660b7ab34e03398b48efbb/) | FixedRebalanceExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe48370...127f53`](./contracts/ethereum-1/0xe483701d4f8c3b9b7b662fee2543503d6d127f53/) | FlashMint4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcde265...6d277e`](./contracts/ethereum-1/0xcde2657a980a8e2b7c5957d30b2ac768cb6d277e/) | FlashMintDex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c19c6...28d7ad`](./contracts/ethereum-1/0x1c19c605cb071e22a0a46bc9e24b5ce64a28d7ad/) | FlashMintHyETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x940ecb...aa6a7e`](./contracts/ethereum-1/0x940ecb16416fe52856e8653b2958bfd556aa6a7e/) | FlashMintHyETHV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb1eea...dddf49`](./contracts/ethereum-1/0xcb1eea349f25288627f008c5e2a69b684bdddf49/) | FlashMintHyETHV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45c005...ca45d0`](./contracts/ethereum-1/0x45c00508c14601fd1c1e296eb3c0e3eeedca45d0/) | FlashMintLeveraged | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62f160...2ea1cf`](./contracts/ethereum-1/0x62f160391d2f1e3a176f32f51ade6ed8bb2ea1cf/) | FlashMintNAV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9da999...7bd476`](./contracts/ethereum-1/0x9da9992b5d01bd0efb1ee8310e8011dc837bd476/) | FlashMintNotional | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c0d0a...69faa2`](./contracts/ethereum-1/0x5c0d0a9a0c3a0a5b591496ff894686893b69faa2/) | FlashMintWrapped | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x097afa...d2911f`](./contracts/ethereum-1/0x097afae7b0e0ea0880c8dba7475c12a1f3d2911f/) | FlexibleLeverageStrategyExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14d9f0...4e37eb`](./contracts/ethereum-1/0x14d9f0d529e80747b128ac2b145e4208e44e37eb/) | FLIRebalanceViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4677f9...510732`](./contracts/ethereum-1/0x4677f9eac72e10469949d73d8ef71883ce510732/) | OptimisticAuctionRebalanceExtensionV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b65c4...6ef2e5`](./contracts/ethereum-1/0x6b65c4760f56ea89a21193af5b909395766ef2e5/) | ProtocolViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43c3ef...f90613`](./contracts/ethereum-1/0x43c3ef32e52f17777789c71002ef4a887df90613/) | PrtFeeSplitExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08f866...10cdec`](./contracts/ethereum-1/0x08f866c74205617b6f3903ef481798eced10cdec/) | StreamingFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90f765...41c129`](./contracts/ethereum-1/0x90f765f63e7dc5ae97d6c576bf693fb6af41c129/) | TradeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b6787...d986dc`](./contracts/ethereum-1/0x5b67871c3a857de81a1ca0f9f7945e5670d986dc/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 208 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=154

Fork inheritance lineage and inherited audits are included when available.
