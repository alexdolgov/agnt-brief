# Agentic Audit Brief: TrueFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 27 (0 matched; 27 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: TrueFi (`truefi`)
- Website: [https://app.truefi.io/](https://app.truefi.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 81 unique implementations (162 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $15,383,479.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for TrueFi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 81 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 48
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/72
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 81
- Raw deployments: 162
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 20 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveFinancialOpportunity | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3146fa2f055d18ea39188a7863f095a2a3dadb1c` | ⚠️ Unaudited |
| AaveFinancialOpportunity | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x727fc44eb9cf766f3e831975749bd405db0a47ff` | ⚠️ Unaudited |
| ArbitraryDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x440ed3e4b10b12fa2bab441a3c44b9550ba9df32`; ethereum `0x59262f8cf62a9a4829ff0c42b6145e1755175ea7` | ⚠️ Unaudited |
| AssuredFinancialOpportunity | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe87c74a31522d8f2ca54be9f17870fa124fc351d`; ethereum `0xffe7361b401af1954641732afc28811ac701e7e1` | ⚠️ Unaudited |
| ChainlinkTruUsdcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0d931d49f4ecf41cff5e082aca4feb4c511415a` | ⚠️ Unaudited |
| ChainlinkTruUsdtOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec702942609fad2afc1489277d918611f0e17ceb` | ⚠️ Unaudited |
| FractionalExponents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x104a479d2d0bd0b9bef6c6afc9d248cb2aa58f72`; ethereum `0xe406125514f845c029a60b03778878ac5f61c21b` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0xc03151bac97f692e5b71eb49635a624141f7477b`; ethereum `0xdc0175978ae72383bbfdbe56fed69d3acd5d476a` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x0236c16f06aafdbea5b5edc8c326a479db090eb2`; ethereum `0x8bef17e7e0f339ddce09842be757786e2fe35d32`; ethereum `0xd1c85e1be815d70ce75327fce944c183f265e4f0` | ⚠️ Unaudited |
| ImplementationReference | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa47defa29a4df6a9243bdaeb4a4e5c592e17d930`; ethereum `0xb3d91b5e63da02c0587597df15436c2f056e33f2` | ⚠️ Unaudited |
| LinearTrueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1bd6423320f8450a4bcd64e16f9cc228f589d1b9`; ethereum `0xa2f00615697ed32a45321486b5035820149f0ac1` | ⚠️ Unaudited |
| LinearTrueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2185b903867212539f6b744d08fa6fd26c4a9310` | ⚠️ Unaudited |
| LinearTrueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2ec3fecb3dc9541039e3d286dca910283d4d6e8e`; ethereum `0x6c23b06862afd777711cd57b9972958f94f9a014`; ethereum `0x75ef172ab4c0dde0751d695216619cc028cdbd2f`; ethereum `0x8cc5d5ef4dedcd399a1721252f16b3d68277f777`; ethereum `0xce11fee4e0e52eab540d1d411567593810e1691e` | ⚠️ Unaudited |
| LinearTrueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x4a90472cd446a1686fb6d7e86ace50af03e71073`; ethereum `0x8eff7d12118fd599772d6448cdad11d5fb2568e0`; ethereum `0xcc527f4f8c76db1eba217d001ccc6f8bd9e0d86e`; ethereum `0xfb8d918428373f766b352564b70d1dcc1e3b6383` | ⚠️ Unaudited |
| LinearTrueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xecfd4f2c07eabdb7b592308732b59713728a957f` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1dfb7700e67e6046898c2fefe160fb53fec3a27c`; ethereum `0xcef76097debf6495965f513294bb178109571181` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x76dd4921c99ac6b61b3a98f9fa6f181ca6d70c77`; ethereum `0xa5c6b8930373972c5b67cd8bf4f3dadbda82f772` | ⚠️ Unaudited |
| Liquidator2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x319aa2d6e282ab389df85fd7494d913c855ae4bf`; ethereum `0xf0f9365517fcd1c28cc4ffaced1954816883a731` | ⚠️ Unaudited |
| Liquidator2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7ac899754dd042024bb168fd5c9a07420f444bdf` | ⚠️ Unaudited |
| LiquidatorReset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fef230cd35a1982e2468362845fd186efd10a6d` | ⚠️ Unaudited |
| LoanFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x035aff946a2b4676915db24e2ca50cd5146101cc`; ethereum `0x38488ec4aec7cb41cad4e1e1fc206b1313c25c67`; ethereum `0x979d49c4813cd68005df1c97c05365bbae76550d` | ⚠️ Unaudited |
| LoanFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4ace6de67e9a9edff5c2d0a584390fb5394119e7`; ethereum `0xc20500df4a76b671f5166f6a0e4f36a8f5cfc177` | ⚠️ Unaudited |
| LoanFactory2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x69d844fb5928d0e7bc530cc6325a88e53d6685bc` | ⚠️ Unaudited |
| LoanFactory2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xcf14abaaff220dd6059b54e5acf356f516189ab6`; ethereum `0xfeef3c6ade9827b743f77346441bc8300a9cedcd` | ⚠️ Unaudited |
| LoanToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x79cc39ab7ade9879f79fa430dd000cacfe83df86`; ethereum `0xf53d1f150cb91b698c442a4c9e8f88151c76cf0b` | ⚠️ Unaudited |
| OwnedUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0008fad7b0eac3f863498a864c037dc4a6a113e1`; ethereum `0xc8d76c5ab50a82b56e54fb6199d44d31865cd01c` | ⚠️ Unaudited |
| OwnedUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x335ce75d82fd708d83bdc700bffd35fc4d24e58d`; ethereum `0x47f614be0acaee94b1fc805236609999cf00c465` | ⚠️ Unaudited |
| OwnedUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa4e2dbfe8055fd64ccca5af5adc13a53e962d045`; ethereum `0xd74d34af6bfef8057d5673b4fc5b7728e7ecd3c3` | ⚠️ Unaudited |
| PausedTrueUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c8984dce8f68fcdeeeafd9e0eca3598562ed291` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1391d9223e08845e536157995085fe0cef8bd393` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f2891069a0d5a01be558737e05b49611e82d7a3`; ethereum `0xf71a2544a3358ab10109b79160aad10241ce3194` | ⚠️ Unaudited |
| RatingAgencyV2Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x29835344458d95096fa59fe7141f3dc2bf0dcfc0`; ethereum `0x87dd76b23591eda15a7932977c70ebd5b4536d6f` | ⚠️ Unaudited |
| RatingAgencyV2Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6151570934470214592aa051c28805cf4744bca7`; ethereum `0x87d1616b9b3a0fd756ef4b4abff29b30ab813f42` | ⚠️ Unaudited |
| RatingAgencyV2Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd42b0620ffad20d79428ddfc8397d2b8884c9967`; ethereum `0xf931f6c549f7fbbd41192ee13d6f2278493dd46b` | ⚠️ Unaudited |
| StakedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1713ed16004ec8ecea1d26fd66edba625f12e031`; ethereum `0x9499e8d5a56bb9ecf1b7c6a95e1c4f5331805a2e` | ⚠️ Unaudited |
| StkTruToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x23696914ca9737466d8553a2d619948f548ee424` | ⚠️ Unaudited |
| StkTruToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa17cba6ab544e6f0c252fc93a2396a567d66f8b3`; ethereum `0xa367647cfc0525cbbdee6ea036617e0884e3128b` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7762bc14f475fd8ba8f994dd17bee91d2d280db7`; ethereum `0xc4ca6d752cd6997022dd9b9c5709690ca6a079d8` | ⚠️ Unaudited |
| TimeLockRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5fe2f5f2cc97887746c5cb44386a94061f35dcc4`; ethereum `0xeedb291fcf250c4259211469787a380ec5aaa95d` | ⚠️ Unaudited |
| TimeLockRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dcba8568f74ba98df435a898888d0542f8830e9` | ⚠️ Unaudited |
| TokenController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8a30155a2b3fcdbaacfba5a3bf4d82a27e210b3e`; ethereum `0xd2240204502bf72d68194519531d02844c4cd642`; ethereum `0xe08a5692520ba423c139677c18a1902720e28cf8` | ⚠️ Unaudited |
| TokenControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035f99a181146219b396a69a422f7722b2c16400` | ⚠️ Unaudited |
| TrueAUD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b43055a996ecbeb43b7458401f12655240dceb5`; ethereum `0xc40750744f075fdc4a0a4c75b7af9380bc59befb` | ⚠️ Unaudited |
| TrueCAD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0fe124a7666f63ba8e0a460c64e3bf739bc259d8`; ethereum `0x5eae6fad6232c7a51dc7358f1a7131da34fc8903` | ⚠️ Unaudited |
| TrueFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x11df979b1019ecf4a51341e78660ce02b0f02a9a`; ethereum `0x6b6a4eaba8ba12765df51a859c0fa75894817f5a` | ⚠️ Unaudited |
| TrueFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x493945574d9d41c1b553a3e5b71090efc99bf929`; ethereum `0xe811d21bb9e84572742885a72a2d43b0d6e27979` | ⚠️ Unaudited |
| TrueFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5810380cbc47e1f2ab42eeaa69a142cc6c419f27`; ethereum `0x8fd832757f58f71bac53196270a4a55c8e1a29d9` | ⚠️ Unaudited |
| TrueFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa7ddca17c9b6e7d16ecf82ce211d67442cb3df38`; ethereum `0xed45cf4895c110f464ce857ebe5f270949ec2ff4` | ⚠️ Unaudited |
| TrueFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xea522bc8c78e0e7657c30cce5ef897f887505fb8`; ethereum `0xf8f14fbb93fa0cefe35acf7e004fd4ef92d8315a` | ⚠️ Unaudited |
| TrueFi | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x095527f5bea113e9575b662c5ba01d990a280f2f`; ethereum `0x4c19596f5aaff459fa38b0f7ed92f11ae6543784` | ⚠️ Unaudited |
| TrueFiPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x27f461c698844ff51b33ecffa5dc2bd9721060b1`; ethereum `0x3fe853e7e5f78c00405fc80daf7f7bade2e53e46`; ethereum `0x5fa457d49b65313611b1a620a55274d01ec2fab0`; ethereum `0x76e28a61d9bd58c5ec598a6bc25d8279aea8d2cf`; ethereum `0xb3c6fd9a58329172d043c987abfce211e9985613`; ethereum `0xf2ee1c3a3151a4a9537a944f46e7a667b4de4fb3` | ⚠️ Unaudited |
| TrueFiPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa1e72267084192db7387c8cc1328fade470e4149` | ⚠️ Unaudited |
| TrueFiPool2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x01bd87bc97e27cb11e3c45dab9b59bc44edc4fc6`; ethereum `0x27e15d51afb899104b69ff5969eaad29453947b9` | ⚠️ Unaudited |
| TrueFiPool2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa991356d261fbaf194463af6df8f0464f8f1c742` | ⚠️ Unaudited |
| TrueGBP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xaa912f203dcc1f5b6f862c0e0da3254cfc08a1d9`; ethereum `0xc174ab88b346a838cd4ef50e3d4999de91176285` | ⚠️ Unaudited |
| TrueHKD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ba82d44e1c35d3c911b3f5579f39abeaf744cce`; ethereum `0x9c1a48a8a9bd4345dcc16d65f96f20417a7daace` | ⚠️ Unaudited |
| TrueLender | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x16d02dc67eb237c387023339356b25d1d54b0922`; ethereum `0x271b02176a9bd1336019a21eda4ee79a5d32db5a` | ⚠️ Unaudited |
| TrueLender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x886cf5bf695f975a939d49dfb29581db1dad9a89`; ethereum `0x9091689455c9728632372c4c386451f400e726d9`; ethereum `0xbf172be09325612392a41a0d8a5d8ee6ab895f95` | ⚠️ Unaudited |
| TrueLender2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23ade98fa576acbab49a67d2e6d4159b89ee26b9` | ⚠️ Unaudited |
| TrueLender2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa606dd423df7dfb65efe14ab66f5fdebf62ff583` | ⚠️ Unaudited |
| TrueMultiFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xec6c3fd795d6e6f202825ddb56e01b3c128b0b10` | ⚠️ Unaudited |
| TrueRatingAgency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x35c556d2700ce48fc3d3c1736b28bd15dc5cfc59`; ethereum `0x4909aca8dd73c215c83ee08eba396c29b646194f`; ethereum `0x57fea15015c8f0fd35b3a25f57a75a94656b1769`; ethereum `0x97ca0ab9ee699f645ad93d927a8a77b426bd574f` | ⚠️ Unaudited |
| TrueRatingAgency | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x43a4f930f2cc35948d3a6dcd47cd0e50761f9b88`; ethereum `0xcfaa2bc02d1a23026a8719443e059215dcb41df1` | ⚠️ Unaudited |
| TrueRatingAgencyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x05461334340568075be35438b221a3a0d261fb6b` | ⚠️ Unaudited |
| TrueRatingAgencyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0ecac5892824ee5db902f9a6c6ec6e1fb028c733`; ethereum `0x353488058ba40b280b73c06feada42ca4d61f7fc`; ethereum `0x57abfe6c9615cba3c346446723721d8ebf0b8b5e` | ⚠️ Unaudited |
| TrueUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x1a7299a20ff9d9162cda9164c5770cf9d576b70c`; ethereum `0x20594f0b1f549d19b5dd81590d93bd131c657e01`; ethereum `0x2f7f8793e3e3cae2ce3b8a528ddb09eac1d4cf7b`; ethereum `0x390d50674dab0c185702152c16ee20c5bc15e5bf`; ethereum `0x3e09d6015e9e6efac8d9f6d75775ee38caad7fc3`; ethereum `0x60435c42ce9a57e327660b56ed01e420c958458c`; ethereum `0x7a9701453249e84fd0d5afe5951e9cbe9ed2e90f`; ethereum `0x8d50a54646225ed34ed9b28b31211d7e8778e16a`; ethereum `0xb13246ff3365102e07093c452401e077424979e4`; ethereum `0xb65f6f6684813077d9c96a647eb47bf7a08b2434`; ethereum `0xe1e02907b0fb65722e08d75e5ea66a9b7432ae77`; ethereum `0xffc40f39806f1400d8278bfd33823705b5a4c196` | ⚠️ Unaudited |
| TruPriceChainLinkOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7d7edec33a36a4d72eb1262d21d9a4444e4ea74` | ⚠️ Unaudited |
| TrustToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x2a0e32995b0d0ea63c46d3ed378c210111b47a11`; ethereum `0x4b4e1f67c7298d242555eb35d8e5016f0c4f6df4`; ethereum `0x5d43ea064f46bedd2550a3b795b7e4ad46eef430`; ethereum `0x6927f668feca20b6e8e1a235f5cb683716ce66bb`; ethereum `0xacedb4eb28eedc7fc05583abe829b7e19a17e50d`; ethereum `0xbf79cc7dbbc25cbd79138c0bd4819627229f3ab7`; ethereum `0xe7bf14e2ae3ca9ad0d705d35bda696e6d574a1cc` | ⚠️ Unaudited |
| TrustToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x305f89c2bb7b1e803f56bba9d183c3a8704fede0`; ethereum `0x454cc34b5fa7c3d24b795cc576fb8261b10b4d21` | ⚠️ Unaudited |
| TruSushiswapRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x164b222ef43e8302b8499ae3c8ba612b492ce4c0`; ethereum `0xd916d54026222a4dca7e0c7f1955b4906bdbf778` | ⚠️ Unaudited |
| TruSushiswapRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x603929f7c438e1395284cebdcaab640bf078bde1` | ⚠️ Unaudited |
| TruSushiswapRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xda46c92c13d67a32b65c35720d3cd456e5d96128`; ethereum `0xedf406f9f8c43aead852f125e237a9c5c09a7cfd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ad8003680381d6072291c3ae5879745f1f3e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ebcf08939c0165d5ce0199ad0b3e914ea0ecd37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9064ac0025eba6c65275ea4c21903d1e2183fe5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d3c5d4c1f163d51bb08aa8b1dd141bdda870d65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc992ba8821eea2adfea62dbc3c550c62eb066d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8cfba903acd376981aa39bfb8acf17a3cc7c81c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1e3224719ec0262876223b4e466ba39c430082f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe67814e4d2abe5b00ddff20c501e425908a5fcaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd4c9673105d46fa2e3cd74165d2ce3a4b0bde59` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023-02-22 ChainSecurity Audit - PortfolioDebtToken.pdf](https://github.com/trusttoken/audits/blob/master/PortfolioDebtToken/2023-02-22%20ChainSecurity%20Audit%20-%20PortfolioDebtToken.pdf) | yAudit | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/2021-12-21%20Chainsulting%20Audit%20--%20One-Click%20Borrowing%2C%20Lines%20of%20Credit%2C%20Rate%20Model%2C%20TRU%20Staking%2C%20Default%20Liquidation.pdf) | Chainsulting | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [20211203 CertiK Audit Final Report.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/20211203%20CertiK%20Audit%20Final%20Report.pdf) | CertiK | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [REP-Trusttoken-#2-2021-09-13.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/REP-Trusttoken-%232-2021-09-13.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [truefi_2.0_audit_ben_cosman_2_17_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_2.0_audit_ben_cosman_2_17_2021.pdf) | Ben Cosman | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [truefi_2.0_audit_ethworks_2_17_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_2.0_audit_ethworks_2_17_2021.pdf) | EthWorks | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [truefi_3.0_audit_ben_cosman_5_19_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_ben_cosman_5_19_2021.pdf) | Ben Cosman | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [truefi_3.0_audit_certik_5_12_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_certik_5_12_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [truefi_3.0_audit_certik_5_20_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_certik_5_20_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [truefi_audit_jakub_wojciechowski_november_22_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_audit_jakub_wojciechowski_november_22_2020.pdf) | Jakub Wojciechowski | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [truefi_audit_slowmist_november_21_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_audit_slowmist_november_21_2020.pdf) | SlowMist | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-03%20Injected%20Bugs%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-20%20Chainsulting%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [1.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/1.md) | unknown | Audit | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 1 | low |
| [2.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/2.md) | unknown | Audit | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 1 | low |
| [3.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/3.md) | unknown | Audit | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 1 | low |
| [4.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/4.md) | unknown | Audit | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 2 | medium |
| [5.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/5.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-22%20Internal%20Security%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-02-07%20Solidified%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [README.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/README.md) | unknown | Audit | 2022-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-05-26%20G0%20Group%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-06-07%20ABDK%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | ABDK | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 42 | high |
| [2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-08-10%20Solidified%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [2021-07-26 ImmuneBytes LP Staking Gauge Audit Report (GitHub directory)](https://github.com/trusttoken/audits/blob/master/TrueFi/2021-07-26%20ImmuneBytes%20LP%20Staking%20Gauge%20Audit%20Report) | ImmuneBytes | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2021-07-30 ImmuneBytes SAFU Audit Report (GitHub directory)](https://github.com/trusttoken/audits/blob/master/TrueFi/2021-07-30%20ImmuneBytes%20SAFU%20Audit%20Report) | ImmuneBytes | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2021-10-17 ImmuneBytes Lines of Credit Audit Report (GitHub directory)](https://github.com/trusttoken/audits/blob/master/TrueFi/2021-10-17%20ImmuneBytes%20Lines%20of%20Credit%20Audit%20Report) | ImmuneBytes | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [6665] 2023-02-22 ChainSecurity Audit - PortfolioDebtToken.pdf — no match: Only one contract in scope: PortfolioDebtToken.sol. Audit date from cover page.
- [6669] 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf — no match: All contracts listed in the 'Tested Contract Files' section (4.3) and 'Source Unites in Scope' table (4.7) are included. Audit date from cover page and executive summary.
- [6670] 20211203 CertiK Audit Final Report.pdf — no match: Extracted 6 contracts from the Audit Scope table. Test files are not contracts. Date from 'Delivery Date Dec 02, 2021'.
- [6671] REP-Trusttoken-#2-2021-09-13.pdf — no match: All six contracts are explicitly listed in the Audit Scope table with file paths and SHA256 checksums.
- [6672] truefi_2.0_audit_ben_cosman_2_17_2021.pdf — no match: No reason recorded
- [6673] truefi_2.0_audit_ethworks_2_17_2021.pdf — no match: No reason recorded
- [6674] truefi_3.0_audit_ben_cosman_5_19_2021.pdf — no match: No reason recorded
- [6675] truefi_3.0_audit_certik_5_12_2021.pdf — no match: No reason recorded
- [6676] truefi_3.0_audit_certik_5_20_2021.pdf — no match: No reason recorded
- [6677] truefi_audit_jakub_wojciechowski_november_22_2020.pdf — no match: Scope explicitly limited to contracts/truefi folder. All contracts mentioned in issues are within that folder. LoanFactory is mentioned in recommendation but is part of the same folder.
- [6678] truefi_audit_slowmist_november_21_2020.pdf — no match: Scope defined by audit version code and files out of scope; contracts description table lists all in-scope contracts. Three distributor files explicitly out of scope. Audit date from AuditResult section.
- [6679] 2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf — no match: Extracted contract names from bug descriptions; no explicit scope section found.
- [6680] 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf — no match: All contracts listed in the 'Tested Contract Files' section (page 9) and 'Source Unites in Scope' table (page 14) are included. Audit date from cover page and executive summary.
- [6681] 1.md — no match: Only one contract name found in a finding header; no explicit scope section or date.
- [6682] 2.md — no match: Only one contract name found in a finding header; no explicit scope section or date present.
- [6683] 3.md — no match: Only one contract name found in a finding header; no explicit scope section or audit date present.
- [6684] 4.md — no match: Extracted contract names from finding headers; no explicit scope section found; no date found.
- [6685] 5.md — no match: No scope section or contract names found in the provided text. Only a single finding mentioning 'Multiple' files with 'manager' but no specific contract names.
- [6686] 2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf — no match: Extracted contract names from findings table; no explicit scope section found. Audit date inferred from header '12/18/2022'.
- [6688] 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf — no match: All contracts listed in the 'Audited Files' section are included. The audit date is explicitly stated as 'February 7, 2022'.
- [6689] README.md — no match: The document is a list of known issues for TrueFi Lending Marketplace V1, not a formal audit report with a scope section. No contracts are explicitly listed as in scope.
- [6690] 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf — no match: All contracts listed in the scope section of the audit report.
- [6691] 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf — no match: All 47 files listed in the scope section of the audit report.
- [6692] 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf — no match: Extracted from the 'Audited Files' section listing all files in scope. The audit date is explicitly stated as 'August 10, 2022' in the title and repeated throughout.
- [15468] 2021-07-26 ImmuneBytes LP Staking Gauge Audit Report (GitHub directory) — no match: The provided text is a URL to a document, not the actual audit report content. No contract names or audit date could be extracted.
- [15469] 2021-07-30 ImmuneBytes SAFU Audit Report (GitHub directory) — no match: The provided text is a URL to a document, not the actual audit report content. No contract names or audit date could be extracted.
- [15470] 2021-10-17 ImmuneBytes Lines of Credit Audit Report (GitHub directory) — no match: The provided text is only a URL to a document, not the actual audit report content. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-02-22 ChainSecurity Audit - PortfolioDebtToken.pdf | PortfolioDebtToken | unmatched — not counted | — | listed in scope table and mentioned throughout report | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | LineOfCreditAgency | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | DeficiencyToken | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | StakingVault | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | Liquidator2 | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | TrueFiPool2 | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | TrueFiCreditOracle | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | FixedTermLoanAgency | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | LoanFactory2 | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | TimeAveragedBaseRateOracle | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | SAFU | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | PoolFactory | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | RateModel | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | SpotBaseRateOracle | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | FixedTermLoan | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | BorrowingMutex | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | DebtToken | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | TimeAveragedTruPriceOracle | unmatched — not counted | — | listed in scope table | no |
| 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf | ChainlinkTruOracle | unmatched — not counted | — | listed in scope table | no |
| 20211203 CertiK Audit Final Report.pdf | BorrowingMutex | unmatched — not counted | — | listed in scope table | no |
| 20211203 CertiK Audit Final Report.pdf | DebtToken | unmatched — not counted | — | listed in scope table | no |
| 20211203 CertiK Audit Final Report.pdf | FixedTermLoanAgency | unmatched — not counted | — | listed in scope table | no |
| 20211203 CertiK Audit Final Report.pdf | LoanFactory2 | unmatched — not counted | — | listed in scope table | no |
| 20211203 CertiK Audit Final Report.pdf | TrueCreditAgency | unmatched — not counted | — | listed in scope table | no |
| 20211203 CertiK Audit Final Report.pdf | TrueRateAdjuster | unmatched — not counted | — | listed in scope table | no |
| REP-Trusttoken-#2-2021-09-13.pdf | LoanFactory3 | unmatched — not counted | — | listed in Audit Scope table with ID LFN | no |
| REP-Trusttoken-#2-2021-09-13.pdf | SpotBaseRateOracle | unmatched — not counted | — | listed in Audit Scope table with ID SBR | no |
| REP-Trusttoken-#2-2021-09-13.pdf | TimeAveragedBaseRateOracle | unmatched — not counted | — | listed in Audit Scope table with ID TAB | no |
| REP-Trusttoken-#2-2021-09-13.pdf | TrueCreditAgency | unmatched — not counted | — | listed in Audit Scope table with ID TCA | no |
| REP-Trusttoken-#2-2021-09-13.pdf | TrueFiCreditOracle | unmatched — not counted | — | listed in Audit Scope table with ID TFC | no |
| REP-Trusttoken-#2-2021-09-13.pdf | TrueRateAdjuster | unmatched — not counted | — | listed in Audit Scope table with ID TRA | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | Liquidator | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | LoanToken | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | StkTruToken | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | Timelock | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | TruPriceUniswapOracle | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | TrueRatingAgencyV2 | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ben_cosman_2_17_2021.pdf | VoteToken | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | Liquidator | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | LoanFactory | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | LoanToken | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | StkTruToken | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | Timelock | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | TrueFiPool | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | TruePriceUniswapOracle | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | TrueRatingAgencyV2 | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | TrustToken | unmatched — not counted | — | — | no |
| truefi_2.0_audit_ethworks_2_17_2021.pdf | VoteToken | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | CurveYearnStrategy | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | Liquidator2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | LoanFactory2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | LoanToken2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | PoolFactory | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | StkTruToken | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | Timelock | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | TrueFiPool2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | TrueLender2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_ben_cosman_5_19_2021.pdf | VoteToken | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | CurveYearnStrategy | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | Liquidator2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | LoanFactory2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | LoanToken2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | PoolFactory | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | StkTruToken | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | Timelock | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | TrueFiPool2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | TrueLender2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_12_2021.pdf | VoteToken | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | CurveYearnStrategy | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | Liquidator2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | LoanFactory2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | LoanToken2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | PoolFactory | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | StkTruToken | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | Timelock | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | TrueFiPool2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | TrueLender2 | unmatched — not counted | — | — | no |
| truefi_3.0_audit_certik_5_20_2021.pdf | VoteToken | unmatched — not counted | — | — | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | LoanToken | unmatched — not counted | — | mentioned in issues and scope folder contracts/truefi | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | TrueLender | unmatched — not counted | — | mentioned in issues and scope folder contracts/truefi | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | TrueRatingAgency | unmatched — not counted | — | mentioned in issues and scope folder contracts/truefi | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | TrueFiPool | unmatched — not counted | — | mentioned in issues and scope folder contracts/truefi | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | TrueFarm | unmatched — not counted | — | mentioned in issues and scope folder contracts/truefi | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | LinearTrueDistributor | unmatched — not counted | — | mentioned in issues and scope folder contracts/truefi | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | ArbitraryDistributor | unmatched — not counted | — | mentioned in issues and scope folder contracts/truefi | no |
| truefi_audit_jakub_wojciechowski_november_22_2020.pdf | LoanFactory | unmatched — not counted | — | mentioned in recommendation for TrueLender | no |
| truefi_audit_slowmist_november_21_2020.pdf | ArbitraryDistributor | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | LinearTrueDistributor | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | ERC20 | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | Ownable | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | Initializable | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | LoanToken | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | TrueFarm | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | LoanFactory | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | TrueFiPool | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | TrueLender | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | TrueRatingAgency | unmatched — not counted | — | listed in scope via contracts description table | no |
| truefi_audit_slowmist_november_21_2020.pdf | UpgradeableERC20 | unmatched — not counted | — | referenced in enhancement suggestions | no |
| truefi_audit_slowmist_november_21_2020.pdf | UpgradeableOwnable | unmatched — not counted | — | referenced in enhancement suggestions | no |
| 2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf | ManagedPortfolio | unmatched — not counted | — | mentioned in bug descriptions | no |
| 2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf | BulletLoans | unmatched — not counted | — | mentioned in bug descriptions | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IPortfolio | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IDebtInstrument | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IManagedPortfolio | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IVerifier | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IBulletLoans | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | ILenderVerifier | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IProtocolConfig | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IFinancialInstrument | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IERC20WithDecimals | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | IBorrowerSignatureVerifier | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | SignatureOnlyLenderVerifier | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | SignatureValidator | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | BorrowerSignatureVerifier | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | ManagedPortfolio | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | Manageable | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | InitializableManageable | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | BulletLoans | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | ManagedPortfolioFactory | unmatched — not counted | — | listed in scope table | no |
| 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf | ProxyWrapper | unmatched — not counted | — | listed in scope table | no |
| 1.md | BulletLoans | unmatched — not counted | — | listed in finding header | no |
| 2.md | BulletLoans | unmatched — not counted | — | listed in finding header | no |
| 3.md | ManagedPortfolio | unmatched — not counted | — | listed in finding header | no |
| 4.md | ManagedPortfolio | unmatched — not counted | — | listed in finding header | no |
| 4.md | BulletLoans | unmatched — not counted | — | listed in finding header | no |
| 2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf | BulletLoans | unmatched — not counted | — | mentioned in findings table | no |
| 2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf | ManagedPortfolio | unmatched — not counted | — | mentioned in findings table | no |
| 2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf | SignatureValidator | unmatched — not counted | — | mentioned in findings table | no |
| 2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf | BorrowerSignatureVerifier | unmatched — not counted | — | mentioned in findings table | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | BorrowerSignatureVerifier | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | BulletLoans | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | ManagedPortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | ManagedPortfolioFactory | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | SignatureOnlyLenderVerifier | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | InitializableManageable | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | Manageable | unmatched — not counted | — | listed in scope | no |
| 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf | ProxyWrapper | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | AutomatedLineOfCredit | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | AutomatedLineOfCreditFactory | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | BasePortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | BasePortfolioFactory | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | NonUsOnlyDeposit | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | TransferStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | WhitelistDeposit | unmatched — not counted | — | listed in scope | no |
| 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf | WithdrawStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IManageable | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | InitializableManageable | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | Manageable | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | Upgradeable | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | OwnedUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | StkClaimableContract | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | AllowedDelegatesList | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | DaoGovernor | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | DaoToken | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | StkTruToken | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | VoteToken | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | DSRegistryServiceInterface | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IAutomatedLineOfCredit | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IBasePortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IDebtInstrument | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IERC20WithDecimals | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IFinancialInstrument | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IFixedInterestOnlyLoans | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IFlexiblePortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IProtocolConfig | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | ITransferStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | IValuationStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | ProxyWrapper | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | DepositStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | FixedInterestOnlyLoansValuationStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | MultiInstrumentValuationStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | NonUsOnlyDeposit | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | PortfolioClosedWithdrawStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | TransferAgentWhitelistDepositStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | TransferAgentWhitelistTransferStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | TransferStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | WhitelistDeposit | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | WithdrawStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | Multicall2 | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | AutomatedLineOfCredit | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | AutomatedLineOfCreditFactory | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | BasePortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | BasePortfolioFactory | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | FixedInterestOnlyLoans | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | FlexiblePortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | FlexiblePortfolioFactory | unmatched — not counted | — | listed in scope | no |
| 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | BasePortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | BasePortfolioFactory | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | FlexiblePortfolio | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | FlexiblePortfolioFactory | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | FixedInterestOnlyLoans | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | AutomatedLineOfCredit | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | AutomatedLineOfCreditFactory | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | DaoGovernor | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | DaoToken | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | StkTruToken | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | VoteToken | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | DepositStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | FIOLValuationStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | LiquidValuationStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | MultiInstrumentValuationStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | NonUsOnlyDeposit | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | TransferStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | WhitelistDeposit | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | WithdrawStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | ProxyStorage | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | StkClaimableContract | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | Manageable | unmatched — not counted | — | listed in scope | no |
| 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf | InitializableManageable | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 27
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 220 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11, low=8, medium=3
- Match method counts: n/a

Zero-match audit list:

- [6665] 2023-02-22 ChainSecurity Audit - PortfolioDebtToken.pdf
- [6669] 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf
- [6670] 20211203 CertiK Audit Final Report.pdf
- [6671] REP-Trusttoken-#2-2021-09-13.pdf
- [6672] truefi_2.0_audit_ben_cosman_2_17_2021.pdf
- [6673] truefi_2.0_audit_ethworks_2_17_2021.pdf
- [6674] truefi_3.0_audit_ben_cosman_5_19_2021.pdf
- [6675] truefi_3.0_audit_certik_5_12_2021.pdf
- [6676] truefi_3.0_audit_certik_5_20_2021.pdf
- [6677] truefi_audit_jakub_wojciechowski_november_22_2020.pdf
- [6678] truefi_audit_slowmist_november_21_2020.pdf
- [6679] 2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf
- [6680] 2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf
- [6681] 1.md
- [6682] 2.md
- [6683] 3.md
- [6684] 4.md
- [6685] 5.md
- [6686] 2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf
- [6688] 2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf
- [6689] README.md
- [6690] 2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf
- [6691] 2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf
- [6692] 2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf
- [15468] 2021-07-26 ImmuneBytes LP Staking Gauge Audit Report (GitHub directory)
- [15469] 2021-07-30 ImmuneBytes SAFU Audit Report (GitHub directory)
- [15470] 2021-10-17 ImmuneBytes Lines of Credit Audit Report (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
