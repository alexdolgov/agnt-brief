# Agentic Audit Brief: Vesper

## Project Overview

- Project: Vesper (`vesper`)
- Website: [https://vesper.finance/](https://vesper.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.920Z
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

- Coverage of deployed-live implementations: 23/112 (20.5%)
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
| AlphaHomora | unknown | ethereum | n/a | [`0x54ce999d8709db87b211d3dd9a78dcdc2f9babcc`](./contracts/ethereum-1/0x54ce999d8709db87b211d3dd9a78dcdc2f9babcc/) | ✅ Audited |
| CollateralManager | unknown | ethereum | n/a | 6 deployments: ethereum [`0x6349e8dda81c2e997130bc99827284355e82aa83`](./contracts/ethereum-1/0x6349e8dda81c2e997130bc99827284355e82aa83/); ethereum `0x6846470150e5273c61f16c5ffb94fff5fed259df`; ethereum `0x8d0b8e2b5584ce1487317f81da7d97397ef3e899`; ethereum `0xabc64889601f01e7b26277ef8756250d6abf8c18`; ethereum `0xf8ffaae4fc8c1b8d9680a4498b87f5b9dd4f70bc`; ethereum `0xfa3552dc90e41241112eac7b7c984a301ca666f5` | ✅ Audited |
| Crv4PoolStrategySUSDPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5708e07300e5d6ea9fb6e0dc0c6b6a22f640d9e0`](./contracts/ethereum-1/0x5708e07300e5d6ea9fb6e0dc0c6b6a22f640d9e0/); ethereum `0x6674f7eaafabed615b7261174e95e8a501bd05ce` | ✅ Audited |
| EarnVesperStrategy | unknown | ethereum | n/a | [`0x6d94ce384cf6b51f93f8c702b039333fc95d66a5`](./contracts/ethereum-1/0x6d94ce384cf6b51f93f8c702b039333fc95d66a5/) | ✅ Audited |
| Euler | unknown | ethereum | n/a | [`0x67be8549cc27f0e10dd5925191354f7aefcc1165`](./contracts/ethereum-1/0x67be8549cc27f0e10dd5925191354f7aefcc1165/) | ✅ Audited |
| EulerVesperXy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2b5de50a1db84dd2dc66146cd513d2688394b609`](./contracts/ethereum-1/0x2b5de50a1db84dd2dc66146cd513d2688394b609/); ethereum `0x46667f3771514e7d76c3948acad6dda378db63f5`; ethereum `0xf1886aa6f728d9006141644207ebc7f4090c17ad` | ✅ Audited |
| MakerVesperStETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc2dda4d6ca0e2728bdc7b0a738d4664bf58698e1`](./contracts/ethereum-1/0xc2dda4d6ca0e2728bdc7b0a738d4664bf58698e1/); ethereum `0xf1543e97c79b3581a2ed60184f5dac840efb20f5` | ✅ Audited |
| Minter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4bc1a26ec4ab5948b950a64479a4046701370599`](./contracts/ethereum-1/0x4bc1a26ec4ab5948b950a64479a4046701370599/); ethereum `0x7c148217c7f99504abeb4582334c9189e5f11397` | ✅ Audited |
| PaymentSplitter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x223809e09ec28c28219769c3ff05c790c213152c`](./contracts/ethereum-1/0x223809e09ec28c28219769c3ff05c790c213152c/); ethereum `0xecc4bed07750eab7ce1ba634326db046877524df` | ✅ Audited |
| PoolAccountant | unknown | ethereum | n/a | 11 deployments: ethereum [`0x0fae214b4e023e0fd5005f1be17e03a5eeff6e56`](./contracts/ethereum-1/0x0fae214b4e023e0fd5005f1be17e03a5eeff6e56/); ethereum `0x102507268748cca215871f571f0bafc7f5842428`; ethereum `0x13c88a2da8e83ba6933fd3aa51e008986b91b1fd`; ethereum `0x2337c59180357ce1d771da2b2df56a91e7c442c0`; ethereum `0x4f746baa8775a5cb7c69bd79b4d4ebc203cfefe0`; ethereum `0x542ffafff05e076478b62871f7ff2e156fa3d919`; ethereum `0x7c6226a0a3d6e87bb79a301c74004bd0240e639e`; ethereum `0x90b8450a582814d504caecd07ac9d138cfd728f6`; ethereum `0x955613704cf4f99e270e7a470c020f7af1379b95`; ethereum `0xa17f64b7d3222d538ce0bf137199aed373a6088c`; ethereum `0xfb7fa759fb93e56e1dcd2f0cd7098369c624eb44` | ✅ Audited |
| PoolRewards | unknown | ethereum | n/a | 8 deployments: ethereum [`0x31d9b05d89ac6b621b42a616696df9d1de8ee863`](./contracts/ethereum-1/0x31d9b05d89ac6b621b42a616696df9d1de8ee863/); ethereum `0x479a8666ad530af3054209db74f3c74ecd295f8d`; ethereum `0x858a0a2be8f117e8f25bf3c7b8da49ac8bc1bd1c`; ethereum `0x93567318aabd27e21c52f766d2844fc6de9dc738`; ethereum `0xb412e98f1ec54b0161aa81d6846c96a2440ba854`; ethereum `0xca9aeeb14ff396f8661f7df3128f88c31d2fdec5`; ethereum `0xd59996055b5e0d154f2851a030e207e0df0343b0`; ethereum `0xec5a0f4be5eb54f229e078fefdda0f2ebc512a3e` | ✅ Audited |
| RariFuse8Eth | unknown | ethereum | n/a | [`0x82f53ce55c412b7614beaca41ae7607405c3458a`](./contracts/ethereum-1/0x82f53ce55c412b7614beaca41ae7607405c3458a/) | ✅ Audited |
| VesperBridgeStrategy | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1cbb7b6190bb2721e2b658e315692bd98cc2b9b5`](./contracts/ethereum-1/0x1cbb7b6190bb2721e2b658e315692bd98cc2b9b5/); ethereum `0x210e1b607f995f687bc6d1a1574dfcdf1346f585`; ethereum `0x4f1d2b92ef396a17b25234238644e14e9e16b3fe`; ethereum `0x6d7d6db99dbb341b32b48b6248112304c3018578`; ethereum `0x7ff95072875ca9cd735ac57f29bf71b5e8ac0969`; ethereum `0x99bfef73a7935492a19b63526d983e21eb37b12e` | ✅ Audited |
| VesperEarn | unknown | ethereum | n/a | [`0xfd3783586abde50e7b03c171bd1062354641f661`](./contracts/ethereum-1/0xfd3783586abde50e7b03c171bd1062354641f661/) | ✅ Audited |
| VesperEarnSaddleLp | unknown | ethereum | n/a | [`0x15911b4b6fbdb83967919e2e2cd6259d7e703f8a`](./contracts/ethereum-1/0x15911b4b6fbdb83967919e2e2cd6259d7e703f8a/) | ✅ Audited |
| VesperIronBankXYStrategy | unknown | ethereum | n/a | [`0x79d198221d0bb53a1f03491ae902eb0dac63828a`](./contracts/ethereum-1/0x79d198221d0bb53a1f03491ae902eb0dac63828a/) | ✅ Audited |
| VesperMakerStrategyETH | unknown | ethereum | n/a | [`0x980e7693fdbba39ba75a9be85cda6c336ec8e697`](./contracts/ethereum-1/0x980e7693fdbba39ba75a9be85cda6c336ec8e697/) | ✅ Audited |
| VETH | unknown | ethereum | n/a | 3 deployments: ethereum [`0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e`](./contracts/ethereum-1/0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e/); ethereum `0x804f330f9f55623a50befdf4a18812a532c82ea3`; ethereum `0xe4e3da7d4ed8d936f3224f0ffd7e29dde3f39a29` | ✅ Audited |
| VLINK | unknown | ethereum | n/a | [`0x0a27e910aee974d05000e05eab8a4b8ebd93d40c`](./contracts/ethereum-1/0x0a27e910aee974d05000e05eab8a4b8ebd93d40c/) | ✅ Audited |
| VSP | unknown | ethereum | n/a | [`0x1b40183efb4dd766f11bda7a7c3ad8982e998421`](./contracts/ethereum-1/0x1b40183efb4dd766f11bda7a7c3ad8982e998421/) | ✅ Audited |
| VSPStrategy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2a1b6fb23ccf9dc89859778cd8d240cbd0bc94f4`](./contracts/ethereum-1/0x2a1b6fb23ccf9dc89859778cd8d240cbd0bc94f4/); ethereum `0x94c7c51a3ff556b46fc697da0be0dc811e334e7e`; ethereum `0xd5579a994194c142846abafa5919fbad0ae32aa2`; ethereum `0xfd61f9c0796d917466e3ab5f2a40984fc15794b6` | ✅ Audited |
| VUSDC | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0648e517670d71ba46d7a27ba04677db7c7957cf`](./contracts/ethereum-1/0x0648e517670d71ba46d7a27ba04677db7c7957cf/); ethereum `0x0c49066c0808ee8c673553b7cbd99bcc9abf113d`; ethereum `0x4a4a54e2f8bcafdbe426f4c45ec9f9e64f411101`; ethereum `0x56ee98121d65162500ff7705f540426c962e581b`; ethereum `0x777a7850251b7a301cfa1e7b1d8a9c4a9c49cf85`; ethereum `0x85c7862e4fb6593bc4ce40c77dff908f1c547a46` | ✅ Audited |
| VVSP | unknown | ethereum | n/a | [`0xba4cfe5741b357fa371b506e5db0774abfecf8fc`](./contracts/ethereum-1/0xba4cfe5741b357fa371b506e5db0774abfecf8fc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (92)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Address | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b9eb0be25cc03fc5a7e8b3c78fbd73f7a65e679`](./contracts/ethereum-1/0x6b9eb0be25cc03fc5a7e8b3c78fbd73f7a65e679/); ethereum `0x7d1e43f34dbab8468bf617bacb00b0b561eee6be` | ⚠️ Unaudited |
| AlusdTokenMainnetOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6ea1c75c219eeebb10ec57737cf0a7df1eff5377`](./contracts/ethereum-1/0x6ea1c75c219eeebb10ec57737cf0a7df1eff5377/); ethereum `0xad8b320245c2008551803e184e181a935e1523cf` | ⚠️ Unaudited |
| BTCPeggedTokenOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x54525f751b71e1ea58a558649f0057451e4946b4`](./contracts/ethereum-1/0x54525f751b71e1ea58a558649f0057451e4946b4/); ethereum `0xe2131907e2a999d60e765660e96decca0d4372d0` | ⚠️ Unaudited |
| CreamStrategyUSDT | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5a6aad61ca0e3d45457628f82d493101a85f6314`](./contracts/ethereum-1/0x5a6aad61ca0e3d45457628f82d493101a85f6314/); ethereum `0x8eacba80bee37ed291b084752375c49cd489590b`; ethereum `0xc7e98cf7a5e55a4c5a9f1f6cc23291d4205fd6c8` | ⚠️ Unaudited |
| Crv3PoolStrategyDAI | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0c712fa5ba0dc3fc46cabef2d373c4f9f5e29ce3`](./contracts/ethereum-1/0x0c712fa5ba0dc3fc46cabef2d373c4f9f5e29ce3/); ethereum `0x656636a157f29ba5008f398fa83a350f1be1db6f`; ethereum `0xd11e6772a430c45c7b64927069af37fa9ab3be75`; ethereum `0xe94046b46d2b58599a09d91fc5cc00ca3e1dfd1d` | ⚠️ Unaudited |
| DebtToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x347eacc4710eb045ccf0c56c0635d81840689847`](./contracts/ethereum-1/0x347eacc4710eb045ccf0c56c0635d81840689847/); ethereum `0x486b92c950dc7abd78c6aba9e3ffb0f7040ec1bd`; ethereum `0xda09586ff22f4521dabe2538692d8114bab294da` | ⚠️ Unaudited |
| DebtTokenUpgrader | unknown | ethereum | n/a | [`0xfc53fe3d426dfe6ff891f0351a8fca7f5dc8fffe`](./contracts/ethereum-1/0xfc53fe3d426dfe6ff891f0351a8fca7f5dc8fffe/) | ⚠️ Unaudited |
| DepositToken | unknown | ethereum | n/a | [`0x24f2d1ac81ecfd8a808001a97349185ef1bcf4ad`](./contracts/ethereum-1/0x24f2d1ac81ecfd8a808001a97349185ef1bcf4ad/) | ⚠️ Unaudited |
| DepositToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x335e4ba7152c96dd19db8c7138c55b8bd74ea53a`](./contracts/ethereum-1/0x335e4ba7152c96dd19db8c7138c55b8bd74ea53a/); ethereum `0xc00a3923c0486f56596d182e95656fe31a6ee134`; ethereum `0xe4dfd8bf9fa718af957a808b9bf8ec3fe5ed31c9` | ⚠️ Unaudited |
| DepositTokenUpgrader | unknown | ethereum | n/a | [`0xf3d0cdc22672ecf1eda6438bfa88126ac382aec6`](./contracts/ethereum-1/0xf3d0cdc22672ecf1eda6438bfa88126ac382aec6/) | ⚠️ Unaudited |
| EarnPool | unknown | bsc | n/a | 2 deployments: bsc [`0x143c8b6b1161dec945d1fb7c2ca13c3b1d164642`](./contracts/bsc-56/0x143c8b6b1161dec945d1fb7c2ca13c3b1d164642/); bsc `0x66de07893db7492b56ba88503b4cc99bab1796f3` | ⚠️ Unaudited |
| ESVSP | unknown | ethereum | n/a | 4 deployments: ethereum [`0x02fc8523510be4c6085d8d820ecced3f2a58623b`](./contracts/ethereum-1/0x02fc8523510be4c6085d8d820ecced3f2a58623b/); ethereum `0xd18709acc6db21c7db15fc077154dd6c2e2076f5`; ethereum `0xd55d884fd3f9adc545a24fb491a0a93fef3028fa`; ethereum `0xeba312e290444cd4bb5d0b127a869322c37d5d05` | ⚠️ Unaudited |
| ESVSP | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbbc50dafd976d4bd7854a8329646fb88d7fa1018`](./contracts/ethereum-1/0xbbc50dafd976d4bd7854a8329646fb88d7fa1018/); ethereum `0xbcb6081c01e2d2c1a3a2f871cb949e762de0fe29` | ⚠️ Unaudited |
| ESVSP | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc6be0eea986acfcd6379cf080b7b766b358572bf`](./contracts/ethereum-1/0xc6be0eea986acfcd6379cf080b7b766b358572bf/); ethereum `0xf86472575d9c56b2034651870f977787b25bd807` | ⚠️ Unaudited |
| ESVSP | unknown | ethereum | n/a | [`0xd02d6ec21851092a9cca8a8eb388fdf66ba96f9b`](./contracts/ethereum-1/0xd02d6ec21851092a9cca8a8eb388fdf66ba96f9b/) | ⚠️ Unaudited |
| ESVSP721 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x676c0a314284ace713c74add192a0b30f4014363`](./contracts/ethereum-1/0x676c0a314284ace713c74add192a0b30f4014363/); ethereum `0xede48867af081d747242944f2f3c747974736d27` | ⚠️ Unaudited |
| ESVSP721 | unknown | ethereum | n/a | [`0x6aff1846413bf15a8d7e72c799b96bf37e424b13`](./contracts/ethereum-1/0x6aff1846413bf15a8d7e72c799b96bf37e424b13/) | ⚠️ Unaudited |
| ESVSP721 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x927367b4cecb2ac2723488411eae967eb70393d4`](./contracts/ethereum-1/0x927367b4cecb2ac2723488411eae967eb70393d4/); ethereum `0x9b62d5e13250d41cc00b61c6006d413ce5f48428` | ⚠️ Unaudited |
| ESVSP721Upgrader | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0e8c5c81053581341ba45ea149982ebf862cbd4e`](./contracts/ethereum-1/0x0e8c5c81053581341ba45ea149982ebf862cbd4e/); ethereum `0xa958a7ecc4996f69ab91d09dd08d5aea75837126` | ⚠️ Unaudited |
| ESVSPUpgrader | unknown | ethereum | n/a | 2 deployments: ethereum [`0x54ae4816bbe3c667aac5d9bd2f4ffb1ad947a307`](./contracts/ethereum-1/0x54ae4816bbe3c667aac5d9bd2f4ffb1ad947a307/); ethereum `0xd3bd28a160cc2ae5ad5a24513173fc109929c85a` | ⚠️ Unaudited |
| MakerVesper | unknown | ethereum | n/a | [`0xd08cfe37f44f2f9afda5f8788cb856c63ea7c078`](./contracts/ethereum-1/0xd08cfe37f44f2f9afda5f8788cb856c63ea7c078/) | ⚠️ Unaudited |
| MasterOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x80704acdf97723963263c78f861f091ad04f46e2`](./contracts/ethereum-1/0x80704acdf97723963263c78f861f091ad04f46e2/); ethereum `0xf54f2d9eeb59746219e79050e9018b16d40133ce` | ⚠️ Unaudited |
| MerkleBox | operational_periphery | ethereum | n/a | [`0xe67516417a934b27cf0c14868f8165b1bc94bf73`](./contracts/ethereum-1/0xe67516417a934b27cf0c14868f8165b1bc94bf73/) | ⚠️ Unaudited |
| MiniArmyKnife | unknown | ethereum | n/a | 5 deployments: ethereum [`0x583e4938f95e75906b1b69514c9bf7ebc648201a`](./contracts/ethereum-1/0x583e4938f95e75906b1b69514c9bf7ebc648201a/); ethereum `0x5d72a9f081990219c97af877e0e79eadaeafca80`; ethereum `0xca5a5b83fc6ed8577102e0b3b19379683f33b346`; ethereum `0xda5e6d9c7103abfa8866cc96bb75a7ab15368b2d`; ethereum `0xdab66fd2daf2935ffc2e1f1828e61d170166626c` | ⚠️ Unaudited |
| MockVSP | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5cda6590162a095fd7c55b1482574dd8635e3f97`](./contracts/ethereum-1/0x5cda6590162a095fd7c55b1482574dd8635e3f97/); ethereum `0x85cbb45f819704a0b2ff8e8fd8cf1c3983244777` | ⚠️ Unaudited |
| NativeTokenGateway | unknown | ethereum | n/a | [`0x7f58bb64aa5138a5d0147024f5e3474321e5f66c`](./contracts/ethereum-1/0x7f58bb64aa5138a5d0147024f5e3474321e5f66c/) | ⚠️ Unaudited |
| Pool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3f18ab22298b5faca652c267bf0b6a5bca078bac`](./contracts/ethereum-1/0x3f18ab22298b5faca652c267bf0b6a5bca078bac/); ethereum `0x46b13e7e8f1aef156973ae3ed975e738cafb08c8` | ⚠️ Unaudited |
| Pool | unknown | ethereum | n/a | [`0x530e54138266f6e3eb7b3b828c2ed98c6cab151a`](./contracts/ethereum-1/0x530e54138266f6e3eb7b3b828c2ed98c6cab151a/) | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | 15 deployments: ethereum [`0x011881efbdbb250702f9d7ca2a74788b26ca7128`](./contracts/ethereum-1/0x011881efbdbb250702f9d7ca2a74788b26ca7128/); ethereum `0x042565d8c21f82a936031816f390fff3d2760213`; ethereum `0x16cdfeced40a98818587c007204bee1d0c055659`; ethereum `0x4d71a07106f1b632c1286281860a73dbaee5d674`; ethereum `0x6cf8b89103a83b9d739c33e3d91348ec4cbcee2a`; ethereum `0x762ff5490e6f4836fed3399207094c46b720380d`; ethereum `0x804cd69439608985439fbb559d1b5109907bc7ed`; ethereum `0x8ad5b311a7d9111bcc3e92811cd23dce9ba62e0a`; ethereum `0xa929510d07bfcb796c181ff3764c5168675b2cbb`; ethereum `0xc5bdbad3fb77f8cf95f2888fb78d3ccecc8e5a04`; ethereum `0xc88a0a80fa38a828bc697b92a8cb4ea50a93c4b6`; ethereum `0xd01062212c30475ffddfb86bf63932727cb1de7c`; ethereum `0xdd36620d7b94e001c3bed7ff51320c2df31117b4`; ethereum `0xec8c448e025ef3819957b90a29c75ba00d6f0505`; ethereum `0xfb0df6fc8c06e1d71fad8bf293176b8c1194561a` | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0879f1821e0b41913ba6fdbd691a11675ce89542`](./contracts/ethereum-1/0x0879f1821e0b41913ba6fdbd691a11675ce89542/); ethereum `0x64a76d3e194bf36c28b0974a5dedde41ca3619b5` | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x12fdffb52297a13a29041299ad43458ebcfc89d7`](./contracts/ethereum-1/0x12fdffb52297a13a29041299ad43458ebcfc89d7/); ethereum `0x5524263bffaa482d7e7ea922ba1602a825833ca7` | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2a7534a2a4293068931e7d287efbce7889031794`](./contracts/ethereum-1/0x2a7534a2a4293068931e7d287efbce7889031794/); ethereum `0xbdf903d93f5625950670f487db4d9157062474fa` | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x45aba68af23de6de7dc8963e97e4f6f68de5e94e`](./contracts/ethereum-1/0x45aba68af23de6de7dc8963e97e4f6f68de5e94e/); ethereum `0xd87b3b807757b42dbcdd81ef2dbc16e7c025b421` | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6218f149c5bbcc719e4fddc60c9e8f0d97e633da`](./contracts/ethereum-1/0x6218f149c5bbcc719e4fddc60c9e8f0d97e633da/); ethereum `0xbf2e3f32422f8f770f04663fb56a957130940c1b` | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x751e5e3f4b22641d693593cff60932980386d23a`](./contracts/ethereum-1/0x751e5e3f4b22641d693593cff60932980386d23a/); ethereum `0xd66b769b99714e49d599d6ed6bc46a01fa409661` | ⚠️ Unaudited |
| PoolAccountantUpgrader | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4889f992220345dc3e4375c933ab441e5513f9c1`](./contracts/ethereum-1/0x4889f992220345dc3e4375c933ab441e5513f9c1/); ethereum `0xacca7cd8c908b6acbc488c8990a22a6a41a4638d`; ethereum `0xb5144e9ead98d7c0b47b7549f3b2e0b89eb585c6`; ethereum `0xce91056e4c9a12871d66fa17f2ff2f9237fdf13e` | ⚠️ Unaudited |
| PoolRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbaf4eaed7cc1cbb3d6f2f3b89493dbb9764e8b44`](./contracts/ethereum-1/0xbaf4eaed7cc1cbb3d6f2f3b89493dbb9764e8b44/); ethereum `0xbf571976e411cbec9e5a3bce817ae9e4fc570115` | ⚠️ Unaudited |
| PoolRegistryUpgrader | unknown | ethereum | n/a | [`0x5079e29313b3d9021bc4a82194b6bc32abe8315b`](./contracts/ethereum-1/0x5079e29313b3d9021bc4a82194b6bc32abe8315b/) | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10c72fdedd8eb17916c362c33c0c453928761919`](./contracts/ethereum-1/0x10c72fdedd8eb17916c362c33c0c453928761919/); ethereum `0x877d05e606b9b8a572f8fa084b62506741d05be9` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10fde8c254a100674439d707628569686c8580fa`](./contracts/ethereum-1/0x10fde8c254a100674439d707628569686c8580fa/); ethereum `0x2cb31dccb77c7f8099e0b83fc241de9d6c406046` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17eff816ef9646481c8bac6a50b3c9a67f4d417b`](./contracts/ethereum-1/0x17eff816ef9646481c8bac6a50b3c9a67f4d417b/); ethereum `0xe2751fd3fa863be8bf924296edb4386618acb121` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3a7644067584151e5861848c4942b9a15ed16653`](./contracts/ethereum-1/0x3a7644067584151e5861848c4942b9a15ed16653/); ethereum `0x487f4fe98c383f71d0059811ee458658a19e9211` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4279cc1ace3c89eea54fa49df11ee46e34c01106`](./contracts/ethereum-1/0x4279cc1ace3c89eea54fa49df11ee46e34c01106/); ethereum `0xe82cec55c0ad923195a523a6953a0dad432e7a9f` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4a539836db582ded710b3dd974ae017ddbbd5486`](./contracts/ethereum-1/0x4a539836db582ded710b3dd974ae017ddbbd5486/); ethereum `0xb8208c3192d75cf8c8463e5abee802556dc8906d` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4a7ce5db8fa84e7aff6ad6e234c6c6b515951d5c`](./contracts/ethereum-1/0x4a7ce5db8fa84e7aff6ad6e234c6c6b515951d5c/); ethereum `0xf9fbc8021bd0f849c393aa0e3d5e304eb5cc064c` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5323427696cbce0e15d2e21627e8aa646a5f5d83`](./contracts/ethereum-1/0x5323427696cbce0e15d2e21627e8aa646a5f5d83/); ethereum `0x90bb3e3aa5fa88f0a83dcb9485f65d2592f4307e` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6d7746336def5dd009cee7cef9a0331495e64153`](./contracts/ethereum-1/0x6d7746336def5dd009cee7cef9a0331495e64153/); ethereum `0x8a36f26fd4b94392cc967037ddbd6af5a2f6fbb7` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6dc34784c84b74dc928b5977812f4603e56def93`](./contracts/ethereum-1/0x6dc34784c84b74dc928b5977812f4603e56def93/); ethereum `0xebf4c7e909157db518475b8d3b073d54f8a2023d` | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa7205492c0a35a1ebbaabe25956391012da0bfaa`](./contracts/ethereum-1/0xa7205492c0a35a1ebbaabe25956391012da0bfaa/); ethereum `0xc1fe9a02fd9caa37dc3704297afa0d8501d17749` | ⚠️ Unaudited |
| PoolRewardsUpgrader | unknown | ethereum | n/a | 4 deployments: ethereum [`0x655845ac2db0c1955815bdc33f0270bc37e03d23`](./contracts/ethereum-1/0x655845ac2db0c1955815bdc33f0270bc37e03d23/); ethereum `0x6671745a4ff7a3358beae215495040179a881942`; ethereum `0xa6d77cc044bc3f32d055bb993e9cc8e9bdab9a29`; ethereum `0xc2228b31ed970e9eaf8acd40e3dade805937cc7b` | ⚠️ Unaudited |
| PoolUpgrader | unknown | ethereum | n/a | [`0xcbf7f35627073fa12d3d7ba17c5b2d1ff808b77b`](./contracts/ethereum-1/0xcbf7f35627073fa12d3d7ba17c5b2d1ff808b77b/) | ⚠️ Unaudited |
| PriceProvidersAggregator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37ff84f9ebe44530074142de42469ae40051b92b`](./contracts/ethereum-1/0x37ff84f9ebe44530074142de42469ae40051b92b/); ethereum `0x516f93d90afdf3d663db1fe35c05727736e900fd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x19a02f3512bdf78114b3c50f7d22a34b1b2798ca`](./contracts/ethereum-1/0x19a02f3512bdf78114b3c50f7d22a34b1b2798ca/) | ⚠️ Unaudited |
| Redeemer | unknown | ethereum | n/a | [`0x7915ce4f43e1378f0c3720351a973a023f7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d6d94f53c2ecb24f3c632745a535a947ee43b97`](./contracts/ethereum-1/0x0d6d94f53c2ecb24f3c632745a535a947ee43b97/); ethereum `0x4979585df899130aed4e2d945e89bbfeb01c51c0` | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2005e43c86cefe594c1e8e7d72077dadcda17994`](./contracts/ethereum-1/0x2005e43c86cefe594c1e8e7d72077dadcda17994/); ethereum `0xfb9b6481aa3c4b55db99db42ab9e03482e1f7d65` | ⚠️ Unaudited |
| RewardsDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x025347f4cc7865068de5a139951411084e7bcad7`](./contracts/ethereum-1/0x025347f4cc7865068de5a139951411084e7bcad7/); ethereum `0x1a19a413b3343468c7007e18fa553cbb3f02872a` | ⚠️ Unaudited |
| RewardsDistributorUpgrader | unknown | ethereum | n/a | [`0x618d0b1f16b87de1231cd9ec224700046aad9b2b`](./contracts/ethereum-1/0x618d0b1f16b87de1231cd9ec224700046aad9b2b/) | ⚠️ Unaudited |
| RewardsUpgrader | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2bdba054af6b11c85428cd817d55355b487553f2`](./contracts/ethereum-1/0x2bdba054af6b11c85428cd817d55355b487553f2/); ethereum `0xd88e30794d3baa5accedeabd08ed76b8a968a720` | ⚠️ Unaudited |
| RoutedSwapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f8b104748a0ad707ae610d0ce97686cb4dd1745`](./contracts/ethereum-1/0x2f8b104748a0ad707ae610d0ce97686cb4dd1745/); ethereum `0xb9e4632b141856308d6f811589f04b7abf71b8bf` | ⚠️ Unaudited |
| RoutedSwapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x341c2abe8901353e12b955b1f3462afe7ba1e27d`](./contracts/ethereum-1/0x341c2abe8901353e12b955b1f3462afe7ba1e27d/); ethereum `0xea454c961287222150780f656e3f7e27dfb50038` | ⚠️ Unaudited |
| StableCoinProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x091f06081ac7083a27a966d466e04cafec486cda`](./contracts/ethereum-1/0x091f06081ac7083a27a966d466e04cafec486cda/); ethereum `0xfd5216426b516008137e9b7ec33d2b0931690773` | ⚠️ Unaudited |
| SyntheticToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9105a793a24de69b1ac6f2051036d69670843ee9`](./contracts/ethereum-1/0x9105a793a24de69b1ac6f2051036d69670843ee9/); ethereum `0x9f71f7e34567c25672ed6b6e51b5da602757b8d0`; ethereum `0xb298aa5b1b8540413f4804a6eecd5074f67a129f` | ⚠️ Unaudited |
| SyntheticTokenUpgrader | unknown | ethereum | n/a | [`0xc097a77eb6831957508050c6645423253661b3ad`](./contracts/ethereum-1/0xc097a77eb6831957508050c6645423253661b3ad/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0d858d6d96a8b40414ec54b3019aaee431cb754f`](./contracts/ethereum-1/0x0d858d6d96a8b40414ec54b3019aaee431cb754f/); ethereum `0x23140f76bcb844bc6256401dc01fb4816794db99`; ethereum `0x6cb3b9de2b68f97181773119aaa9cee9fa727fff`; ethereum `0xbdb0fb4b0e2f2aead3aff40821d46433735d93ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x11e21cf12af6a2188fc37265b6a02dac27cc80ed`](./contracts/ethereum-1/0x11e21cf12af6a2188fc37265b6a02dac27cc80ed/); ethereum `0x861db15d8f414e48f3f3a40234de0edc0471a0d4` | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0e2ba4df2ab32fcc0a6975093e040568b37faf49`](./contracts/ethereum-1/0x0e2ba4df2ab32fcc0a6975093e040568b37faf49/); ethereum `0x813e891e2bb6729bef4185663624bd09f4902bd8`; ethereum `0x8b609c2502202cbd828b9dd2e13a9df23214b9d9`; ethereum `0xe6cffe0182a39c3683d6eda9a850fcf02a76ff12` | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | 2 deployments: ethereum [`0x312f8f1df85a193c9ff1bbd89da3721b12313764`](./contracts/ethereum-1/0x312f8f1df85a193c9ff1bbd89da3721b12313764/); ethereum `0xe90c137d296e08b4a135f6423121a135fe7405ef` | ⚠️ Unaudited |
| TreasuryUpgrader | unknown | ethereum | n/a | [`0xa8868579c6152bbbb8db46606354b56bfd8819b9`](./contracts/ethereum-1/0xa8868579c6152bbbb8db46606354b56bfd8819b9/) | ⚠️ Unaudited |
| VBTC | unknown | ethereum | n/a | [`0xd773ca264b5363f25f7f96319076753849af168b`](./contracts/ethereum-1/0xd773ca264b5363f25f7f96319076753849af168b/) | ⚠️ Unaudited |
| VesperEarnDrip | unknown | ethereum | n/a | 2 deployments: ethereum [`0x285a45c29a738dbc5bc092daed3efa5c579f6dbb`](./contracts/ethereum-1/0x285a45c29a738dbc5bc092daed3efa5c579f6dbb/); ethereum `0x311b514e369eac678d25a6b54bdcdf621f8cee4d` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | ethereum | n/a | 2 deployments: ethereum [`0x339b20136282a9de3a6fc448b5ba9534116b3b08`](./contracts/ethereum-1/0x339b20136282a9de3a6fc448b5ba9534116b3b08/); ethereum `0xbc390a652ea16b836a98107478e2aa4e3768dff6` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | ethereum | n/a | 2 deployments: ethereum [`0x60958e4c8d39fdd8d0f631fd942870851afa3414`](./contracts/ethereum-1/0x60958e4c8d39fdd8d0f631fd942870851afa3414/); ethereum `0xb76ec44427c1f970ee8ee8c03229823257a641f9` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7b07296561d0ea40dd6ffc5c19a934796a829eef`](./contracts/ethereum-1/0x7b07296561d0ea40dd6ffc5c19a934796a829eef/); ethereum `0xea6c376d019119230b69f5aa9d59507b9b564791` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | ethereum | n/a | 2 deployments: ethereum [`0xf5ae3095be887004a5df20ef6f2786563836acca`](./contracts/ethereum-1/0xf5ae3095be887004a5df20ef6f2786563836acca/); ethereum `0xfc667c88bc4a114b10235c9085601869d0820ace` | ⚠️ Unaudited |
| VETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x951397286e4b78ae5827502ed494d7902d3cca8c`](./contracts/ethereum-1/0x951397286e4b78ae5827502ed494d7902d3cca8c/); ethereum `0xa89566489e932a2d334b9eff7884feb21a07d2b3` | ⚠️ Unaudited |
| VirtualDollar | unknown | ethereum | n/a | [`0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | ⚠️ Unaudited |
| VPool | unknown | ethereum | n/a | 7 deployments: ethereum [`0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee`](./contracts/ethereum-1/0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee/); ethereum `0xb4edcefd59750144882170fcc52ffed40bfd5f7d`; ethereum `0xba680a906d8f624a5f11fba54d3c672f09f26e47`; ethereum `0xc1efbee3a8dabd30d1d789138bc6ea43a399c335`; ethereum `0xd11d9b4c0b3bd5ec324123b241fb07af19caeac5`; ethereum `0xd25ee8509302bd23dc11d1ab867fe995cdd7b531`; ethereum `0xff43c327410f960261057ba1da787ed78b42c257` | ⚠️ Unaudited |
| VPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x05b143213bc0bb7e6bb5a9afd9ca10df3cc8b4b6`](./contracts/ethereum-1/0x05b143213bc0bb7e6bb5a9afd9ca10df3cc8b4b6/); ethereum `0xad680b77a8d0bb66e6a0000028168ab147f440b5` | ⚠️ Unaudited |
| VPool | unknown | ethereum | n/a | 7 deployments: ethereum [`0x43ef34f296afe23b654bda084de43ccbec34f841`](./contracts/ethereum-1/0x43ef34f296afe23b654bda084de43ccbec34f841/); ethereum `0x479dfa0612ea457235cdeefcdea4e3ff072778ca`; ethereum `0x4da20a6ebf1e2740aedb432471bedd91a7bbcf29`; ethereum `0x7f0088f5a7b8d29936c1119a6446ea90f69d5c0f`; ethereum `0x8c657a734ed527d9b05b5d9e61d3f09684c48770`; ethereum `0xb7cec2ecac026dbd2b7c6705fd2967f59c6d27bf`; ethereum `0xda92f9beeb3aeee9ac0c7f8a67ccb03f0742cf04` | ⚠️ Unaudited |
| VPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4b8a425d305128b93cec3f7dbe13f93dcbd807fe`](./contracts/ethereum-1/0x4b8a425d305128b93cec3f7dbe13f93dcbd807fe/); ethereum `0x8b3c8626cbfaa71d44bd76c1304214f4858e3639` | ⚠️ Unaudited |
| VPool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x4c73f025a1947ec770327b9956fc61f535f72c22`](./contracts/ethereum-1/0x4c73f025a1947ec770327b9956fc61f535f72c22/); ethereum `0x650cd45dedb19c33160acc522ad1a82d9701036a`; ethereum `0x91f92f75e547db066c39dea4d4a8b45f4b8ede4a`; ethereum `0xca7c607c590ad16007ccbbba9d26f4df656a36c2` | ⚠️ Unaudited |
| VPool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x4dbe3f01abe271d3e65432c74851625a8c30aa7b`](./contracts/ethereum-1/0x4dbe3f01abe271d3e65432c74851625a8c30aa7b/); ethereum `0xd948ba1b50c474199db204ef128ba413c49fd9b8`; ethereum `0xdd9f61a85ffe73e41ef889817972f0b0aae6d6dd`; ethereum `0xecd7790fd35e5f529a63cf3e058b555f2ff23234` | ⚠️ Unaudited |
| VPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7e198a1934fffff394e942d5bdc44c43dd5c5dd7`](./contracts/ethereum-1/0x7e198a1934fffff394e942d5bdc44c43dd5c5dd7/); ethereum `0x8c2d8bffc6363198baae1bab7d747961188ec6f3` | ⚠️ Unaudited |
| VPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa7c21fd948c44830541b8561b31abde09cc32719`](./contracts/ethereum-1/0xa7c21fd948c44830541b8561b31abde09cc32719/); ethereum `0xc882316b15b0dec45fdb4550167cdaf7d58433cc` | ⚠️ Unaudited |
| VPoolUpgrader | unknown | ethereum | n/a | 4 deployments: ethereum [`0x582ebf6d677d54d54bd26980d076047fcb9e0446`](./contracts/ethereum-1/0x582ebf6d677d54d54bd26980d076047fcb9e0446/); ethereum `0xa1d7046fdda8ec7758b687b88b6803ef7a9aa3ee`; ethereum `0xa924b6725f7ea2650c6e3f09eb0d36a76486c5b0`; ethereum `0xe647951b8e67247643abd45b5acb80096f561624` | ⚠️ Unaudited |
| VspMainnetOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5ed27617cc2fb7b4faab67ed30efde9cc7d84527`](./contracts/ethereum-1/0x5ed27617cc2fb7b4faab67ed30efde9cc7d84527/); ethereum `0xa889d4993c44ea78e2c87bc5897c74977a126dee` | ⚠️ Unaudited |
| VspMinter | unknown | ethereum | n/a | [`0xcf10c379ddf728b8c9c55eb7ba2d8a0795303e1e`](./contracts/ethereum-1/0xcf10c379ddf728b8c9c55eb7ba2d8a0795303e1e/) | ⚠️ Unaudited |
| VUNI | unknown | ethereum | n/a | [`0xf858a354ad255d21e17c56f8f2b10ed67dfb40ae`](./contracts/ethereum-1/0xf858a354ad255d21e17c56f8f2b10ed67dfb40ae/) | ⚠️ Unaudited |
| VUSD | unknown | ethereum | n/a | [`0x677ddbd918637e5f2c79e164d402454de7da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | ⚠️ Unaudited |
| VUSDT | unknown | ethereum | n/a | [`0x95c0b30c6276e67ae95127af458573a63113bdff`](./contracts/ethereum-1/0x95c0b30c6276e67ae95127af458573a63113bdff/) | ⚠️ Unaudited |
| VWBTC | token | ethereum | n/a | 2 deployments: ethereum [`0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/); ethereum `0xcc9be1b4ae3c9d20e8dfe6cc041e196150ac0605` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x334fa95235ff746ad8f7cd93c9dd4021d14cabd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37b54ff46256b0e9246c9fcfa02616b24b60bb8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bc3aedf492df5d3f2dce7cbd5ad38a06f415e36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0222df54d27ecd3a9930f249446f10a4c4a1e16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf502d127f38da7f2c875be78ede6b6b0434602ce` | ❓ Unverified |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6b9eb0be25cc03fc5a7e8b3c78fbd73f7a65e679`](./contracts/ethereum-1/0x6b9eb0be25cc03fc5a7e8b3c78fbd73f7a65e679/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ea1c75c219eeebb10ec57737cf0a7df1eff5377`](./contracts/ethereum-1/0x6ea1c75c219eeebb10ec57737cf0a7df1eff5377/) | AlusdTokenMainnetOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54525f751b71e1ea58a558649f0057451e4946b4`](./contracts/ethereum-1/0x54525f751b71e1ea58a558649f0057451e4946b4/) | BTCPeggedTokenOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a6aad61ca0e3d45457628f82d493101a85f6314`](./contracts/ethereum-1/0x5a6aad61ca0e3d45457628f82d493101a85f6314/) | CreamStrategyUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c712fa5ba0dc3fc46cabef2d373c4f9f5e29ce3`](./contracts/ethereum-1/0x0c712fa5ba0dc3fc46cabef2d373c4f9f5e29ce3/) | Crv3PoolStrategyDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x347eacc4710eb045ccf0c56c0635d81840689847`](./contracts/ethereum-1/0x347eacc4710eb045ccf0c56c0635d81840689847/) | DebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc53fe3d426dfe6ff891f0351a8fca7f5dc8fffe`](./contracts/ethereum-1/0xfc53fe3d426dfe6ff891f0351a8fca7f5dc8fffe/) | DebtTokenUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24f2d1ac81ecfd8a808001a97349185ef1bcf4ad`](./contracts/ethereum-1/0x24f2d1ac81ecfd8a808001a97349185ef1bcf4ad/) | DepositToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x335e4ba7152c96dd19db8c7138c55b8bd74ea53a`](./contracts/ethereum-1/0x335e4ba7152c96dd19db8c7138c55b8bd74ea53a/) | DepositToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3d0cdc22672ecf1eda6438bfa88126ac382aec6`](./contracts/ethereum-1/0xf3d0cdc22672ecf1eda6438bfa88126ac382aec6/) | DepositTokenUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x143c8b6b1161dec945d1fb7c2ca13c3b1d164642`](./contracts/bsc-56/0x143c8b6b1161dec945d1fb7c2ca13c3b1d164642/) | EarnPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02fc8523510be4c6085d8d820ecced3f2a58623b`](./contracts/ethereum-1/0x02fc8523510be4c6085d8d820ecced3f2a58623b/) | ESVSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbc50dafd976d4bd7854a8329646fb88d7fa1018`](./contracts/ethereum-1/0xbbc50dafd976d4bd7854a8329646fb88d7fa1018/) | ESVSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6be0eea986acfcd6379cf080b7b766b358572bf`](./contracts/ethereum-1/0xc6be0eea986acfcd6379cf080b7b766b358572bf/) | ESVSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd02d6ec21851092a9cca8a8eb388fdf66ba96f9b`](./contracts/ethereum-1/0xd02d6ec21851092a9cca8a8eb388fdf66ba96f9b/) | ESVSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x676c0a314284ace713c74add192a0b30f4014363`](./contracts/ethereum-1/0x676c0a314284ace713c74add192a0b30f4014363/) | ESVSP721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6aff1846413bf15a8d7e72c799b96bf37e424b13`](./contracts/ethereum-1/0x6aff1846413bf15a8d7e72c799b96bf37e424b13/) | ESVSP721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x927367b4cecb2ac2723488411eae967eb70393d4`](./contracts/ethereum-1/0x927367b4cecb2ac2723488411eae967eb70393d4/) | ESVSP721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e8c5c81053581341ba45ea149982ebf862cbd4e`](./contracts/ethereum-1/0x0e8c5c81053581341ba45ea149982ebf862cbd4e/) | ESVSP721Upgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54ae4816bbe3c667aac5d9bd2f4ffb1ad947a307`](./contracts/ethereum-1/0x54ae4816bbe3c667aac5d9bd2f4ffb1ad947a307/) | ESVSPUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd08cfe37f44f2f9afda5f8788cb856c63ea7c078`](./contracts/ethereum-1/0xd08cfe37f44f2f9afda5f8788cb856c63ea7c078/) | MakerVesper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80704acdf97723963263c78f861f091ad04f46e2`](./contracts/ethereum-1/0x80704acdf97723963263c78f861f091ad04f46e2/) | MasterOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe67516417a934b27cf0c14868f8165b1bc94bf73`](./contracts/ethereum-1/0xe67516417a934b27cf0c14868f8165b1bc94bf73/) | MerkleBox | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x583e4938f95e75906b1b69514c9bf7ebc648201a`](./contracts/ethereum-1/0x583e4938f95e75906b1b69514c9bf7ebc648201a/) | MiniArmyKnife | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5cda6590162a095fd7c55b1482574dd8635e3f97`](./contracts/ethereum-1/0x5cda6590162a095fd7c55b1482574dd8635e3f97/) | MockVSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f58bb64aa5138a5d0147024f5e3474321e5f66c`](./contracts/ethereum-1/0x7f58bb64aa5138a5d0147024f5e3474321e5f66c/) | NativeTokenGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f18ab22298b5faca652c267bf0b6a5bca078bac`](./contracts/ethereum-1/0x3f18ab22298b5faca652c267bf0b6a5bca078bac/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x530e54138266f6e3eb7b3b828c2ed98c6cab151a`](./contracts/ethereum-1/0x530e54138266f6e3eb7b3b828c2ed98c6cab151a/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x011881efbdbb250702f9d7ca2a74788b26ca7128`](./contracts/ethereum-1/0x011881efbdbb250702f9d7ca2a74788b26ca7128/) | PoolAccountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0879f1821e0b41913ba6fdbd691a11675ce89542`](./contracts/ethereum-1/0x0879f1821e0b41913ba6fdbd691a11675ce89542/) | PoolAccountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12fdffb52297a13a29041299ad43458ebcfc89d7`](./contracts/ethereum-1/0x12fdffb52297a13a29041299ad43458ebcfc89d7/) | PoolAccountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a7534a2a4293068931e7d287efbce7889031794`](./contracts/ethereum-1/0x2a7534a2a4293068931e7d287efbce7889031794/) | PoolAccountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45aba68af23de6de7dc8963e97e4f6f68de5e94e`](./contracts/ethereum-1/0x45aba68af23de6de7dc8963e97e4f6f68de5e94e/) | PoolAccountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6218f149c5bbcc719e4fddc60c9e8f0d97e633da`](./contracts/ethereum-1/0x6218f149c5bbcc719e4fddc60c9e8f0d97e633da/) | PoolAccountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x751e5e3f4b22641d693593cff60932980386d23a`](./contracts/ethereum-1/0x751e5e3f4b22641d693593cff60932980386d23a/) | PoolAccountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4889f992220345dc3e4375c933ab441e5513f9c1`](./contracts/ethereum-1/0x4889f992220345dc3e4375c933ab441e5513f9c1/) | PoolAccountantUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbaf4eaed7cc1cbb3d6f2f3b89493dbb9764e8b44`](./contracts/ethereum-1/0xbaf4eaed7cc1cbb3d6f2f3b89493dbb9764e8b44/) | PoolRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5079e29313b3d9021bc4a82194b6bc32abe8315b`](./contracts/ethereum-1/0x5079e29313b3d9021bc4a82194b6bc32abe8315b/) | PoolRegistryUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10c72fdedd8eb17916c362c33c0c453928761919`](./contracts/ethereum-1/0x10c72fdedd8eb17916c362c33c0c453928761919/) | PoolRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10fde8c254a100674439d707628569686c8580fa`](./contracts/ethereum-1/0x10fde8c254a100674439d707628569686c8580fa/) | PoolRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17eff816ef9646481c8bac6a50b3c9a67f4d417b`](./contracts/ethereum-1/0x17eff816ef9646481c8bac6a50b3c9a67f4d417b/) | PoolRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a7644067584151e5861848c4942b9a15ed16653`](./contracts/ethereum-1/0x3a7644067584151e5861848c4942b9a15ed16653/) | PoolRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4279cc1ace3c89eea54fa49df11ee46e34c01106`](./contracts/ethereum-1/0x4279cc1ace3c89eea54fa49df11ee46e34c01106/) | PoolRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a539836db582ded710b3dd974ae017ddbbd5486`](./contracts/ethereum-1/0x4a539836db582ded710b3dd974ae017ddbbd5486/) | PoolRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a7ce5db8fa84e7aff6ad6e234c6c6b515951d5c`](./contracts/ethereum-1/0x4a7ce5db8fa84e7aff6ad6e234c6c6b515951d5c/) | PoolRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5323427696cbce0e15d2e21627e8aa646a5f5d83`](./contracts/ethereum-1/0x5323427696cbce0e15d2e21627e8aa646a5f5d83/) | PoolRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d7746336def5dd009cee7cef9a0331495e64153`](./contracts/ethereum-1/0x6d7746336def5dd009cee7cef9a0331495e64153/) | PoolRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dc34784c84b74dc928b5977812f4603e56def93`](./contracts/ethereum-1/0x6dc34784c84b74dc928b5977812f4603e56def93/) | PoolRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7205492c0a35a1ebbaabe25956391012da0bfaa`](./contracts/ethereum-1/0xa7205492c0a35a1ebbaabe25956391012da0bfaa/) | PoolRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x655845ac2db0c1955815bdc33f0270bc37e03d23`](./contracts/ethereum-1/0x655845ac2db0c1955815bdc33f0270bc37e03d23/) | PoolRewardsUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbf7f35627073fa12d3d7ba17c5b2d1ff808b77b`](./contracts/ethereum-1/0xcbf7f35627073fa12d3d7ba17c5b2d1ff808b77b/) | PoolUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37ff84f9ebe44530074142de42469ae40051b92b`](./contracts/ethereum-1/0x37ff84f9ebe44530074142de42469ae40051b92b/) | PriceProvidersAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7915ce4f43e1378f0c3720351a973a023f7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d6d94f53c2ecb24f3c632745a535a947ee43b97`](./contracts/ethereum-1/0x0d6d94f53c2ecb24f3c632745a535a947ee43b97/) | Rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2005e43c86cefe594c1e8e7d72077dadcda17994`](./contracts/ethereum-1/0x2005e43c86cefe594c1e8e7d72077dadcda17994/) | Rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x025347f4cc7865068de5a139951411084e7bcad7`](./contracts/ethereum-1/0x025347f4cc7865068de5a139951411084e7bcad7/) | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x618d0b1f16b87de1231cd9ec224700046aad9b2b`](./contracts/ethereum-1/0x618d0b1f16b87de1231cd9ec224700046aad9b2b/) | RewardsDistributorUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bdba054af6b11c85428cd817d55355b487553f2`](./contracts/ethereum-1/0x2bdba054af6b11c85428cd817d55355b487553f2/) | RewardsUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f8b104748a0ad707ae610d0ce97686cb4dd1745`](./contracts/ethereum-1/0x2f8b104748a0ad707ae610d0ce97686cb4dd1745/) | RoutedSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x341c2abe8901353e12b955b1f3462afe7ba1e27d`](./contracts/ethereum-1/0x341c2abe8901353e12b955b1f3462afe7ba1e27d/) | RoutedSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x091f06081ac7083a27a966d466e04cafec486cda`](./contracts/ethereum-1/0x091f06081ac7083a27a966d466e04cafec486cda/) | StableCoinProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9105a793a24de69b1ac6f2051036d69670843ee9`](./contracts/ethereum-1/0x9105a793a24de69b1ac6f2051036d69670843ee9/) | SyntheticToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc097a77eb6831957508050c6645423253661b3ad`](./contracts/ethereum-1/0xc097a77eb6831957508050c6645423253661b3ad/) | SyntheticTokenUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e2ba4df2ab32fcc0a6975093e040568b37faf49`](./contracts/ethereum-1/0x0e2ba4df2ab32fcc0a6975093e040568b37faf49/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x312f8f1df85a193c9ff1bbd89da3721b12313764`](./contracts/ethereum-1/0x312f8f1df85a193c9ff1bbd89da3721b12313764/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8868579c6152bbbb8db46606354b56bfd8819b9`](./contracts/ethereum-1/0xa8868579c6152bbbb8db46606354b56bfd8819b9/) | TreasuryUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd773ca264b5363f25f7f96319076753849af168b`](./contracts/ethereum-1/0xd773ca264b5363f25f7f96319076753849af168b/) | VBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x285a45c29a738dbc5bc092daed3efa5c579f6dbb`](./contracts/ethereum-1/0x285a45c29a738dbc5bc092daed3efa5c579f6dbb/) | VesperEarnDrip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x339b20136282a9de3a6fc448b5ba9534116b3b08`](./contracts/ethereum-1/0x339b20136282a9de3a6fc448b5ba9534116b3b08/) | VesperEarnDrip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60958e4c8d39fdd8d0f631fd942870851afa3414`](./contracts/ethereum-1/0x60958e4c8d39fdd8d0f631fd942870851afa3414/) | VesperEarnDrip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b07296561d0ea40dd6ffc5c19a934796a829eef`](./contracts/ethereum-1/0x7b07296561d0ea40dd6ffc5c19a934796a829eef/) | VesperEarnDrip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5ae3095be887004a5df20ef6f2786563836acca`](./contracts/ethereum-1/0xf5ae3095be887004a5df20ef6f2786563836acca/) | VesperEarnDrip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x951397286e4b78ae5827502ed494d7902d3cca8c`](./contracts/ethereum-1/0x951397286e4b78ae5827502ed494d7902d3cca8c/) | VETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | VirtualDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee`](./contracts/ethereum-1/0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee/) | VPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05b143213bc0bb7e6bb5a9afd9ca10df3cc8b4b6`](./contracts/ethereum-1/0x05b143213bc0bb7e6bb5a9afd9ca10df3cc8b4b6/) | VPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43ef34f296afe23b654bda084de43ccbec34f841`](./contracts/ethereum-1/0x43ef34f296afe23b654bda084de43ccbec34f841/) | VPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b8a425d305128b93cec3f7dbe13f93dcbd807fe`](./contracts/ethereum-1/0x4b8a425d305128b93cec3f7dbe13f93dcbd807fe/) | VPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c73f025a1947ec770327b9956fc61f535f72c22`](./contracts/ethereum-1/0x4c73f025a1947ec770327b9956fc61f535f72c22/) | VPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dbe3f01abe271d3e65432c74851625a8c30aa7b`](./contracts/ethereum-1/0x4dbe3f01abe271d3e65432c74851625a8c30aa7b/) | VPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e198a1934fffff394e942d5bdc44c43dd5c5dd7`](./contracts/ethereum-1/0x7e198a1934fffff394e942d5bdc44c43dd5c5dd7/) | VPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7c21fd948c44830541b8561b31abde09cc32719`](./contracts/ethereum-1/0xa7c21fd948c44830541b8561b31abde09cc32719/) | VPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x582ebf6d677d54d54bd26980d076047fcb9e0446`](./contracts/ethereum-1/0x582ebf6d677d54d54bd26980d076047fcb9e0446/) | VPoolUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ed27617cc2fb7b4faab67ed30efde9cc7d84527`](./contracts/ethereum-1/0x5ed27617cc2fb7b4faab67ed30efde9cc7d84527/) | VspMainnetOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf10c379ddf728b8c9c55eb7ba2d8a0795303e1e`](./contracts/ethereum-1/0xcf10c379ddf728b8c9c55eb7ba2d8a0795303e1e/) | VspMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf858a354ad255d21e17c56f8f2b10ed67dfb40ae`](./contracts/ethereum-1/0xf858a354ad255d21e17c56f8f2b10ed67dfb40ae/) | VUNI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x677ddbd918637e5f2c79e164d402454de7da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | VUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95c0b30c6276e67ae95127af458573a63113bdff`](./contracts/ethereum-1/0x95c0b30c6276e67ae95127af458573a63113bdff/) | VUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/) | VWBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 112 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 5 |

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
