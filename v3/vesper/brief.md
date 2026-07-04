# Agentic Audit Brief: Vesper

## Project Overview

- Project: Vesper (`vesper`)
- Website: [https://vesper.finance/](https://vesper.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:10.383Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc, ethereum
- Contract surface: 120 unique implementations (281 raw deployments)
- DeFi Llama TVL: $41,017,483.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 105 project-authored contract(s) across 1 chain(s); 20 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 13 common project-authored base contract(s) (tokenholder, governable, upgradeableproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 312; live-surface contracts included: 280 (272 live, 8 unknown).
- Excluded by liveness: 32 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 23/114 (20.2%)
- Deployed-live implementations: 114 of 120 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 23/115
- Verified + Unaudited implementations: 92
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 120
- Raw deployments: 281
- Audits discovered: 30 (30 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 25
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 30 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 17 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 22 | 19.1% | 2022-03 |
| Bloq | Tier 2 | 5 | 4.3% | 2021-02 |
| Dedaub | Tier 2 | 5 | 4.3% | 2022-04 |
| CertiK | Tier 2 | 2 | 1.7% | 2021-06 |
| yAudit | Tier 2 | 1 | 0.9% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlphaHomora | unknown | ethereum | n/a | [`0x54ce99...9babcc`](./contracts/ethereum-1/0x54ce999d8709db87b211d3dd9a78dcdc2f9babcc/) | ✅ Audited |
| CollateralManager | unknown | ethereum | n/a | 6 deployments: ethereum [`0x6349e8...82aa83`](./contracts/ethereum-1/0x6349e8dda81c2e997130bc99827284355e82aa83/); ethereum `0x684647...d259df`; ethereum `0x8d0b8e...f3e899`; ethereum `0xabc648...bf8c18`; ethereum `0xf8ffaa...4f70bc`; ethereum `0xfa3552...a666f5` | ✅ Audited |
| Crv4PoolStrategySUSDPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5708e0...40d9e0`](./contracts/ethereum-1/0x5708e07300e5d6ea9fb6e0dc0c6b6a22f640d9e0/); ethereum `0x6674f7...bd05ce` | ✅ Audited |
| EarnVesperStrategy | unknown | ethereum | n/a | [`0x6d94ce...5d66a5`](./contracts/ethereum-1/0x6d94ce384cf6b51f93f8c702b039333fc95d66a5/) | ✅ Audited |
| Euler | unknown | ethereum | n/a | [`0x67be85...cc1165`](./contracts/ethereum-1/0x67be8549cc27f0e10dd5925191354f7aefcc1165/) | ✅ Audited |
| EulerVesperXy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2b5de5...94b609`](./contracts/ethereum-1/0x2b5de50a1db84dd2dc66146cd513d2688394b609/); ethereum `0x46667f...db63f5`; ethereum `0xf1886a...0c17ad` | ✅ Audited |
| MakerVesperStETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc2dda4...8698e1`](./contracts/ethereum-1/0xc2dda4d6ca0e2728bdc7b0a738d4664bf58698e1/); ethereum `0xf1543e...fb20f5` | ✅ Audited |
| Minter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4bc1a2...370599`](./contracts/ethereum-1/0x4bc1a26ec4ab5948b950a64479a4046701370599/); ethereum `0x7c1482...f11397` | ✅ Audited |
| PaymentSplitter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x223809...13152c`](./contracts/ethereum-1/0x223809e09ec28c28219769c3ff05c790c213152c/); ethereum `0xecc4be...7524df` | ✅ Audited |
| PoolAccountant | unknown | ethereum | n/a | 11 deployments: ethereum [`0x0fae21...ff6e56`](./contracts/ethereum-1/0x0fae214b4e023e0fd5005f1be17e03a5eeff6e56/); ethereum `0x102507...842428`; ethereum `0x13c88a...91b1fd`; ethereum `0x2337c5...c442c0`; ethereum `0x4f746b...cfefe0`; ethereum `0x542ffa...a3d919`; ethereum `0x7c6226...0e639e`; ethereum `0x90b845...d728f6`; ethereum `0x955613...379b95`; ethereum `0xa17f64...a6088c`; ethereum `0xfb7fa7...24eb44` | ✅ Audited |
| PoolRewards | unknown | ethereum | n/a | 8 deployments: ethereum [`0x31d9b0...8ee863`](./contracts/ethereum-1/0x31d9b05d89ac6b621b42a616696df9d1de8ee863/); ethereum `0x479a86...295f8d`; ethereum `0x858a0a...c1bd1c`; ethereum `0x935673...9dc738`; ethereum `0xb412e9...0ba854`; ethereum `0xca9aee...2fdec5`; ethereum `0xd59996...0343b0`; ethereum `0xec5a0f...512a3e` | ✅ Audited |
| RariFuse8Eth | unknown | ethereum | n/a | [`0x82f53c...c3458a`](./contracts/ethereum-1/0x82f53ce55c412b7614beaca41ae7607405c3458a/) | ✅ Audited |
| VesperBridgeStrategy | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1cbb7b...c2b9b5`](./contracts/ethereum-1/0x1cbb7b6190bb2721e2b658e315692bd98cc2b9b5/); ethereum `0x210e1b...46f585`; ethereum `0x4f1d2b...16b3fe`; ethereum `0x6d7d6d...018578`; ethereum `0x7ff950...ac0969`; ethereum `0x99bfef...37b12e` | ✅ Audited |
| VesperEarn | unknown | ethereum | n/a | [`0xfd3783...41f661`](./contracts/ethereum-1/0xfd3783586abde50e7b03c171bd1062354641f661/) | ✅ Audited |
| VesperEarnSaddleLp | unknown | ethereum | n/a | [`0x15911b...703f8a`](./contracts/ethereum-1/0x15911b4b6fbdb83967919e2e2cd6259d7e703f8a/) | ✅ Audited |
| VesperIronBankXYStrategy | unknown | ethereum | n/a | [`0x79d198...63828a`](./contracts/ethereum-1/0x79d198221d0bb53a1f03491ae902eb0dac63828a/) | ✅ Audited |
| VesperMakerStrategyETH | unknown | ethereum | n/a | [`0x980e76...c8e697`](./contracts/ethereum-1/0x980e7693fdbba39ba75a9be85cda6c336ec8e697/) | ✅ Audited |
| VETH | unknown | ethereum | n/a | 3 deployments: ethereum [`0x103cc1...e54d5e`](./contracts/ethereum-1/0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e/); ethereum `0x804f33...c82ea3`; ethereum `0xe4e3da...f39a29` | ✅ Audited |
| VLINK | unknown | ethereum | n/a | [`0x0a27e9...93d40c`](./contracts/ethereum-1/0x0a27e910aee974d05000e05eab8a4b8ebd93d40c/) | ✅ Audited |
| VSP | unknown | ethereum | n/a | [`0x1b4018...998421`](./contracts/ethereum-1/0x1b40183efb4dd766f11bda7a7c3ad8982e998421/) | ✅ Audited |
| VSPStrategy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2a1b6f...bc94f4`](./contracts/ethereum-1/0x2a1b6fb23ccf9dc89859778cd8d240cbd0bc94f4/); ethereum `0x94c7c5...334e7e`; ethereum `0xd5579a...e32aa2`; ethereum `0xfd61f9...5794b6` | ✅ Audited |
| VUSDC | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0648e5...7957cf`](./contracts/ethereum-1/0x0648e517670d71ba46d7a27ba04677db7c7957cf/); ethereum `0x0c4906...bf113d`; ethereum `0x4a4a54...411101`; ethereum `0x56ee98...2e581b`; ethereum `0x777a78...49cf85`; ethereum `0x85c786...547a46` | ✅ Audited |
| VVSP | unknown | ethereum | n/a | [`0xba4cfe...ecf8fc`](./contracts/ethereum-1/0xba4cfe5741b357fa371b506e5db0774abfecf8fc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (92)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Address | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b9eb0...65e679`](./contracts/ethereum-1/0x6b9eb0be25cc03fc5a7e8b3c78fbd73f7a65e679/); ethereum `0x7d1e43...eee6be` | ⚠️ Unaudited |
| AlusdTokenMainnetOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6ea1c7...ff5377`](./contracts/ethereum-1/0x6ea1c75c219eeebb10ec57737cf0a7df1eff5377/); ethereum `0xad8b32...1523cf` | ⚠️ Unaudited |
| BTCPeggedTokenOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x54525f...4946b4`](./contracts/ethereum-1/0x54525f751b71e1ea58a558649f0057451e4946b4/); ethereum `0xe21319...4372d0` | ⚠️ Unaudited |
| CreamStrategyUSDT | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5a6aad...5f6314`](./contracts/ethereum-1/0x5a6aad61ca0e3d45457628f82d493101a85f6314/); ethereum `0x8eacba...89590b`; ethereum `0xc7e98c...5fd6c8` | ⚠️ Unaudited |
| Crv3PoolStrategyDAI | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0c712f...e29ce3`](./contracts/ethereum-1/0x0c712fa5ba0dc3fc46cabef2d373c4f9f5e29ce3/); ethereum `0x656636...e1db6f`; ethereum `0xd11e67...b3be75`; ethereum `0xe94046...1dfd1d` | ⚠️ Unaudited |
| DebtToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x347eac...689847`](./contracts/ethereum-1/0x347eacc4710eb045ccf0c56c0635d81840689847/); ethereum `0x486b92...0ec1bd`; ethereum `0xda0958...b294da` | ⚠️ Unaudited |
| DebtTokenUpgrader | unknown | ethereum | n/a | [`0xfc53fe...c8fffe`](./contracts/ethereum-1/0xfc53fe3d426dfe6ff891f0351a8fca7f5dc8fffe/) | ⚠️ Unaudited |
| DepositToken | unknown | ethereum | n/a | [`0x24f2d1...bcf4ad`](./contracts/ethereum-1/0x24f2d1ac81ecfd8a808001a97349185ef1bcf4ad/) | ⚠️ Unaudited |
| DepositToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x335e4b...4ea53a`](./contracts/ethereum-1/0x335e4ba7152c96dd19db8c7138c55b8bd74ea53a/); ethereum `0xc00a39...6ee134`; ethereum `0xe4dfd8...ed31c9` | ⚠️ Unaudited |
| DepositTokenUpgrader | unknown | ethereum | n/a | [`0xf3d0cd...82aec6`](./contracts/ethereum-1/0xf3d0cdc22672ecf1eda6438bfa88126ac382aec6/) | ⚠️ Unaudited |
| EarnPool | unknown | bsc | n/a | 2 deployments: bsc [`0x143c8b...164642`](./contracts/bsc-56/0x143c8b6b1161dec945d1fb7c2ca13c3b1d164642/); bsc `0x66de07...1796f3` | ⚠️ Unaudited |
| ESVSP | unknown | ethereum | n/a | 4 deployments: ethereum [`0x02fc85...58623b`](./contracts/ethereum-1/0x02fc8523510be4c6085d8d820ecced3f2a58623b/); ethereum `0xd18709...2076f5`; ethereum `0xd55d88...3028fa`; ethereum `0xeba312...7d5d05` | ⚠️ Unaudited |
| ESVSP | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbbc50d...fa1018`](./contracts/ethereum-1/0xbbc50dafd976d4bd7854a8329646fb88d7fa1018/); ethereum `0xbcb608...e0fe29` | ⚠️ Unaudited |
| ESVSP | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc6be0e...8572bf`](./contracts/ethereum-1/0xc6be0eea986acfcd6379cf080b7b766b358572bf/); ethereum `0xf86472...5bd807` | ⚠️ Unaudited |
| ESVSP | unknown | ethereum | n/a | [`0xd02d6e...a96f9b`](./contracts/ethereum-1/0xd02d6ec21851092a9cca8a8eb388fdf66ba96f9b/) | ⚠️ Unaudited |
| ESVSP721 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x676c0a...014363`](./contracts/ethereum-1/0x676c0a314284ace713c74add192a0b30f4014363/); ethereum `0xede488...736d27` | ⚠️ Unaudited |
| ESVSP721 | unknown | ethereum | n/a | [`0x6aff18...424b13`](./contracts/ethereum-1/0x6aff1846413bf15a8d7e72c799b96bf37e424b13/) | ⚠️ Unaudited |
| ESVSP721 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x927367...0393d4`](./contracts/ethereum-1/0x927367b4cecb2ac2723488411eae967eb70393d4/); ethereum `0x9b62d5...f48428` | ⚠️ Unaudited |
| ESVSP721Upgrader | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0e8c5c...2cbd4e`](./contracts/ethereum-1/0x0e8c5c81053581341ba45ea149982ebf862cbd4e/); ethereum `0xa958a7...837126` | ⚠️ Unaudited |
| ESVSPUpgrader | unknown | ethereum | n/a | 2 deployments: ethereum [`0x54ae48...47a307`](./contracts/ethereum-1/0x54ae4816bbe3c667aac5d9bd2f4ffb1ad947a307/); ethereum `0xd3bd28...29c85a` | ⚠️ Unaudited |
| MakerVesper | unknown | ethereum | n/a | [`0xd08cfe...a7c078`](./contracts/ethereum-1/0xd08cfe37f44f2f9afda5f8788cb856c63ea7c078/) | ⚠️ Unaudited |
| MasterOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x80704a...4f46e2`](./contracts/ethereum-1/0x80704acdf97723963263c78f861f091ad04f46e2/); ethereum `0xf54f2d...0133ce` | ⚠️ Unaudited |
| MerkleBox | operational_periphery | ethereum | n/a | [`0xe67516...94bf73`](./contracts/ethereum-1/0xe67516417a934b27cf0c14868f8165b1bc94bf73/) | ⚠️ Unaudited |
| MiniArmyKnife | unknown | ethereum | n/a | 5 deployments: ethereum [`0x583e49...48201a`](./contracts/ethereum-1/0x583e4938f95e75906b1b69514c9bf7ebc648201a/); ethereum `0x5d72a9...afca80`; ethereum `0xca5a5b...33b346`; ethereum `0xda5e6d...368b2d`; ethereum `0xdab66f...66626c` | ⚠️ Unaudited |
| MockVSP | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5cda65...5e3f97`](./contracts/ethereum-1/0x5cda6590162a095fd7c55b1482574dd8635e3f97/); ethereum `0x85cbb4...244777` | ⚠️ Unaudited |
| NativeTokenGateway | unknown | ethereum | n/a | [`0x7f58bb...e5f66c`](./contracts/ethereum-1/0x7f58bb64aa5138a5d0147024f5e3474321e5f66c/) | ⚠️ Unaudited |
| Pool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3f18ab...078bac`](./contracts/ethereum-1/0x3f18ab22298b5faca652c267bf0b6a5bca078bac/); ethereum `0x46b13e...fb08c8` | ⚠️ Unaudited |
| Pool | unknown | ethereum | n/a | [`0x530e54...ab151a`](./contracts/ethereum-1/0x530e54138266f6e3eb7b3b828c2ed98c6cab151a/) | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | 15 deployments: ethereum [`0x011881...ca7128`](./contracts/ethereum-1/0x011881efbdbb250702f9d7ca2a74788b26ca7128/); ethereum `0x042565...760213`; ethereum `0x16cdfe...055659`; ethereum `0x4d71a0...e5d674`; ethereum `0x6cf8b8...bcee2a`; ethereum `0x762ff5...20380d`; ethereum `0x804cd6...7bc7ed`; ethereum `0x8ad5b3...a62e0a`; ethereum `0xa92951...5b2cbb`; ethereum `0xc5bdba...8e5a04`; ethereum `0xc88a0a...93c4b6`; ethereum `0xd01062...b1de7c`; ethereum `0xdd3662...1117b4`; ethereum `0xec8c44...6f0505`; ethereum `0xfb0df6...94561a` | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0879f1...e89542`](./contracts/ethereum-1/0x0879f1821e0b41913ba6fdbd691a11675ce89542/); ethereum `0x64a76d...3619b5` | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x12fdff...fc89d7`](./contracts/ethereum-1/0x12fdffb52297a13a29041299ad43458ebcfc89d7/); ethereum `0x552426...833ca7` | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2a7534...031794`](./contracts/ethereum-1/0x2a7534a2a4293068931e7d287efbce7889031794/); ethereum `0xbdf903...2474fa` | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x45aba6...e5e94e`](./contracts/ethereum-1/0x45aba68af23de6de7dc8963e97e4f6f68de5e94e/); ethereum `0xd87b3b...25b421` | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6218f1...e633da`](./contracts/ethereum-1/0x6218f149c5bbcc719e4fddc60c9e8f0d97e633da/); ethereum `0xbf2e3f...940c1b` | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x751e5e...86d23a`](./contracts/ethereum-1/0x751e5e3f4b22641d693593cff60932980386d23a/); ethereum `0xd66b76...409661` | ⚠️ Unaudited |
| PoolAccountantUpgrader | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4889f9...13f9c1`](./contracts/ethereum-1/0x4889f992220345dc3e4375c933ab441e5513f9c1/); ethereum `0xacca7c...a4638d`; ethereum `0xb5144e...b585c6`; ethereum `0xce9105...fdf13e` | ⚠️ Unaudited |
| PoolRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbaf4ea...4e8b44`](./contracts/ethereum-1/0xbaf4eaed7cc1cbb3d6f2f3b89493dbb9764e8b44/); ethereum `0xbf5719...570115` | ⚠️ Unaudited |
| PoolRegistryUpgrader | unknown | ethereum | n/a | [`0x5079e2...e8315b`](./contracts/ethereum-1/0x5079e29313b3d9021bc4a82194b6bc32abe8315b/) | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10c72f...761919`](./contracts/ethereum-1/0x10c72fdedd8eb17916c362c33c0c453928761919/); ethereum `0x877d05...d05be9` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10fde8...8580fa`](./contracts/ethereum-1/0x10fde8c254a100674439d707628569686c8580fa/); ethereum `0x2cb31d...406046` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17eff8...4d417b`](./contracts/ethereum-1/0x17eff816ef9646481c8bac6a50b3c9a67f4d417b/); ethereum `0xe2751f...acb121` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3a7644...d16653`](./contracts/ethereum-1/0x3a7644067584151e5861848c4942b9a15ed16653/); ethereum `0x487f4f...9e9211` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4279cc...c01106`](./contracts/ethereum-1/0x4279cc1ace3c89eea54fa49df11ee46e34c01106/); ethereum `0xe82cec...2e7a9f` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4a5398...bd5486`](./contracts/ethereum-1/0x4a539836db582ded710b3dd974ae017ddbbd5486/); ethereum `0xb8208c...c8906d` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4a7ce5...951d5c`](./contracts/ethereum-1/0x4a7ce5db8fa84e7aff6ad6e234c6c6b515951d5c/); ethereum `0xf9fbc8...cc064c` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x532342...5f5d83`](./contracts/ethereum-1/0x5323427696cbce0e15d2e21627e8aa646a5f5d83/); ethereum `0x90bb3e...f4307e` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6d7746...e64153`](./contracts/ethereum-1/0x6d7746336def5dd009cee7cef9a0331495e64153/); ethereum `0x8a36f2...f6fbb7` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6dc347...6def93`](./contracts/ethereum-1/0x6dc34784c84b74dc928b5977812f4603e56def93/); ethereum `0xebf4c7...a2023d` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa72054...a0bfaa`](./contracts/ethereum-1/0xa7205492c0a35a1ebbaabe25956391012da0bfaa/); ethereum `0xc1fe9a...d17749` | ⚠️ Unaudited |
| PoolRewardsUpgrader | unknown | ethereum | n/a | 4 deployments: ethereum [`0x655845...e03d23`](./contracts/ethereum-1/0x655845ac2db0c1955815bdc33f0270bc37e03d23/); ethereum `0x667174...881942`; ethereum `0xa6d77c...ab9a29`; ethereum `0xc2228b...37cc7b` | ⚠️ Unaudited |
| PoolUpgrader | unknown | ethereum | n/a | [`0xcbf7f3...08b77b`](./contracts/ethereum-1/0xcbf7f35627073fa12d3d7ba17c5b2d1ff808b77b/) | ⚠️ Unaudited |
| PriceProvidersAggregator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37ff84...51b92b`](./contracts/ethereum-1/0x37ff84f9ebe44530074142de42469ae40051b92b/); ethereum `0x516f93...e900fd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x19a02f...2798ca`](./contracts/ethereum-1/0x19a02f3512bdf78114b3c50f7d22a34b1b2798ca/) | ⚠️ Unaudited |
| Redeemer | unknown | ethereum | n/a | [`0x7915ce...7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d6d94...e43b97`](./contracts/ethereum-1/0x0d6d94f53c2ecb24f3c632745a535a947ee43b97/); ethereum `0x497958...1c51c0` | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2005e4...a17994`](./contracts/ethereum-1/0x2005e43c86cefe594c1e8e7d72077dadcda17994/); ethereum `0xfb9b64...1f7d65` | ⚠️ Unaudited |
| RewardsDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x025347...7bcad7`](./contracts/ethereum-1/0x025347f4cc7865068de5a139951411084e7bcad7/); ethereum `0x1a19a4...02872a` | ⚠️ Unaudited |
| RewardsDistributorUpgrader | unknown | ethereum | n/a | [`0x618d0b...ad9b2b`](./contracts/ethereum-1/0x618d0b1f16b87de1231cd9ec224700046aad9b2b/) | ⚠️ Unaudited |
| RewardsUpgrader | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2bdba0...7553f2`](./contracts/ethereum-1/0x2bdba054af6b11c85428cd817d55355b487553f2/); ethereum `0xd88e30...68a720` | ⚠️ Unaudited |
| RoutedSwapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f8b10...dd1745`](./contracts/ethereum-1/0x2f8b104748a0ad707ae610d0ce97686cb4dd1745/); ethereum `0xb9e463...71b8bf` | ⚠️ Unaudited |
| RoutedSwapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x341c2a...a1e27d`](./contracts/ethereum-1/0x341c2abe8901353e12b955b1f3462afe7ba1e27d/); ethereum `0xea454c...b50038` | ⚠️ Unaudited |
| StableCoinProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x091f06...486cda`](./contracts/ethereum-1/0x091f06081ac7083a27a966d466e04cafec486cda/); ethereum `0xfd5216...690773` | ⚠️ Unaudited |
| SyntheticToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9105a7...843ee9`](./contracts/ethereum-1/0x9105a793a24de69b1ac6f2051036d69670843ee9/); ethereum `0x9f71f7...57b8d0`; ethereum `0xb298aa...7a129f` | ⚠️ Unaudited |
| SyntheticTokenUpgrader | unknown | ethereum | n/a | [`0xc097a7...61b3ad`](./contracts/ethereum-1/0xc097a77eb6831957508050c6645423253661b3ad/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0d858d...cb754f`](./contracts/ethereum-1/0x0d858d6d96a8b40414ec54b3019aaee431cb754f/); ethereum `0x23140f...94db99`; ethereum `0x6cb3b9...727fff`; ethereum `0xbdb0fb...5d93ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x11e21c...cc80ed`](./contracts/ethereum-1/0x11e21cf12af6a2188fc37265b6a02dac27cc80ed/); ethereum `0x861db1...71a0d4` | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0e2ba4...7faf49`](./contracts/ethereum-1/0x0e2ba4df2ab32fcc0a6975093e040568b37faf49/); ethereum `0x813e89...902bd8`; ethereum `0x8b609c...14b9d9`; ethereum `0xe6cffe...76ff12` | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | 2 deployments: ethereum [`0x312f8f...313764`](./contracts/ethereum-1/0x312f8f1df85a193c9ff1bbd89da3721b12313764/); ethereum `0xe90c13...7405ef` | ⚠️ Unaudited |
| TreasuryUpgrader | unknown | ethereum | n/a | [`0xa88685...8819b9`](./contracts/ethereum-1/0xa8868579c6152bbbb8db46606354b56bfd8819b9/) | ⚠️ Unaudited |
| VBTC | unknown | ethereum | n/a | [`0xd773ca...af168b`](./contracts/ethereum-1/0xd773ca264b5363f25f7f96319076753849af168b/) | ⚠️ Unaudited |
| VesperEarnDrip | unknown | ethereum | n/a | 2 deployments: ethereum [`0x285a45...9f6dbb`](./contracts/ethereum-1/0x285a45c29a738dbc5bc092daed3efa5c579f6dbb/); ethereum `0x311b51...8cee4d` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | ethereum | n/a | 2 deployments: ethereum [`0x339b20...6b3b08`](./contracts/ethereum-1/0x339b20136282a9de3a6fc448b5ba9534116b3b08/); ethereum `0xbc390a...68dff6` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | ethereum | n/a | 2 deployments: ethereum [`0x60958e...fa3414`](./contracts/ethereum-1/0x60958e4c8d39fdd8d0f631fd942870851afa3414/); ethereum `0xb76ec4...a641f9` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7b0729...829eef`](./contracts/ethereum-1/0x7b07296561d0ea40dd6ffc5c19a934796a829eef/); ethereum `0xea6c37...564791` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | ethereum | n/a | 2 deployments: ethereum [`0xf5ae30...36acca`](./contracts/ethereum-1/0xf5ae3095be887004a5df20ef6f2786563836acca/); ethereum `0xfc667c...820ace` | ⚠️ Unaudited |
| VETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x951397...3cca8c`](./contracts/ethereum-1/0x951397286e4b78ae5827502ed494d7902d3cca8c/); ethereum `0xa89566...07d2b3` | ⚠️ Unaudited |
| VirtualDollar | unknown | ethereum | n/a | [`0xb791a8...a47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | ⚠️ Unaudited |
| VPool | unknown | ethereum | n/a | 7 deployments: ethereum [`0x0538c8...9e36ee`](./contracts/ethereum-1/0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee/); ethereum `0xb4edce...fd5f7d`; ethereum `0xba680a...f26e47`; ethereum `0xc1efbe...99c335`; ethereum `0xd11d9b...caeac5`; ethereum `0xd25ee8...d7b531`; ethereum `0xff43c3...42c257` | ⚠️ Unaudited |
| VPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x05b143...c8b4b6`](./contracts/ethereum-1/0x05b143213bc0bb7e6bb5a9afd9ca10df3cc8b4b6/); ethereum `0xad680b...f440b5` | ⚠️ Unaudited |
| VPool | unknown | ethereum | n/a | 7 deployments: ethereum [`0x43ef34...34f841`](./contracts/ethereum-1/0x43ef34f296afe23b654bda084de43ccbec34f841/); ethereum `0x479dfa...2778ca`; ethereum `0x4da20a...bbcf29`; ethereum `0x7f0088...9d5c0f`; ethereum `0x8c657a...c48770`; ethereum `0xb7cec2...6d27bf`; ethereum `0xda92f9...42cf04` | ⚠️ Unaudited |
| VPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4b8a42...d807fe`](./contracts/ethereum-1/0x4b8a425d305128b93cec3f7dbe13f93dcbd807fe/); ethereum `0x8b3c86...8e3639` | ⚠️ Unaudited |
| VPool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x4c73f0...f72c22`](./contracts/ethereum-1/0x4c73f025a1947ec770327b9956fc61f535f72c22/); ethereum `0x650cd4...01036a`; ethereum `0x91f92f...8ede4a`; ethereum `0xca7c60...6a36c2` | ⚠️ Unaudited |
| VPool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x4dbe3f...30aa7b`](./contracts/ethereum-1/0x4dbe3f01abe271d3e65432c74851625a8c30aa7b/); ethereum `0xd948ba...9fd9b8`; ethereum `0xdd9f61...e6d6dd`; ethereum `0xecd779...f23234` | ⚠️ Unaudited |
| VPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7e198a...5c5dd7`](./contracts/ethereum-1/0x7e198a1934fffff394e942d5bdc44c43dd5c5dd7/); ethereum `0x8c2d8b...8ec6f3` | ⚠️ Unaudited |
| VPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa7c21f...c32719`](./contracts/ethereum-1/0xa7c21fd948c44830541b8561b31abde09cc32719/); ethereum `0xc88231...8433cc` | ⚠️ Unaudited |
| VPoolUpgrader | unknown | ethereum | n/a | 4 deployments: ethereum [`0x582ebf...9e0446`](./contracts/ethereum-1/0x582ebf6d677d54d54bd26980d076047fcb9e0446/); ethereum `0xa1d704...9aa3ee`; ethereum `0xa924b6...86c5b0`; ethereum `0xe64795...561624` | ⚠️ Unaudited |
| VspMainnetOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5ed276...d84527`](./contracts/ethereum-1/0x5ed27617cc2fb7b4faab67ed30efde9cc7d84527/); ethereum `0xa889d4...126dee` | ⚠️ Unaudited |
| VspMinter | unknown | ethereum | n/a | [`0xcf10c3...303e1e`](./contracts/ethereum-1/0xcf10c379ddf728b8c9c55eb7ba2d8a0795303e1e/) | ⚠️ Unaudited |
| VUNI | unknown | ethereum | n/a | [`0xf858a3...fb40ae`](./contracts/ethereum-1/0xf858a354ad255d21e17c56f8f2b10ed67dfb40ae/) | ⚠️ Unaudited |
| VUSD | unknown | ethereum | n/a | [`0x677ddb...da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | ⚠️ Unaudited |
| VUSDT | unknown | ethereum | n/a | [`0x95c0b3...13bdff`](./contracts/ethereum-1/0x95c0b30c6276e67ae95127af458573a63113bdff/) | ⚠️ Unaudited |
| VWBTC | token | ethereum | n/a | 2 deployments: ethereum [`0x4b2e76...b1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/); ethereum `0xcc9be1...ac0605` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x334fa9...4cabd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37b54f...60bb8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bc3ae...415e36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0222d...4a1e16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf502d1...4602ce` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [REP-Bloq-11_11_20.pdf](https://github.com/vesperfi/doc/blob/main/audit/v1/REP-Bloq-11_11_20.pdf) | Bloq | Audit | 2020-11 | stale | Direct | contract_name | 2 | n/a |
| [REP-Bloq-VesperPools-20_01_2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/REP-Bloq-VesperPools-20_01_2021.pdf) | Bloq | Audit | 2021-01 | stale | Direct | contract_name | 2 | n/a |
| [REP-Bloq_15_02_2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/REP-Bloq_15_02_2021.pdf) | Bloq | Audit | 2021-02 | stale | Direct | contract_name | 2 | high |
| [Vesper Pools Security - Fourth Audit v210119.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Fourth%20Audit%20v210119.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 2 | n/a |
| [Vesper Pools Security - PaymentSplitter Audit v210210.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20PaymentSplitter%20Audit%20v210210.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 2 | high |
| [Vesper Pools Security - Second Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Second%20Audit%20v201230.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 2 | n/a |
| [Vesper Pools Security - Third Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Third%20Audit%20v201230.pdf) | unknown | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [Vesper Pools Security Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20Audit%20v201230.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | 1 | n/a |
| [Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20-%20Nov%202021.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 2 | n/a |
| [Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Earn%20-%20September%202021.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 1 | n/a |
| [Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Pools%20February%202022.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 2 | n/a |
| [Coinspect - Smart Contract Audit - Vesper Pools January 2022.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Pools%20January%202022.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 3 | n/a |
| [PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/PRE-Bloq_%20Vesper%20Pools%20V3-2021-06-26-certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | 2 | n/a |
| [Vesper Pools audit-poolv2-dedaub-April-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20audit-poolv2-dedaub-April-2021.pdf) | Dedaub | Audit | 2021-04 | stale | Direct | contract_name | 2 | n/a |
| [Vesper Pools v3 audit-dedaub-May-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20v3%20audit-dedaub-May-2021.pdf) | Dedaub | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [Vesper Pools v3 audit-dedaub.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20v3%20audit-dedaub.pdf) | Dedaub | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [Vesper Pools+Strategies September-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%2BStrategies%20September-2021.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [Vesper Pools-Dedaub-Nov-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools-Dedaub-Nov-2021.pdf) | Dedaub | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |
| [Vesper Strategies - April v210428.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Strategies%20-%20April%20v210428.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 1 | n/a |
| [Vesper V3 - 2nd Review - v2-may-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20V3%20-%202nd%20Review%20-%20v2-may-2021.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | medium |
| [Vesper V3 - 2nd Review - v210519 (1).pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20V3%20-%202nd%20Review%20-%20v210519%20(1).pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | medium |
| [Vesper-Pools-Audit-Coinspect-Jan21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Jan21.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 2 | n/a |
| [Vesper-Pools-Audit-Coinspect-March21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-March21.pdf) | unknown | Audit | 2021-03 | stale | Direct | contract_name | 22 | high |
| [Vesper-Pools-Audit-Coinspect-March22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-March22.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Vesper-Pools-Audit-Coinspect-Nov21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Nov21.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 2 | n/a |
| [Vesper-Pools-Audit-Coinspect-Sept21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Sept21.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 1 | n/a |
| [Vesper-Pools-Audit-Dedaub-April 22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Dedaub-April%2022.pdf) | Dedaub | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [Vesper-Pools-Audit-Dedaub-Oct21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Dedaub-Oct21.pdf) | Dedaub | Audit | 2021-10 | stale | Direct | contract_name | 1 | n/a |
| [Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf) | Halborn | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf) | Dedaub | Audit | 2022-03 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 120 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4, medium=2
- Match method counts: contract_name=31, extraction_exact=30

Zero-match audit list:

- [4867] Vesper Pools Security - Third Audit v201230.pdf
- [4877] Vesper Pools+Strategies September-2021.pdf
- [4884] Vesper-Pools-Audit-Coinspect-March22.pdf
- [4887] Vesper-Pools-Audit-Dedaub-April 22.pdf
- [4889] Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf

Fork inheritance lineage and inherited audits are included when available.
