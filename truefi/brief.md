# Agentic Audit Brief: TrueFi

## Project Overview

- Project: TrueFi (`truefi`)
- Website: [https://app.truefi.io/](https://app.truefi.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.484Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 63 unique implementations (112 raw deployments)
- DeFi Llama TVL: $15,383,479.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Uncollateralized Lending. Structurally: 45 project-authored contract(s) across 1 chain(s); 12 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 10 common project-authored base contract(s) (upgradeableclaimable, burnabletokenwithbounds, reclaimertoken). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 151; live-surface contracts included: 103 (90 live, 13 unknown).
- Excluded by liveness: 48 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 48/50 (96.0%)
- Deployed-live implementations: 53 of 63 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 50/53
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 63
- Raw deployments: 112
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 20 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 50 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 42.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 40 | 75.5% | 2022-06 |
| SlowMist | Tier 1 | 21 | 39.6% | 2020-11 |
| Jakub Wojciechowski | Tier 2 | 20 | 37.7% | n/a |
| Chainsulting | Tier 2 | 8 | 15.1% | 2021-12 |
| CertiK | Tier 2 | 3 | 5.7% | 2021-12 |
| unknown | Tier 2 | 3 | 5.7% | 2022-08 |
| Ben Cosman | Tier 2 | 1 | 1.9% | 2021-05 |
| EthWorks | Tier 2 | 1 | 1.9% | n/a |

## Contract Surface

### ✅ Verified + Audited (50)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveFinancialOpportunity | unknown | ethereum | n/a | [`0x3146fa2f055d18ea39188a7863f095a2a3dadb1c`](./contracts/ethereum-1/0x3146fa2f055d18ea39188a7863f095a2a3dadb1c/) | ✅ Audited |
| AaveFinancialOpportunity | unknown | ethereum | n/a | [`0x727fc44eb9cf766f3e831975749bd405db0a47ff`](./contracts/ethereum-1/0x727fc44eb9cf766f3e831975749bd405db0a47ff/) | ✅ Audited |
| ArbitraryDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x440ed3e4b10b12fa2bab441a3c44b9550ba9df32`](./contracts/ethereum-1/0x440ed3e4b10b12fa2bab441a3c44b9550ba9df32/); ethereum `0x59262f8cf62a9a4829ff0c42b6145e1755175ea7` | ✅ Audited |
| AssuredFinancialOpportunity | unknown | ethereum | n/a | [`0xffe7361b401af1954641732afc28811ac701e7e1`](./contracts/ethereum-1/0xffe7361b401af1954641732afc28811ac701e7e1/) | ✅ Audited |
| GovernorAlpha | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0236c16f06aafdbea5b5edc8c326a479db090eb2`](./contracts/ethereum-1/0x0236c16f06aafdbea5b5edc8c326a479db090eb2/); ethereum `0x8bef17e7e0f339ddce09842be757786e2fe35d32`; ethereum `0xd1c85e1be815d70ce75327fce944c183f265e4f0` | ✅ Audited |
| LinearTrueDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1bd6423320f8450a4bcd64e16f9cc228f589d1b9`](./contracts/ethereum-1/0x1bd6423320f8450a4bcd64e16f9cc228f589d1b9/); ethereum `0xa2f00615697ed32a45321486b5035820149f0ac1` | ✅ Audited |
| LinearTrueDistributor | unknown | ethereum | n/a | [`0x2185b903867212539f6b744d08fa6fd26c4a9310`](./contracts/ethereum-1/0x2185b903867212539f6b744d08fa6fd26c4a9310/) | ✅ Audited |
| LinearTrueDistributor | unknown | ethereum | n/a | 5 deployments: ethereum [`0x2ec3fecb3dc9541039e3d286dca910283d4d6e8e`](./contracts/ethereum-1/0x2ec3fecb3dc9541039e3d286dca910283d4d6e8e/); ethereum `0x6c23b06862afd777711cd57b9972958f94f9a014`; ethereum `0x75ef172ab4c0dde0751d695216619cc028cdbd2f`; ethereum `0x8cc5d5ef4dedcd399a1721252f16b3d68277f777`; ethereum `0xce11fee4e0e52eab540d1d411567593810e1691e` | ✅ Audited |
| LinearTrueDistributor | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4a90472cd446a1686fb6d7e86ace50af03e71073`](./contracts/ethereum-1/0x4a90472cd446a1686fb6d7e86ace50af03e71073/); ethereum `0x8eff7d12118fd599772d6448cdad11d5fb2568e0`; ethereum `0xcc527f4f8c76db1eba217d001ccc6f8bd9e0d86e`; ethereum `0xfb8d918428373f766b352564b70d1dcc1e3b6383` | ✅ Audited |
| LinearTrueDistributor | unknown | ethereum | n/a | [`0xecfd4f2c07eabdb7b592308732b59713728a957f`](./contracts/ethereum-1/0xecfd4f2c07eabdb7b592308732b59713728a957f/) | ✅ Audited |
| Liquidator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1dfb7700e67e6046898c2fefe160fb53fec3a27c`](./contracts/ethereum-1/0x1dfb7700e67e6046898c2fefe160fb53fec3a27c/); ethereum `0xcef76097debf6495965f513294bb178109571181` | ✅ Audited |
| Liquidator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x76dd4921c99ac6b61b3a98f9fa6f181ca6d70c77`](./contracts/ethereum-1/0x76dd4921c99ac6b61b3a98f9fa6f181ca6d70c77/); ethereum `0xa5c6b8930373972c5b67cd8bf4f3dadbda82f772` | ✅ Audited |
| Liquidator2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x319aa2d6e282ab389df85fd7494d913c855ae4bf`](./contracts/ethereum-1/0x319aa2d6e282ab389df85fd7494d913c855ae4bf/); ethereum `0xf0f9365517fcd1c28cc4ffaced1954816883a731` | ✅ Audited |
| Liquidator2 | unknown | ethereum | n/a | [`0x7ac899754dd042024bb168fd5c9a07420f444bdf`](./contracts/ethereum-1/0x7ac899754dd042024bb168fd5c9a07420f444bdf/) | ✅ Audited |
| LoanFactory | unknown | ethereum | n/a | 3 deployments: ethereum [`0x035aff946a2b4676915db24e2ca50cd5146101cc`](./contracts/ethereum-1/0x035aff946a2b4676915db24e2ca50cd5146101cc/); ethereum `0x38488ec4aec7cb41cad4e1e1fc206b1313c25c67`; ethereum `0x979d49c4813cd68005df1c97c05365bbae76550d` | ✅ Audited |
| LoanFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ace6de67e9a9edff5c2d0a584390fb5394119e7`](./contracts/ethereum-1/0x4ace6de67e9a9edff5c2d0a584390fb5394119e7/); ethereum `0xc20500df4a76b671f5166f6a0e4f36a8f5cfc177` | ✅ Audited |
| LoanFactory2 | unknown | ethereum | n/a | [`0x69d844fb5928d0e7bc530cc6325a88e53d6685bc`](./contracts/ethereum-1/0x69d844fb5928d0e7bc530cc6325a88e53d6685bc/) | ✅ Audited |
| LoanFactory2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcf14abaaff220dd6059b54e5acf356f516189ab6`](./contracts/ethereum-1/0xcf14abaaff220dd6059b54e5acf356f516189ab6/); ethereum `0xfeef3c6ade9827b743f77346441bc8300a9cedcd` | ✅ Audited |
| LoanToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x79cc39ab7ade9879f79fa430dd000cacfe83df86`](./contracts/ethereum-1/0x79cc39ab7ade9879f79fa430dd000cacfe83df86/); ethereum `0xf53d1f150cb91b698c442a4c9e8f88151c76cf0b` | ✅ Audited |
| OwnedUpgradeabilityProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0008fad7b0eac3f863498a864c037dc4a6a113e1`](./contracts/ethereum-1/0x0008fad7b0eac3f863498a864c037dc4a6a113e1/); ethereum `0xc8d76c5ab50a82b56e54fb6199d44d31865cd01c` | ✅ Audited |
| OwnedUpgradeabilityProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x335ce75d82fd708d83bdc700bffd35fc4d24e58d`](./contracts/ethereum-1/0x335ce75d82fd708d83bdc700bffd35fc4d24e58d/); ethereum `0x47f614be0acaee94b1fc805236609999cf00c465` | ✅ Audited |
| OwnedUpgradeabilityProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa4e2dbfe8055fd64ccca5af5adc13a53e962d045`](./contracts/ethereum-1/0xa4e2dbfe8055fd64ccca5af5adc13a53e962d045/); ethereum `0xd74d34af6bfef8057d5673b4fc5b7728e7ecd3c3` | ✅ Audited |
| PoolFactory | unknown | ethereum | n/a | [`0x1391d9223e08845e536157995085fe0cef8bd393`](./contracts/ethereum-1/0x1391d9223e08845e536157995085fe0cef8bd393/) | ✅ Audited |
| PoolFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f2891069a0d5a01be558737e05b49611e82d7a3`](./contracts/ethereum-1/0x1f2891069a0d5a01be558737e05b49611e82d7a3/); ethereum `0xf71a2544a3358ab10109b79160aad10241ce3194` | ✅ Audited |
| RatingAgencyV2Distributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6151570934470214592aa051c28805cf4744bca7`](./contracts/ethereum-1/0x6151570934470214592aa051c28805cf4744bca7/); ethereum `0x87d1616b9b3a0fd756ef4b4abff29b30ab813f42` | ✅ Audited |
| RatingAgencyV2Distributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd42b0620ffad20d79428ddfc8397d2b8884c9967`](./contracts/ethereum-1/0xd42b0620ffad20d79428ddfc8397d2b8884c9967/); ethereum `0xf931f6c549f7fbbd41192ee13d6f2278493dd46b` | ✅ Audited |
| StakedToken | unknown | ethereum | n/a | [`0x9499e8d5a56bb9ecf1b7c6a95e1c4f5331805a2e`](./contracts/ethereum-1/0x9499e8d5a56bb9ecf1b7c6a95e1c4f5331805a2e/) | ✅ Audited |
| StkTruToken | token | ethereum | n/a | [`0x23696914ca9737466d8553a2d619948f548ee424`](./contracts/ethereum-1/0x23696914ca9737466d8553a2d619948f548ee424/) | ✅ Audited |
| StkTruToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa17cba6ab544e6f0c252fc93a2396a567d66f8b3`](./contracts/ethereum-1/0xa17cba6ab544e6f0c252fc93a2396a567d66f8b3/); ethereum `0xa367647cfc0525cbbdee6ea036617e0884e3128b` | ✅ Audited |
| Timelock | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7762bc14f475fd8ba8f994dd17bee91d2d280db7`](./contracts/ethereum-1/0x7762bc14f475fd8ba8f994dd17bee91d2d280db7/); ethereum `0xc4ca6d752cd6997022dd9b9c5709690ca6a079d8` | ✅ Audited |
| TimeLockRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5fe2f5f2cc97887746c5cb44386a94061f35dcc4`](./contracts/ethereum-1/0x5fe2f5f2cc97887746c5cb44386a94061f35dcc4/); ethereum `0xeedb291fcf250c4259211469787a380ec5aaa95d` | ✅ Audited |
| TrueFarm | unknown | ethereum | n/a | 2 deployments: ethereum [`0x493945574d9d41c1b553a3e5b71090efc99bf929`](./contracts/ethereum-1/0x493945574d9d41c1b553a3e5b71090efc99bf929/); ethereum `0xe811d21bb9e84572742885a72a2d43b0d6e27979` | ✅ Audited |
| TrueFarm | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5810380cbc47e1f2ab42eeaa69a142cc6c419f27`](./contracts/ethereum-1/0x5810380cbc47e1f2ab42eeaa69a142cc6c419f27/); ethereum `0x8fd832757f58f71bac53196270a4a55c8e1a29d9` | ✅ Audited |
| TrueFarm | unknown | ethereum | n/a | [`0x6b6a4eaba8ba12765df51a859c0fa75894817f5a`](./contracts/ethereum-1/0x6b6a4eaba8ba12765df51a859c0fa75894817f5a/) | ✅ Audited |
| TrueFarm | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa7ddca17c9b6e7d16ecf82ce211d67442cb3df38`](./contracts/ethereum-1/0xa7ddca17c9b6e7d16ecf82ce211d67442cb3df38/); ethereum `0xed45cf4895c110f464ce857ebe5f270949ec2ff4` | ✅ Audited |
| TrueFarm | unknown | ethereum | n/a | 2 deployments: ethereum [`0xea522bc8c78e0e7657c30cce5ef897f887505fb8`](./contracts/ethereum-1/0xea522bc8c78e0e7657c30cce5ef897f887505fb8/); ethereum `0xf8f14fbb93fa0cefe35acf7e004fd4ef92d8315a` | ✅ Audited |
| TrueFiPool | unknown | ethereum | n/a | 6 deployments: ethereum [`0x27f461c698844ff51b33ecffa5dc2bd9721060b1`](./contracts/ethereum-1/0x27f461c698844ff51b33ecffa5dc2bd9721060b1/); ethereum `0x3fe853e7e5f78c00405fc80daf7f7bade2e53e46`; ethereum `0x5fa457d49b65313611b1a620a55274d01ec2fab0`; ethereum `0x76e28a61d9bd58c5ec598a6bc25d8279aea8d2cf`; ethereum `0xb3c6fd9a58329172d043c987abfce211e9985613`; ethereum `0xf2ee1c3a3151a4a9537a944f46e7a667b4de4fb3` | ✅ Audited |
| TrueFiPool | unknown | ethereum | n/a | [`0xa1e72267084192db7387c8cc1328fade470e4149`](./contracts/ethereum-1/0xa1e72267084192db7387c8cc1328fade470e4149/) | ✅ Audited |
| TrueFiPool2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x01bd87bc97e27cb11e3c45dab9b59bc44edc4fc6`](./contracts/ethereum-1/0x01bd87bc97e27cb11e3c45dab9b59bc44edc4fc6/); ethereum `0x27e15d51afb899104b69ff5969eaad29453947b9` | ✅ Audited |
| TrueFiPool2 | core_logic | ethereum | n/a | [`0xa991356d261fbaf194463af6df8f0464f8f1c742`](./contracts/ethereum-1/0xa991356d261fbaf194463af6df8f0464f8f1c742/) | ✅ Audited |
| TrueLender | unknown | ethereum | n/a | 2 deployments: ethereum [`0x16d02dc67eb237c387023339356b25d1d54b0922`](./contracts/ethereum-1/0x16d02dc67eb237c387023339356b25d1d54b0922/); ethereum `0x271b02176a9bd1336019a21eda4ee79a5d32db5a` | ✅ Audited |
| TrueLender | unknown | ethereum | n/a | 3 deployments: ethereum [`0x886cf5bf695f975a939d49dfb29581db1dad9a89`](./contracts/ethereum-1/0x886cf5bf695f975a939d49dfb29581db1dad9a89/); ethereum `0x9091689455c9728632372c4c386451f400e726d9`; ethereum `0xbf172be09325612392a41a0d8a5d8ee6ab895f95` | ✅ Audited |
| TrueLender2 | unknown | ethereum | n/a | [`0xa606dd423df7dfb65efe14ab66f5fdebf62ff583`](./contracts/ethereum-1/0xa606dd423df7dfb65efe14ab66f5fdebf62ff583/) | ✅ Audited |
| TrueMultiFarm | unknown | ethereum | n/a | [`0xec6c3fd795d6e6f202825ddb56e01b3c128b0b10`](./contracts/ethereum-1/0xec6c3fd795d6e6f202825ddb56e01b3c128b0b10/) | ✅ Audited |
| TrueRatingAgency | unknown | ethereum | n/a | 4 deployments: ethereum [`0x35c556d2700ce48fc3d3c1736b28bd15dc5cfc59`](./contracts/ethereum-1/0x35c556d2700ce48fc3d3c1736b28bd15dc5cfc59/); ethereum `0x4909aca8dd73c215c83ee08eba396c29b646194f`; ethereum `0x57fea15015c8f0fd35b3a25f57a75a94656b1769`; ethereum `0x97ca0ab9ee699f645ad93d927a8a77b426bd574f` | ✅ Audited |
| TrueRatingAgency | unknown | ethereum | n/a | 2 deployments: ethereum [`0x43a4f930f2cc35948d3a6dcd47cd0e50761f9b88`](./contracts/ethereum-1/0x43a4f930f2cc35948d3a6dcd47cd0e50761f9b88/); ethereum `0xcfaa2bc02d1a23026a8719443e059215dcb41df1` | ✅ Audited |
| TrueRatingAgencyV2 | unknown | ethereum | n/a | [`0x05461334340568075be35438b221a3a0d261fb6b`](./contracts/ethereum-1/0x05461334340568075be35438b221a3a0d261fb6b/) | ✅ Audited |
| TruSushiswapRewarder | unknown | ethereum | n/a | 2 deployments: ethereum [`0x164b222ef43e8302b8499ae3c8ba612b492ce4c0`](./contracts/ethereum-1/0x164b222ef43e8302b8499ae3c8ba612b492ce4c0/); ethereum `0xd916d54026222a4dca7e0c7f1955b4906bdbf778` | ✅ Audited |
| TruSushiswapRewarder | unknown | ethereum | n/a | [`0x603929f7c438e1395284cebdcaab640bf078bde1`](./contracts/ethereum-1/0x603929f7c438e1395284cebdcaab640bf078bde1/) | ✅ Audited |
| TruSushiswapRewarder | unknown | ethereum | n/a | 2 deployments: ethereum [`0xda46c92c13d67a32b65c35720d3cd456e5d96128`](./contracts/ethereum-1/0xda46c92c13d67a32b65c35720d3cd456e5d96128/); ethereum `0xedf406f9f8c43aead852f125e237a9c5c09a7cfd` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0xc03151bac97f692e5b71eb49635a624141f7477b`](./contracts/ethereum-1/0xc03151bac97f692e5b71eb49635a624141f7477b/); ethereum `0xdc0175978ae72383bbfdbe56fed69d3acd5d476a` | ⚠️ Unaudited |
| ImplementationReference | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa47defa29a4df6a9243bdaeb4a4e5c592e17d930`](./contracts/ethereum-1/0xa47defa29a4df6a9243bdaeb4a4e5c592e17d930/); ethereum `0xb3d91b5e63da02c0587597df15436c2f056e33f2` | ⚠️ Unaudited |
| TrueFi | unknown | ethereum | n/a | [`0x4c19596f5aaff459fa38b0f7ed92f11ae6543784`](./contracts/ethereum-1/0x4c19596f5aaff459fa38b0f7ed92f11ae6543784/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TrustToken | unknown | ethereum | n/a | `0x305f89c2bb7b1e803f56bba9d183c3a8704fede0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15ad8003680381d6072291c3ae5879745f1f3e49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ebcf08939c0165d5ce0199ad0b3e914ea0ecd37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9064ac0025eba6c65275ea4c21903d1e2183fe5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d3c5d4c1f163d51bb08aa8b1dd141bdda870d65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dc992ba8821eea2adfea62dbc3c550c62eb066d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8cfba903acd376981aa39bfb8acf17a3cc7c81c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1e3224719ec0262876223b4e466ba39c430082f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe67814e4d2abe5b00ddff20c501e425908a5fcaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd4c9673105d46fa2e3cd74165d2ce3a4b0bde59` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2023-02-22 ChainSecurity Audit - PortfolioDebtToken.pdf](https://github.com/trusttoken/audits/blob/master/PortfolioDebtToken/2023-02-22%20ChainSecurity%20Audit%20-%20PortfolioDebtToken.pdf) | yAudit | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/2021-12-21%20Chainsulting%20Audit%20--%20One-Click%20Borrowing%2C%20Lines%20of%20Credit%2C%20Rate%20Model%2C%20TRU%20Staking%2C%20Default%20Liquidation.pdf) | Chainsulting | Audit | 2021-12 | stale | Direct | contract_name | 12 | high |
| [20211203 CertiK Audit Final Report.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/20211203%20CertiK%20Audit%20Final%20Report.pdf) | CertiK | Audit | 2021-12 | stale | Direct | contract_name | 3 | high |
| [REP-Trusttoken-#2-2021-09-13.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/REP-Trusttoken-%232-2021-09-13.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [truefi_2.0_audit_ben_cosman_2_17_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_2.0_audit_ben_cosman_2_17_2021.pdf) | Ben Cosman | Audit | 2021-02 | stale | Direct | contract_name | 1 | n/a |
| [truefi_2.0_audit_ethworks_2_17_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_2.0_audit_ethworks_2_17_2021.pdf) | EthWorks | Audit | n/a | unknown | Direct | contract_name | 1 | n/a |
| [truefi_3.0_audit_ben_cosman_5_19_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_ben_cosman_5_19_2021.pdf) | Ben Cosman | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [truefi_3.0_audit_certik_5_12_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_certik_5_12_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [truefi_3.0_audit_certik_5_20_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_certik_5_20_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [truefi_audit_jakub_wojciechowski_november_22_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_audit_jakub_wojciechowski_november_22_2020.pdf) | Jakub Wojciechowski | Audit | n/a | unknown | Direct | contract_name | 49 | high |
| [truefi_audit_slowmist_november_21_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_audit_slowmist_november_21_2020.pdf) | SlowMist | Audit | 2020-11 | stale | Direct | contract_name | 50 | high |
| [2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-03%20Injected%20Bugs%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-20%20Chainsulting%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [1.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/1.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [3.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/3.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [4.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/4.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [5.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/5.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-22%20Internal%20Security%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-02-07%20Solidified%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [README.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/README.md) | unknown | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-05-26%20G0%20Group%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | unknown | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-06-07%20ABDK%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | ABDK | Audit | 2022-06 | stale | Direct | contract_name | 45 | high |
| [2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-08-10%20Solidified%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 4 | high |
| [2021-07-26 ImmuneBytes LP Staking Gauge Audit Report (GitHub directory)](https://github.com/trusttoken/audits/blob/master/TrueFi/2021-07-26%20ImmuneBytes%20LP%20Staking%20Gauge%20Audit%20Report) | ImmuneBytes | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [2021-07-30 ImmuneBytes SAFU Audit Report (GitHub directory)](https://github.com/trusttoken/audits/blob/master/TrueFi/2021-07-30%20ImmuneBytes%20SAFU%20Audit%20Report) | ImmuneBytes | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [2021-10-17 ImmuneBytes Lines of Credit Audit Report (GitHub directory)](https://github.com/trusttoken/audits/blob/master/TrueFi/2021-10-17%20ImmuneBytes%20Lines%20of%20Credit%20Audit%20Report) | ImmuneBytes | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa47defa29a4df6a9243bdaeb4a4e5c592e17d930`](./contracts/ethereum-1/0xa47defa29a4df6a9243bdaeb4a4e5c592e17d930/) | ImplementationReference | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c19596f5aaff459fa38b0f7ed92f11ae6543784`](./contracts/ethereum-1/0x4c19596f5aaff459fa38b0f7ed92f11ae6543784/) | TrueFi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: contract_name=5, extraction_exact=163

Zero-match audit list:

- [6665] 2023-02-22 ChainSecurity Audit - PortfolioDebtToken.pdf
- [6671] REP-Trusttoken-#2-2021-09-13.pdf
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
- [15468] 2021-07-26 ImmuneBytes LP Staking Gauge Audit Report (GitHub directory)
- [15469] 2021-07-30 ImmuneBytes SAFU Audit Report (GitHub directory)
- [15470] 2021-10-17 ImmuneBytes Lines of Credit Audit Report (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
