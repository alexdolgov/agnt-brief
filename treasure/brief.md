# Agentic Audit Brief: treasure

## Project Overview

- Project: treasure (`treasure`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.421Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum
- Contract surface: 108 unique implementations (108 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 108 project-authored contract(s) across 1 chain(s); 15 ERC721 NFTs, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 20 common project-authored base contract(s) (diamondbase, proxy, diamondcuttable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 108; live-surface contracts included: 108 (108 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/100 (0.0%)
- Deployed-live implementations: 108 of 108 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/108
- Verified + Unaudited implementations: 108
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 108
- Raw deployments: 108
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

### ⚠️ Verified + Unaudited (108)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdjustManyStatAsAllowedAdjuster | unknown | arbitrum | n/a | [`0x2bf8047156e4909979b4494eab630d240f25fa45`](./contracts/arbitrum-42161/0x2bf8047156e4909979b4494eab630d240f25fa45/) | ⚠️ Unaudited |
| AdvancedQuesting | unknown | arbitrum | n/a | [`0x6361f860383b2151cbde46bd3530cbb440855b97`](./contracts/arbitrum-42161/0x6361f860383b2151cbde46bd3530cbb440855b97/) | ⚠️ Unaudited |
| AdvancedQuestingFix | unknown | arbitrum | n/a | [`0x91fa8bf90e1ba3010aed725ea05db993a1f7d3e9`](./contracts/arbitrum-42161/0x91fa8bf90e1ba3010aed725ea05db993a1f7d3e9/) | ⚠️ Unaudited |
| AtlasMine | unknown | arbitrum | n/a | [`0xa0a89db1c899c49f98e6326b764bafcf167fc2ce`](./contracts/arbitrum-42161/0xa0a89db1c899c49f98e6326b764bafcf167fc2ce/) | ⚠️ Unaudited |
| BalancerCrystal | unknown | arbitrum | n/a | [`0xbfeba04384cecfaf0240b49163ed418f82e43d3a`](./contracts/arbitrum-42161/0xbfeba04384cecfaf0240b49163ed418f82e43d3a/) | ⚠️ Unaudited |
| BalancerCrystalExchange | unknown | arbitrum | n/a | [`0xfe51d5571743979ea838f070aa7dfa621555e409`](./contracts/arbitrum-42161/0xfe51d5571743979ea838f070aa7dfa621555e409/) | ⚠️ Unaudited |
| Barracks | unknown | arbitrum | n/a | [`0x1bb7fbda942eb19be66b5dcb32fc5a69c2ba053d`](./contracts/arbitrum-42161/0x1bb7fbda942eb19be66b5dcb32fc5a69c2ba053d/) | ⚠️ Unaudited |
| BeaconQuesting | unknown | arbitrum | n/a | [`0xd58d40a9a1aaeebd48a90bbb8197e0772d0e9b51`](./contracts/arbitrum-42161/0xd58d40a9a1aaeebd48a90bbb8197e0772d0e9b51/) | ⚠️ Unaudited |
| CardsBase | unknown | arbitrum | n/a | [`0x19d0cd1ebe1d93e352e49a0c126e136508126622`](./contracts/arbitrum-42161/0x19d0cd1ebe1d93e352e49a0c126e136508126622/) | ⚠️ Unaudited |
| CardsMerkleProofClaim | unknown | arbitrum | n/a | [`0x119a92e986ff50c0b24e5c42fcaf7b9c58685f10`](./contracts/arbitrum-42161/0x119a92e986ff50c0b24e5c42fcaf7b9c58685f10/) | ⚠️ Unaudited |
| CardsMint | unknown | arbitrum | n/a | [`0x2e26f63ecaf995ee770e4952f9a15a55abdad87f`](./contracts/arbitrum-42161/0x2e26f63ecaf995ee770e4952f9a15a55abdad87f/) | ⚠️ Unaudited |
| CardsProxy | unknown | arbitrum | n/a | [`0x00f7a0a8cfdc3821ef35b48bcd18818912a7987b`](./contracts/arbitrum-42161/0x00f7a0a8cfdc3821ef35b48bcd18818912a7987b/) | ⚠️ Unaudited |
| CardsUpdateMetadata | unknown | arbitrum | n/a | [`0xb2cb70575b2cc4ea34269f434a9bc205e817fab2`](./contracts/arbitrum-42161/0xb2cb70575b2cc4ea34269f434a9bc205e817fab2/) | ⚠️ Unaudited |
| Consumable | unknown | arbitrum | n/a | [`0x6718cd7f42ffb826d820bfb996ca22982fb69aa1`](./contracts/arbitrum-42161/0x6718cd7f42ffb826d820bfb996ca22982fb69aa1/) | ⚠️ Unaudited |
| Corruption | unknown | arbitrum | n/a | [`0x6b66d774a862539f84128f171db1940302c4671e`](./contracts/arbitrum-42161/0x6b66d774a862539f84128f171db1940302c4671e/) | ⚠️ Unaudited |
| CorruptionCryptsRewards | unknown | arbitrum | n/a | [`0xc0df5094b3b2413e4891a2dc2ff583a2ffd3e8d3`](./contracts/arbitrum-42161/0xc0df5094b3b2413e4891a2dc2ff583a2ffd3e8d3/) | ⚠️ Unaudited |
| CorruptionRemoval | unknown | arbitrum | n/a | [`0x08f3533acdf2b9c400204056f771bdd6f1f1c200`](./contracts/arbitrum-42161/0x08f3533acdf2b9c400204056f771bdd6f1f1c200/) | ⚠️ Unaudited |
| Crafting | unknown | arbitrum | n/a | [`0x8648adbec6faa9abc5b5f3d188366cbeb8761ceb`](./contracts/arbitrum-42161/0x8648adbec6faa9abc5b5f3d188366cbeb8761ceb/) | ⚠️ Unaudited |
| CryptsBeaconHandler | unknown | arbitrum | n/a | [`0x171f1b47e92760812fd8a5f37db2f8008fdf9b5a`](./contracts/arbitrum-42161/0x171f1b47e92760812fd8a5f37db2f8008fdf9b5a/) | ⚠️ Unaudited |
| CryptsLegionHandler | unknown | arbitrum | n/a | [`0x26fa96b3c9d77d42a1b810589798b3d9e56d681d`](./contracts/arbitrum-42161/0x26fa96b3c9d77d42a1b810589798b3d9e56d681d/) | ⚠️ Unaudited |
| CryptsSquireHandler | unknown | arbitrum | n/a | [`0xe7705462e8bda6656c0580823e1260f8d9cef01b`](./contracts/arbitrum-42161/0xe7705462e8bda6656c0580823e1260f8d9cef01b/) | ⚠️ Unaudited |
| DiamondUpgradeable | unknown | arbitrum | n/a | [`0x447c73f3ee46050d618fd956c1641274860b6c74`](./contracts/arbitrum-42161/0x447c73f3ee46050d618fd956c1641274860b6c74/) | ⚠️ Unaudited |
| Disperse | unknown | arbitrum | n/a | [`0x6b850ced59e0bd5ba49095860b4f31e2c71ef6e5`](./contracts/arbitrum-42161/0x6b850ced59e0bd5ba49095860b4f31e2c71ef6e5/) | ⚠️ Unaudited |
| DoomsdayPoints | unknown | arbitrum | n/a | [`0x1dbe15ee5bb2901ae32231e92e6efd851e7146aa`](./contracts/arbitrum-42161/0x1dbe15ee5bb2901ae32231e92e6efd851e7146aa/) | ⚠️ Unaudited |
| ERC1155 | unknown | arbitrum | n/a | [`0xe8ff28d015dfb1be71dc02735ccfa98ba183a31f`](./contracts/arbitrum-42161/0xe8ff28d015dfb1be71dc02735ccfa98ba183a31f/) | ⚠️ Unaudited |
| ERC1155TokenSetCorruptionHandler | unknown | arbitrum | n/a | [`0x3c62778d8e01ed17c1048b64edaf121d36c71a4e`](./contracts/arbitrum-42161/0x3c62778d8e01ed17c1048b64edaf121d36c71a4e/) | ⚠️ Unaudited |
| HarvesterFactory | unknown | arbitrum | n/a | [`0xe59aec5f6f631ef380dd4e60d531ff3ae2985cfd`](./contracts/arbitrum-42161/0xe59aec5f6f631ef380dd4e60d531ff3ae2985cfd/) | ⚠️ Unaudited |
| ImbuedSoul | unknown | arbitrum | n/a | [`0xd3515617126323ae293a2d503aa1db54d41d6ea6`](./contracts/arbitrum-42161/0xd3515617126323ae293a2d503aa1db54d41d6ea6/) | ⚠️ Unaudited |
| IQRemoval | unknown | arbitrum | n/a | [`0x4a1410e48340b85f2c2da761d96594357babd98e`](./contracts/arbitrum-42161/0x4a1410e48340b85f2c2da761d96594357babd98e/) | ⚠️ Unaudited |
| Land | unknown | arbitrum | n/a | [`0xd666d1cc3102cd03e07794a61e5f4333b4239f53`](./contracts/arbitrum-42161/0xd666d1cc3102cd03e07794a61e5f4333b4239f53/) | ⚠️ Unaudited |
| LandFix | unknown | arbitrum | n/a | [`0xcca920553ccc9aca80919e614325167d9ec37b4a`](./contracts/arbitrum-42161/0xcca920553ccc9aca80919e614325167d9ec37b4a/) | ⚠️ Unaudited |
| Legion | unknown | arbitrum | n/a | [`0xeb54924e2a594ee4e57131e8d41608a3ee157141`](./contracts/arbitrum-42161/0xeb54924e2a594ee4e57131e8d41608a3ee157141/) | ⚠️ Unaudited |
| LegionMetadataStore | unknown | arbitrum | n/a | [`0x68d25992b1b04be8a70104de8cb598170ab9aad5`](./contracts/arbitrum-42161/0x68d25992b1b04be8a70104de8cb598170ab9aad5/) | ⚠️ Unaudited |
| Magic | unknown | arbitrum | n/a | [`0xed90e678cb0ffac795258b0bd788d23c13e10094`](./contracts/arbitrum-42161/0xed90e678cb0ffac795258b0bd788d23c13e10094/) | ⚠️ Unaudited |
| MagicClaim | unknown | arbitrum | n/a | [`0x07edbd02923435fe2c141f390510178c79dbbc46`](./contracts/arbitrum-42161/0x07edbd02923435fe2c141f390510178c79dbbc46/) | ⚠️ Unaudited |
| MagicDomainRegistrar | unknown | arbitrum | n/a | [`0x8815caeb5c4c5241f81a46ffc37998739dbbd653`](./contracts/arbitrum-42161/0x8815caeb5c4c5241f81a46ffc37998739dbbd653/) | ⚠️ Unaudited |
| MagicDomainRegistrarController | unknown | arbitrum | n/a | [`0x072b65f891b1a389539e921bdb9427af41a7b1f7`](./contracts/arbitrum-42161/0x072b65f891b1a389539e921bdb9427af41a7b1f7/) | ⚠️ Unaudited |
| MagicDomainRegistry | unknown | arbitrum | n/a | [`0xbc07d857d7f19a336d93e4fb051365ea6fe0422f`](./contracts/arbitrum-42161/0xbc07d857d7f19a336d93e4fb051365ea6fe0422f/) | ⚠️ Unaudited |
| MagicDomainResolver | unknown | arbitrum | n/a | [`0xb641ba92d0598ecb77b9bf99ed3b7c2689cd2dea`](./contracts/arbitrum-42161/0xb641ba92d0598ecb77b9bf99ed3b7c2689cd2dea/) | ⚠️ Unaudited |
| MagicDomainReverseRegistrar | unknown | arbitrum | n/a | [`0x31859a683304e7a04ff7b310bb851ce075d36cb6`](./contracts/arbitrum-42161/0x31859a683304e7a04ff7b310bb851ce075d36cb6/) | ⚠️ Unaudited |
| MagicProxy | unknown | arbitrum | n/a | [`0x86083653fef09ab89bec7da3815dd76af9bcc006`](./contracts/arbitrum-42161/0x86083653fef09ab89bec7da3815dd76af9bcc006/) | ⚠️ Unaudited |
| MagicRewardsArbitrum | unknown | arbitrum | n/a | [`0x73eb8b2b235f7957f830ea66abe433d9eed9f0e3`](./contracts/arbitrum-42161/0x73eb8b2b235f7957f830ea66abe433d9eed9f0e3/) | ⚠️ Unaudited |
| MasterOfCoin | unknown | arbitrum | n/a | [`0x3563590e19d2b9216e7879d269a04ec67ed95a87`](./contracts/arbitrum-42161/0x3563590e19d2b9216e7879d269a04ec67ed95a87/) | ⚠️ Unaudited |
| MerkleAirdrop | unknown | arbitrum | n/a | [`0xb986c968a8e64e29fb33c310a7b04ccb83bb7427`](./contracts/arbitrum-42161/0xb986c968a8e64e29fb33c310a7b04ccb83bb7427/) | ⚠️ Unaudited |
| MerkleAirdropBodies | unknown | arbitrum | n/a | [`0xa27f5545a9b53d783abe753531955f5758e4c9fc`](./contracts/arbitrum-42161/0xa27f5545a9b53d783abe753531955f5758e4c9fc/) | ⚠️ Unaudited |
| MerkleAirdropBrains | unknown | arbitrum | n/a | [`0x57abeba8d0712989892d46e2c8ea0de2bbe8d884`](./contracts/arbitrum-42161/0x57abeba8d0712989892d46e2c8ea0de2bbe8d884/) | ⚠️ Unaudited |
| Middleman | unknown | arbitrum | n/a | [`0x3ea9ceaebdeb702fcbc576710084c464431584c8`](./contracts/arbitrum-42161/0x3ea9ceaebdeb702fcbc576710084c464431584c8/) | ⚠️ Unaudited |
| MiniCrafting | unknown | arbitrum | n/a | [`0x67c99a3cf67217598990c097b080e83ba850193a`](./contracts/arbitrum-42161/0x67c99a3cf67217598990c097b080e83ba850193a/) | ⚠️ Unaudited |
| MockLand | unknown | arbitrum | n/a | [`0x9b41d96fbce7901ee9cdf4574b764ea6d8ce2e13`](./contracts/arbitrum-42161/0x9b41d96fbce7901ee9cdf4574b764ea6d8ce2e13/) | ⚠️ Unaudited |
| MockSchool | unknown | arbitrum | n/a | [`0x3af54f3823796c0e659f852758dd76aa0f849438`](./contracts/arbitrum-42161/0x3af54f3823796c0e659f852758dd76aa0f849438/) | ⚠️ Unaudited |
| Pilgrimage | unknown | arbitrum | n/a | [`0x695efd2568a673a6ccda47c24e2af2c2e7392a3a`](./contracts/arbitrum-42161/0x695efd2568a673a6ccda47c24e2af2c2e7392a3a/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x2492a0373dafa837979aeef1ace961e8fa7c5b15`](./contracts/arbitrum-42161/0x2492a0373dafa837979aeef1ace961e8fa7c5b15/) | ⚠️ Unaudited |
| Questing | unknown | arbitrum | n/a | [`0x40e47cab2f03dddd167bf70f637b4cac1b724016`](./contracts/arbitrum-42161/0x40e47cab2f03dddd167bf70f637b4cac1b724016/) | ⚠️ Unaudited |
| Randomizer | unknown | arbitrum | n/a | [`0x2d57f794ab20585b112c57d310872abd6dc69de1`](./contracts/arbitrum-42161/0x2d57f794ab20585b112c57d310872abd6dc69de1/) | ⚠️ Unaudited |
| School | unknown | arbitrum | n/a | [`0x38bd5fe31fa63e2d62810d52ac763f34c30c80ce`](./contracts/arbitrum-42161/0x38bd5fe31fa63e2d62810d52ac763f34c30c80ce/) | ⚠️ Unaudited |
| SeedEvolution | unknown | arbitrum | n/a | [`0x359281d2e16fcfb03faa5c1a7688542216f35968`](./contracts/arbitrum-42161/0x359281d2e16fcfb03faa5c1a7688542216f35968/) | ⚠️ Unaudited |
| SmolBodiesPets | unknown | arbitrum | n/a | [`0xae0d0c4cc3335fd49402781e406adf3f02d41bca`](./contracts/arbitrum-42161/0xae0d0c4cc3335fd49402781e406adf3f02d41bca/) | ⚠️ Unaudited |
| SmolBrain | unknown | arbitrum | n/a | [`0x6325439389e0797ab35752b4f43a14c004f22a9c`](./contracts/arbitrum-42161/0x6325439389e0797ab35752b4f43a14c004f22a9c/) | ⚠️ Unaudited |
| SmolBrainsPets | unknown | arbitrum | n/a | [`0xf6cc57c45ce730496b4d3df36b9a4e4c3a1b9754`](./contracts/arbitrum-42161/0xf6cc57c45ce730496b4d3df36b9a4e4c3a1b9754/) | ⚠️ Unaudited |
| SmolChopShop | unknown | arbitrum | n/a | [`0x256cf509d7be4f7e1960fda2fd2be4b18c19d73d`](./contracts/arbitrum-42161/0x256cf509d7be4f7e1960fda2fd2be4b18c19d73d/) | ⚠️ Unaudited |
| SmolFarm | unknown | arbitrum | n/a | [`0x3683484f1b2998457840529b3afbb0f4278d15ec`](./contracts/arbitrum-42161/0x3683484f1b2998457840529b3afbb0f4278d15ec/) | ⚠️ Unaudited |
| SmolGov | unknown | arbitrum | n/a | [`0xb7ca0a286c456899ae079988898cbbb054f9607d`](./contracts/arbitrum-42161/0xb7ca0a286c456899ae079988898cbbb054f9607d/) | ⚠️ Unaudited |
| Smoloween | unknown | arbitrum | n/a | [`0x206899e71e533737927e5046e609ec57bba48692`](./contracts/arbitrum-42161/0x206899e71e533737927e5046e609ec57bba48692/) | ⚠️ Unaudited |
| SmolRacing | unknown | arbitrum | n/a | [`0x20128b216344fdd0dadd129878ef2a873c2a908c`](./contracts/arbitrum-42161/0x20128b216344fdd0dadd129878ef2a873c2a908c/) | ⚠️ Unaudited |
| SmolRacingRedemption | unknown | arbitrum | n/a | [`0xbac4430e68955b5be445d1680209c9e3ba86284e`](./contracts/arbitrum-42161/0xbac4430e68955b5be445d1680209c9e3ba86284e/) | ⚠️ Unaudited |
| Smols | unknown | arbitrum | n/a | [`0x58466912b703792dcc811074acde85e71151700f`](./contracts/arbitrum-42161/0x58466912b703792dcc811074acde85e71151700f/) | ⚠️ Unaudited |
| SmolsAddressRegistry | unknown | arbitrum | n/a | [`0x142f38a796d0d9e9c95ab23e9017a5898fee1c77`](./contracts/arbitrum-42161/0x142f38a796d0d9e9c95ab23e9017a5898fee1c77/) | ⚠️ Unaudited |
| SmolsExchanger | unknown | arbitrum | n/a | [`0xa500b6a65372632fa140a907ce4b4a4b1986ad03`](./contracts/arbitrum-42161/0xa500b6a65372632fa140a907ce4b4a4b1986ad03/) | ⚠️ Unaudited |
| SmolsFemaleHairToggler | unknown | arbitrum | n/a | [`0x3b0d085ffbb3d1bbfc2828ead445bf57f92c0874`](./contracts/arbitrum-42161/0x3b0d085ffbb3d1bbfc2828ead445bf57f92c0874/) | ⚠️ Unaudited |
| SmolsHeadSizeExchanger | unknown | arbitrum | n/a | [`0x27100e5a1cb9885bb100e7325575af316391f1ab`](./contracts/arbitrum-42161/0x27100e5a1cb9885bb100e7325575af316391f1ab/) | ⚠️ Unaudited |
| SmolsRenderer | unknown | arbitrum | n/a | [`0x069d6aac7e14478928cd3497883097ac74f2d3a8`](./contracts/arbitrum-42161/0x069d6aac7e14478928cd3497883097ac74f2d3a8/) | ⚠️ Unaudited |
| SmolsState | unknown | arbitrum | n/a | [`0x27bfcfdd19998eef86644d5beca87b3981ab6854`](./contracts/arbitrum-42161/0x27bfcfdd19998eef86644d5beca87b3981ab6854/) | ⚠️ Unaudited |
| SmolsTreasuryMinter | unknown | arbitrum | n/a | [`0x3c3e08243a12d9284bfd898225ce1c7ee024a588`](./contracts/arbitrum-42161/0x3c3e08243a12d9284bfd898225ce1c7ee024a588/) | ⚠️ Unaudited |
| SmolTraitShop | unknown | arbitrum | n/a | [`0x31efa61168c0514fd1bd4fa20ea96d5b0a151cd8`](./contracts/arbitrum-42161/0x31efa61168c0514fd1bd4fa20ea96d5b0a151cd8/) | ⚠️ Unaudited |
| SmolTreasures | unknown | arbitrum | n/a | [`0x13aa0dbcba27ca33bebffc22fde743d06f7fbddc`](./contracts/arbitrum-42161/0x13aa0dbcba27ca33bebffc22fde743d06f7fbddc/) | ⚠️ Unaudited |
| SmolverseBridge | unknown | arbitrum | n/a | [`0x0e5caf9785ad24e7f79814f831f438e589cb320d`](./contracts/arbitrum-42161/0x0e5caf9785ad24e7f79814f831f438e589cb320d/) | ⚠️ Unaudited |
| SmolverseLoot | unknown | arbitrum | n/a | [`0x30ebeb7be4886110c09f9d26f0bc75521ae25543`](./contracts/arbitrum-42161/0x30ebeb7be4886110c09f9d26f0bc75521ae25543/) | ⚠️ Unaudited |
| SmolverseTransmolgrifierClaim | unknown | arbitrum | n/a | [`0x1afc929706a935e7b65eced9e450c7eda9179c93`](./contracts/arbitrum-42161/0x1afc929706a935e7b65eced9e450c7eda9179c93/) | ⚠️ Unaudited |
| SoLItem | unknown | arbitrum | n/a | [`0x90eed2ff2d01b5731353f855290b9e0116f54f53`](./contracts/arbitrum-42161/0x90eed2ff2d01b5731353f855290b9e0116f54f53/) | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | n/a | [`0x539bde0d7dbd336b79148aa742883198bbf60342`](./contracts/arbitrum-42161/0x539bde0d7dbd336b79148aa742883198bbf60342/) | ⚠️ Unaudited |
| StarlightTemple | unknown | arbitrum | n/a | [`0x6ac94b1093d34f5c520688840689354c9248365f`](./contracts/arbitrum-42161/0x6ac94b1093d34f5c520688840689354c9248365f/) | ⚠️ Unaudited |
| Summoning | unknown | arbitrum | n/a | [`0x02c1e2ba32f69fd3998d3f496541481accc0748c`](./contracts/arbitrum-42161/0x02c1e2ba32f69fd3998d3f496541481accc0748c/) | ⚠️ Unaudited |
| Swolercycle | unknown | arbitrum | n/a | [`0xdf32aed1eb841a174cb637eaa1707026319fb563`](./contracts/arbitrum-42161/0xdf32aed1eb841a174cb637eaa1707026319fb563/) | ⚠️ Unaudited |
| SwolercycleMerkle | unknown | arbitrum | n/a | [`0x32af3a08cf8acdf74d91ffd80ce73bbb0fd0639b`](./contracts/arbitrum-42161/0x32af3a08cf8acdf74d91ffd80ce73bbb0fd0639b/) | ⚠️ Unaudited |
| TraitToken | unknown | arbitrum | n/a | [`0xc704ceb1a160b2ea28325535f51e87f85180ade5`](./contracts/arbitrum-42161/0xc704ceb1a160b2ea28325535f51e87f85180ade5/) | ⚠️ Unaudited |
| TransferBlocker | unknown | arbitrum | n/a | [`0x5075788471f1c0594705564e24c4303b5c809fde`](./contracts/arbitrum-42161/0x5075788471f1c0594705564e24c4303b5c809fde/) | ⚠️ Unaudited |
| Transmolgrifier | unknown | arbitrum | n/a | [`0x1111010a2ba8927251cb0bff0b076a5b85d95c81`](./contracts/arbitrum-42161/0x1111010a2ba8927251cb0bff0b076a5b85d95c81/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x0827c96ac874ea1de726c0ca62f8520e7bc0d373`](./contracts/arbitrum-42161/0x0827c96ac874ea1de726c0ca62f8520e7bc0d373/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x73f66906ec2d419f70a560990b8a3691b980766b`](./contracts/arbitrum-42161/0x73f66906ec2d419f70a560990b8a3691b980766b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xa5447d47bfd314c205bfaec8eb0a66af8f467819`](./contracts/arbitrum-42161/0xa5447d47bfd314c205bfaec8eb0a66af8f467819/) | ⚠️ Unaudited |
| Treasure | unknown | arbitrum | n/a | [`0xfb5799c12c58b4494497b3e7ea3a58def1311517`](./contracts/arbitrum-42161/0xfb5799c12c58b4494497b3e7ea3a58def1311517/) | ⚠️ Unaudited |
| TreasureBadges | unknown | arbitrum | n/a | [`0x0d2e10774abbd54bbffb1cc4c44fe6a66e82d196`](./contracts/arbitrum-42161/0x0d2e10774abbd54bbffb1cc4c44fe6a66e82d196/) | ⚠️ Unaudited |
| TreasureClaimer | unknown | arbitrum | n/a | [`0x1e327e6fae1a10c0b8d70a9a739f59ba4332d38e`](./contracts/arbitrum-42161/0x1e327e6fae1a10c0b8d70a9a739f59ba4332d38e/) | ⚠️ Unaudited |
| TreasureCorruptionHandler | unknown | arbitrum | n/a | [`0x99427ba5bcd26af9c1267d4688b27f2d636c7258`](./contracts/arbitrum-42161/0x99427ba5bcd26af9c1267d4688b27f2d636c7258/) | ⚠️ Unaudited |
| TreasureDAO | unknown | arbitrum | n/a | [`0x51fc5f5319e96157b32b15a12b408d4798f8bf16`](./contracts/arbitrum-42161/0x51fc5f5319e96157b32b15a12b408d4798f8bf16/) | ⚠️ Unaudited |
| TreasureFragment | unknown | arbitrum | n/a | [`0x756e4f3bb69c47d492abf2a52af320190c174c55`](./contracts/arbitrum-42161/0x756e4f3bb69c47d492abf2a52af320190c174c55/) | ⚠️ Unaudited |
| TreasureMarketplace | unknown | arbitrum | n/a | [`0x09986b4e255b3c548041a30a2ee312fe176731c2`](./contracts/arbitrum-42161/0x09986b4e255b3c548041a30a2ee312fe176731c2/) | ⚠️ Unaudited |
| TreasureMarketplaceBuyer | unknown | arbitrum | n/a | [`0x812cda2181ed7c45a35a691e0c85e231d218e273`](./contracts/arbitrum-42161/0x812cda2181ed7c45a35a691e0c85e231d218e273/) | ⚠️ Unaudited |
| TreasureMetadataStore | unknown | arbitrum | n/a | [`0x149ba2eb9df01350b6e156dee80e73430b490f28`](./contracts/arbitrum-42161/0x149ba2eb9df01350b6e156dee80e73430b490f28/) | ⚠️ Unaudited |
| TreasureNFTOracle | unknown | arbitrum | n/a | [`0x48d0a85e5a79f043c1721dd4e13f2418287c8d45`](./contracts/arbitrum-42161/0x48d0a85e5a79f043c1721dd4e13f2418287c8d45/) | ⚠️ Unaudited |
| TreasureTriad | unknown | arbitrum | n/a | [`0x3d54dba766cf134b137973e120cf19ac7edc3629`](./contracts/arbitrum-42161/0x3d54dba766cf134b137973e120cf19ac7edc3629/) | ⚠️ Unaudited |
| Treasury | unknown | arbitrum | n/a | [`0x5754eaf59f04e8ad6cde93de13c0224e95db64eb`](./contracts/arbitrum-42161/0x5754eaf59f04e8ad6cde93de13c0224e95db64eb/) | ⚠️ Unaudited |
| TreasuryMine | unknown | arbitrum | n/a | [`0x6f717fdf9cf759be0d6d395e9517473798bebf1b`](./contracts/arbitrum-42161/0x6f717fdf9cf759be0d6d395e9517473798bebf1b/) | ⚠️ Unaudited |
| TreasuryStake | unknown | arbitrum | n/a | [`0x6a8f4fc9ae30c4bbc4a5b0ec4acff341fe9b42a0`](./contracts/arbitrum-42161/0x6a8f4fc9ae30c4bbc4a5b0ec4acff341fe9b42a0/) | ⚠️ Unaudited |
| TreasuryVester | unknown | arbitrum | n/a | [`0x7a7e7cec41f70d8129dc146fb75a36a08cad41c3`](./contracts/arbitrum-42161/0x7a7e7cec41f70d8129dc146fb75a36a08cad41c3/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | arbitrum | n/a | [`0xb7e50106a5bd3cf21af210a755f9c8740890a8c9`](./contracts/arbitrum-42161/0xb7e50106a5bd3cf21af210a755f9c8740890a8c9/) | ⚠️ Unaudited |
| WanderingMerchant | unknown | arbitrum | n/a | [`0x897296f2293f214db35d1f4c7b6372b5df0f90d1`](./contracts/arbitrum-42161/0x897296f2293f214db35d1f4c7b6372b5df0f90d1/) | ⚠️ Unaudited |
| WeatherContract | unknown | arbitrum | n/a | [`0x4b14aa64c37be1ab98deb2b4d197d42149750ec0`](./contracts/arbitrum-42161/0x4b14aa64c37be1ab98deb2b4d197d42149750ec0/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x2bf8047156e4909979b4494eab630d240f25fa45`](./contracts/arbitrum-42161/0x2bf8047156e4909979b4494eab630d240f25fa45/) | AdjustManyStatAsAllowedAdjuster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6361f860383b2151cbde46bd3530cbb440855b97`](./contracts/arbitrum-42161/0x6361f860383b2151cbde46bd3530cbb440855b97/) | AdvancedQuesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x91fa8bf90e1ba3010aed725ea05db993a1f7d3e9`](./contracts/arbitrum-42161/0x91fa8bf90e1ba3010aed725ea05db993a1f7d3e9/) | AdvancedQuestingFix | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa0a89db1c899c49f98e6326b764bafcf167fc2ce`](./contracts/arbitrum-42161/0xa0a89db1c899c49f98e6326b764bafcf167fc2ce/) | AtlasMine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1bb7fbda942eb19be66b5dcb32fc5a69c2ba053d`](./contracts/arbitrum-42161/0x1bb7fbda942eb19be66b5dcb32fc5a69c2ba053d/) | Barracks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd58d40a9a1aaeebd48a90bbb8197e0772d0e9b51`](./contracts/arbitrum-42161/0xd58d40a9a1aaeebd48a90bbb8197e0772d0e9b51/) | BeaconQuesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19d0cd1ebe1d93e352e49a0c126e136508126622`](./contracts/arbitrum-42161/0x19d0cd1ebe1d93e352e49a0c126e136508126622/) | CardsBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x119a92e986ff50c0b24e5c42fcaf7b9c58685f10`](./contracts/arbitrum-42161/0x119a92e986ff50c0b24e5c42fcaf7b9c58685f10/) | CardsMerkleProofClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2e26f63ecaf995ee770e4952f9a15a55abdad87f`](./contracts/arbitrum-42161/0x2e26f63ecaf995ee770e4952f9a15a55abdad87f/) | CardsMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00f7a0a8cfdc3821ef35b48bcd18818912a7987b`](./contracts/arbitrum-42161/0x00f7a0a8cfdc3821ef35b48bcd18818912a7987b/) | CardsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb2cb70575b2cc4ea34269f434a9bc205e817fab2`](./contracts/arbitrum-42161/0xb2cb70575b2cc4ea34269f434a9bc205e817fab2/) | CardsUpdateMetadata | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6718cd7f42ffb826d820bfb996ca22982fb69aa1`](./contracts/arbitrum-42161/0x6718cd7f42ffb826d820bfb996ca22982fb69aa1/) | Consumable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6b66d774a862539f84128f171db1940302c4671e`](./contracts/arbitrum-42161/0x6b66d774a862539f84128f171db1940302c4671e/) | Corruption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc0df5094b3b2413e4891a2dc2ff583a2ffd3e8d3`](./contracts/arbitrum-42161/0xc0df5094b3b2413e4891a2dc2ff583a2ffd3e8d3/) | CorruptionCryptsRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x08f3533acdf2b9c400204056f771bdd6f1f1c200`](./contracts/arbitrum-42161/0x08f3533acdf2b9c400204056f771bdd6f1f1c200/) | CorruptionRemoval | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8648adbec6faa9abc5b5f3d188366cbeb8761ceb`](./contracts/arbitrum-42161/0x8648adbec6faa9abc5b5f3d188366cbeb8761ceb/) | Crafting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x171f1b47e92760812fd8a5f37db2f8008fdf9b5a`](./contracts/arbitrum-42161/0x171f1b47e92760812fd8a5f37db2f8008fdf9b5a/) | CryptsBeaconHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x26fa96b3c9d77d42a1b810589798b3d9e56d681d`](./contracts/arbitrum-42161/0x26fa96b3c9d77d42a1b810589798b3d9e56d681d/) | CryptsLegionHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe7705462e8bda6656c0580823e1260f8d9cef01b`](./contracts/arbitrum-42161/0xe7705462e8bda6656c0580823e1260f8d9cef01b/) | CryptsSquireHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x447c73f3ee46050d618fd956c1641274860b6c74`](./contracts/arbitrum-42161/0x447c73f3ee46050d618fd956c1641274860b6c74/) | DiamondUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1dbe15ee5bb2901ae32231e92e6efd851e7146aa`](./contracts/arbitrum-42161/0x1dbe15ee5bb2901ae32231e92e6efd851e7146aa/) | DoomsdayPoints | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe8ff28d015dfb1be71dc02735ccfa98ba183a31f`](./contracts/arbitrum-42161/0xe8ff28d015dfb1be71dc02735ccfa98ba183a31f/) | ERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3c62778d8e01ed17c1048b64edaf121d36c71a4e`](./contracts/arbitrum-42161/0x3c62778d8e01ed17c1048b64edaf121d36c71a4e/) | ERC1155TokenSetCorruptionHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe59aec5f6f631ef380dd4e60d531ff3ae2985cfd`](./contracts/arbitrum-42161/0xe59aec5f6f631ef380dd4e60d531ff3ae2985cfd/) | HarvesterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd3515617126323ae293a2d503aa1db54d41d6ea6`](./contracts/arbitrum-42161/0xd3515617126323ae293a2d503aa1db54d41d6ea6/) | ImbuedSoul | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4a1410e48340b85f2c2da761d96594357babd98e`](./contracts/arbitrum-42161/0x4a1410e48340b85f2c2da761d96594357babd98e/) | IQRemoval | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd666d1cc3102cd03e07794a61e5f4333b4239f53`](./contracts/arbitrum-42161/0xd666d1cc3102cd03e07794a61e5f4333b4239f53/) | Land | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcca920553ccc9aca80919e614325167d9ec37b4a`](./contracts/arbitrum-42161/0xcca920553ccc9aca80919e614325167d9ec37b4a/) | LandFix | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb54924e2a594ee4e57131e8d41608a3ee157141`](./contracts/arbitrum-42161/0xeb54924e2a594ee4e57131e8d41608a3ee157141/) | Legion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x68d25992b1b04be8a70104de8cb598170ab9aad5`](./contracts/arbitrum-42161/0x68d25992b1b04be8a70104de8cb598170ab9aad5/) | LegionMetadataStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xed90e678cb0ffac795258b0bd788d23c13e10094`](./contracts/arbitrum-42161/0xed90e678cb0ffac795258b0bd788d23c13e10094/) | Magic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07edbd02923435fe2c141f390510178c79dbbc46`](./contracts/arbitrum-42161/0x07edbd02923435fe2c141f390510178c79dbbc46/) | MagicClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8815caeb5c4c5241f81a46ffc37998739dbbd653`](./contracts/arbitrum-42161/0x8815caeb5c4c5241f81a46ffc37998739dbbd653/) | MagicDomainRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x072b65f891b1a389539e921bdb9427af41a7b1f7`](./contracts/arbitrum-42161/0x072b65f891b1a389539e921bdb9427af41a7b1f7/) | MagicDomainRegistrarController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbc07d857d7f19a336d93e4fb051365ea6fe0422f`](./contracts/arbitrum-42161/0xbc07d857d7f19a336d93e4fb051365ea6fe0422f/) | MagicDomainRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb641ba92d0598ecb77b9bf99ed3b7c2689cd2dea`](./contracts/arbitrum-42161/0xb641ba92d0598ecb77b9bf99ed3b7c2689cd2dea/) | MagicDomainResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x31859a683304e7a04ff7b310bb851ce075d36cb6`](./contracts/arbitrum-42161/0x31859a683304e7a04ff7b310bb851ce075d36cb6/) | MagicDomainReverseRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x86083653fef09ab89bec7da3815dd76af9bcc006`](./contracts/arbitrum-42161/0x86083653fef09ab89bec7da3815dd76af9bcc006/) | MagicProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x73eb8b2b235f7957f830ea66abe433d9eed9f0e3`](./contracts/arbitrum-42161/0x73eb8b2b235f7957f830ea66abe433d9eed9f0e3/) | MagicRewardsArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3563590e19d2b9216e7879d269a04ec67ed95a87`](./contracts/arbitrum-42161/0x3563590e19d2b9216e7879d269a04ec67ed95a87/) | MasterOfCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb986c968a8e64e29fb33c310a7b04ccb83bb7427`](./contracts/arbitrum-42161/0xb986c968a8e64e29fb33c310a7b04ccb83bb7427/) | MerkleAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa27f5545a9b53d783abe753531955f5758e4c9fc`](./contracts/arbitrum-42161/0xa27f5545a9b53d783abe753531955f5758e4c9fc/) | MerkleAirdropBodies | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x57abeba8d0712989892d46e2c8ea0de2bbe8d884`](./contracts/arbitrum-42161/0x57abeba8d0712989892d46e2c8ea0de2bbe8d884/) | MerkleAirdropBrains | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3ea9ceaebdeb702fcbc576710084c464431584c8`](./contracts/arbitrum-42161/0x3ea9ceaebdeb702fcbc576710084c464431584c8/) | Middleman | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x67c99a3cf67217598990c097b080e83ba850193a`](./contracts/arbitrum-42161/0x67c99a3cf67217598990c097b080e83ba850193a/) | MiniCrafting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9b41d96fbce7901ee9cdf4574b764ea6d8ce2e13`](./contracts/arbitrum-42161/0x9b41d96fbce7901ee9cdf4574b764ea6d8ce2e13/) | MockLand | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3af54f3823796c0e659f852758dd76aa0f849438`](./contracts/arbitrum-42161/0x3af54f3823796c0e659f852758dd76aa0f849438/) | MockSchool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x695efd2568a673a6ccda47c24e2af2c2e7392a3a`](./contracts/arbitrum-42161/0x695efd2568a673a6ccda47c24e2af2c2e7392a3a/) | Pilgrimage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x40e47cab2f03dddd167bf70f637b4cac1b724016`](./contracts/arbitrum-42161/0x40e47cab2f03dddd167bf70f637b4cac1b724016/) | Questing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2d57f794ab20585b112c57d310872abd6dc69de1`](./contracts/arbitrum-42161/0x2d57f794ab20585b112c57d310872abd6dc69de1/) | Randomizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x38bd5fe31fa63e2d62810d52ac763f34c30c80ce`](./contracts/arbitrum-42161/0x38bd5fe31fa63e2d62810d52ac763f34c30c80ce/) | School | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x359281d2e16fcfb03faa5c1a7688542216f35968`](./contracts/arbitrum-42161/0x359281d2e16fcfb03faa5c1a7688542216f35968/) | SeedEvolution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xae0d0c4cc3335fd49402781e406adf3f02d41bca`](./contracts/arbitrum-42161/0xae0d0c4cc3335fd49402781e406adf3f02d41bca/) | SmolBodiesPets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6325439389e0797ab35752b4f43a14c004f22a9c`](./contracts/arbitrum-42161/0x6325439389e0797ab35752b4f43a14c004f22a9c/) | SmolBrain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf6cc57c45ce730496b4d3df36b9a4e4c3a1b9754`](./contracts/arbitrum-42161/0xf6cc57c45ce730496b4d3df36b9a4e4c3a1b9754/) | SmolBrainsPets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x256cf509d7be4f7e1960fda2fd2be4b18c19d73d`](./contracts/arbitrum-42161/0x256cf509d7be4f7e1960fda2fd2be4b18c19d73d/) | SmolChopShop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3683484f1b2998457840529b3afbb0f4278d15ec`](./contracts/arbitrum-42161/0x3683484f1b2998457840529b3afbb0f4278d15ec/) | SmolFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb7ca0a286c456899ae079988898cbbb054f9607d`](./contracts/arbitrum-42161/0xb7ca0a286c456899ae079988898cbbb054f9607d/) | SmolGov | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x206899e71e533737927e5046e609ec57bba48692`](./contracts/arbitrum-42161/0x206899e71e533737927e5046e609ec57bba48692/) | Smoloween | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x20128b216344fdd0dadd129878ef2a873c2a908c`](./contracts/arbitrum-42161/0x20128b216344fdd0dadd129878ef2a873c2a908c/) | SmolRacing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbac4430e68955b5be445d1680209c9e3ba86284e`](./contracts/arbitrum-42161/0xbac4430e68955b5be445d1680209c9e3ba86284e/) | SmolRacingRedemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x58466912b703792dcc811074acde85e71151700f`](./contracts/arbitrum-42161/0x58466912b703792dcc811074acde85e71151700f/) | Smols | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x142f38a796d0d9e9c95ab23e9017a5898fee1c77`](./contracts/arbitrum-42161/0x142f38a796d0d9e9c95ab23e9017a5898fee1c77/) | SmolsAddressRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa500b6a65372632fa140a907ce4b4a4b1986ad03`](./contracts/arbitrum-42161/0xa500b6a65372632fa140a907ce4b4a4b1986ad03/) | SmolsExchanger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3b0d085ffbb3d1bbfc2828ead445bf57f92c0874`](./contracts/arbitrum-42161/0x3b0d085ffbb3d1bbfc2828ead445bf57f92c0874/) | SmolsFemaleHairToggler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27100e5a1cb9885bb100e7325575af316391f1ab`](./contracts/arbitrum-42161/0x27100e5a1cb9885bb100e7325575af316391f1ab/) | SmolsHeadSizeExchanger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x069d6aac7e14478928cd3497883097ac74f2d3a8`](./contracts/arbitrum-42161/0x069d6aac7e14478928cd3497883097ac74f2d3a8/) | SmolsRenderer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27bfcfdd19998eef86644d5beca87b3981ab6854`](./contracts/arbitrum-42161/0x27bfcfdd19998eef86644d5beca87b3981ab6854/) | SmolsState | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3c3e08243a12d9284bfd898225ce1c7ee024a588`](./contracts/arbitrum-42161/0x3c3e08243a12d9284bfd898225ce1c7ee024a588/) | SmolsTreasuryMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x31efa61168c0514fd1bd4fa20ea96d5b0a151cd8`](./contracts/arbitrum-42161/0x31efa61168c0514fd1bd4fa20ea96d5b0a151cd8/) | SmolTraitShop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13aa0dbcba27ca33bebffc22fde743d06f7fbddc`](./contracts/arbitrum-42161/0x13aa0dbcba27ca33bebffc22fde743d06f7fbddc/) | SmolTreasures | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e5caf9785ad24e7f79814f831f438e589cb320d`](./contracts/arbitrum-42161/0x0e5caf9785ad24e7f79814f831f438e589cb320d/) | SmolverseBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x30ebeb7be4886110c09f9d26f0bc75521ae25543`](./contracts/arbitrum-42161/0x30ebeb7be4886110c09f9d26f0bc75521ae25543/) | SmolverseLoot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1afc929706a935e7b65eced9e450c7eda9179c93`](./contracts/arbitrum-42161/0x1afc929706a935e7b65eced9e450c7eda9179c93/) | SmolverseTransmolgrifierClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x90eed2ff2d01b5731353f855290b9e0116f54f53`](./contracts/arbitrum-42161/0x90eed2ff2d01b5731353f855290b9e0116f54f53/) | SoLItem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x539bde0d7dbd336b79148aa742883198bbf60342`](./contracts/arbitrum-42161/0x539bde0d7dbd336b79148aa742883198bbf60342/) | StandardArbERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6ac94b1093d34f5c520688840689354c9248365f`](./contracts/arbitrum-42161/0x6ac94b1093d34f5c520688840689354c9248365f/) | StarlightTemple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02c1e2ba32f69fd3998d3f496541481accc0748c`](./contracts/arbitrum-42161/0x02c1e2ba32f69fd3998d3f496541481accc0748c/) | Summoning | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdf32aed1eb841a174cb637eaa1707026319fb563`](./contracts/arbitrum-42161/0xdf32aed1eb841a174cb637eaa1707026319fb563/) | Swolercycle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x32af3a08cf8acdf74d91ffd80ce73bbb0fd0639b`](./contracts/arbitrum-42161/0x32af3a08cf8acdf74d91ffd80ce73bbb0fd0639b/) | SwolercycleMerkle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc704ceb1a160b2ea28325535f51e87f85180ade5`](./contracts/arbitrum-42161/0xc704ceb1a160b2ea28325535f51e87f85180ade5/) | TraitToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5075788471f1c0594705564e24c4303b5c809fde`](./contracts/arbitrum-42161/0x5075788471f1c0594705564e24c4303b5c809fde/) | TransferBlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1111010a2ba8927251cb0bff0b076a5b85d95c81`](./contracts/arbitrum-42161/0x1111010a2ba8927251cb0bff0b076a5b85d95c81/) | Transmolgrifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfb5799c12c58b4494497b3e7ea3a58def1311517`](./contracts/arbitrum-42161/0xfb5799c12c58b4494497b3e7ea3a58def1311517/) | Treasure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d2e10774abbd54bbffb1cc4c44fe6a66e82d196`](./contracts/arbitrum-42161/0x0d2e10774abbd54bbffb1cc4c44fe6a66e82d196/) | TreasureBadges | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1e327e6fae1a10c0b8d70a9a739f59ba4332d38e`](./contracts/arbitrum-42161/0x1e327e6fae1a10c0b8d70a9a739f59ba4332d38e/) | TreasureClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x99427ba5bcd26af9c1267d4688b27f2d636c7258`](./contracts/arbitrum-42161/0x99427ba5bcd26af9c1267d4688b27f2d636c7258/) | TreasureCorruptionHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x51fc5f5319e96157b32b15a12b408d4798f8bf16`](./contracts/arbitrum-42161/0x51fc5f5319e96157b32b15a12b408d4798f8bf16/) | TreasureDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x756e4f3bb69c47d492abf2a52af320190c174c55`](./contracts/arbitrum-42161/0x756e4f3bb69c47d492abf2a52af320190c174c55/) | TreasureFragment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09986b4e255b3c548041a30a2ee312fe176731c2`](./contracts/arbitrum-42161/0x09986b4e255b3c548041a30a2ee312fe176731c2/) | TreasureMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x812cda2181ed7c45a35a691e0c85e231d218e273`](./contracts/arbitrum-42161/0x812cda2181ed7c45a35a691e0c85e231d218e273/) | TreasureMarketplaceBuyer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x149ba2eb9df01350b6e156dee80e73430b490f28`](./contracts/arbitrum-42161/0x149ba2eb9df01350b6e156dee80e73430b490f28/) | TreasureMetadataStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x48d0a85e5a79f043c1721dd4e13f2418287c8d45`](./contracts/arbitrum-42161/0x48d0a85e5a79f043c1721dd4e13f2418287c8d45/) | TreasureNFTOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3d54dba766cf134b137973e120cf19ac7edc3629`](./contracts/arbitrum-42161/0x3d54dba766cf134b137973e120cf19ac7edc3629/) | TreasureTriad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5754eaf59f04e8ad6cde93de13c0224e95db64eb`](./contracts/arbitrum-42161/0x5754eaf59f04e8ad6cde93de13c0224e95db64eb/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6f717fdf9cf759be0d6d395e9517473798bebf1b`](./contracts/arbitrum-42161/0x6f717fdf9cf759be0d6d395e9517473798bebf1b/) | TreasuryMine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a8f4fc9ae30c4bbc4a5b0ec4acff341fe9b42a0`](./contracts/arbitrum-42161/0x6a8f4fc9ae30c4bbc4a5b0ec4acff341fe9b42a0/) | TreasuryStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7a7e7cec41f70d8129dc146fb75a36a08cad41c3`](./contracts/arbitrum-42161/0x7a7e7cec41f70d8129dc146fb75a36a08cad41c3/) | TreasuryVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x897296f2293f214db35d1f4c7b6372b5df0f90d1`](./contracts/arbitrum-42161/0x897296f2293f214db35d1f4c7b6372b5df0f90d1/) | WanderingMerchant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4b14aa64c37be1ab98deb2b4d197d42149750ec0`](./contracts/arbitrum-42161/0x4b14aa64c37be1ab98deb2b4d197d42149750ec0/) | WeatherContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 100 |
| upstream | 4 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
