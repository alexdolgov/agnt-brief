# Agentic Audit Brief: Manta Atlantic Stake

## Project Overview

- Project: Manta Atlantic Stake (`manta-atlantic-stake`)
- Website: [https://app.manta.network/manta/stake](https://app.manta.network/manta/stake)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.372Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum, manta
- Contract surface: 113 unique implementations (184 raw deployments)
- DeFi Llama TVL: $4,321,476.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Chain. Structurally: 76 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 12 common project-authored base contract(s) (semver, reentrancyguard, governable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 184; live-surface contracts included: 179 (67 live, 112 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/12 (33.3%)
- Deployed-live implementations: 15 of 113 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/72
- Verified + Unaudited implementations: 68
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 113
- Raw deployments: 184
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 5.6% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L2OutputOracle | unknown | ethereum | n/a | [`0x1e5e634981564fc645dcbc6546ae618d7870b30a`](./contracts/ethereum-1/0x1e5e634981564fc645dcbc6546ae618d7870b30a/) | ✅ Audited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x30c789674ad3b458886bbc9abf42eee19ea05c1d`](./contracts/ethereum-1/0x30c789674ad3b458886bbc9abf42eee19ea05c1d/) | ✅ Audited |
| OptimismPortal | unknown | ethereum | n/a | [`0x445c62f4948f3b08a6bb1dbc51ef985b3eb199f1`](./contracts/ethereum-1/0x445c62f4948f3b08a6bb1dbc51ef985b3eb199f1/) | ✅ Audited |
| OptimismPortal | unknown | ethereum | n/a | [`0x9168765ee952de7c6f8fc6fad5ec209b960b7622`](./contracts/ethereum-1/0x9168765ee952de7c6f8fc6fad5ec209b960b7622/) | ✅ Audited |

### ⚠️ Verified + Unaudited (68)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | 15 deployments: ethereum [`0x1710450f1dab239a83834123508e10c910a5a063`](./contracts/ethereum-1/0x1710450f1dab239a83834123508e10c910a5a063/); ethereum `0x1dc6184931dacb520a40dc756a5da614816d39fa`; ethereum `0x262181e34eed11740be0419b3af54f868c8415af`; ethereum `0x39860b5900d97a9750d9774b5d521cf93c552864`; ethereum `0x3ad319bb4872f8cb75a26ac30cc4bd2d56b67b05`; ethereum `0x424b45d86c5278fa6d89d29116214eb647d202b5`; ethereum `0x5e99cf75ae9a76de366fb3e4a1f2a0b19be8902d`; ethereum `0x6d223eeef79e5ea639f034522b10ccd4dd719665`; ethereum `0x897c4f85812be79f0172f225fbd6550c9ea7abf6`; ethereum `0xa69f3d94a15161921d968263e62bd8ee81ddf561`; ethereum `0xc32db741acd8f74b73dc6e434366eefa9db0580d`; ethereum `0xdb27128ed4a1be7683ccfddb053dd5b713fc3284`; ethereum `0xe3cb5953e548262133f0a5ff230388cebf43e9db`; ethereum `0xe63ac96f9615b16c4ed33bed79a0b537e97a7a82`; ethereum `0xfd195da649e135995c6f81ccddc30bf2dadfbc4c` | ⚠️ Unaudited |
| BatchSender | periphery | manta | n/a | [`0x4615050b9b523a1a410766128ef8c8a3a871aa11`](./contracts/manta-169/0x4615050b9b523a1a410766128ef8c8a3a871aa11/) | ⚠️ Unaudited |
| BonusDistributor | operational_periphery | manta | n/a | [`0xc7da757f97207265c0e1e51974a92c65bcbea502`](./contracts/manta-169/0xc7da757f97207265c0e1e51974a92c65bcbea502/) | ⚠️ Unaudited |
| Disperse | unknown | manta | n/a | [`0x1fd9ae1cb39680740c140966f2885942c8ab7135`](./contracts/manta-169/0x1fd9ae1cb39680740c140966f2885942c8ab7135/) | ⚠️ Unaudited |
| EsRAP | unknown | manta | n/a | [`0x37cdab54b883d0930bdecd2307971f41684ef3fe`](./contracts/manta-169/0x37cdab54b883d0930bdecd2307971f41684ef3fe/) | ⚠️ Unaudited |
| FastPriceEvents | operational_periphery | manta | n/a | [`0xa14b81a69c5f542bbb1affad4f8ba720692fccd9`](./contracts/manta-169/0xa14b81a69c5f542bbb1affad4f8ba720692fccd9/) | ⚠️ Unaudited |
| FastPriceFeedV2 | operational_periphery | manta | n/a | [`0xb7b6ef96de8e79a0d00b8297348af6dbd7bc0129`](./contracts/manta-169/0xb7b6ef96de8e79a0d00b8297348af6dbd7bc0129/) | ⚠️ Unaudited |
| FastPriceFeedV3 | operational_periphery | manta | n/a | [`0x4a98fe7dc066ede7321db81a16e31e6ddaf0efad`](./contracts/manta-169/0x4a98fe7dc066ede7321db81a16e31e6ddaf0efad/) | ⚠️ Unaudited |
| GlpManager | governance | manta | n/a | [`0xbba479d953d012256770e75e2e49af85f17a574b`](./contracts/manta-169/0xbba479d953d012256770e75e2e49af85f17a574b/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e`](./contracts/ethereum-1/0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | manta | n/a | [`0x21d11343cd7c835069f560e2a42a5674dca7ca47`](./contracts/manta-169/0x21d11343cd7c835069f560e2a42a5674dca7ca47/) | ⚠️ Unaudited |
| Governable | unknown | manta | n/a | [`0x2043c8479b771da6e0a742691b2eb9de51011ece`](./contracts/manta-169/0x2043c8479b771da6e0a742691b2eb9de51011ece/) | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x305e88d809c9dc03179554bfbf85ac05ce8f18d6`](./contracts/ethereum-1/0x305e88d809c9dc03179554bfbf85ac05ce8f18d6/); ethereum `0xb6c539bf372b7a11855b0189c22133b05cc230df` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | 2 deployments: ethereum [`0x635ba609680c55c3bdd0b3627b4c5db21b13c310`](./contracts/ethereum-1/0x635ba609680c55c3bdd0b3627b4c5db21b13c310/); ethereum `0x9cddc6f65ed67ef19743ffdfd53501457ce8b51f` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f`](./contracts/ethereum-1/0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f/); ethereum `0xfb1e17245631cd10720401074a3dc9bf7fd3c32d` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | 2 deployments: ethereum [`0x3b95bc951ee0f553ba487327278cac44f29715e5`](./contracts/ethereum-1/0x3b95bc951ee0f553ba487327278cac44f29715e5/); ethereum `0x62b257a1b1fc81c4e6e5dc5b47f1e6184341cd58` | ⚠️ Unaudited |
| Manta | unknown | manta | n/a | [`0x95cef13441be50d20ca4558cc0a27b601ac544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | ⚠️ Unaudited |
| MintableBaseToken | token | manta | n/a | [`0xbab712736193d1aefccc171edb6f35507eb29b40`](./contracts/manta-169/0xbab712736193d1aefccc171edb6f35507eb29b40/) | ⚠️ Unaudited |
| Multicall3 | periphery | manta | n/a | [`0x00113b8516b915106b99c43d628353dc43f6deab`](./contracts/manta-169/0x00113b8516b915106b99c43d628353dc43f6deab/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2165254f0dd74c19d07ed447b231447604d41e20`](./contracts/ethereum-1/0x2165254f0dd74c19d07ed447b231447604d41e20/); ethereum `0xd4957750120ead4f9492895cf7103971e8ceb894` | ⚠️ Unaudited |
| OrderBook | unknown | manta | n/a | [`0x264cc454df686f13814d540d892effdaa0b8da83`](./contracts/manta-169/0x264cc454df686f13814d540d892effdaa0b8da83/) | ⚠️ Unaudited |
| OrderBookReader | unknown | manta | n/a | [`0x3f3f9615a63365e5948b0d02dfdf9656b60b9a7e`](./contracts/manta-169/0x3f3f9615a63365e5948b0d02dfdf9656b60b9a7e/) | ⚠️ Unaudited |
| OrderBookV2 | unknown | manta | n/a | [`0xbffea7000aad4c5335733b891d68b898d79a1d01`](./contracts/manta-169/0xbffea7000aad4c5335733b891d68b898d79a1d01/) | ⚠️ Unaudited |
| PositionManager | governance | manta | n/a | 2 deployments: manta [`0x2dca2753eb7a6d3521d3a6e37216c943480a43a8`](./contracts/manta-169/0x2dca2753eb7a6d3521d3a6e37216c943480a43a8/); manta `0x996b5f65be12a477968bbc04c5d7ad2fdcfadd8a` | ⚠️ Unaudited |
| PositionRouter | adapter | manta | n/a | [`0x46f1c05ba332ad9518226b83df17547ba1c08b4f`](./contracts/manta-169/0x46f1c05ba332ad9518226b83df17547ba1c08b4f/) | ⚠️ Unaudited |
| PositionRouterReader | adapter | manta | n/a | [`0x64c36c9bceb369d47a7d283a47c9a5049b2da00b`](./contracts/manta-169/0x64c36c9bceb369d47a7d283a47c9a5049b2da00b/) | ⚠️ Unaudited |
| PositionUtils | unknown | manta | n/a | [`0x92b222222265fc8a8b6d473b810177879bf351b0`](./contracts/manta-169/0x92b222222265fc8a8b6d473b810177879bf351b0/) | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | manta | n/a | [`0xdc1f37f66c2a013b859cefcb8de68dbea2999dfc`](./contracts/manta-169/0xdc1f37f66c2a013b859cefcb8de68dbea2999dfc/) | ⚠️ Unaudited |
| PriceWrapper | operational_periphery | manta | n/a | [`0x86b10048445553d38ade88ba8dd759ab9d0867ba`](./contracts/manta-169/0x86b10048445553d38ade88ba8dd759ab9d0867ba/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 26 deployments: ethereum [`0x0f2486b9c7ba7a1edd9ab33c7a5586d6481e47bf`](./contracts/ethereum-1/0x0f2486b9c7ba7a1edd9ab33c7a5586d6481e47bf/); ethereum `0x120bd9cdae9f0f20c4cc022793b345779c35d78c`; ethereum `0x1c466b9371f8aba0d7c458be10a62192fcb8aa71`; ethereum `0x6ec90db7a29272a47c538d53ef4026e626e2c5ce`; ethereum `0x732970094bc3bf9eff25ec1b56a16eace6fea232`; ethereum `0x96d6e5ba62f66003748b60544bb355fb308771c4`; ethereum `0xb73603c5d87fa094b7314c74ace2e64d165016fb`; ethereum `0xd0e3a94c6751987cc48879646f4b28a9c33e3dcc`; ethereum `0xea4f12c5f62e252c2694076c169bed0818126fba`; ethereum `0xf417f5a458ec102b90352f697d6e2ac3a3d2851f`; ethereum `0xf4b428078bba69786849fc1e1773f5c6c40748fa`; ethereum `0xf992f6cab98bf812737b495dc7dbb20e20acf631`; manta `0x4200000000000000000000000000000000000007`; manta `0x420000000000000000000000000000000000000f`; manta `0x4200000000000000000000000000000000000010`; manta `0x4200000000000000000000000000000000000011`; manta `0x4200000000000000000000000000000000000012`; manta `0x4200000000000000000000000000000000000014`; manta `0x4200000000000000000000000000000000000015`; manta `0x4200000000000000000000000000000000000016`; manta `0x4200000000000000000000000000000000000017`; manta `0x4200000000000000000000000000000000000018`; manta `0x4200000000000000000000000000000000000019`; manta `0x420000000000000000000000000000000000001a`; manta `0x4200000000000000000000000000000000000020`; manta `0x4200000000000000000000000000000000000021` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 13 deployments: ethereum [`0x007957bf0681b75e92273a7018784ace6af8cb2d`](./contracts/ethereum-1/0x007957bf0681b75e92273a7018784ace6af8cb2d/); ethereum `0x1772e378555d2870035e38dbc33f37bb42410eb5`; ethereum `0x1a73810731536f3201ea1134d048ed999188007d`; ethereum `0x4d7e194d6b5915ca4e39bba7a030b50702a40e9e`; ethereum `0x65d6b21c95e1e72bdd91f868527910eaa892d48e`; ethereum `0x68b18d4c3ecc5bac0408de9ad722d31a738062bd`; ethereum `0x8a7b471537a26ad2d4a16d0ebd626d4a1f8d3be1`; ethereum `0xa2dca85bb892de55d8b262d1806114733106e8d1`; ethereum `0xc21f2e6c5792686e53e32cb88fc38f6c75b6e79d`; ethereum `0xc9ef2e3eaeb70f0b794a9d7d5cac4bcff1906995`; ethereum `0xe84162349a4d1d4df7443a53f6e12366c8dbdd0e`; ethereum `0xeb77d0c8794b73625b7f4d60d9ca64a2604c48cd`; ethereum `0xecde807ae6d972b615b266aa958a07f97cb0d8e5` | ⚠️ Unaudited |
| PythFlags | unknown | manta | n/a | [`0x4ef1eef6778b246bcfd2eee6a7fa6459337e593e`](./contracts/manta-169/0x4ef1eef6778b246bcfd2eee6a7fa6459337e593e/) | ⚠️ Unaudited |
| PythWrapperBTC | unknown | manta | n/a | [`0xcaf939f470fdc1a2db32f4f7060bae4d03db5705`](./contracts/manta-169/0xcaf939f470fdc1a2db32f4f7060bae4d03db5705/) | ⚠️ Unaudited |
| PythWrapperETH | unknown | manta | n/a | [`0x677890e9bfd70593e6dc66d9089e02f8bff66ed9`](./contracts/manta-169/0x677890e9bfd70593e6dc66d9089e02f8bff66ed9/) | ⚠️ Unaudited |
| PythWrapperUSDC | unknown | manta | n/a | [`0x92a74f360c56ac3f489dc9d25e62a8adabd85208`](./contracts/manta-169/0x92a74f360c56ac3f489dc9d25e62a8adabd85208/) | ⚠️ Unaudited |
| PythWrapperUSDT | token | manta | n/a | [`0x3b14f6fad061fe52c0412f3eb5c3ce0e9e645d02`](./contracts/manta-169/0x3b14f6fad061fe52c0412f3eb5c3ce0e9e645d02/) | ⚠️ Unaudited |
| RAP | unknown | manta | n/a | [`0x9576ca6d15e7ccce184fa7523085d21a554b1b52`](./contracts/manta-169/0x9576ca6d15e7ccce184fa7523085d21a554b1b52/) | ⚠️ Unaudited |
| RapTimelock | governance | manta | n/a | [`0x308ad3b4712e4a64f798daa34b6f9a205dd6da84`](./contracts/manta-169/0x308ad3b4712e4a64f798daa34b6f9a205dd6da84/) | ⚠️ Unaudited |
| Reader | unknown | manta | n/a | [`0x96aa4d36d41d40e9eae57fddf508d074c754595b`](./contracts/manta-169/0x96aa4d36d41d40e9eae57fddf508d074c754595b/) | ⚠️ Unaudited |
| ReaderV2 | unknown | manta | n/a | 2 deployments: manta [`0x40f20fcab8ee140e8246a19541664867a0c5c1a2`](./contracts/manta-169/0x40f20fcab8ee140e8246a19541664867a0c5c1a2/); manta `0xb41a81d0ba4ab9910db92a5d90a1073c2a3a2cc0` | ⚠️ Unaudited |
| ReferralReader | unknown | manta | n/a | [`0xdc9e8cca39db39ce80bf0486d7a527ad742e75f0`](./contracts/manta-169/0xdc9e8cca39db39ce80bf0486d7a527ad742e75f0/) | ⚠️ Unaudited |
| ReferralStorage | token | manta | n/a | [`0xb71d87c756ea5d1c9bd5e89a19f47982129a8c31`](./contracts/manta-169/0xb71d87c756ea5d1c9bd5e89a19f47982129a8c31/) | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | n/a | [`0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5`](./contracts/ethereum-1/0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | manta | n/a | 4 deployments: manta [`0x54c5cfd081d0c0affc95ba816a5389a3472c5796`](./contracts/manta-169/0x54c5cfd081d0c0affc95ba816a5389a3472c5796/); manta `0x5f07539a1951e70db1f10a73e6e7b711128b329c`; manta `0x7a53f66b3db8c4878be16ca1cad7a2ddec338832`; manta `0xe4693bae4b77d3ae451ea61ce8dbff800296c87f` | ⚠️ Unaudited |
| RewardReader | unknown | manta | n/a | [`0xa1d60a7220c1fb37733978201aab8c9a7c4a6919`](./contracts/manta-169/0xa1d60a7220c1fb37733978201aab8c9a7c4a6919/) | ⚠️ Unaudited |
| RewardRouterOrderBook | adapter | manta | n/a | [`0x9093089bbefd8944390a2e090122e6245aa7fa69`](./contracts/manta-169/0x9093089bbefd8944390a2e090122e6245aa7fa69/) | ⚠️ Unaudited |
| RewardRouterV2 | adapter | manta | n/a | 2 deployments: manta [`0x9529519c25de11c3b27b16482340755c23b153f3`](./contracts/manta-169/0x9529519c25de11c3b27b16482340755c23b153f3/); manta `0xd726e7b06dd368d06c48fd54d5f672e455082109` | ⚠️ Unaudited |
| RewardTracker | unknown | manta | n/a | 5 deployments: manta [`0x10e878adbcbd35e4356f5272ae9537814d17a76c`](./contracts/manta-169/0x10e878adbcbd35e4356f5272ae9537814d17a76c/); manta `0x18ae8e9ee384cf9e5159aec454b9e3eb2123ba1c`; manta `0x33b92c2dbfbd356f20570bf93eb7454cc365faf5`; manta `0x822c25f33af833642d11b9c737e2c223d59119df`; manta `0xcbdc1a5d7519f3f6d87cf6c480b55ec66b8e1181` | ⚠️ Unaudited |
| RLP | unknown | manta | n/a | [`0x7d079915b30de18bc866b025cfa278aba2e18197`](./contracts/manta-169/0x7d079915b30de18bc866b025cfa278aba2e18197/) | ⚠️ Unaudited |
| Router | adapter | manta | n/a | [`0x689a2bf9193d74fa2f17769e0adb76f58dbf2065`](./contracts/manta-169/0x689a2bf9193d74fa2f17769e0adb76f58dbf2065/) | ⚠️ Unaudited |
| Seaport | unknown | manta | n/a | [`0x00000000000000adc04c56bf30ac9d3c0aaf14dc`](./contracts/manta-169/0x00000000000000adc04c56bf30ac9d3c0aaf14dc/) | ⚠️ Unaudited |
| ShortsTracker | unknown | manta | n/a | [`0x1017a05dbc857c90457bddc8b2d02940d998b49b`](./contracts/manta-169/0x1017a05dbc857c90457bddc8b2d02940d998b49b/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | governance | manta | n/a | [`0x80a9ff4db9696d7365bb93aeb78f0c805c14ddda`](./contracts/manta-169/0x80a9ff4db9696d7365bb93aeb78f0c805c14ddda/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | n/a | 2 deployments: ethereum [`0x895e00269a05848f3c9889efa677d02ff7351a5d`](./contracts/ethereum-1/0x895e00269a05848f3c9889efa677d02ff7351a5d/); ethereum `0xef01a6ae995791fffca3d70bda7b91e5fa1ad0ae` | ⚠️ Unaudited |
| Timelock | governance | manta | n/a | 3 deployments: manta [`0x44ed2c28f610c308f0fe8dbf57e2872ddcb3bc0e`](./contracts/manta-169/0x44ed2c28f610c308f0fe8dbf57e2872ddcb3bc0e/); manta `0xc6b52571a5828f4e193882dd035489b441f392be`; manta `0xe8da44289ab9283028cff5c81a72ea36fd0104e2` | ⚠️ Unaudited |
| TokenConfigKeeper | operational_periphery | manta | n/a | [`0xd45244ff30150f05906b3f10aa41d2055d1bbaf6`](./contracts/manta-169/0xd45244ff30150f05906b3f10aa41d2055d1bbaf6/) | ⚠️ Unaudited |
| TokenManager | governance | manta | n/a | [`0x0dc0761d71af3332a42fa2cf885e7c427ffad850`](./contracts/manta-169/0x0dc0761d71af3332a42fa2cf885e7c427ffad850/) | ⚠️ Unaudited |
| TokensPerIntervalUpdater | token | manta | n/a | 2 deployments: manta [`0x1808db4d0539ad603d6defa1ae3745791c5e0732`](./contracts/manta-169/0x1808db4d0539ad603d6defa1ae3745791c5e0732/); manta `0xe3ad19ce00a1afaa5f99e622e8354a4f2fdd2ce2` | ⚠️ Unaudited |
| USDR | unknown | manta | n/a | [`0x1a303ea630f054a0b92787a30b03b0920e003e7d`](./contracts/manta-169/0x1a303ea630f054a0b92787a30b03b0920e003e7d/) | ⚠️ Unaudited |
| Vault | core_logic | manta | n/a | [`0xea5c751039e38e1d2c0b8983d4f024e3bc928bc4`](./contracts/manta-169/0xea5c751039e38e1d2c0b8983d4f024e3bc928bc4/) | ⚠️ Unaudited |
| VaultErrorController | core_logic | manta | n/a | [`0x48542a36c725aba87067edfefcb7d551ce3f1d6c`](./contracts/manta-169/0x48542a36c725aba87067edfefcb7d551ce3f1d6c/) | ⚠️ Unaudited |
| VaultPriceFeedV2 | operational_periphery | manta | n/a | [`0xcc5bbc57cd6d210a3f1c7998eb6d5a35b49f8c84`](./contracts/manta-169/0xcc5bbc57cd6d210a3f1c7998eb6d5a35b49f8c84/) | ⚠️ Unaudited |
| VaultPriceFeedV3 | operational_periphery | manta | n/a | [`0xfa893dd111ccfcbc942576eb02bf313ed5819541`](./contracts/manta-169/0xfa893dd111ccfcbc942576eb02bf313ed5819541/) | ⚠️ Unaudited |
| VaultReader | core_logic | manta | n/a | [`0x030f89585d9812471dae7262645860f2d8bece13`](./contracts/manta-169/0x030f89585d9812471dae7262645860f2d8bece13/) | ⚠️ Unaudited |
| VaultReaderV3 | core_logic | manta | n/a | [`0xc5ecf064e1f8ff5a19ad5e4e32cf347ea6947b88`](./contracts/manta-169/0xc5ecf064e1f8ff5a19ad5e4e32cf347ea6947b88/) | ⚠️ Unaudited |
| VaultUtils | core_logic | manta | n/a | [`0xe84231ae15fea715dbd31b353f5b45bfea967fd9`](./contracts/manta-169/0xe84231ae15fea715dbd31b353f5b45bfea967fd9/) | ⚠️ Unaudited |
| Vester | operational_periphery | manta | n/a | 2 deployments: manta [`0x4a58af9033db96d4665fc38593ddfdd78b959419`](./contracts/manta-169/0x4a58af9033db96d4665fc38593ddfdd78b959419/); manta `0xba8cd99c30da11a22f4d8ef3e763ac4cc3d1e3f5` | ⚠️ Unaudited |
| WETH9 | token | manta | n/a | [`0x4200000000000000000000000000000000000006`](./contracts/manta-169/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | manta | n/a | `0x03ccf2615fa1ae27e369a240751262b9d5f0a82a` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x04c74e8a11c669acfb7ee01012bbf5cf1e57a10d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x0691b7aaac9b903c9a99b2371bcfb43601b45711` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x199788e6bd2b163070cc313f906a3b0cffbfc39f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1e59a308bafad671f63ba5d440489f0a84bf0f7c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2165254f0dd74c19d07ed447b231447604d41e20` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x22d72db063dd9ce6b96bde48331e6984c1570f38` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2dd44d1b04170c5623ccc55dd5ed43fab08b0b46` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x30662c5136518da2b47f10209baed7397b11d2e8` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x30c789674ad3b458886bbc9abf42eee19ea05c1d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x35e6150ff38f1e66371620bd57bb6411a4881e07` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3ad319bb4872f8cb75a26ac30cc4bd2d56b67b05` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3b95bc951ee0f553ba487327278cac44f29715e5` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x4b1a788b20bb85eb19f8e9b69b8a584e7fa29fe5` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x4d56def3eec9e12ab7dc67e16a0275f857fe3a31` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x56c6abba73945be0d3be30176a1ea79ea928f30c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x635ba609680c55c3bdd0b3627b4c5db21b13c310` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x64eee20adba2ed1c0e1969267aa5fee23da87cb8` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x6a42a60e14eeee588ad622159971963560d7f570` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x76c727315a02549cd8d0c4fe239c2a51bc9867e4` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x80f86c5d3ae8cf84596ff22db2829f1b7a9fe83d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x853bdff715efedc280c16241dd30a6d651f90aca` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8884e13977d7116a7ab3391a098db211dd39db00` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x895e00269a05848f3c9889efa677d02ff7351a5d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9168765ee952de7c6f8fc6fad5ec209b960b7622` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9f3e00a9eb428d026691aa1a5c8d47b53efbc46b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa01c765d28f86cb4a3baa20826caa14ab8906b25` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa2dca85bb892de55d8b262d1806114733106e8d1` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa547e0ece3be2a9a9e25d7874258576712f9e5f4` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa76e31d8471d569efdd3d95d1b11ce6710f4533f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xaeba8e2307a22b6824a9a7a39f8b016c357cd1fe` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb4efba9a49432f27efe5ce4879e1592a74884f72` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xcad25c95679839996f3162d8657b1cae4517f78f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xd3bc1778155ad9bb3f1bdf78c20ddc6d95b42757` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xdeaddeaddeaddeaddeaddeaddeaddeaddead0000` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xe9192e1f2554f31ee2c892d35a1e5f7d22179509` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xfa9448eb915cbc287336fb8caa82e90d39969d7c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xfb12bd3acf91d502a8448ba6654ecb9f2b6ce3ac` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xfe7cf31c4579bb1c578716e04e1ae16ac5549ff0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_manta_fast_finality_v1.0.pdf](https://github.com/Manta-Network/manta-fp/blob/main/audit/blocksec_manta_fast_finality_v1.0.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1710450f1dab239a83834123508e10c910a5a063`](./contracts/ethereum-1/0x1710450f1dab239a83834123508e10c910a5a063/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x4615050b9b523a1a410766128ef8c8a3a871aa11`](./contracts/manta-169/0x4615050b9b523a1a410766128ef8c8a3a871aa11/) | BatchSender | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xc7da757f97207265c0e1e51974a92c65bcbea502`](./contracts/manta-169/0xc7da757f97207265c0e1e51974a92c65bcbea502/) | BonusDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x37cdab54b883d0930bdecd2307971f41684ef3fe`](./contracts/manta-169/0x37cdab54b883d0930bdecd2307971f41684ef3fe/) | EsRAP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xa14b81a69c5f542bbb1affad4f8ba720692fccd9`](./contracts/manta-169/0xa14b81a69c5f542bbb1affad4f8ba720692fccd9/) | FastPriceEvents | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xb7b6ef96de8e79a0d00b8297348af6dbd7bc0129`](./contracts/manta-169/0xb7b6ef96de8e79a0d00b8297348af6dbd7bc0129/) | FastPriceFeedV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x4a98fe7dc066ede7321db81a16e31e6ddaf0efad`](./contracts/manta-169/0x4a98fe7dc066ede7321db81a16e31e6ddaf0efad/) | FastPriceFeedV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xbba479d953d012256770e75e2e49af85f17a574b`](./contracts/manta-169/0xbba479d953d012256770e75e2e49af85f17a574b/) | GlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x2043c8479b771da6e0a742691b2eb9de51011ece`](./contracts/manta-169/0x2043c8479b771da6e0a742691b2eb9de51011ece/) | Governable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x305e88d809c9dc03179554bfbf85ac05ce8f18d6`](./contracts/ethereum-1/0x305e88d809c9dc03179554bfbf85ac05ce8f18d6/) | L1ChugSplashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x635ba609680c55c3bdd0b3627b4c5db21b13c310`](./contracts/ethereum-1/0x635ba609680c55c3bdd0b3627b4c5db21b13c310/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f`](./contracts/ethereum-1/0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b95bc951ee0f553ba487327278cac44f29715e5`](./contracts/ethereum-1/0x3b95bc951ee0f553ba487327278cac44f29715e5/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x95cef13441be50d20ca4558cc0a27b601ac544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | Manta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xbab712736193d1aefccc171edb6f35507eb29b40`](./contracts/manta-169/0xbab712736193d1aefccc171edb6f35507eb29b40/) | MintableBaseToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2165254f0dd74c19d07ed447b231447604d41e20`](./contracts/ethereum-1/0x2165254f0dd74c19d07ed447b231447604d41e20/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x264cc454df686f13814d540d892effdaa0b8da83`](./contracts/manta-169/0x264cc454df686f13814d540d892effdaa0b8da83/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x3f3f9615a63365e5948b0d02dfdf9656b60b9a7e`](./contracts/manta-169/0x3f3f9615a63365e5948b0d02dfdf9656b60b9a7e/) | OrderBookReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xbffea7000aad4c5335733b891d68b898d79a1d01`](./contracts/manta-169/0xbffea7000aad4c5335733b891d68b898d79a1d01/) | OrderBookV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x2dca2753eb7a6d3521d3a6e37216c943480a43a8`](./contracts/manta-169/0x2dca2753eb7a6d3521d3a6e37216c943480a43a8/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x46f1c05ba332ad9518226b83df17547ba1c08b4f`](./contracts/manta-169/0x46f1c05ba332ad9518226b83df17547ba1c08b4f/) | PositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x64c36c9bceb369d47a7d283a47c9a5049b2da00b`](./contracts/manta-169/0x64c36c9bceb369d47a7d283a47c9a5049b2da00b/) | PositionRouterReader | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x92b222222265fc8a8b6d473b810177879bf351b0`](./contracts/manta-169/0x92b222222265fc8a8b6d473b810177879bf351b0/) | PositionUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xdc1f37f66c2a013b859cefcb8de68dbea2999dfc`](./contracts/manta-169/0xdc1f37f66c2a013b859cefcb8de68dbea2999dfc/) | PriceFeedTimelock | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x86b10048445553d38ade88ba8dd759ab9d0867ba`](./contracts/manta-169/0x86b10048445553d38ade88ba8dd759ab9d0867ba/) | PriceWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x4ef1eef6778b246bcfd2eee6a7fa6459337e593e`](./contracts/manta-169/0x4ef1eef6778b246bcfd2eee6a7fa6459337e593e/) | PythFlags | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xcaf939f470fdc1a2db32f4f7060bae4d03db5705`](./contracts/manta-169/0xcaf939f470fdc1a2db32f4f7060bae4d03db5705/) | PythWrapperBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x677890e9bfd70593e6dc66d9089e02f8bff66ed9`](./contracts/manta-169/0x677890e9bfd70593e6dc66d9089e02f8bff66ed9/) | PythWrapperETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x92a74f360c56ac3f489dc9d25e62a8adabd85208`](./contracts/manta-169/0x92a74f360c56ac3f489dc9d25e62a8adabd85208/) | PythWrapperUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x3b14f6fad061fe52c0412f3eb5c3ce0e9e645d02`](./contracts/manta-169/0x3b14f6fad061fe52c0412f3eb5c3ce0e9e645d02/) | PythWrapperUSDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x9576ca6d15e7ccce184fa7523085d21a554b1b52`](./contracts/manta-169/0x9576ca6d15e7ccce184fa7523085d21a554b1b52/) | RAP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x308ad3b4712e4a64f798daa34b6f9a205dd6da84`](./contracts/manta-169/0x308ad3b4712e4a64f798daa34b6f9a205dd6da84/) | RapTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x96aa4d36d41d40e9eae57fddf508d074c754595b`](./contracts/manta-169/0x96aa4d36d41d40e9eae57fddf508d074c754595b/) | Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x40f20fcab8ee140e8246a19541664867a0c5c1a2`](./contracts/manta-169/0x40f20fcab8ee140e8246a19541664867a0c5c1a2/) | ReaderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xdc9e8cca39db39ce80bf0486d7a527ad742e75f0`](./contracts/manta-169/0xdc9e8cca39db39ce80bf0486d7a527ad742e75f0/) | ReferralReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xb71d87c756ea5d1c9bd5e89a19f47982129a8c31`](./contracts/manta-169/0xb71d87c756ea5d1c9bd5e89a19f47982129a8c31/) | ReferralStorage | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5`](./contracts/ethereum-1/0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x54c5cfd081d0c0affc95ba816a5389a3472c5796`](./contracts/manta-169/0x54c5cfd081d0c0affc95ba816a5389a3472c5796/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xa1d60a7220c1fb37733978201aab8c9a7c4a6919`](./contracts/manta-169/0xa1d60a7220c1fb37733978201aab8c9a7c4a6919/) | RewardReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x9093089bbefd8944390a2e090122e6245aa7fa69`](./contracts/manta-169/0x9093089bbefd8944390a2e090122e6245aa7fa69/) | RewardRouterOrderBook | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x9529519c25de11c3b27b16482340755c23b153f3`](./contracts/manta-169/0x9529519c25de11c3b27b16482340755c23b153f3/) | RewardRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x10e878adbcbd35e4356f5272ae9537814d17a76c`](./contracts/manta-169/0x10e878adbcbd35e4356f5272ae9537814d17a76c/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x7d079915b30de18bc866b025cfa278aba2e18197`](./contracts/manta-169/0x7d079915b30de18bc866b025cfa278aba2e18197/) | RLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x689a2bf9193d74fa2f17769e0adb76f58dbf2065`](./contracts/manta-169/0x689a2bf9193d74fa2f17769e0adb76f58dbf2065/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x00000000000000adc04c56bf30ac9d3c0aaf14dc`](./contracts/manta-169/0x00000000000000adc04c56bf30ac9d3c0aaf14dc/) | Seaport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1017a05dbc857c90457bddc8b2d02940d998b49b`](./contracts/manta-169/0x1017a05dbc857c90457bddc8b2d02940d998b49b/) | ShortsTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x80a9ff4db9696d7365bb93aeb78f0c805c14ddda`](./contracts/manta-169/0x80a9ff4db9696d7365bb93aeb78f0c805c14ddda/) | ShortsTrackerTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x895e00269a05848f3c9889efa677d02ff7351a5d`](./contracts/ethereum-1/0x895e00269a05848f3c9889efa677d02ff7351a5d/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x44ed2c28f610c308f0fe8dbf57e2872ddcb3bc0e`](./contracts/manta-169/0x44ed2c28f610c308f0fe8dbf57e2872ddcb3bc0e/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xd45244ff30150f05906b3f10aa41d2055d1bbaf6`](./contracts/manta-169/0xd45244ff30150f05906b3f10aa41d2055d1bbaf6/) | TokenConfigKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x0dc0761d71af3332a42fa2cf885e7c427ffad850`](./contracts/manta-169/0x0dc0761d71af3332a42fa2cf885e7c427ffad850/) | TokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1808db4d0539ad603d6defa1ae3745791c5e0732`](./contracts/manta-169/0x1808db4d0539ad603d6defa1ae3745791c5e0732/) | TokensPerIntervalUpdater | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1a303ea630f054a0b92787a30b03b0920e003e7d`](./contracts/manta-169/0x1a303ea630f054a0b92787a30b03b0920e003e7d/) | USDR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xea5c751039e38e1d2c0b8983d4f024e3bc928bc4`](./contracts/manta-169/0xea5c751039e38e1d2c0b8983d4f024e3bc928bc4/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x48542a36c725aba87067edfefcb7d551ce3f1d6c`](./contracts/manta-169/0x48542a36c725aba87067edfefcb7d551ce3f1d6c/) | VaultErrorController | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xcc5bbc57cd6d210a3f1c7998eb6d5a35b49f8c84`](./contracts/manta-169/0xcc5bbc57cd6d210a3f1c7998eb6d5a35b49f8c84/) | VaultPriceFeedV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xfa893dd111ccfcbc942576eb02bf313ed5819541`](./contracts/manta-169/0xfa893dd111ccfcbc942576eb02bf313ed5819541/) | VaultPriceFeedV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x030f89585d9812471dae7262645860f2d8bece13`](./contracts/manta-169/0x030f89585d9812471dae7262645860f2d8bece13/) | VaultReader | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xc5ecf064e1f8ff5a19ad5e4e32cf347ea6947b88`](./contracts/manta-169/0xc5ecf064e1f8ff5a19ad5e4e32cf347ea6947b88/) | VaultReaderV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xe84231ae15fea715dbd31b353f5b45bfea967fd9`](./contracts/manta-169/0xe84231ae15fea715dbd31b353f5b45bfea967fd9/) | VaultUtils | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x4a58af9033db96d4665fc38593ddfdd78b959419`](./contracts/manta-169/0x4a58af9033db96d4665fc38593ddfdd78b959419/) | Vester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x4200000000000000000000000000000000000006`](./contracts/manta-169/0x4200000000000000000000000000000000000006/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 41 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
